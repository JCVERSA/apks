package com.mbridge.msdk.foundation.same.buffer;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.db.e;
import com.mbridge.msdk.foundation.db.g;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.c;
import com.mbridge.msdk.foundation.entity.d;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.y0;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

public class b {

    private static final String f34528a = "b";

    public static ConcurrentHashMap<String, ConcurrentHashMap<String, c>> f34532e;

    public static ConcurrentHashMap<String, ConcurrentHashMap<String, String>> f34533f;

    public static ConcurrentHashMap<String, CopyOnWriteArrayList<String>> f34534g;

    public static Map<String, List<com.mbridge.msdk.foundation.same.metadata.a>> f34529b = new HashMap();

    public static Map<String, List<com.mbridge.msdk.foundation.same.metadata.a>> f34530c = new HashMap();

    public static Map<String, List<com.mbridge.msdk.foundation.same.metadata.a>> f34531d = new HashMap();

    public static Map<String, List<com.mbridge.msdk.foundation.same.metadata.a>> f34535h = new HashMap();

    public static Map<String, List<com.mbridge.msdk.foundation.same.metadata.a>> f34536i = new HashMap();

    public static Map<String, List<com.mbridge.msdk.foundation.same.metadata.a>> f34537j = new HashMap();

    public static Map<String, List<com.mbridge.msdk.foundation.same.metadata.a>> f34538k = new HashMap();

    public static Map<String, Long> f34539l = new HashMap();

    public static Map<String, List<com.mbridge.msdk.foundation.same.metadata.a>> f34540m = new HashMap();

    public static Map<String, List<com.mbridge.msdk.foundation.same.metadata.a>> f34541n = new HashMap();

    public static void a(String str, String str2, String str3, long j10, long j11, long j12, String str4) {
        if (f34532e == null) {
            f34532e = new ConcurrentHashMap<>();
        }
        try {
            if (!f34532e.containsKey(str)) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(str3);
                ConcurrentHashMap<String, c> concurrentHashMap = new ConcurrentHashMap<>();
                c cVar = new c();
                cVar.a(arrayList);
                cVar.a(j10);
                cVar.b(j11);
                cVar.c(j12);
                cVar.c(str4);
                concurrentHashMap.put(str2, cVar);
                f34532e.put(str, concurrentHashMap);
                return;
            }
            ConcurrentHashMap<String, c> concurrentHashMap2 = f34532e.get(str);
            if (concurrentHashMap2 != null) {
                c cVar2 = concurrentHashMap2.get(str2);
                if (cVar2 != null) {
                    if (cVar2.c() != null) {
                        cVar2.a(j10);
                        cVar2.b(j11);
                        cVar2.c(j12);
                        cVar2.c().add(str3);
                        cVar2.c(str4);
                        return;
                    }
                    return;
                }
                c cVar3 = new c();
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add(str3);
                cVar3.a(arrayList2);
                cVar3.a(j10);
                cVar3.b(j11);
                cVar3.c(j12);
                cVar3.c(str4);
                concurrentHashMap2.put(str2, cVar3);
            }
        } catch (Throwable th2) {
            o0.b(f34528a, th2.getMessage());
        }
    }

    private static Map<String, List<com.mbridge.msdk.foundation.same.metadata.a>> b(String str) {
        str.hashCode();
        switch (str) {
            case "banner":
                return f34530c;
            case "native":
                return f34537j;
            case "reward":
                return f34538k;
            case "splash":
                return f34540m;
            case "h5_native":
                return f34531d;
            case "interstitial":
                return f34536i;
            case "interactive":
                return f34535h;
            default:
                return null;
        }
    }

    public static ConcurrentHashMap<String, c> c(String str) {
        ConcurrentHashMap<String, ConcurrentHashMap<String, c>> concurrentHashMap = f34532e;
        if (concurrentHashMap == null) {
            e eVarA = e.a(g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
            if (eVarA != null) {
                eVarA.b(str, "");
                f34532e = new ConcurrentHashMap<>();
            }
        } else if (concurrentHashMap.containsKey(str)) {
            return f34532e.get(str);
        }
        return null;
    }

    public static String d(String str) {
        ConcurrentHashMap<String, CopyOnWriteArrayList<String>> concurrentHashMap;
        CopyOnWriteArrayList<String> copyOnWriteArrayList;
        return (TextUtils.isEmpty(str) || (concurrentHashMap = f34534g) == null || !concurrentHashMap.containsKey(str) || (copyOnWriteArrayList = f34534g.get(str)) == null || copyOnWriteArrayList.size() <= 0) ? "" : copyOnWriteArrayList.get(0);
    }

    public static void e(String str) {
        ConcurrentHashMap<String, CopyOnWriteArrayList<String>> concurrentHashMap;
        CopyOnWriteArrayList<String> copyOnWriteArrayList;
        if (TextUtils.isEmpty(str) || (concurrentHashMap = f34534g) == null || !concurrentHashMap.containsKey(str) || (copyOnWriteArrayList = f34534g.get(str)) == null || copyOnWriteArrayList.size() <= 0) {
            return;
        }
        copyOnWriteArrayList.remove(0);
    }

    public static void d(String str, String str2) {
        ConcurrentHashMap<String, String> concurrentHashMap;
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        try {
            ConcurrentHashMap<String, ConcurrentHashMap<String, String>> concurrentHashMap2 = f34533f;
            if (concurrentHashMap2 == null || !concurrentHashMap2.containsKey(str) || (concurrentHashMap = f34533f.get(str2)) == null || !concurrentHashMap.containsKey(str2)) {
                return;
            }
            concurrentHashMap.remove(str2);
        } catch (Exception e10) {
            o0.a(f34528a, e10.getMessage());
        }
    }

    public static void c(String str, String str2) {
        ConcurrentHashMap<String, ConcurrentHashMap<String, c>> concurrentHashMap;
        c cVarRemove;
        if (TextUtils.isEmpty(str) || (concurrentHashMap = f34532e) == null || !concurrentHashMap.containsKey(str)) {
            return;
        }
        if (TextUtils.isEmpty(str2)) {
            f34532e.remove(str);
            return;
        }
        ConcurrentHashMap<String, c> concurrentHashMap2 = f34532e.get(str);
        if (concurrentHashMap2 == null || !concurrentHashMap2.containsKey(str2) || (cVarRemove = concurrentHashMap2.remove(str2)) == null) {
            return;
        }
        try {
            String strD = cVarRemove.d();
            if (TextUtils.isEmpty(strD)) {
                return;
            }
            Iterator<Map.Entry<String, c>> it = concurrentHashMap2.entrySet().iterator();
            while (it.hasNext()) {
                if (strD.equals(it.next().getValue().d())) {
                    it.remove();
                }
            }
        } catch (Exception e10) {
            o0.a(f34528a, e10.getMessage());
        }
    }

    public static d b(String str, String str2) {
        ConcurrentHashMap<String, String> concurrentHashMap;
        d dVar = new d();
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return dVar;
        }
        try {
            ConcurrentHashMap<String, ConcurrentHashMap<String, String>> concurrentHashMap2 = f34533f;
            if (concurrentHashMap2 != null && concurrentHashMap2.containsKey(str) && (concurrentHashMap = f34533f.get(str)) != null && concurrentHashMap.containsKey(str2)) {
                dVar.a(1);
                dVar.c(concurrentHashMap.get(str2));
            }
        } catch (Exception e10) {
            o0.a(f34528a, e10.getMessage());
        }
        return dVar;
    }

    public static void a(String str, String str2, int i10) {
        CopyOnWriteArrayList<String> copyOnWriteArrayList;
        if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str)) {
            return;
        }
        if (f34534g == null) {
            f34534g = new ConcurrentHashMap<>();
        }
        try {
            if (f34534g.containsKey(str)) {
                copyOnWriteArrayList = f34534g.get(str);
                copyOnWriteArrayList.add(str2);
            } else {
                CopyOnWriteArrayList<String> copyOnWriteArrayList2 = new CopyOnWriteArrayList<>();
                copyOnWriteArrayList2.add(str2);
                f34534g.put(str, copyOnWriteArrayList2);
                copyOnWriteArrayList = copyOnWriteArrayList2;
            }
            int size = copyOnWriteArrayList.size() - i10;
            if (size >= 0) {
                for (int i11 = 0; i11 < size; i11++) {
                    copyOnWriteArrayList.remove(i11);
                }
            }
        } catch (Exception e10) {
            o0.a(f34528a, e10.getMessage());
        }
    }

    public static void a(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3)) {
            return;
        }
        try {
            if (f34533f == null) {
                f34533f = new ConcurrentHashMap<>();
            }
            if (f34533f.containsKey(str)) {
                if (f34533f.get(str) == null) {
                    ConcurrentHashMap<String, String> concurrentHashMap = new ConcurrentHashMap<>();
                    concurrentHashMap.put(str2, str3);
                    f34533f.put(str, concurrentHashMap);
                    return;
                }
                return;
            }
            ConcurrentHashMap<String, String> concurrentHashMap2 = new ConcurrentHashMap<>();
            concurrentHashMap2.put(str2, str3);
            f34533f.put(str, concurrentHashMap2);
        } catch (Exception e10) {
            o0.a(f34528a, e10.getMessage());
        }
    }

    public static String a(String str, String str2) {
        Map<String, List<com.mbridge.msdk.foundation.same.metadata.a>> mapB;
        List<com.mbridge.msdk.foundation.same.metadata.a> list;
        JSONArray jSONArray = new JSONArray();
        if (TextUtils.isEmpty(str2)) {
            mapB = a(str);
        } else {
            mapB = b(str2);
        }
        if (mapB != null) {
            try {
                if (y0.b(str) && mapB.containsKey(str) && (list = mapB.get(str)) != null && list.size() > 0) {
                    for (int i10 = 0; i10 < list.size(); i10++) {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("2", list.get(i10).a());
                        jSONObject.put("1", list.get(i10).c());
                        jSONArray.put(jSONObject);
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return jSONArray.toString();
    }

    private static Map<String, List<com.mbridge.msdk.foundation.same.metadata.a>> a(String str) {
        if (f34537j.containsKey(str)) {
            return f34537j;
        }
        if (f34538k.containsKey(str)) {
            return f34538k;
        }
        if (f34535h.containsKey(str)) {
            return f34535h;
        }
        if (f34541n.containsKey(str)) {
            return f34541n;
        }
        if (f34536i.containsKey(str)) {
            return f34536i;
        }
        if (f34530c.containsKey(str)) {
            return f34530c;
        }
        if (f34540m.containsKey(str)) {
            return f34540m;
        }
        if (f34531d.containsKey(str)) {
            return f34531d;
        }
        return null;
    }

    public static void a(String str, CampaignEx campaignEx, String str2) {
        Map<String, List<com.mbridge.msdk.foundation.same.metadata.a>> mapB = b(str2);
        if (campaignEx == null || mapB == null) {
            return;
        }
        try {
            if (TextUtils.isEmpty(campaignEx.getId())) {
                return;
            }
            com.mbridge.msdk.foundation.same.metadata.a aVar = new com.mbridge.msdk.foundation.same.metadata.a(campaignEx.getId(), campaignEx.getRequestIdNotice());
            if (mapB.containsKey(str)) {
                List<com.mbridge.msdk.foundation.same.metadata.a> list = mapB.get(str);
                if (list != null && list.size() == 20) {
                    list.remove(0);
                }
                if (list != null) {
                    list.add(aVar);
                    return;
                }
                return;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(aVar);
            mapB.put(str, arrayList);
        } catch (Throwable th2) {
            o0.b(f34528a, th2.getMessage(), th2);
        }
    }
}
