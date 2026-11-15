package com.google.android.libraries.places.internal;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.logging.Logger;

public final class zzbcf {
    private Object[] zze;
    private int zzf;
    private static final Logger zzd = Logger.getLogger(zzbcf.class.getName());
    public static final zzbby zza = new zzbbt();
    public static final zzbbx zzb = new zzbbu();
    static final zzsi zzc = zzsi.zzj().zzf();

    public zzbcf() {
    }

    private final int zzh() {
        Object[] objArr = this.zze;
        if (objArr != null) {
            return objArr.length;
        }
        return 0;
    }

    private final Object zzi(int i10) {
        return this.zze[i10 + i10 + 1];
    }

    private final void zzj(int i10) {
        Object[] objArr = new Object[i10];
        if (!zzk()) {
            Object[] objArr2 = this.zze;
            int i11 = this.zzf;
            System.arraycopy(objArr2, 0, objArr, 0, i11 + i11);
        }
        this.zze = objArr;
    }

    private final boolean zzk() {
        return this.zzf == 0;
    }

    private final byte[] zzl(int i10) {
        return (byte[]) this.zze[i10 + i10];
    }

    private final byte[] zzm(int i10) {
        Object objZzi = zzi(i10);
        if (objZzi instanceof byte[]) {
            return (byte[]) objZzi;
        }
        throw null;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("Metadata(");
        for (int i10 = 0; i10 < this.zzf; i10++) {
            if (i10 != 0) {
                sb2.append(',');
            }
            byte[] bArrZzl = zzl(i10);
            Charset charset = zzmb.zza;
            String str = new String(bArrZzl, charset);
            sb2.append(str);
            sb2.append('=');
            if (str.endsWith("-bin")) {
                zzsi zzsiVar = zzc;
                byte[] bArrZzm = zzm(i10);
                sb2.append(zzsiVar.zzk(bArrZzm, 0, bArrZzm.length));
            } else {
                sb2.append(new String(zzm(i10), charset));
            }
        }
        sb2.append(')');
        return sb2.toString();
    }

    final int zza() {
        return this.zzf;
    }

    public final Object zzb(zzbca zzbcaVar) {
        int i10 = this.zzf;
        do {
            i10--;
            if (i10 < 0) {
                return null;
            }
        } while (!Arrays.equals(zzbcaVar.zze(), zzl(i10)));
        Object objZzi = zzi(i10);
        if (objZzi instanceof byte[]) {
            return zzbcaVar.zza((byte[]) objZzi);
        }
        throw null;
    }

    public final void zzd(zzbca zzbcaVar) {
        if (zzk()) {
            return;
        }
        int i10 = 0;
        int i11 = 0;
        while (true) {
            int i12 = this.zzf;
            if (i10 >= i12) {
                Arrays.fill(this.zze, i11 + i11, i12 + i12, (Object) null);
                this.zzf = i11;
                return;
            }
            if (!Arrays.equals(zzbcaVar.zze(), zzl(i10))) {
                int i13 = i11 + i11;
                this.zze[i13] = zzl(i10);
                Object objZzi = zzi(i10);
                if (this.zze instanceof byte[][]) {
                    zzj(zzh());
                }
                this.zze[i13 + 1] = objZzi;
                i11++;
            }
            i10++;
        }
    }

    /* JADX WARN: Code duplicated, block: B:9:0x001a  */
    public final void zze(zzbcf zzbcfVar) {
        if (zzbcfVar.zzk()) {
            return;
        }
        int iZzh = zzh();
        int i10 = this.zzf;
        int i11 = i10 + i10;
        int i12 = iZzh - i11;
        if (zzk()) {
            int i13 = zzbcfVar.zzf;
            zzj(i11 + i13 + i13);
        } else {
            int i14 = zzbcfVar.zzf;
            if (i12 < i14 + i14) {
                int i15 = zzbcfVar.zzf;
                zzj(i11 + i15 + i15);
            }
        }
        Object[] objArr = zzbcfVar.zze;
        Object[] objArr2 = this.zze;
        int i16 = this.zzf;
        int i17 = zzbcfVar.zzf;
        System.arraycopy(objArr, 0, objArr2, i16 + i16, i17 + i17);
        this.zzf += zzbcfVar.zzf;
    }

    public final void zzf(zzbca zzbcaVar, Object obj) {
        zzmt.zzc(zzbcaVar, "key");
        zzmt.zzc(obj, AppMeasurementSdk.ConditionalUserProperty.VALUE);
        int i10 = this.zzf;
        int i11 = i10 + i10;
        if (i11 == 0 || i11 == zzh()) {
            zzj(Math.max(i11 + i11, 8));
        }
        int i12 = this.zzf;
        this.zze[i12 + i12] = zzbcaVar.zze();
        int i13 = this.zzf;
        this.zze[i13 + i13 + 1] = zzbcaVar.zzb(obj);
        this.zzf++;
    }

    final byte[][] zzg() {
        int i10 = this.zzf;
        int i11 = i10 + i10;
        byte[][] bArr = new byte[i11][];
        Object[] objArr = this.zze;
        if (objArr instanceof byte[][]) {
            System.arraycopy(objArr, 0, bArr, 0, i11);
        } else {
            for (int i12 = 0; i12 < this.zzf; i12++) {
                int i13 = i12 + i12;
                bArr[i13] = zzl(i12);
                bArr[i13 + 1] = zzm(i12);
            }
        }
        return bArr;
    }

    zzbcf(int i10, Object[] objArr) {
        this.zzf = i10;
        this.zze = objArr;
    }
}
