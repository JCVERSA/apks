package com.snaptube.plugin;

import android.text.TextUtils;
import com.dayuwuxian.em.api.proto.PluginInfo;
import com.google.gson.JsonParseException;
import com.google.gson.reflect.TypeToken;
import com.snaptube.premium.configs.Config;
import com.snaptube.util.ProductionEnv;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import o.c16;
import o.j23;

public final class PluginInfoCache {
    public final Map a = new ConcurrentHashMap();

    public class AnonymousClass1 extends TypeToken<PluginInfo> {
        public AnonymousClass1() {
        }
    }

    public static String a(String str) {
        return "PLUGIN_INFO_" + str;
    }

    public PluginInfo b(PluginId pluginId) {
        if (pluginId == null) {
            return null;
        }
        PluginInfo pluginInfo = (PluginInfo) this.a.get(pluginId.getName());
        if (pluginInfo != null) {
            return pluginInfo;
        }
        String string = Config.b0().getString(a(pluginId.getName()), "");
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        try {
            PluginInfo pluginInfo2 = (PluginInfo) j23.c(string, new AnonymousClass1().getType());
            if (pluginInfo2 != null && c16.w(pluginInfo2) && c16.y(pluginId.getRequiredMinVersion(), pluginInfo2.version)) {
                this.a.put(pluginInfo2.name, pluginInfo2);
            }
            return pluginInfo2;
        } catch (JsonParseException e) {
            e.printStackTrace();
            return null;
        } catch (Throwable th) {
            ProductionEnv.throwExceptForDebugging(th);
            return null;
        }
    }

    public boolean c() {
        Map map = this.a;
        return (map == null || map.isEmpty()) ? false : true;
    }

    public void d(PluginInfo pluginInfo) {
        if (pluginInfo == null || !c16.w(pluginInfo)) {
            return;
        }
        this.a.put(pluginInfo.name, pluginInfo);
        String strA = a(pluginInfo.name);
        try {
            Config.b0().edit().putString(strA, j23.h(pluginInfo)).apply();
        } catch (Exception e) {
            ProductionEnv.logException("ToJsonException", e);
        }
    }
}
