# JuniorCloudDevOps

Hello, this README.md file provides a description of the actual task provided to me.

### Required Resources:

- Email address that you can use to create a free Azure subscription.
  - A different email address is required because my email address already had a free subscription activated, and I couldn't do it with the same mobile phone and card number.

### Notes:

- **Use descriptive resource names**: The Resource Group name `JuniorCloudDevOps` was created just for this purpose.
- **Use the cheapest resource versions that you can use**: I chose West Europe because it is geographically close to Croatia, ensuring lower latency and better performance for users accessing the resources from this region. This can be crucial for web applications that need to serve users quickly and efficiently.
- **You can create additional resources if that will make resource administration easier**: Additional resources such as a policy for assigning tags per resource type, cost alert and budget, and two metric rule alerts for CPU usage of WebApps and SQLCheck alert for monitoring administrative tasks on the SQL side were added.
- **You can create additional resources if that will make resource prices lower**: The above point also applies here.
- **All assignment steps can be solved using the https://portal.azure.com/ UI, but if you wish to write your own ARM templates you can (this excludes the PowerShell step)**: This step was mostly done using the Azure UI.

### Assignment Steps

1. **Create a free Azure subscription that you will use to solve these assignments**:
   - This step was explained above.
2. **Create 1 resource group where you will place all of the required resources**:
   - My resource group is `JuniorCloudDevOps`.
3. **Create 3 SQL Database resources with arbitrary names**:
   - I created 3 SQL Databases (`Database1`, `Database2`, `Database3`).
   - All 3 databases must share the resources they use. They are under `mySQLServer1` (logical server).
4. **Create 3 Web App resources with arbitrary names**:
   - All 3 Web Apps must share the resources they use. These are small web apps, and we want to keep the costs down.
   - Assume that apps will be accessed from Croatia. All 3 web apps (`syskitwebapp1`, `syskitwebapp2`, `syskitwebapp3`) are created under `AppServicePlan`, Pricing plan: F1.
5. **Write a PowerShell script that creates a new Web App and use it to create another app on your subscription**:
   - The script is in the repository which I will provide to you.
   - The app needs to share resources with apps that you have already created. The `syskitwebapp5` is deployed and under the same `AppServicePlan`.

### Files in the Repository

- `NewWebApp-Azure.ps1`: PowerShell script to create a new web app, this script is adjusted for this particular task, and we're having AppServicePlan created.
- `template.json`: The exported ARM template of the resource group.
- `parameters.json`: The exported ARM template parameters.json
### Additional Notes

- This setup ensures resource sharing to minimize costs.
- Resources are created in the `West Europe` region, which is assumed to be optimal for access from Croatia.

### The END.
