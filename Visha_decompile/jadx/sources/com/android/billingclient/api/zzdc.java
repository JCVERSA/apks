package com.android.billingclient.api;

import androidx.annotation.Nullable;
import com.google.android.gms.internal.play_billing.a;
import com.google.android.gms.internal.play_billing.zzjs;
import com.google.android.gms.internal.play_billing.zzjz;
import defpackage.c5j;
import defpackage.f5j;
import defpackage.g7f;
import defpackage.j5j;
import defpackage.n5j;
import defpackage.p5j;
import defpackage.v5j;
import io.appmetrica.analytics.coreutils.internal.StringUtils;

public final class zzdc {
    public static final int zza = 0;

    static {
        int i = zzdd.zza;
    }

    @Nullable
    public static String zza(Exception exc) {
        if (exc == null) {
            return null;
        }
        try {
            String str = exc.getClass().getSimpleName() + StringUtils.PROCESS_POSTFIX_DELIMITER + g7f.c(exc.getMessage());
            int i = a.a;
            return str.length() > 40 ? str.substring(0, 40) : str;
        } catch (Throwable th) {
            a.o("BillingLogger", "Unable to get truncated exception info", th);
            return null;
        }
    }

    @Nullable
    public static f5j zzb(@Nullable zzjs zzjsVar, int i, BillingResult billingResult, @Nullable String str, zzjz zzjzVar) {
        try {
            p5j p5jVarZ = v5j.z();
            p5jVarZ.o(billingResult.getResponseCode());
            p5jVarZ.k(billingResult.getDebugMessage());
            if (billingResult.getOnPurchasesUpdatedSubResponseCode() != 0) {
                p5jVarZ.m(billingResult.getOnPurchasesUpdatedSubResponseCode());
            }
            if (zzjsVar != null) {
                p5jVarZ.n(zzjsVar);
            }
            if (str != null) {
                p5jVarZ.j(str);
            }
            c5j c5jVarB = f5j.B();
            c5jVarB.k(p5jVarZ);
            c5jVarB.o(i);
            if (!zzjzVar.equals(zzjz.BROADCAST_ACTION_UNSPECIFIED)) {
                c5jVarB.j(zzjzVar);
            }
            return (f5j) c5jVarB.f();
        } catch (Throwable th) {
            a.o("BillingLogger", "Unable to create logging payload", th);
            return null;
        }
    }

    @Nullable
    public static n5j zzc(int i, zzjz zzjzVar) {
        try {
            j5j j5jVarZ = n5j.z();
            j5jVarZ.n(i);
            if (!zzjzVar.equals(zzjz.BROADCAST_ACTION_UNSPECIFIED)) {
                j5jVarZ.j(zzjzVar);
            }
            return (n5j) j5jVarZ.f();
        } catch (Exception e) {
            a.o("BillingLogger", "Unable to create logging payload", e);
            return null;
        }
    }
}
