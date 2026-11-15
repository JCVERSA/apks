package com.alibaba.android.arouter.routes;

import com.alibaba.android.arouter.facade.enums.RouteType;
import com.alibaba.android.arouter.facade.model.RouteMeta;
import com.alibaba.android.arouter.facade.template.IRouteGroup;
import com.transsion.cloud.fileoperate.CloudFileOperate;
import com.transsion.cloud.fragment.CloudFragment;
import com.transsion.moduleservice.CloudDriveServiceImpl;
import com.transsion.playercommon.arouter.VishaRouterTable;
import java.util.Map;

public class ARouter$$Group$$clouddrive implements IRouteGroup {
    @Override
    public void loadInto(Map<String, RouteMeta> map) {
        RouteType routeType = RouteType.PROVIDER;
        map.put(VishaRouterTable.PATH_SERVICE_CLOUDDRIVE, RouteMeta.build(routeType, CloudDriveServiceImpl.class, VishaRouterTable.PATH_SERVICE_CLOUDDRIVE, "clouddrive", null, -1, Integer.MIN_VALUE));
        map.put(VishaRouterTable.PATH_SERVICE_CLOUD_FILE_OPERATE, RouteMeta.build(routeType, CloudFileOperate.class, VishaRouterTable.PATH_SERVICE_CLOUD_FILE_OPERATE, "clouddrive", null, -1, Integer.MIN_VALUE));
        map.put(VishaRouterTable.PATH_PAGE_CLOUD_FRAGMENT, RouteMeta.build(RouteType.FRAGMENT, CloudFragment.class, VishaRouterTable.PATH_PAGE_CLOUD_FRAGMENT, "clouddrive", null, -1, Integer.MIN_VALUE));
    }
}
