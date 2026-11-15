package com.alibaba.android.arouter.routes;

import com.alibaba.android.arouter.facade.enums.RouteType;
import com.alibaba.android.arouter.facade.model.RouteMeta;
import com.alibaba.android.arouter.facade.template.IProviderGroup;
import com.transsion.moduleservice.onlinevideoservice.OnlineVideoServiceImpl;
import com.transsion.playercommon.arouter.VishaRouterTable;
import java.util.Map;

public class ARouter$$Providers$$onlinevideo implements IProviderGroup {
    @Override
    public void loadInto(Map<String, RouteMeta> map) {
        map.put("com.transsion.moduleservice.IOnlineVideoService", RouteMeta.build(RouteType.PROVIDER, OnlineVideoServiceImpl.class, VishaRouterTable.PATH_SERVICE_ONLINEVIDEO, "onlinevideo", null, -1, Integer.MIN_VALUE));
    }
}
