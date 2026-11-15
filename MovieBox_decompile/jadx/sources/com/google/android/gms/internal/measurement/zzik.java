package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.io.Serializable;
import java.util.Iterator;
import java.util.Locale;

public abstract class zzik implements Serializable, Iterable<Byte> {
    public static final zzik zza = new zziv(zzjv.zzb);
    private static final zzir zzb = new zziu();
    private int zzc = 0;

    static {
        new zzim();
    }

    zzik() {
    }

    static int zza(byte b10) {
        return b10 & 255;
    }

    static zzik zzb(byte[] bArr) {
        return new zziv(bArr);
    }

    static zzit zzc(int i10) {
        return new zzit(i10);
    }

    public abstract boolean equals(Object obj);

    public final int hashCode() {
        int iZzb = this.zzc;
        if (iZzb == 0) {
            int iZzb2 = zzb();
            iZzb = zzb(iZzb2, 0, iZzb2);
            if (iZzb == 0) {
                iZzb = 1;
            }
            this.zzc = iZzb;
        }
        return iZzb;
    }

    @Override
    public Iterator<Byte> iterator() {
        return new zzin(this);
    }

    public final String toString() {
        String strZza;
        Locale locale = Locale.ROOT;
        String hexString = Integer.toHexString(System.identityHashCode(this));
        Integer numValueOf = Integer.valueOf(zzb());
        if (zzb() <= 50) {
            strZza = zzmg.zza(this);
        } else {
            strZza = zzmg.zza(zza(0, 47)) + "...";
        }
        return String.format(locale, "<ByteString@%s size=%d contents=\"%s\">", hexString, numValueOf, strZza);
    }

    public abstract byte zza(int i10);

    public abstract zzik zza(int i10, int i11);

    abstract void zza(zzil zzilVar) throws IOException;

    abstract byte zzb(int i10);

    public abstract int zzb();

    protected abstract int zzb(int i10, int i11, int i12);

    static int zza(int i10, int i11, int i12) {
        int i13 = i11 - i10;
        if ((i10 | i11 | i13 | (i12 - i11)) >= 0) {
            return i13;
        }
        if (i10 < 0) {
            throw new IndexOutOfBoundsException("Beginning index: " + i10 + " < 0");
        }
        if (i11 < i10) {
            throw new IndexOutOfBoundsException("Beginning index larger than ending index: " + i10 + ", " + i11);
        }
        throw new IndexOutOfBoundsException("End index: " + i11 + " >= " + i12);
    }

    protected final int zza() {
        return this.zzc;
    }

    public static zzik zza(byte[] bArr) {
        return zza(bArr, 0, bArr.length);
    }

    public static zzik zza(byte[] bArr, int i10, int i11) {
        zza(i10, i10 + i11, bArr.length);
        return new zziv(zzb.zza(bArr, i10, i11));
    }

    public static zzik zza(String str) {
        return new zziv(str.getBytes(zzjv.zza));
    }
}
