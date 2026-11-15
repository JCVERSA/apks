package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import com.google.android.gms.ads.internal.client.zzr;
import com.google.android.gms.internal.ads.j8;

public final class c6h implements eeh {
    public final eeh a;
    public final enh b;
    public final Context c;
    public final qef d;

    public c6h(k8h k8hVar, enh enhVar, Context context, qef qefVar) {
        this.a = k8hVar;
        this.b = enhVar;
        this.c = context;
        this.d = qefVar;
    }

    public static d6h a(c6h c6hVar, oeh oehVar) {
        String str;
        boolean z;
        String strZzj;
        float f;
        int i;
        int i2;
        int i3;
        DisplayMetrics displayMetrics;
        enh enhVar = c6hVar.b;
        zzr zzrVar = enhVar.e;
        zzr[] zzrVarArr = zzrVar.zzg;
        if (zzrVarArr != null) {
            str = null;
            boolean z2 = false;
            boolean z3 = false;
            z = false;
            for (zzr zzrVar2 : zzrVarArr) {
                boolean z4 = zzrVar2.zzi;
                if (!z4 && !z2) {
                    str = zzrVar2.zza;
                    z2 = true;
                }
                if (z4) {
                    if (z3) {
                        z3 = true;
                    } else {
                        z3 = true;
                        z = true;
                    }
                }
                if (z2 && z3) {
                    break;
                }
            }
        } else {
            str = zzrVar.zza;
            z = zzrVar.zzi;
        }
        Resources resources = c6hVar.c.getResources();
        if (resources == null || (displayMetrics = resources.getDisplayMetrics()) == null) {
            strZzj = null;
            f = 0.0f;
            i = 0;
            i2 = 0;
        } else {
            qef qefVar = c6hVar.d;
            float f2 = displayMetrics.density;
            i2 = displayMetrics.widthPixels;
            int i4 = displayMetrics.heightPixels;
            strZzj = qefVar.j().zzj();
            i = i4;
            f = f2;
        }
        StringBuilder sb = new StringBuilder();
        if (zzrVarArr != null) {
            boolean z5 = false;
            for (zzr zzrVar3 : zzrVarArr) {
                if (zzrVar3.zzi) {
                    z5 = true;
                } else {
                    if (sb.length() != 0) {
                        sb.append("|");
                    }
                    int i5 = zzrVar3.zze;
                    if (i5 == -1) {
                        i5 = f != 0.0f ? (int) (zzrVar3.zzf / f) : -1;
                    }
                    sb.append(i5);
                    sb.append("x");
                    int i6 = zzrVar3.zzb;
                    if (i6 == -2) {
                        i6 = f != 0.0f ? (int) (zzrVar3.zzc / f) : -2;
                    }
                    sb.append(i6);
                }
            }
            if (z5) {
                if (sb.length() != 0) {
                    i3 = 0;
                    sb.insert(0, "|");
                } else {
                    i3 = 0;
                }
                sb.insert(i3, "320x50");
            }
        }
        return new d6h(zzrVar, str, z, sb.toString(), f, i2, i, strZzj, enhVar.q);
    }

    @Override
    public final int zza() {
        return 7;
    }

    @Override
    public final im5 zzb() {
        return j8.m(this.a.zzb(), new m2i() {
            @Override
            public final Object apply(Object obj) {
                return c6h.a(this.a, (oeh) obj);
            }
        }, zef.g);
    }
}
