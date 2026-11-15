package cm;

import android.text.TextUtils;
import com.blankj.utilcode.util.o;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.transsion.base.report.athena.sampler.EventConfig;
import com.transsion.mb.config.manager.ConfigBean;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public final class f {

    public static final a f17019c = new a(null);

    private static final Lazy f17020d = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return f.g();
        }
    });

    private static HashSet f17021e = new HashSet();

    private final HashMap f17022a = new HashMap();

    private final HashSet f17023b = new HashSet();

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final f a() {
            return (f) f.f17020d.getValue();
        }

        private a() {
        }
    }

    public static ConfigBean d(f fVar, String str, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = true;
        }
        return fVar.c(str, z10);
    }

    private final String e() {
        String str = new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault()).format(Calendar.getInstance().getTime());
        Intrinsics.g(str, "format(...)");
        return str;
    }

    private final ConfigBean f(String str) {
        d dVar = d.f17015a;
        String string = dVar.e().getString(str, "");
        if (string != null && string.length() != 0) {
            return (ConfigBean) o.d(string, ConfigBean.class);
        }
        String string2 = dVar.f().getString(str, "");
        int iC = i.c(i.f17024a, str, 0, 2, null);
        if (iC >= 0 && string2 != null && string2.length() != 0) {
            JsonArray asJsonArray = ((JsonObject) o.d(string2, JsonObject.class)).get(str).getAsJsonArray();
            if (asJsonArray.size() > iC) {
                String string3 = asJsonArray.get(iC).toString();
                Intrinsics.g(string3, "toString(...)");
                ConfigBean configBean = (ConfigBean) o.d(string3, ConfigBean.class);
                dVar.e().putString(str, string3);
                return configBean;
            }
        }
        return null;
    }

    public static final f g() {
        return new f();
    }

    private final void h(ConfigBean configBean) {
        if (TextUtils.isEmpty(configBean.getOps())) {
            return;
        }
        HashMap map = new HashMap();
        map.put("key", configBean.getKey());
        map.put("ops", configBean.getOps());
        map.put("isFirebase", String.valueOf(configBean.getIsFirebase()));
        qi.h.f69682a.r("config_ab_result", map);
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0021  */
    public final ConfigBean c(String key, boolean z10) {
        ConfigBean configBeanF;
        Intrinsics.h(key, "key");
        if (this.f17022a.containsKey(key)) {
            configBeanF = (ConfigBean) this.f17022a.get(key);
            if (z10 && configBeanF != null && configBeanF.getHasUpdate()) {
                configBeanF = null;
            }
        } else {
            configBeanF = null;
        }
        if (configBeanF == null) {
            String string = d.f17015a.g().getString(key, null);
            try {
                if (!TextUtils.isEmpty(string)) {
                    configBeanF = (ConfigBean) o.d(string, ConfigBean.class);
                }
                if (configBeanF == null && f17021e.contains(key)) {
                    configBeanF = f(key);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            this.f17022a.put(key, configBeanF);
        }
        String str = key + e();
        if (configBeanF != null && !this.f17023b.contains(str)) {
            h(configBeanF);
            this.f17023b.add(str);
        }
        return configBeanF;
    }

    public final void i(com.google.firebase.remoteconfig.a firebaseRemoteConfig) {
        Intrinsics.h(firebaseRemoteConfig, "firebaseRemoteConfig");
        Set<String> setM = firebaseRemoteConfig.m("");
        Intrinsics.g(setM, "getKeysByPrefix(...)");
        for (String str : setM) {
            ConfigBean configBean = new ConfigBean();
            configBean.setKey(str);
            configBean.setValue(firebaseRemoteConfig.p(str));
            configBean.setFirebase(true);
            d.f17015a.g().putString(str, o.j(configBean));
        }
    }

    public final void j(JsonArray items) {
        Intrinsics.h(items, "items");
        Iterator<JsonElement> it = items.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            JsonObject asJsonObject = it.next().getAsJsonObject();
            Intrinsics.g(asJsonObject, "getAsJsonObject(...)");
            String asString = asJsonObject.get("key").getAsString();
            d dVar = d.f17015a;
            String string = dVar.g().getString(asString, null);
            if (string == null || string.length() == 0 || !StringsKt.c0(string, "\"isFirebase\":true", false, 2, null)) {
                dVar.g().putString(asString, asJsonObject.toString());
            }
        }
        ConfigBean configBeanD = d(this, "point_config", false, 2, null);
        EventConfig.f41878a.j(configBeanD != null ? configBeanD.getValue() : null);
        Iterator it2 = this.f17022a.entrySet().iterator();
        while (it2.hasNext()) {
            ConfigBean configBean = (ConfigBean) ((Map.Entry) it2.next()).getValue();
            if (configBean != null) {
                configBean.setHasUpdate(true);
            }
        }
    }
}
