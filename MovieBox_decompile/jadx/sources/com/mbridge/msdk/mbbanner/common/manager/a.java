package com.mbridge.msdk.mbbanner.common.manager;

import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.same.report.metrics.e;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.out.MBridgeIds;
import com.mbridge.msdk.setting.h;
import com.mbridge.msdk.setting.l;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class a {

    private static final String f35222g = "a";

    private static volatile a f35223h;

    private Context f35224a = com.mbridge.msdk.foundation.controller.c.m().d();

    private com.mbridge.msdk.mbbanner.common.util.a f35225b = new com.mbridge.msdk.mbbanner.common.util.a();

    private Map<String, com.mbridge.msdk.mbbanner.common.data.b> f35226c = new ConcurrentHashMap();

    private Map<String, Boolean> f35227d = new ConcurrentHashMap();

    private Map<String, Handler> f35228e = new ConcurrentHashMap();

    private Map<String, Integer> f35229f = new ConcurrentHashMap();

    class C0474a implements com.mbridge.msdk.mbbanner.common.listener.d {

        final com.mbridge.msdk.mbbanner.common.data.a f35230a;

        C0474a(com.mbridge.msdk.mbbanner.common.data.a aVar) {
            this.f35230a = aVar;
        }

        @Override
        public void a(String str) {
            synchronized (a.b()) {
                this.f35230a.a("");
                a.this.f35227d.put(str, Boolean.FALSE);
            }
        }
    }

    class b implements Runnable {

        final String f35232a;

        final MBridgeIds f35233b;

        final com.mbridge.msdk.mbbanner.common.listener.b f35234c;

        final String f35235d;

        final com.mbridge.msdk.mbbanner.common.data.a f35236e;

        b(String str, MBridgeIds mBridgeIds, com.mbridge.msdk.mbbanner.common.listener.b bVar, String str2, com.mbridge.msdk.mbbanner.common.data.a aVar) {
            this.f35232a = str;
            this.f35233b = mBridgeIds;
            this.f35234c = bVar;
            this.f35235d = str2;
            this.f35236e = aVar;
        }

        @Override
        public void run() {
            Boolean bool;
            if (a.this.f35227d == null || !a.this.f35227d.containsKey(this.f35232a) || (bool = (Boolean) a.this.f35227d.get(this.f35232a)) == null || !bool.booleanValue()) {
                if (a.this.f35229f.containsKey(this.f35232a)) {
                    Integer num = (Integer) a.this.f35229f.get(this.f35232a);
                    int iIntValue = num != null ? num.intValue() : 0;
                    if (iIntValue == 2 || iIntValue == 4) {
                        o0.b(a.f35222g, "doUnitRotation: autoRotationStatus=" + iIntValue + " && unitId=" + this.f35232a);
                        if (a.this.f35225b != null) {
                            com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880026);
                            bVar.a(this.f35233b);
                            a.this.f35225b.a(this.f35234c, bVar);
                            return;
                        }
                        return;
                    }
                }
                a.this.b(this.f35235d, this.f35232a, this.f35236e, this.f35234c);
            }
        }
    }

    private a() {
    }

    public static a b() {
        if (f35223h == null) {
            synchronized (a.class) {
                try {
                    if (f35223h == null) {
                        f35223h = new a();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f35223h;
    }

    public void c() {
        Map<String, com.mbridge.msdk.mbbanner.common.data.b> map = this.f35226c;
        if (map != null) {
            map.clear();
        }
        Map<String, Boolean> map2 = this.f35227d;
        if (map2 != null) {
            map2.clear();
        }
        Map<String, Handler> map3 = this.f35228e;
        if (map3 != null) {
            for (Map.Entry<String, Handler> entry : map3.entrySet()) {
                if (entry.getValue() != null) {
                    entry.getValue().removeCallbacksAndMessages(null);
                }
            }
            this.f35228e.clear();
        }
        Map<String, Integer> map4 = this.f35229f;
        if (map4 != null) {
            map4.clear();
        }
    }

    private com.mbridge.msdk.mbbanner.common.data.b a(String str) {
        if (this.f35226c.containsKey(str)) {
            return this.f35226c.get(str);
        }
        l lVarE = h.b().e(com.mbridge.msdk.foundation.controller.c.m().b(), str);
        if (lVarE == null) {
            lVarE = l.i(str);
        }
        com.mbridge.msdk.mbbanner.common.data.b bVar = new com.mbridge.msdk.mbbanner.common.data.b(str, "", 0, lVarE.y());
        this.f35226c.put(str, bVar);
        return bVar;
    }

    public void b(String str, String str2, com.mbridge.msdk.mbbanner.common.data.a aVar, com.mbridge.msdk.mbbanner.common.listener.b bVar) {
        Boolean bool;
        MBridgeIds mBridgeIds = new MBridgeIds(str, str2);
        String strB = aVar.b();
        com.mbridge.msdk.foundation.same.report.metrics.c cVarA = com.mbridge.msdk.mbbanner.common.report.a.a(str2, strB);
        cVarA.g(!TextUtils.isEmpty(aVar.a()) ? "1" : "0");
        cVarA.f(aVar.a());
        cVarA.e(aVar.f() ? "1" : "2");
        cVarA.b(aVar.f() ? 1 : 2);
        cVarA.c(aVar.d());
        com.mbridge.msdk.mbbanner.common.report.a.a("2000123", cVarA, (e) null);
        if (this.f35224a == null) {
            com.mbridge.msdk.foundation.error.b bVar2 = new com.mbridge.msdk.foundation.error.b(880025);
            bVar2.a(mBridgeIds);
            bVar2.b(strB);
            this.f35225b.a(bVar, bVar2);
            return;
        }
        if (bVar == null) {
            com.mbridge.msdk.foundation.error.b bVar3 = new com.mbridge.msdk.foundation.error.b(880001);
            bVar3.a(mBridgeIds);
            bVar3.b(strB);
            this.f35225b.a(bVar, bVar3);
            return;
        }
        Map<String, Boolean> map = this.f35227d;
        if (map != null && map.containsKey(str2) && (bool = this.f35227d.get(str2)) != null && bool.booleanValue()) {
            com.mbridge.msdk.foundation.error.b bVar4 = new com.mbridge.msdk.foundation.error.b(880016, "Current unit is loading!");
            bVar4.a(mBridgeIds);
            bVar4.b(strB);
            this.f35225b.a(bVar, bVar4);
            return;
        }
        this.f35227d.put(str2, Boolean.TRUE);
        com.mbridge.msdk.mbbanner.common.data.b bVarA = a(str2);
        bVarA.a(strB);
        new com.mbridge.msdk.mbbanner.common.manager.b(this.f35224a, bVarA, bVar, this.f35225b).a(str, str2, aVar, new C0474a(aVar));
        com.mbridge.msdk.mbbanner.common.report.a.a("2000125", cVarA, (e) null);
    }

    public void a(String str, String str2, com.mbridge.msdk.mbbanner.common.data.a aVar, com.mbridge.msdk.mbbanner.common.listener.b bVar) {
        Handler handler;
        MBridgeIds mBridgeIds = new MBridgeIds(str, str2);
        if (aVar != null && aVar.d() > 0) {
            if (TextUtils.isEmpty(aVar.b())) {
                aVar.b(com.mbridge.msdk.mbbanner.common.report.a.b(""));
            }
            if (this.f35228e.containsKey(str2)) {
                handler = this.f35228e.get(str2);
            } else {
                handler = new Handler();
                this.f35228e.put(str2, handler);
            }
            Handler handler2 = handler;
            b bVar2 = new b(str2, mBridgeIds, bVar, str, aVar);
            if (handler2 != null) {
                handler2.removeCallbacksAndMessages(null);
                handler2.postDelayed(bVar2, aVar.d());
                return;
            }
            return;
        }
        o0.b(f35222g, "doUnitRotation: Illegal banner request parameters! && unitId=" + str2);
    }

    public void a(int i10, String str, String str2, com.mbridge.msdk.mbbanner.common.data.a aVar, com.mbridge.msdk.mbbanner.common.listener.b bVar) {
        Handler handler;
        Handler handler2;
        Handler handler3;
        Integer num;
        int iIntValue = (!this.f35229f.containsKey(str2) || (num = this.f35229f.get(str2)) == null) ? 0 : num.intValue();
        if (i10 == 1) {
            if (this.f35228e.containsKey(str2) && (handler = this.f35228e.get(str2)) != null) {
                handler.removeCallbacksAndMessages(null);
            }
            this.f35229f.put(str2, Integer.valueOf(i10));
            return;
        }
        if (i10 == 2) {
            if (iIntValue == 1) {
                if (this.f35228e.containsKey(str2) && (handler2 = this.f35228e.get(str2)) != null) {
                    handler2.removeCallbacksAndMessages(null);
                }
                this.f35229f.put(str2, Integer.valueOf(i10));
                return;
            }
            return;
        }
        if (i10 == 3) {
            if (iIntValue == 2 || iIntValue == 4) {
                this.f35229f.put(str2, 1);
                a(str, str2, aVar, bVar);
                return;
            }
            return;
        }
        if (i10 != 4) {
            return;
        }
        if (iIntValue == 0) {
            this.f35229f.put(str2, 0);
            return;
        }
        if (this.f35228e.containsKey(str2) && (handler3 = this.f35228e.get(str2)) != null) {
            handler3.removeCallbacksAndMessages(null);
        }
        this.f35229f.put(str2, Integer.valueOf(i10));
    }

    public void b(String str) {
        if (this.f35228e.containsKey(str)) {
            Handler handler = this.f35228e.get(str);
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
            }
            this.f35228e.remove(str);
        }
    }
}
