package com.transsion.usercenter.me;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

public final class k {

    public static final k f54876a = new k();

    private static String f54877b;

    private k() {
    }

    public final void a(String moduleName) {
        Intrinsics.h(moduleName, "moduleName");
        HashMap map = new HashMap();
        String str = f54877b;
        if (str == null) {
            str = "";
        }
        map.put("user_id", str);
        map.put("user_status", "me");
        map.put("module_name", moduleName);
        qi.h.f69682a.z("profiledetail", map);
    }

    public final void b(String moduleName) {
        Intrinsics.h(moduleName, "moduleName");
        HashMap map = new HashMap();
        String str = f54877b;
        if (str == null) {
            str = "";
        }
        map.put("user_id", str);
        map.put("user_status", "me");
        map.put("module_name", moduleName);
        qi.h.f69682a.o("profiledetail", map);
    }

    public final void c(String moduleName, int i10) {
        Intrinsics.h(moduleName, "moduleName");
        HashMap map = new HashMap();
        String str = f54877b;
        if (str == null) {
            str = "";
        }
        map.put("user_id", str);
        map.put("user_status", "me");
        map.put("module_name", moduleName);
        map.put(RequestParameters.POSITION, String.valueOf(i10));
        qi.h.f69682a.o("profiledetail", map);
    }

    public final void d(String str) {
        f54877b = str;
    }
}
