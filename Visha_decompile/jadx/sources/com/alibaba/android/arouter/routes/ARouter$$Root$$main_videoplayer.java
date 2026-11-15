package com.alibaba.android.arouter.routes;

import com.alibaba.android.arouter.facade.template.IRouteGroup;
import com.alibaba.android.arouter.facade.template.IRouteRoot;
import java.util.Map;

public class ARouter$$Root$$main_videoplayer implements IRouteRoot {
    @Override
    public void loadInto(Map<String, Class<? extends IRouteGroup>> map) {
        map.put("videoplayer", ARouter$$Group$$videoplayer.class);
    }
}
