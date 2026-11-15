package com.google.android.gms.ads.nonagon.util.logging.csi;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzv;
import com.transsion.push.PushConstants;
import defpackage.cye;
import defpackage.j3i;
import defpackage.qxe;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.List;
import java.util.Map;

public class CsiParamDefaults {
    public final Context a;
    public final String b;
    public final String c;

    public CsiParamDefaults(@NonNull Context context, @NonNull VersionInfoParcel versionInfoParcel) {
        this.a = context;
        this.b = context.getPackageName();
        this.c = versionInfoParcel.afmaVersion;
    }

    public void set(@NonNull Map<String, String> map) {
        map.put("s", "gmob_sdk");
        map.put("v", "3");
        map.put("os", Build.VERSION.RELEASE);
        map.put("api_v", Build.VERSION.SDK);
        zzv.zzq();
        map.put("device", zzs.zzs());
        map.put("app", this.b);
        zzv.zzq();
        Context context = this.a;
        map.put("is_lite_sdk", true != zzs.zzF(context) ? "0" : "1");
        qxe qxeVar = cye.a;
        List listB = zzbd.zza().b();
        if (((Boolean) zzbd.zzc().b(cye.P6)).booleanValue()) {
            listB.addAll(zzv.zzp().j().zzg().d());
        }
        map.put("e", TextUtils.join(StringUtils.COMMA, listB));
        map.put(PushConstants.PROVIDER_FIELD_SDK_VERSION, this.c);
        if (((Boolean) zzbd.zzc().b(cye.vb)).booleanValue()) {
            zzv.zzq();
            map.put("is_bstar", true != zzs.zzC(context) ? "0" : "1");
        }
        if (((Boolean) zzbd.zzc().b(cye.z9)).booleanValue()) {
            if (((Boolean) zzbd.zzc().b(cye.z2)).booleanValue()) {
                map.put("plugin", j3i.c(zzv.zzp().o()));
            }
        }
    }
}
