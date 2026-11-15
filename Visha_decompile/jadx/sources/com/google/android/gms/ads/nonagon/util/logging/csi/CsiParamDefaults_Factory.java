package com.google.android.gms.ads.nonagon.util.logging.csi;

import android.content.Context;
import androidx.annotation.NonNull;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import defpackage.fyi;
import defpackage.qyi;

public final class CsiParamDefaults_Factory implements fyi {
    public final qyi a;
    public final qyi b;

    public CsiParamDefaults_Factory(qyi qyiVar, qyi qyiVar2) {
        this.a = qyiVar;
        this.b = qyiVar2;
    }

    public static CsiParamDefaults_Factory create(qyi qyiVar, qyi qyiVar2) {
        return new CsiParamDefaults_Factory(qyiVar, qyiVar2);
    }

    @NonNull
    public static CsiParamDefaults newInstance(@NonNull Context context, @NonNull VersionInfoParcel versionInfoParcel) {
        return new CsiParamDefaults(context, versionInfoParcel);
    }

    @Override
    @NonNull
    public CsiParamDefaults zzb() {
        return newInstance((Context) this.a.zzb(), (VersionInfoParcel) this.b.zzb());
    }
}
