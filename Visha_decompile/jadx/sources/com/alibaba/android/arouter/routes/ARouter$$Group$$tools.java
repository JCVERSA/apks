package com.alibaba.android.arouter.routes;

import com.alibaba.android.arouter.facade.enums.RouteType;
import com.alibaba.android.arouter.facade.model.RouteMeta;
import com.alibaba.android.arouter.facade.template.IRouteGroup;
import com.transsion.playercommon.arouter.VishaRouterTable;
import com.transsion.tools.VishaSettingServiceImpl;
import com.transsion.tools.fragments.SettingFragment;
import java.util.Map;

public class ARouter$$Group$$tools implements IRouteGroup {
    @Override
    public void loadInto(Map<String, RouteMeta> map) {
        map.put(VishaRouterTable.PATH_SERVICE_TOOLS_SETTINGFRAGEMENT, RouteMeta.build(RouteType.FRAGMENT, SettingFragment.class, VishaRouterTable.PATH_SERVICE_TOOLS_SETTINGFRAGEMENT, "tools", null, -1, Integer.MIN_VALUE));
        map.put(VishaRouterTable.PATH_SERVICE_TOOLS_SEVICE, RouteMeta.build(RouteType.PROVIDER, VishaSettingServiceImpl.class, VishaRouterTable.PATH_SERVICE_TOOLS_SEVICE, "tools", null, -1, Integer.MIN_VALUE));
    }
}
