package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

public final class zzgh {
    private static final AtomicReference<String[]> zza = new AtomicReference<>();
    private static final AtomicReference<String[]> zzb = new AtomicReference<>();
    private static final AtomicReference<String[]> zzc = new AtomicReference<>();
    private final zzgk zzd;

    public zzgh(zzgk zzgkVar) {
        this.zzd = zzgkVar;
    }

    private final String zza(Object[] objArr) {
        if (objArr == null) {
            return "[]";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("[");
        for (Object obj : objArr) {
            String strZza = obj instanceof Bundle ? zza((Bundle) obj) : String.valueOf(obj);
            if (strZza != null) {
                if (sb2.length() != 1) {
                    sb2.append(", ");
                }
                sb2.append(strZza);
            }
        }
        sb2.append("]");
        return sb2.toString();
    }

    protected final String zzb(String str) {
        if (str == null) {
            return null;
        }
        return !this.zzd.zza() ? str : zza(str, zzjk.zzb, zzjk.zza, zzb);
    }

    protected final String zzc(String str) {
        if (str == null) {
            return null;
        }
        if (!this.zzd.zza()) {
            return str;
        }
        if (!str.startsWith("_exp_")) {
            return zza(str, zzjj.zzb, zzjj.zza, zzc);
        }
        return "experiment_id(" + str + ")";
    }

    protected final String zza(Bundle bundle) {
        String strValueOf;
        if (bundle == null) {
            return null;
        }
        if (!this.zzd.zza()) {
            return bundle.toString();
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Bundle[{");
        for (String str : bundle.keySet()) {
            if (sb2.length() != 8) {
                sb2.append(", ");
            }
            sb2.append(zzb(str));
            sb2.append(UrlUtils.EQUAL_MARK);
            Object obj = bundle.get(str);
            if (obj instanceof Bundle) {
                strValueOf = zza(new Object[]{obj});
            } else if (obj instanceof Object[]) {
                strValueOf = zza((Object[]) obj);
            } else if (obj instanceof ArrayList) {
                strValueOf = zza(((ArrayList) obj).toArray());
            } else {
                strValueOf = String.valueOf(obj);
            }
            sb2.append(strValueOf);
        }
        sb2.append("}]");
        return sb2.toString();
    }

    protected final String zza(zzbf zzbfVar) {
        String strZza = null;
        if (zzbfVar == null) {
            return null;
        }
        if (!this.zzd.zza()) {
            return zzbfVar.toString();
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("origin=");
        sb2.append(zzbfVar.zzc);
        sb2.append(",name=");
        sb2.append(zza(zzbfVar.zza));
        sb2.append(",params=");
        zzbe zzbeVar = zzbfVar.zzb;
        if (zzbeVar != null) {
            if (!this.zzd.zza()) {
                strZza = zzbeVar.toString();
            } else {
                strZza = zza(zzbeVar.zzb());
            }
        }
        sb2.append(strZza);
        return sb2.toString();
    }

    protected final String zza(String str) {
        if (str == null) {
            return null;
        }
        return !this.zzd.zza() ? str : zza(str, zzji.zzc, zzji.zza, zza);
    }

    private static String zza(String str, String[] strArr, String[] strArr2, AtomicReference<String[]> atomicReference) {
        String str2;
        Preconditions.checkNotNull(strArr);
        Preconditions.checkNotNull(strArr2);
        Preconditions.checkNotNull(atomicReference);
        Preconditions.checkArgument(strArr.length == strArr2.length);
        for (int i10 = 0; i10 < strArr.length; i10++) {
            if (Objects.equals(str, strArr[i10])) {
                synchronized (atomicReference) {
                    try {
                        String[] strArr3 = atomicReference.get();
                        if (strArr3 == null) {
                            strArr3 = new String[strArr2.length];
                            atomicReference.set(strArr3);
                        }
                        if (strArr3[i10] == null) {
                            strArr3[i10] = strArr2[i10] + "(" + strArr[i10] + ")";
                        }
                        str2 = strArr3[i10];
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                return str2;
            }
        }
        return str;
    }
}
