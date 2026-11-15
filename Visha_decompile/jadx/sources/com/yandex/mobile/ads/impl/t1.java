package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.os.SystemClock;
import android.webkit.URLUtil;
import defpackage.y45;
import java.util.LinkedHashMap;
import java.util.concurrent.atomic.AtomicLong;
import org.greenrobot.greendao.generator.Schema;
import org.mozilla.javascript.ES6Iterator;

public final class t1 {
    private final fm a;

    public static final class a {
        private static final AtomicLong a = new AtomicLong(SystemClock.elapsedRealtime() - 2000);

        public static boolean a() {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long andSet = jElapsedRealtime - a.getAndSet(jElapsedRealtime);
            return !(0 <= andSet && andSet < 1001);
        }
    }

    public t1(bv1 bv1Var) {
        this(bv1Var, new fm(bv1Var));
    }

    /* JADX WARN: Code duplicated, block: B:25:0x008b  */
    /* JADX WARN: Code duplicated, block: B:27:0x009b  */
    /* JADX WARN: Code duplicated, block: B:28:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:30:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:31:0x00b7  */
    public final void a(Context context, o3 o3Var, o8<?> o8Var, tp1 tp1Var, String str, t8 t8Var, boolean z) {
        yo yoVar;
        String strO;
        boolean zA = true;
        y45.j(o3Var, "adConfiguration");
        y45.j(o8Var, "adResponse");
        y45.j(tp1Var, "reporter");
        y45.j(str, "url");
        y45.j(t8Var, "receiver");
        if (context == null || !a.a()) {
            return;
        }
        int i = pw1.l;
        ju1 ju1VarA = pw1.a.a().a(context);
        if (ju1VarA != null && (strO = ju1VarA.o()) != null) {
            yo.c.getClass();
            y45.j(strO, ES6Iterator.VALUE_PROPERTY);
            yo[] yoVarArrValues = yo.values();
            int length = yoVarArrValues.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    yoVar = null;
                    break;
                }
                yoVar = yoVarArrValues[i2];
                if (y45.e(yoVar.a(), strO)) {
                    break;
                } else {
                    i2++;
                }
            }
        } else {
            yoVar = null;
            break;
        }
        if ((z && yoVar == null) || yo.d == yoVar) {
            w82.a.getClass();
            if (w82.a.b(str)) {
                zA = this.a.a(context, o8Var, t8Var, o3Var, str);
            } else if (new y82(new x82()).a(context, str)) {
                t8Var.a(7, null);
            } else if (URLUtil.isNetworkUrl(str)) {
                zA = this.a.a(context, o8Var, t8Var, o3Var, str);
            } else {
                zA = false;
            }
        } else if (new y82(new x82()).a(context, str)) {
            t8Var.a(7, null);
        } else if (URLUtil.isNetworkUrl(str)) {
            zA = this.a.a(context, o8Var, t8Var, o3Var, str);
        } else {
            zA = false;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("click_type", Schema.DEFAULT_NAME);
        linkedHashMap.put("click_handled", Boolean.valueOf(zA));
        v82.a.getClass();
        linkedHashMap.put("click_url", v82.a(str));
        op1.b bVar = op1.b.c;
        tp1Var.a(linkedHashMap);
        if (t8Var != null) {
            t8Var.a(9, null);
        }
    }

    public t1(bv1 bv1Var, fm fmVar) {
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(fmVar, "browserAdActivityLauncher");
        this.a = fmVar;
    }
}
