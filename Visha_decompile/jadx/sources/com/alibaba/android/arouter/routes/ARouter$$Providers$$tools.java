package com.alibaba.android.arouter.routes;

import com.alibaba.android.arouter.facade.enums.RouteType;
import com.alibaba.android.arouter.facade.model.RouteMeta;
import com.alibaba.android.arouter.facade.template.IProviderGroup;
import com.transsion.playercommon.arouter.VishaRouterTable;
import com.transsion.tools.VishaSettingServiceImpl;
import java.util.Map;

public class ARouter$$Providers$$tools implements IProviderGroup {
    @Override
    public void loadInto(Map<String, RouteMeta> map) {
        map.put("com.transsion.moduleservice.IVishaSettingService", RouteMeta.build(RouteType.PROVIDER, VishaSettingServiceImpl.class, VishaRouterTable.PATH_SERVICE_TOOLS_SEVICE, "tools", null, -1, Integer.MIN_VALUE));
    }
}
