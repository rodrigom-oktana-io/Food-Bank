BEGIN TRANSACTION;
CREATE TABLE "Account" (
	id VARCHAR(255) NOT NULL, 
	"Name" VARCHAR(255), 
	"ParentId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Account" VALUES('Account-1','Sample Account for Entitlements','');
INSERT INTO "Account" VALUES('Account-2','North Hunger','');
CREATE TABLE "Delivery_Item__c" (
	id VARCHAR(255) NOT NULL, 
	"Food_Expiration_Date__c" VARCHAR(255), 
	"Food_Storage__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"Delivery__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Delivery_Item__c" VALUES('Delivery_Item__c-1','2024-02-05','Non-refrigerated','D-0000-ITEM-0001','Delivery__c-1');
CREATE TABLE "Delivery__c" (
	id VARCHAR(255) NOT NULL, 
	"Scheduled_Date__c" VARCHAR(255), 
	"Status__c" VARCHAR(255), 
	"Supplier__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Delivery__c" VALUES('Delivery__c-1','2024-02-04T15:00:00.000+0000','Requested','Account-2');
COMMIT;
