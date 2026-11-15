package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.internal.ads.c3;
import com.google.android.gms.internal.ads.i3;
import com.google.android.gms.internal.ads.q0;
import defpackage.exe;
import defpackage.fyi;
import defpackage.klf;
import defpackage.qyi;
import defpackage.skf;
import defpackage.zqg;

public final class o4 implements fyi {
    public final qyi a;
    public final qyi b;
    public final qyi c;
    public final qyi d;
    public final qyi e;

    public o4(qyi qyiVar, qyi qyiVar2, qyi qyiVar3, qyi qyiVar4, qyi qyiVar5) {
        this.a = qyiVar;
        this.b = qyiVar2;
        this.c = qyiVar3;
        this.d = qyiVar4;
        this.e = qyiVar5;
    }

    @Override
    public final Object zzb() {
        Context contextA = ((skf) this.a).a();
        final String strZzb = ((zqg) this.b).zzb();
        VersionInfoParcel versionInfoParcelA = ((klf) this.c).a();
        final zzbbn$zza$zza zzbbn_zza_zza = (zzbbn$zza$zza) this.d.zzb();
        final String str = (String) this.e.zzb();
        o0 o0Var = new o0(new exe(contextA));
        n1 n1VarH0 = o1.h0();
        n1VarH0.v(versionInfoParcelA.buddyApkVersion);
        n1VarH0.x(versionInfoParcelA.clientJarVersion);
        n1VarH0.w(true != versionInfoParcelA.isClientJar ? 2 : 0);
        final o1 o1Var = (o1) n1VarH0.q();
        o0Var.b(new n0() {
            @Override
            public final void a(i3 i3Var) {
                q0 q0Var = (q0) i3Var.C().H();
                q0Var.v(zzbbn_zza_zza);
                i3Var.v(q0Var);
                c3 c3Var = (c3) i3Var.E().H();
                c3Var.v(strZzb);
                c3Var.w(o1Var);
                i3Var.x(c3Var);
                i3Var.y(str);
            }
        });
        return o0Var;
    }
}
