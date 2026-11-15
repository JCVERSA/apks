package com.google.android.gms.internal.play_billing;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

public abstract class zzee extends zzdm {
    public static final int zzb = 0;
    private static final Logger zzc = Logger.getLogger(zzee.class.getName());
    private static final boolean zzd = zzhn.zzx();
    zzef zza;

    private zzee() {
    }

    @Deprecated
    static int zzt(int i10, zzgc zzgcVar, zzgm zzgmVar) {
        int iZza = ((zzdg) zzgcVar).zza(zzgmVar);
        int iZzx = zzx(i10 << 3);
        return iZzx + iZzx + iZza;
    }

    public static int zzu(int i10) {
        if (i10 >= 0) {
            return zzx(i10);
        }
        return 10;
    }

    static int zzv(zzgc zzgcVar, zzgm zzgmVar) {
        int iZza = ((zzdg) zzgcVar).zza(zzgmVar);
        return zzx(iZza) + iZza;
    }

    public static int zzw(String str) {
        int length;
        try {
            length = zzhs.zzc(str);
        } catch (zzhr unused) {
            length = str.getBytes(zzfd.zzb).length;
        }
        return zzx(length) + length;
    }

    public static int zzx(int i10) {
        if ((i10 & (-128)) == 0) {
            return 1;
        }
        if ((i10 & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i10) == 0) {
            return 3;
        }
        return (i10 & (-268435456)) == 0 ? 4 : 5;
    }

    public static int zzy(long j10) {
        int i10;
        if (((-128) & j10) == 0) {
            return 1;
        }
        if (j10 < 0) {
            return 10;
        }
        if (((-34359738368L) & j10) != 0) {
            j10 >>>= 28;
            i10 = 6;
        } else {
            i10 = 2;
        }
        if (((-2097152) & j10) != 0) {
            j10 >>>= 14;
            i10 += 2;
        }
        return (j10 & (-16384)) != 0 ? i10 + 1 : i10;
    }

    public static zzee zzz(byte[] bArr, int i10, int i11) {
        return new zzeb(bArr, 0, i11);
    }

    public final void zzA() {
        if (zza() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    final void zzB(String str, zzhr zzhrVar) throws IOException {
        zzc.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) zzhrVar);
        byte[] bytes = str.getBytes(zzfd.zzb);
        try {
            int length = bytes.length;
            zzq(length);
            zzl(bytes, 0, length);
        } catch (IndexOutOfBoundsException e10) {
            throw new zzec(e10);
        }
    }

    public abstract int zza();

    public abstract void zzb(byte b10) throws IOException;

    public abstract void zzd(int i10, boolean z10) throws IOException;

    public abstract void zze(int i10, zzdw zzdwVar) throws IOException;

    public abstract void zzf(int i10, int i11) throws IOException;

    public abstract void zzg(int i10) throws IOException;

    public abstract void zzh(int i10, long j10) throws IOException;

    public abstract void zzi(long j10) throws IOException;

    public abstract void zzj(int i10, int i11) throws IOException;

    public abstract void zzk(int i10) throws IOException;

    public abstract void zzl(byte[] bArr, int i10, int i11) throws IOException;

    public abstract void zzm(int i10, String str) throws IOException;

    public abstract void zzo(int i10, int i11) throws IOException;

    public abstract void zzp(int i10, int i11) throws IOException;

    public abstract void zzq(int i10) throws IOException;

    public abstract void zzr(int i10, long j10) throws IOException;

    public abstract void zzs(long j10) throws IOException;

    zzee(zzed zzedVar) {
    }
}
