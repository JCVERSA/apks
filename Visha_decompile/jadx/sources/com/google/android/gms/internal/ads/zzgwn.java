package com.google.android.gms.internal.ads;

import defpackage.lri;
import defpackage.oui;
import defpackage.pri;
import defpackage.qri;
import defpackage.sri;
import defpackage.vri;
import defpackage.zsi;
import java.io.IOException;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Collection;
import java.util.Iterator;
import java.util.Locale;
import org.slf4j.Marker;

public abstract class zzgwn implements Iterable<Byte>, Serializable {
    public static final zzgwn zzb = new zzgwk(zsi.b);
    private int zza = 0;

    static {
        int i = lri.a;
    }

    private static zzgwn zzc(Iterator it, int i) {
        if (i <= 0) {
            throw new IllegalArgumentException(String.format("length (%s) must be >= 1", Integer.valueOf(i)));
        }
        if (i == 1) {
            return (zzgwn) it.next();
        }
        int i2 = i >>> 1;
        zzgwn zzgwnVarZzc = zzc(it, i2);
        zzgwn zzgwnVarZzc2 = zzc(it, i - i2);
        if (Integer.MAX_VALUE - zzgwnVarZzc.zzd() >= zzgwnVarZzc2.zzd()) {
            return zzgzy.zzC(zzgwnVarZzc, zzgwnVarZzc2);
        }
        throw new IllegalArgumentException("ByteString would be too long: " + zzgwnVarZzc.zzd() + Marker.ANY_NON_NULL_MARKER + zzgwnVarZzc2.zzd());
    }

    public static int zzq(int i, int i2, int i3) {
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

    public static ba zzt() {
        return new ba(128);
    }

    public static zzgwn zzu(Iterable iterable) {
        int size;
        if (iterable instanceof Collection) {
            size = ((Collection) iterable).size();
        } else {
            Iterator it = iterable.iterator();
            size = 0;
            while (it.hasNext()) {
                it.next();
                size++;
            }
        }
        return size == 0 ? zzb : zzc(iterable.iterator(), size);
    }

    public static zzgwn zzv(byte[] bArr, int i, int i2) {
        zzq(i, i + i2, bArr.length);
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return new zzgwk(bArr2);
    }

    public static zzgwn zzw(String str) {
        return new zzgwk(str.getBytes(zsi.a));
    }

    public static void zzy(int i, int i2) {
        if (((i2 - (i + 1)) | i) < 0) {
            if (i < 0) {
                throw new ArrayIndexOutOfBoundsException("Index < 0: " + i);
            }
            throw new ArrayIndexOutOfBoundsException("Index > length: " + i + ", " + i2);
        }
    }

    public abstract boolean equals(Object obj);

    public final int hashCode() {
        int iZzi = this.zza;
        if (iZzi == 0) {
            int iZzd = zzd();
            iZzi = zzi(iZzd, 0, iZzd);
            if (iZzi == 0) {
                iZzi = 1;
            }
            this.zza = iZzi;
        }
        return iZzi;
    }

    public final String toString() {
        return String.format(Locale.ROOT, "<ByteString@%s size=%d contents=\"%s\">", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(zzd()), zzd() <= 50 ? oui.a(this) : oui.a(zzk(0, 47)).concat("..."));
    }

    public final byte[] zzA() {
        int iZzd = zzd();
        if (iZzd == 0) {
            return zsi.b;
        }
        byte[] bArr = new byte[iZzd];
        zze(bArr, 0, 0, iZzd);
        return bArr;
    }

    public abstract byte zza(int i);

    public abstract byte zzb(int i);

    public abstract int zzd();

    public abstract void zze(byte[] bArr, int i, int i2, int i3);

    public abstract int zzf();

    public abstract boolean zzh();

    public abstract int zzi(int i, int i2, int i3);

    public abstract int zzj(int i, int i2, int i3);

    public abstract zzgwn zzk(int i, int i2);

    public abstract vri zzl();

    public abstract String zzm(Charset charset);

    public abstract ByteBuffer zzn();

    public abstract void zzo(pri priVar) throws IOException;

    public abstract boolean zzp();

    public final int zzr() {
        return this.zza;
    }

    @Override
    public sri iterator() {
        return new qri(this);
    }

    public final String zzx() {
        return zzd() == 0 ? "" : zzm(zsi.a);
    }

    @Deprecated
    public final void zzz(byte[] bArr, int i, int i2, int i3) {
        zzq(0, i3, zzd());
        zzq(i2, i2 + i3, bArr.length);
        if (i3 > 0) {
            zze(bArr, 0, i2, i3);
        }
    }
}
