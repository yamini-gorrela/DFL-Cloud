global class partSyncScheduleBatch implements Schedulable{
    public string CRON_EXP = '0 0 6 * * ?';
    global void execute(SchedulableContext SC){
        Database.executeBatch(new partSyncBatch(),1);
        system.Schedule('Part Sync Batch',CRON_EXP, new partSyncScheduleBatch());
    }
}