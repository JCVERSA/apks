package com.tmc.monitor;

import android.os.Bundle;
import android.text.TextUtils;
import com.cloud.tmc.integration.athena.Constants;
import com.tmc.network.NetworkConfig;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArraySet;
import pf.b;
import pf.c;

public class AppMonitor {

    private static Set f39826b = new CopyOnWriteArraySet();

    private static Map f39827c = new ConcurrentHashMap();

    private static Map f39828d = new ConcurrentHashMap();

    private int f39829a;

    private static class a {

        private static AppMonitor f39830a = new AppMonitor();
    }

    public void b(c cVar) {
        List<Field> list;
        try {
            Class<?> cls = cVar.getClass();
            if (!f39826b.contains(cls)) {
                e(cls);
            }
            b bVar = (b) cls.getAnnotation(b.class);
            if (bVar == null) {
                return;
            }
            String strId = bVar.id();
            String strName = bVar.name();
            if (TextUtils.isEmpty(strId) || (list = (List) f39827c.get(cls)) == null) {
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putString("object_id", strId);
            bundle.putString("object_name", strName);
            for (Field field : list) {
                String str = (String) f39828d.get(field);
                Class<?> type = field.getType();
                if (type.isAssignableFrom(Integer.TYPE)) {
                    bundle.putInt(str, field.getInt(cVar));
                } else if (type.isAssignableFrom(Long.TYPE)) {
                    bundle.putLong(str, field.getLong(cVar));
                } else if (type.isAssignableFrom(Boolean.TYPE)) {
                    bundle.putBoolean(str, field.getBoolean(cVar));
                } else if (type.isAssignableFrom(Character.TYPE)) {
                    bundle.putChar(str, field.getChar(cVar));
                } else if (type.isAssignableFrom(Byte.TYPE)) {
                    bundle.putByte(str, field.getByte(cVar));
                } else if (type.isAssignableFrom(Short.TYPE)) {
                    bundle.putShort(str, field.getShort(cVar));
                } else if (type.isAssignableFrom(Float.TYPE)) {
                    bundle.putFloat(str, field.getFloat(cVar));
                } else if (type.isAssignableFrom(Double.TYPE)) {
                    bundle.putDouble(str, field.getDouble(cVar));
                } else if (type.isAssignableFrom(String.class)) {
                    bundle.putString(str, (String) field.get(cVar));
                } else {
                    rf.b.f71178a.c(" error type = " + type + ", fieldName = " + str);
                }
            }
            rf.b.f71178a.c(" Bundle data = " + bundle.toString());
            new hi.a("network", this.f39829a).c(bundle, null).b();
        } catch (Throwable th2) {
            rf.b.f71178a.e(th2);
        }
    }

    public static AppMonitor d() {
        return a.f39830a;
    }

    private void e(Class cls) {
        if (cls != null) {
            try {
                if (f39826b.contains(cls) || ((b) cls.getAnnotation(b.class)) == null) {
                    return;
                }
                Field[] declaredFields = cls.getDeclaredFields();
                ArrayList arrayList = new ArrayList();
                for (Field field : declaredFields) {
                    if (((pf.a) field.getAnnotation(pf.a.class)) != null) {
                        field.setAccessible(true);
                        arrayList.add(field);
                        f39828d.put(field, field.getName());
                    }
                }
                f39827c.put(cls, arrayList);
                f39826b.add(cls);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public void c(final c cVar) {
        if (cVar != null) {
            try {
                NetworkConfig networkConfig = NetworkConfig.INSTANCE;
                if (networkConfig.isNetworkMonitorEnable()) {
                    if (((int) (Math.random() * 1000.0d)) <= networkConfig.getAppMonitorRandom()) {
                        rf.c.f71183c.a().a(new Runnable() {
                            @Override
                            public void run() {
                                AppMonitor.this.b(cVar);
                            }
                        });
                        return;
                    }
                    rf.b.f71178a.c("abort report. data = " + cVar.toString());
                }
            } catch (Throwable th2) {
                rf.b.f71178a.e(th2);
            }
        }
    }

    private AppMonitor() {
        this.f39829a = Constants.MINI_APPID;
        NetworkConfig networkConfig = NetworkConfig.INSTANCE;
        if (networkConfig.getAppMonitorId() != -1) {
            this.f39829a = networkConfig.getAppMonitorId();
        }
    }
}
