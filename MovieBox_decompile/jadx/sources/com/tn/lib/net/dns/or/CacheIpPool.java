package com.tn.lib.net.dns.or;

import android.text.TextUtils;
import com.blankj.utilcode.util.o;
import com.google.gson.reflect.TypeToken;
import com.tencent.mmkv.MMKV;
import java.util.ArrayList;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class CacheIpPool {

    private static ArrayList f39858b;

    public static final CacheIpPool f39857a = new CacheIpPool();

    private static final ConcurrentHashMap f39859c = new ConcurrentHashMap();

    private static volatile String f39860d = "";

    private static volatile String f39861e = "api6.aoneroom.com";

    private static volatile String f39862f = "test-mse-api.aoneroom.com";

    private static volatile String f39863g = "https";

    private static final Lazy f39864h = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return CacheIpPool.e();
        }
    });

    private static final Lazy f39865i = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return CacheIpPool.f();
        }
    });

    private static final Lazy f39866j = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return CacheIpPool.d();
        }
    });

    private CacheIpPool() {
    }

    public static final String d() {
        if (ag.a.f344a.d()) {
            return "https://" + f39862f;
        }
        return "https://" + f39861e;
    }

    public static final String e() {
        return "[\n{\n\"host\": \"" + f39861e + "\",\n\"ip\": \"\",\n\"scheme\": \"https\"\n}\n]";
    }

    public static final String f() {
        return "[{\n    \"host\": \"" + f39862f + "\",\n    \"ip\": \"8.219.92.106\",\n    \"scheme\": \"https\"\n}]";
    }

    private final String i() {
        return (String) f39866j.getValue();
    }

    private final String j() {
        return (String) f39864h.getValue();
    }

    private final String k() {
        return (String) f39865i.getValue();
    }

    public final String g() {
        if (TextUtils.isEmpty(f39860d)) {
            f39860d = i();
        }
        return f39860d;
    }

    public final void h() {
        String str;
        AddressItem addressItem;
        AddressItem addressItem2;
        try {
            ArrayList<AddressItem> arrayList = (ArrayList) o.e(ag.c.f353a.a("key_ip_list", ag.a.f344a.d() ? k() : j()), new TypeToken<ArrayList<AddressItem>>() {
            }.getType());
            f39858b = arrayList;
            if (arrayList != null) {
                for (AddressItem addressItem3 : arrayList) {
                    String host = addressItem3.getHost();
                    if (host != null && host.length() > 0) {
                        addressItem3.setIpEnable(true);
                        f39859c.put(addressItem3.getHost(), addressItem3);
                    }
                }
            }
            ArrayList arrayList2 = f39858b;
            if (arrayList2 == null || !(!arrayList2.isEmpty())) {
                str = f39860d;
            } else {
                ArrayList arrayList3 = f39858b;
                String host2 = null;
                f39863g = String.valueOf((arrayList3 == null || (addressItem2 = (AddressItem) arrayList3.get(0)) == null) ? null : addressItem2.getScheme());
                ArrayList arrayList4 = f39858b;
                if (arrayList4 != null && (addressItem = (AddressItem) arrayList4.get(0)) != null) {
                    host2 = addressItem.getHost();
                }
                f39861e = String.valueOf(host2);
                str = f39863g + "://" + f39861e;
            }
            f39860d = str;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public final String l() {
        MMKV mmkvC = mg.a.f66402a.c();
        String string = mmkvC != null ? mmkvC.getString("mock_host_key", "") : null;
        if (!TextUtils.isEmpty(string)) {
            f39861e = String.valueOf(string);
        }
        return f39861e;
    }

    public final String m() {
        return f39863g;
    }

    public final void n(String str) {
        if (!TextUtils.isEmpty(str)) {
            ag.c.f353a.b("key_ip_list", String.valueOf(str));
        }
        h();
    }

    public final void o(String host) {
        Intrinsics.h(host, "host");
        f39861e = host;
    }
}
