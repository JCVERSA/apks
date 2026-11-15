package com.google.android.gms.ads.nonagon.signalgeneration;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import defpackage.f9g;
import defpackage.lmg;
import org.json.JSONException;
import org.json.JSONObject;

public final class zzw implements f9g {
    public final lmg b;
    public final zzv c;
    public final String d;
    public final int e;

    @VisibleForTesting
    public zzw(lmg lmgVar, zzv zzvVar, String str, int i) {
        this.b = lmgVar;
        this.c = zzvVar;
        this.d = str;
        this.e = i;
    }

    @Override
    public final void zze(@Nullable zzbk zzbkVar) {
        String strOptString;
        if (zzbkVar == null || this.e == 2) {
            return;
        }
        if (TextUtils.isEmpty(zzbkVar.zzc)) {
            this.c.zze(this.d, zzbkVar.zzb, this.b);
            return;
        }
        try {
            strOptString = new JSONObject(zzbkVar.zzc).optString("request_id");
        } catch (JSONException e) {
            com.google.android.gms.ads.internal.zzv.zzp().x(e, "RenderSignals.getRequestId");
            strOptString = null;
        }
        if (TextUtils.isEmpty(strOptString)) {
            return;
        }
        this.c.zze(strOptString, zzbkVar.zzc, this.b);
    }

    @Override
    public final void zzf(@Nullable String str) {
    }
}
