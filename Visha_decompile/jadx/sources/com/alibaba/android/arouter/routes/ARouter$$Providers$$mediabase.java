package com.alibaba.android.arouter.routes;

import com.alibaba.android.arouter.facade.enums.RouteType;
import com.alibaba.android.arouter.facade.model.RouteMeta;
import com.alibaba.android.arouter.facade.template.IProviderGroup;
import com.transsion.moduleservice.M3U8MergeServiceImpl;
import java.util.Map;

public class ARouter$$Providers$$mediabase implements IProviderGroup {
    @Override
    public void loadInto(Map<String, RouteMeta> map) {
        map.put("com.transsion.moduleservice.IM3U8MergeService", RouteMeta.build(RouteType.PROVIDER, M3U8MergeServiceImpl.class, "/mediabase/M3U8MergeService", "mediabase", null, -1, Integer.MIN_VALUE));
    }
}
