package com.alibaba.android.arouter.routes;

import com.alibaba.android.arouter.facade.enums.RouteType;
import com.alibaba.android.arouter.facade.model.RouteMeta;
import com.alibaba.android.arouter.facade.template.IRouteGroup;
import com.transsion.cloud.activity.SearchCloudActivity;
import defpackage.hb0;
import java.util.Map;

public class ARouter$$Group$$cloud implements IRouteGroup {
    @Override
    public void loadInto(Map<String, RouteMeta> map) {
        map.put("/cloud/searchcloudactivity", RouteMeta.build(RouteType.ACTIVITY, SearchCloudActivity.class, "/cloud/searchcloudactivity", hb0.CLOUD, null, -1, Integer.MIN_VALUE));
    }
}
