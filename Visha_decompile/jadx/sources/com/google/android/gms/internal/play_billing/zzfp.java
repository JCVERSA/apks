package com.google.android.gms.internal.play_billing;

import defpackage.c3j;
import defpackage.lqi;
import defpackage.nsh;
import defpackage.onh;
import defpackage.srh;
import java.io.IOException;
import java.io.Serializable;
import java.util.Iterator;
import java.util.Locale;

public abstract class zzfp implements Iterable, Serializable {
    public static final zzfp zza = new zzfn(lqi.a);
    private int zzb = 0;

    static {
        int i = onh.a;
    }

    public static int zzj(int i, int i2, int i3) {
        int i4 = i2 - i;
        if ((i | i2 | i4 | (i3 - i2)) >= 0) {
            return i4;
        }
        if (i < 0) {
            throw new IndexOutOfBoundsException("Beginning index: " + i + " < 0");
        }
        if (i2 < i) {
            throw new IndexOutOfBoundsException("Beginning index larger than ending index: " + i + ", " + i2);
        }
        throw new IndexOutOfBoundsException("End index: " + i2 + " >= " + i3);
    }

    public static zzfp zzk(byte[] bArr, int i, int i2) {
        try {
            zzj(i, i + i2, bArr.length);
            byte[] bArr2 = new byte[i2];
            System.arraycopy(bArr, i, bArr2, 0, i2);
            return new zzfn(bArr2);
        } catch (zzhb e) {
            throw new AssertionError("Expected no InvalidProtocolBufferException as data UTF8 validity is not checked.", e);
        }
    }

    public static boolean zzl(byte[] bArr, int i, byte[] bArr2, int i2, int i3) {
        int i4 = i + i3;
        zzj(i, i4, bArr.length);
        zzj(i2, i3 + i2, bArr2.length);
        while (i < i4) {
            if (bArr[i] != bArr2[i2]) {
                return false;
            }
            i++;
            i2++;
        }
        return true;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzfp)) {
            return false;
        }
        zzfp zzfpVar = (zzfp) obj;
        int iZzd = zzd();
        if (iZzd != zzfpVar.zzd()) {
            return false;
        }
        if (iZzd == 0) {
            return true;
        }
        int i = this.zzb;
        int i2 = zzfpVar.zzb;
        if (i == 0 || i2 == 0 || i == i2) {
            return zzh(zzfpVar);
        }
        return false;
    }

    public final int hashCode() {
        int iZzc = this.zzb;
        if (iZzc == 0) {
            int iZzd = zzd();
            iZzc = zzc(iZzd, 0, iZzd);
            if (iZzc == 0) {
                iZzc = 1;
            }
            this.zzb = iZzc;
        }
        return iZzc;
    }

    @Override
    public final Iterator iterator() {
        return new nsh(this);
    }

    public final String toString() {
        return String.format(Locale.ROOT, "<ByteString@%s size=%d contents=\"%s\">", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(zzd()), zzd() <= 50 ? c3j.a(zzm()) : c3j.a(zze(0, 47).zzm()).concat("..."));
    }

    public abstract byte zza(int i);

    public abstract int zzc(int i, int i2, int i3);

    public abstract int zzd();

    public abstract zzfp zze(int i, int i2);

    public abstract void zzf(byte[] bArr, int i, int i2, int i3);

    public abstract void zzg(srh srhVar) throws IOException;

    public abstract boolean zzh(zzfp zzfpVar);

    public final byte[] zzm() {
        int iZzd = zzd();
        if (iZzd == 0) {
            return lqi.a;
        }
        byte[] bArr = new byte[iZzd];
        zzf(bArr, 0, 0, iZzd);
        return bArr;
    }
}
