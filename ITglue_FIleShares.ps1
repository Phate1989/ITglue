import-module itglueapi
Add-ITGlueBaseURI -base_uri https://api.itglue.com
Add-ITGlueAPIKey -Api_Key ITG.bd9adfc93f66ecff04789ea8613192.-59ev8wEaEE7MdcPO
$FormatEnumerationLimit = -1

#Get-ITGlueFlexibleAssetTypes | convertto-json | out-file C:\Scripts\ExportTempData\asset.json 
Get-ITGlueFlexibleAssets -filter_flexible_asset_type_id 18688 | convertto-json | out-file C:\Scripts\ExportTempData\fileshare.json 

#Get-ITGlueOrganizations -filter_organization_id "2062821" | convertto-json | out-file C:\Scripts\ExportTempData\orgs.json 

 $data = @{
    type = 'flexible-asset-types'
    attributes = @{
        organization_id =  '2062821'
        traits =@{
        }
    }
} 

New-ITGlueFlexibleAssets -data $data 

#Get-ITGlueFlexibleAssets -filter_flexible_asset_type_id 18688 -filter_organization_id 2062821



