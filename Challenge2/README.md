The code has been written in PS and has been successfully tested in ISE.

Usage:
1. Run the Script on ISE or PowerShell
2. User will be prompted to input the VMName and RG Name.
3. Please input 
    VMName = Test
    RG = Test_RG 
4. Output will be shown in JSON format for readability
5. Particular key value pair can be retrieved by iterating on $output. 
Such as "$output.id" gives "/subscriptions/34aac23e-1b29-4fe3-b0d8-5d8ea2314992/resourceGroups/Test_RG/providers/Microsoft.Compute/virtualMachines/Test"
6. Please use the following command to install Az module if PS is not able to recognize the commands:
Install-Module -Name Az -Repository PSGallery

Considerations:
1. Error handling is in place
2. Comments have been added to the PS, wherever needed.
3. For testing purposes key has been passed as a string, actual scenario it should be securely passed into a KV or cred object or secure variable.
4. Preferrable method is to run the last two commands only via ADO through Service Connection as it would take care of the connection.

**PFB the sample output:**

{
    "ResourceGroupName":  "Test_RG",
    "Id":  "/subscriptions/34aac23e-1b29-4fe3-b0d8-5d8ea2314992/resourceGroups/Test_RG/providers/Microsoft.Compute/virtualMachines/Test",
    "VmId":  "298f1a0c-9d2d-45f0-b962-ebefb0afeeb1",
    "Name":  "Test",
    "Type":  "Microsoft.Compute/virtualMachines",
    "Location":  "centralindia",
    "ExtendedLocation":  null,
    "LicenseType":  null,
    "Tags":  {

             },
    "AvailabilitySetReference":  null,
    "DiagnosticsProfile":  {
                               "BootDiagnostics":  {
                                                       "Enabled":  true,
                                                       "StorageUri":  null
                                                   }
                           },
    "Extensions":  [

                   ],
    "HardwareProfile":  {
                            "VmSize":  "Standard_B1s",
                            "VmSizeProperties":  null
                        },
    "InstanceView":  null,
    "NetworkProfile":  {
                           "NetworkInterfaces":  [
                                                     "Microsoft.Azure.Management.Compute.Models.NetworkInterfaceReference"
                                                 ],
                           "NetworkApiVersion":  null,
                           "NetworkInterfaceConfigurations":  null
                       },
    "SecurityProfile":  null,
    "OSProfile":  {
                      "ComputerName":  "Test",
                      "AdminUsername":  "dheerajsahni",
                      "AdminPassword":  null,
                      "CustomData":  null,
                      "WindowsConfiguration":  {
                                                   "ProvisionVMAgent":  true,
                                                   "EnableAutomaticUpdates":  true,
                                                   "TimeZone":  null,
                                                   "AdditionalUnattendContent":  null,
                                                   "PatchSettings":  "Microsoft.Azure.Management.Compute.Models.PatchSettings",
                                                   "WinRM":  null,
                                                   "EnableVMAgentPlatformUpdates":  false
                                               },
                      "LinuxConfiguration":  null,
                      "Secrets":  [

                                  ],
                      "AllowExtensionOperations":  true,
                      "RequireGuestProvisionSignal":  true
                  },
    "BillingProfile":  null,
    "Plan":  null,
    "ProvisioningState":  "Succeeded",
    "StorageProfile":  {
                           "ImageReference":  {
                                                  "Publisher":  "MicrosoftWindowsServer",
                                                  "Offer":  "WindowsServer",
                                                  "Sku":  "2022-datacenter-azure-edition",
                                                  "Version":  "latest",
                                                  "ExactVersion":  "20348.1249.221105",
                                                  "SharedGalleryImageId":  null,
                                                  "CommunityGalleryImageId":  null,
                                                  "Id":  null
                                              },
                           "OsDisk":  {
                                          "OsType":  0,
                                          "EncryptionSettings":  null,
                                          "Name":  "Test_disk1_4250906eee584979949113a36df680b9",
                                          "Vhd":  null,
                                          "Image":  null,
                                          "Caching":  2,
                                          "WriteAcceleratorEnabled":  null,
                                          "DiffDiskSettings":  null,
                                          "CreateOption":  "FromImage",
                                          "DiskSizeGB":  null,
                                          "ManagedDisk":  "Microsoft.Azure.Management.Compute.Models.ManagedDiskParameters",
                                          "DeleteOption":  "Delete"
                                      },
                           "DataDisks":  [

                                         ],
                           "DiskControllerType":  null
                       },
    "DisplayHint":  0,
    "Identity":  {
                     "PrincipalId":  "6453866d-d6a5-4c31-a73f-a81b8766719e",
                     "TenantId":  "fef74bb7-1c96-452f-a8eb-1082b0e72c84",
                     "Type":  0,
                     "UserAssignedIdentities":  null
                 },
    "Zones":  [
                  "1"
              ],
    "FullyQualifiedDomainName":  null,
    "AdditionalCapabilities":  null,
    "ProximityPlacementGroup":  null,
    "Host":  null,
    "VirtualMachineScaleSet":  null,
    "EvictionPolicy":  null,
    "Priority":  null,
    "HostGroup":  null,
    "CapacityReservation":  null,
    "UserData":  null,
    "ApplicationProfile":  null,
    "PlatformFaultDomain":  null,
    "TimeCreated":  "\/Date(1670172499821)\/",
    "RequestId":  "e5b74d0d-a7de-4a86-a822-12ab4dbdd4a5",
    "StatusCode":  200
}
