package com.google.android.gms.ads.internal;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.internal.ads.zzbug;
import defpackage.ddf;
import java.util.Collections;
import java.util.List;

public final class zzb {
    public final Context a;
    public boolean b;
    public final ddf c;
    public final zzbug d = new zzbug(false, Collections.emptyList());

    public zzb(Context context, @Nullable ddf ddfVar, @Nullable zzbug zzbugVar) {
        this.a = context;
        this.c = ddfVar;
    }

    public final boolean a() {
        ddf ddfVar = this.c;
        return (ddfVar != null && ddfVar.zza().zzf) || this.d.zza;
    }

    public final void zza() {
        this.b = true;
    }

    public final void zzb(@Nullable String str) {
        List<String> list;
        if (a()) {
            if (str == null) {
                str = "";
            }
            ddf ddfVar = this.c;
            if (ddfVar != null) {
                ddfVar.b(str, null, 3);
                return;
            }
            zzbug zzbugVar = this.d;
            if (!zzbugVar.zza || (list = zzbugVar.zzb) == null) {
                return;
            }
            for (String str2 : list) {
                if (!TextUtils.isEmpty(str2)) {
                    String strReplace = str2.replace("{NAVIGATION_URL}", Uri.encode(str));
                    Context context = this.a;
                    zzv.zzq();
                    zzs.zzM(context, "", strReplace);
                }
            }
        }
    }

    public final boolean zzc() {
        return !a() || this.b;
    }
}
