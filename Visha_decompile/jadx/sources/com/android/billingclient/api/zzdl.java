package com.android.billingclient.api;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.android.billingclient.BuildConfig;
import com.google.android.gms.internal.play_billing.a;
import defpackage.ech;
import defpackage.idh;
import defpackage.z2j;

final class zzdl {
    public static Bundle zza(idh idhVar, z2j z2jVar) {
        Bundle bundle = new Bundle();
        bundle.putByteArray("REQUEST_METADATA", idhVar.b());
        bundle.putByteArray("REQUEST_PARAMS", z2jVar.b());
        return bundle;
    }

    public static idh zzb(String str, int i, Context context, String str2) {
        String strValueOf;
        ech echVarY = idh.y();
        echVarY.m(BuildConfig.VERSION_NAME);
        echVarY.n(24);
        echVarY.k(context.getPackageName());
        echVarY.l(str2);
        try {
            strValueOf = String.valueOf(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode);
        } catch (PackageManager.NameNotFoundException unused) {
            a.n("DelegationApiParamsBuilder", "No version code is found!");
            strValueOf = null;
        }
        if (strValueOf != null) {
            echVarY.j(strValueOf);
        }
        return (idh) echVarY.f();
    }
}
