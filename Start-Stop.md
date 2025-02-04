## Create a Automation Accounts

* Searche for Automation Account in the Azure portal and select : 

![](img/img01.png)

* Click in create and complete all fileds.

![](img/img02.png)

* Select System Assigned. [Docs - System Assigned](https://learn.microsoft.com/en-us/entra/identity/managed-identities-azure-resources/overview)

![](img/img03.png)

* Select Public Access and fill in the tag and create + review

![](img/img04.png)

* Go to Automantion Account created and select Runbooks and click in Create a runbook : 

![](img/img05.png)

* Complete all fields and click in Next and after Review + Create.

![](img/img06.png)

* After creation, the editor will automatically open, click on the right panel and paste the Powershell script and click on Save:
* You can get the script here : [Script-automation](script.ps1)

![](img/img07.png)

* Now we have to configure the permissions on the Automation Account, return to Automation Account panel and select Identity :

![](img/img08.png)

* Click on Azure role assignments.

![](img/img09.png)

* Click on Add role assignment.

![](img/img10.png)

* In the tab that opened on the right, complete the fields and click in Save.

![](img/img11.png)

* Return to Runbooks and select one you created.

![](img/img12.png)

* Click on Edit and select Edit in portal.

![](img/img13.png)

* Now we can test, before check the Tags of VMs.

![](img/img14.png)

* On editor page click on Test pane.

![](img/img15.png)

* Fill in your TAG and select false to shut down the VMs and click on Start. True is to turn on the vms.

![](img/img16.png)

* Wait few minutes to get the result :


