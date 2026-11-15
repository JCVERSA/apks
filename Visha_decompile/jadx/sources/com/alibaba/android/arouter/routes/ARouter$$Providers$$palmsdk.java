package com.alibaba.android.arouter.routes;

import com.alibaba.android.arouter.facade.enums.RouteType;
import com.alibaba.android.arouter.facade.model.RouteMeta;
import com.alibaba.android.arouter.facade.template.IProviderGroup;
import com.transsion.palmsdk.PalmSDKServiceImpl;
import java.util.Map;

public class ARouter$$Providers$$palmsdk implements IProviderGroup {
    @Override
    public void loadInto(Map<String, RouteMeta> map) {
        map.put("com.transsion.moduleservice.IPalmSDKService", RouteMeta.build(RouteType.PROVIDER, PalmSDKServiceImpl.class, "/palmsdk/palmsdkservice", "palmsdk", null, -1, Integer.MIN_VALUE));
    }
}
