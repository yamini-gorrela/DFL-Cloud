@isTest
public class partSyncScheduleBatchTest {

    @isTest
    public static void testScheduledBatchRuns() {
        SQX_Part__c testPart = new SQX_Part__c(
            Name = 'ScheduledPart',
            Part_Number__c = 'P123',
            Active__c = true
        );
        insert testPart;

        Test.startTest();
        String cronExp = '0 0 0 1 1 ? 2050';
        System.schedule('Test Scheduled Part Sync', cronExp, new partSyncScheduleBatch());
        Test.stopTest();

       
    }
}