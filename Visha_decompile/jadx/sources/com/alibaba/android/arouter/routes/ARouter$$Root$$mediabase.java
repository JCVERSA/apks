package com.alibaba.android.arouter.routes;

import com.alibaba.android.arouter.facade.template.IRouteGroup;
import com.alibaba.android.arouter.facade.template.IRouteRoot;
import java.util.Map;

public class ARouter$$Root$$mediabase implements IRouteRoot {
    @Override
    public void loadInto(Map<String, Class<? extends IRouteGroup>> map) {
        map.put("mediabase", ARouter$$Group$$mediabase.class);
    }
}
