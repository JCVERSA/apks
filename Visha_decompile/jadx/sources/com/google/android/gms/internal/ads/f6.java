package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import defpackage.awh;
import defpackage.bwh;
import defpackage.cvh;
import defpackage.cwh;
import defpackage.dwh;
import defpackage.fvh;
import defpackage.hwh;
import defpackage.lvh;
import defpackage.mvh;
import defpackage.nvh;
import defpackage.ovh;
import defpackage.suh;
import defpackage.ubc;
import defpackage.vvh;
import defpackage.wvh;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class f6 implements mvh {
    public static final f6 i = new f6();
    public static final Handler j = new Handler(Looper.getMainLooper());
    public static Handler k = null;
    public static final Runnable l = new zzflx();
    public static final Runnable m = new zzfly();
    public int b;
    public long h;
    public final List a = new ArrayList();
    public boolean c = false;
    public final List d = new ArrayList();
    public final cwh f = new cwh();
    public final ovh e = new ovh();
    public final dwh g = new dwh(new hwh());

    public static f6 d() {
        return i;
    }

    public static void g(f6 f6Var) {
        f6Var.b = 0;
        f6Var.d.clear();
        f6Var.c = false;
        for (suh suhVar : cvh.a().b()) {
        }
        f6Var.h = System.nanoTime();
        cwh cwhVar = f6Var.f;
        cwhVar.i();
        long jNanoTime = System.nanoTime();
        ovh ovhVar = f6Var.e;
        nvh nvhVarA = ovhVar.a();
        if (cwhVar.e().size() > 0) {
            for (String str : cwhVar.e()) {
                JSONObject jSONObjectZza = nvhVarA.zza(null);
                View viewA = cwhVar.a(str);
                nvh nvhVarB = ovhVar.b();
                String strC = cwhVar.c(str);
                if (strC != null) {
                    JSONObject jSONObjectZza2 = nvhVarB.zza(viewA);
                    vvh.b(jSONObjectZza2, str);
                    try {
                        jSONObjectZza2.put("notVisibleReason", strC);
                    } catch (JSONException e) {
                        wvh.a("Error with setting not visible reason", e);
                    }
                    vvh.c(jSONObjectZza, jSONObjectZza2);
                }
                vvh.f(jSONObjectZza);
                HashSet hashSet = new HashSet();
                hashSet.add(str);
                f6Var.g.c(jSONObjectZza, hashSet, jNanoTime);
            }
        }
        cwh cwhVar2 = f6Var.f;
        if (cwhVar2.f().size() > 0) {
            JSONObject jSONObjectZza3 = nvhVarA.zza(null);
            f6Var.k(null, nvhVarA, jSONObjectZza3, 1, false);
            vvh.f(jSONObjectZza3);
            f6Var.g.d(jSONObjectZza3, cwhVar2.f(), jNanoTime);
        } else {
            f6Var.g.b();
        }
        cwhVar2.g();
        long jNanoTime2 = System.nanoTime() - f6Var.h;
        List list = f6Var.a;
        if (list.size() > 0) {
            Iterator it = list.iterator();
            if (it.hasNext()) {
                ubc.a(it.next());
                TimeUnit.NANOSECONDS.toMillis(jNanoTime2);
                throw null;
            }
        }
        lvh.a().c();
    }

    public static final void l() {
        Handler handler = k;
        if (handler != null) {
            handler.removeCallbacks(m);
            k = null;
        }
    }

    @Override
    public final void a(View view, nvh nvhVar, JSONObject jSONObject, boolean z) {
        cwh cwhVar;
        int iL;
        boolean z2;
        if (awh.a(view) != null || (iL = (cwhVar = this.f).l(view)) == 3) {
            return;
        }
        JSONObject jSONObjectZza = nvhVar.zza(view);
        vvh.c(jSONObject, jSONObjectZza);
        String strD = cwhVar.d(view);
        if (strD != null) {
            vvh.b(jSONObjectZza, strD);
            try {
                jSONObjectZza.put("hasWindowFocus", Boolean.valueOf(this.f.k(view)));
            } catch (JSONException e) {
                wvh.a("Error with setting has window focus", e);
            }
            boolean zJ = this.f.j(strD);
            Object objValueOf = Boolean.valueOf(zJ);
            if (zJ) {
                try {
                    jSONObjectZza.put("isPipActive", objValueOf);
                } catch (JSONException e2) {
                    wvh.a("Error with setting is picture-in-picture active", e2);
                }
            }
            this.f.h();
        } else {
            bwh bwhVarB = cwhVar.b(view);
            if (bwhVarB != null) {
                fvh fvhVarA = bwhVarB.a();
                JSONArray jSONArray = new JSONArray();
                ArrayList arrayListB = bwhVarB.b();
                int size = arrayListB.size();
                for (int i2 = 0; i2 < size; i2++) {
                    jSONArray.put((String) arrayListB.get(i2));
                }
                try {
                    jSONObjectZza.put("isFriendlyObstructionFor", jSONArray);
                    jSONObjectZza.put("friendlyObstructionClass", fvhVarA.d());
                    jSONObjectZza.put("friendlyObstructionPurpose", fvhVarA.a());
                    jSONObjectZza.put("friendlyObstructionReason", fvhVarA.c());
                } catch (JSONException e3) {
                    wvh.a("Error with setting friendly obstruction", e3);
                }
                z2 = true;
            } else {
                z2 = false;
            }
            k(view, nvhVar, jSONObjectZza, iL, z || z2);
        }
        this.b++;
    }

    public final void h() {
        l();
    }

    public final void i() {
        if (k == null) {
            Handler handler = new Handler(Looper.getMainLooper());
            k = handler;
            handler.post(l);
            k.postDelayed(m, 200L);
        }
    }

    public final void j() {
        l();
        this.a.clear();
        j.post(new zzflw(this));
    }

    public final void k(View view, nvh nvhVar, JSONObject jSONObject, int i2, boolean z) {
        nvhVar.a(view, jSONObject, this, i2 == 1, z);
    }
}
