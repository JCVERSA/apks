package com.alibaba.android.arouter.routes;

import com.alibaba.android.arouter.facade.template.IRouteGroup;
import com.alibaba.android.arouter.facade.template.IRouteRoot;
import defpackage.hb0;
import java.util.Map;

public class ARouter$$Root$$clouddrive implements IRouteRoot {
    @Override
    public void loadInto(Map<String, Class<? extends IRouteGroup>> map) {
        map.put(hb0.CLOUD, ARouter$$Group$$cloud.class);
        map.put("clouddrive", ARouter$$Group$$clouddrive.class);
    }
}
