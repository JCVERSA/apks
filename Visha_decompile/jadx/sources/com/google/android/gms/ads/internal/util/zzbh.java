package com.google.android.gms.ads.internal.util;

import java.util.ArrayList;
import java.util.List;

public final class zzbh {
    public final String[] a;
    public final double[] b;
    public final double[] c;
    public final int[] d;
    public int e;

    public zzbh(zzbf zzbfVar, zzbg zzbgVar) {
        int size = zzbfVar.b.size();
        this.a = (String[]) zzbfVar.a.toArray(new String[size]);
        this.b = a(zzbfVar.b);
        this.c = a(zzbfVar.c);
        this.d = new int[size];
        this.e = 0;
    }

    public static final double[] a(List list) {
        int size = list.size();
        double[] dArr = new double[size];
        for (int i = 0; i < size; i++) {
            dArr[i] = ((Double) list.get(i)).doubleValue();
        }
        return dArr;
    }

    public final List zza() {
        String[] strArr = this.a;
        ArrayList arrayList = new ArrayList(strArr.length);
        for (int i = 0; i < strArr.length; i++) {
            String str = strArr[i];
            double[] dArr = this.c;
            double[] dArr2 = this.b;
            int[] iArr = this.d;
            double d = dArr[i];
            double d2 = dArr2[i];
            int i2 = iArr[i];
            arrayList.add(new zzbe(str, d, d2, ((double) i2) / ((double) this.e), i2));
        }
        return arrayList;
    }

    public final void zzb(double d) {
        this.e++;
        int i = 0;
        while (true) {
            double[] dArr = this.c;
            if (i >= dArr.length) {
                return;
            }
            double d2 = dArr[i];
            if (d2 <= d && d < this.b[i]) {
                int[] iArr = this.d;
                iArr[i] = iArr[i] + 1;
            }
            if (d < d2) {
                return;
            } else {
                i++;
            }
        }
    }
}
