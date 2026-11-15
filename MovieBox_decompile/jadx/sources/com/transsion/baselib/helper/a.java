package com.transsion.baselib.helper;

import com.transsion.web.api.WebConstants;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.Intrinsics;

public final class a {

    public static final a f42121a = new a();

    private static final ConcurrentHashMap f42122b = new ConcurrentHashMap();

    private a() {
    }

    public final void a(String pageName, Map map) {
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(map, "map");
        qi.h.f69682a.z(pageName, map);
    }

    public final void b(String pageName, Map map) {
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(map, "map");
        qi.h.f69682a.o(pageName, map);
    }

    public final void c(String pageName, String dialogName) {
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(dialogName, "dialogName");
        HashMap map = new HashMap();
        map.put("dialog_name", dialogName);
        qi.h.f69682a.p(pageName, map);
    }

    public final void d(Map map) {
        Intrinsics.h(map, "map");
        qi.h.f69682a.r("download_app", map);
    }

    public final void e(String pageName, Map map) {
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(map, "map");
        qi.h.f69682a.z(pageName, map);
    }

    public final void f(String pageName, Map map) {
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(map, "map");
        qi.h.f69682a.o(pageName, map);
    }

    public final void g(String pageName, Map map) {
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(map, "map");
        qi.h.f69682a.o(pageName, map);
    }

    public final void h(String pageName, String moduleName, String str, String str2, String str3, String str4) {
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(moduleName, "moduleName");
        HashMap map = new HashMap();
        map.put("module_name", moduleName);
        if (str != null) {
            map.put("group_id", str);
        }
        if (str2 != null) {
            map.put("subject_id", str2);
        }
        if (str3 != null) {
            map.put("post_id", str3);
        }
        if (str4 != null) {
            map.put("ops", str4);
        }
        qi.h.f69682a.o(pageName, map);
    }

    public final void i(String pageName, Map map) {
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(map, "map");
        qi.h.f69682a.o(pageName, map);
    }

    public final void k(String pageName, String pageFrom, String duration) {
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(pageFrom, "pageFrom");
        Intrinsics.h(duration, "duration");
        HashMap map = new HashMap();
        map.put(WebConstants.PAGE_FROM, pageFrom);
        map.put("duration", duration);
        qi.h.f69682a.q(pageName, "pt", map);
    }

    public final void l(String pageName, Map map) {
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(map, "map");
        qi.h.f69682a.o(pageName, map);
    }

    public final void m(String pageName, List pageTabNameList, boolean z10) {
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(pageTabNameList, "pageTabNameList");
        if (z10) {
            f42122b.clear();
        }
        Iterator it = pageTabNameList.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            ConcurrentHashMap concurrentHashMap = f42122b;
            if (!concurrentHashMap.containsKey(str)) {
                concurrentHashMap.put(str, Boolean.TRUE);
                HashMap map = new HashMap();
                map.put("page_tab_name", str);
                qi.h.f69682a.z(pageName, map);
            }
        }
    }

    public final void n(String pageName, String pageTabName) {
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(pageTabName, "pageTabName");
        HashMap map = new HashMap();
        map.put("page_tab_name", pageTabName);
        qi.h.f69682a.o(pageName, map);
    }
}
