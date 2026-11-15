package com.alibaba.android.arouter.core;

import android.content.Context;
import android.util.LruCache;
import com.alibaba.android.arouter.facade.annotation.Route;
import com.alibaba.android.arouter.facade.service.AutowiredService;
import com.alibaba.android.arouter.facade.template.ISyringe;
import com.alibaba.android.arouter.utils.Consts;
import io.appmetrica.analytics.coreutils.internal.system.ConstantDeviceInfo;
import java.util.ArrayList;
import java.util.List;

@Route(path = "/arouter/service/autowired")
public class AutowiredServiceImpl implements AutowiredService {
    private List<String> blackList;
    private LruCache<String, ISyringe> classCache;

    private void doInject(Object obj, Class<?> cls) {
        if (cls == null) {
            cls = obj.getClass();
        }
        ISyringe syringe = getSyringe(cls);
        if (syringe != null) {
            syringe.inject(obj);
        }
        Class<? super Object> superclass = cls.getSuperclass();
        if (superclass == null || superclass.getName().startsWith(ConstantDeviceInfo.APP_PLATFORM)) {
            return;
        }
        doInject(obj, superclass);
    }

    private ISyringe getSyringe(Class<?> cls) {
        String name = cls.getName();
        try {
            if (!this.blackList.contains(name)) {
                ISyringe iSyringe = this.classCache.get(name);
                if (iSyringe == null) {
                    iSyringe = (ISyringe) Class.forName(cls.getName() + Consts.SUFFIX_AUTOWIRED).getConstructor(null).newInstance(null);
                }
                this.classCache.put(name, iSyringe);
                return iSyringe;
            }
        } catch (Exception unused) {
            this.blackList.add(name);
        }
        return null;
    }

    @Override
    public void autowire(Object obj) {
        doInject(obj, null);
    }

    @Override
    public void init(Context context) {
        this.classCache = new LruCache<>(50);
        this.blackList = new ArrayList();
    }
}
