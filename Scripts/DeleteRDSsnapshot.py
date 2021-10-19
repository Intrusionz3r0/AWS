import json,boto3,datetime
from dateutil import parser

def lambda_handler(event, context):
    rds = boto3.client('rds',region_name='us-east-1')
    today = datetime.datetime.now()
        
    response = rds.describe_db_snapshots( DBInstanceIdentifier='db-snapshot', SnapshotType='manual')

    for x in response['DBSnapshots']:
        launch_time = x['SnapshotCreateTime']
        launchtime_naive = launch_time.replace(tzinfo=None)
        then = datetime.datetime.utcnow() + datetime.timedelta(hours = -30)
        if launchtime_naive < then:
                print( "Snapshot borrado: "+ str(x['DBSnapshotIdentifier']))
                rds.delete_db_snapshot(DBSnapshotIdentifier=str(x['DBSnapshotIdentifier']))
