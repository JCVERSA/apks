package com.google.android.gms.ads.query;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zzeh;
import com.google.android.gms.ads.internal.client.zzew;
import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.internal.ads.v3;
import defpackage.cye;
import defpackage.wd8;
import defpackage.xze;

public class QueryInfo {
    public final zzew a;

    public QueryInfo(zzew zzewVar) {
        this.a = zzewVar;
    }

    public static void a(final Context context, final AdFormat adFormat, final AdRequest adRequest, final String str, final QueryInfoGenerationCallback queryInfoGenerationCallback) {
        cye.a(context);
        if (((Boolean) xze.j.e()).booleanValue()) {
            if (((Boolean) zzbd.zzc().b(cye.nb)).booleanValue()) {
                zzb.zzb.execute(new Runnable() {
                    @Override
                    public final void run() {
                        AdRequest adRequest2 = adRequest;
                        zzeh zzehVarZza = adRequest2 == null ? null : adRequest2.zza();
                        new v3(context, adFormat, zzehVarZza, str).b(queryInfoGenerationCallback);
                    }
                });
                return;
            }
        }
        new v3(context, adFormat, adRequest == null ? null : adRequest.zza(), str).b(queryInfoGenerationCallback);
    }

    public static void generate(@NonNull Context context, @NonNull AdFormat adFormat, @Nullable AdRequest adRequest, @NonNull QueryInfoGenerationCallback queryInfoGenerationCallback) {
        a(context, adFormat, adRequest, null, queryInfoGenerationCallback);
    }

    @NonNull
    public String getQuery() {
        return this.a.zzb();
    }

    @NonNull
    public Bundle getQueryBundle() {
        return this.a.zza();
    }

    @NonNull
    public String getRequestId() {
        return this.a.zzc();
    }

    public static void generate(@NonNull Context context, @NonNull AdFormat adFormat, @Nullable AdRequest adRequest, @NonNull String str, @NonNull QueryInfoGenerationCallback queryInfoGenerationCallback) {
        wd8.m(str, "AdUnitId cannot be null.");
        a(context, adFormat, adRequest, str, queryInfoGenerationCallback);
    }
}
