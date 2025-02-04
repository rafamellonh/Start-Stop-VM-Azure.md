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

* Fill in your TAG and select TRUE to shut down the VMs and click on Start. FALSE is to turn on the vms.

![](img/img016.png)

* Wait few minutes to get the result :

![](img/img017.png)

![](img/img018.png)

* Return to Editor panel and we will Publish the Runbook clicking on Publish.

![](img/img019.png)

* To schedule this Runbook, go to the Runbook page and select Schedules and click on Add a schedule.

![](img/img020.png)

* On Schedule Runbook, select schedule and after select Add a schedule.

![](img/img021.png)

![](img/img022.png)

* Complete with your needed and click on Create.

![](img/img023.png)

* Now select Configure parameters and run settings.

![](img/img024.png)

* On Configure parameters and run settings and click on Create and After OK again.

![](img/img025.png)

* Configure to Stop VM.

* After configuration, you can check the Jobs on Runnbook page by selecting Jobs.

![](img/img026.png)

* You can check all logs per job by clicking on the job name.

![](img/img027.png)

* After job start vms completed :

![](img/img028.png)