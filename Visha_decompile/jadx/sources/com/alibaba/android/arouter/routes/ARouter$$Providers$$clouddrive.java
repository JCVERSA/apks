package com.alibaba.android.arouter.routes;

import com.alibaba.android.arouter.facade.enums.RouteType;
import com.alibaba.android.arouter.facade.model.RouteMeta;
import com.alibaba.android.arouter.facade.template.IProviderGroup;
import com.transsion.cloud.fileoperate.CloudFileOperate;
import com.transsion.moduleservice.CloudDriveServiceImpl;
import com.transsion.playercommon.arouter.VishaRouterTable;
import java.util.Map;

public class ARouter$$Providers$$clouddrive implements IProviderGroup {
    @Override
    public void loadInto(Map<String, RouteMeta> map) {
        RouteType routeType = RouteType.PROVIDER;
        map.put("com.transsion.moduleservice.ICloudDriveService", RouteMeta.build(routeType, CloudDriveServiceImpl.class, VishaRouterTable.PATH_SERVICE_CLOUDDRIVE, "clouddrive", null, -1, Integer.MIN_VALUE));
        map.put("com.transsion.magicvideo.services.ICloudFileService", RouteMeta.build(routeType, CloudFileOperate.class, VishaRouterTable.PATH_SERVICE_CLOUD_FILE_OPERATE, "clouddrive", null, -1, Integer.MIN_VALUE));
    }
}
