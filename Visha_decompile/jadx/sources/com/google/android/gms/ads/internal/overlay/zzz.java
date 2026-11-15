package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.client.zzbd;
import defpackage.cye;
import defpackage.ejf;
import defpackage.fqj;
import defpackage.m1i;
import defpackage.o1i;
import defpackage.p1i;
import defpackage.q1i;
import defpackage.r1i;
import defpackage.s0i;
import defpackage.t0i;
import defpackage.u0i;
import defpackage.v0i;
import defpackage.z1i;
import defpackage.zef;
import java.util.HashMap;
import java.util.Map;

public final class zzz {
    public p1i f;
    public ejf c = null;
    public boolean e = false;
    public String a = null;
    public u0i d = null;
    public String b = null;

    public static void zza(zzz zzzVar, String str, Map map) {
        ejf ejfVar = zzzVar.c;
        if (ejfVar != null) {
            ejfVar.zzd(str, map);
        }
    }

    public final void a(String str) {
        b(str, new HashMap());
    }

    public final void b(final String str, final Map map) {
        zef.f.execute(new Runnable() {
            @Override
            public final void run() {
                zzz.zza(this.zza, str, map);
            }
        });
    }

    public final void c(String str, String str2) {
        com.google.android.gms.ads.internal.util.zze.zza(str);
        if (this.c != null) {
            HashMap map = new HashMap();
            map.put("message", str);
            map.put("action", str2);
            b("onError", map);
        }
    }

    public final void d(o1i o1iVar) {
        if (!TextUtils.isEmpty(o1iVar.b())) {
            if (!((Boolean) zzbd.zzc().b(cye.Db)).booleanValue()) {
                this.a = o1iVar.b();
            }
        }
        switch (o1iVar.a()) {
            case 8152:
                a("onLMDOverlayOpened");
                break;
            case 8153:
                a("onLMDOverlayClicked");
                break;
            case 8155:
                a("onLMDOverlayClose");
                break;
            case 8157:
                this.a = null;
                this.b = null;
                this.e = false;
                break;
            case 8160:
            case 8161:
            case 8162:
                HashMap map = new HashMap();
                map.put("error", String.valueOf(o1iVar.a()));
                b("onLMDOverlayFailedToOpen", map);
                break;
        }
    }

    public final r1i e() {
        q1i q1iVarC = r1i.c();
        if (!((Boolean) zzbd.zzc().b(cye.Db)).booleanValue() || TextUtils.isEmpty(this.b)) {
            String str = this.a;
            if (str != null) {
                q1iVarC.b(str);
            } else {
                c("Missing session token and/or appId", "onLMDupdate");
            }
        } else {
            q1iVarC.a(this.b);
        }
        return q1iVarC.c();
    }

    public final void f() {
        if (this.f == null) {
            this.f = new fqj(this);
        }
    }

    public final synchronized void zzb(@Nullable ejf ejfVar, Context context) {
        this.c = ejfVar;
        if (!zzk(context)) {
            c("Unable to bind", "on_play_store_bind");
            return;
        }
        HashMap map = new HashMap();
        map.put("action", "fetch_completed");
        b("on_play_store_bind", map);
    }

    public final void zzc() {
        u0i u0iVar;
        if (!this.e || (u0iVar = this.d) == null) {
            com.google.android.gms.ads.internal.util.zze.zza("LastMileDelivery not connected");
        } else {
            u0iVar.c(e(), this.f);
            a("onLMDOverlayCollapse");
        }
    }

    public final void zzd() {
        u0i u0iVar;
        if (!this.e || (u0iVar = this.d) == null) {
            com.google.android.gms.ads.internal.util.zze.zza("LastMileDelivery not connected");
            return;
        }
        s0i s0iVarC = t0i.c();
        if (!((Boolean) zzbd.zzc().b(cye.Db)).booleanValue() || TextUtils.isEmpty(this.b)) {
            String str = this.a;
            if (str != null) {
                s0iVarC.b(str);
            } else {
                c("Missing session token and/or appId", "onLMDupdate");
            }
        } else {
            s0iVarC.a(this.b);
        }
        u0iVar.b(s0iVarC.c(), this.f);
    }

    public final void zzh() {
        u0i u0iVar;
        if (!this.e || (u0iVar = this.d) == null) {
            com.google.android.gms.ads.internal.util.zze.zza("LastMileDelivery not connected");
        } else {
            u0iVar.a(e(), this.f);
            a("onLMDOverlayExpand");
        }
    }

    public final void zzj(@Nullable ejf ejfVar, @Nullable m1i m1iVar) {
        if (ejfVar == null) {
            c("adWebview missing", "onLMDShow");
            return;
        }
        this.c = ejfVar;
        if (!this.e && !zzk(ejfVar.getContext())) {
            c("LMDOverlay not bound", "on_play_store_bind");
            return;
        }
        if (((Boolean) zzbd.zzc().b(cye.Db)).booleanValue()) {
            this.b = m1iVar.h();
        }
        f();
        u0i u0iVar = this.d;
        if (u0iVar != null) {
            u0iVar.d(m1iVar, this.f);
        }
    }

    public final synchronized boolean zzk(Context context) {
        if (!z1i.a(context)) {
            return false;
        }
        try {
            this.d = v0i.a(context);
        } catch (NullPointerException e) {
            com.google.android.gms.ads.internal.util.zze.zza("Error connecting LMD Overlay service");
            com.google.android.gms.ads.internal.zzv.zzp().x(e, "LastMileDeliveryOverlay.bindLastMileDeliveryService");
        }
        if (this.d == null) {
            this.e = false;
            return false;
        }
        f();
        this.e = true;
        return true;
    }
}
