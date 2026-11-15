package com.alibaba.android.arouter.routes;

import com.alibaba.android.arouter.facade.enums.RouteType;
import com.alibaba.android.arouter.facade.model.RouteMeta;
import com.alibaba.android.arouter.facade.template.IRouteGroup;
import com.transsion.moduleservice.M3U8MergeServiceImpl;
import java.util.Map;

public class ARouter$$Group$$mediabase implements IRouteGroup {
    @Override
    public void loadInto(Map<String, RouteMeta> map) {
        map.put("/mediabase/M3U8MergeService", RouteMeta.build(RouteType.PROVIDER, M3U8MergeServiceImpl.class, "/mediabase/m3u8mergeservice", "mediabase", null, -1, Integer.MIN_VALUE));
    }
}
