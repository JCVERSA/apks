package com.alibaba.android.arouter.routes;

import com.alibaba.android.arouter.facade.enums.RouteType;
import com.alibaba.android.arouter.facade.model.RouteMeta;
import com.alibaba.android.arouter.facade.template.IProviderGroup;
import com.transsion.moduleservice.BtDownloadServiceImpl;
import java.util.Map;

public class ARouter$$Providers$$btdownload implements IProviderGroup {
    @Override
    public void loadInto(Map<String, RouteMeta> map) {
        map.put("com.transsion.moduleservice.IBtDownloadService", RouteMeta.build(RouteType.PROVIDER, BtDownloadServiceImpl.class, "/btdownload/btdownloadservice", "btdownload", null, -1, Integer.MIN_VALUE));
    }
}
