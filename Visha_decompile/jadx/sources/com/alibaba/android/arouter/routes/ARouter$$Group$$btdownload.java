package com.alibaba.android.arouter.routes;

import com.alibaba.android.arouter.facade.enums.RouteType;
import com.alibaba.android.arouter.facade.model.RouteMeta;
import com.alibaba.android.arouter.facade.template.IRouteGroup;
import com.transsion.moduleservice.BtDownloadServiceImpl;
import java.util.Map;

public class ARouter$$Group$$btdownload implements IRouteGroup {
    @Override
    public void loadInto(Map<String, RouteMeta> map) {
        map.put("/btdownload/btdownloadservice", RouteMeta.build(RouteType.PROVIDER, BtDownloadServiceImpl.class, "/btdownload/btdownloadservice", "btdownload", null, -1, Integer.MIN_VALUE));
    }
}
