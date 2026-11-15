package com.google.android.gms.internal.ads;

import defpackage.pri;
import defpackage.vri;
import defpackage.zsi;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;

class zzgwk extends zzgwj {
    protected final byte[] zza;

    public zzgwk(byte[] bArr) {
        super(null);
        bArr.getClass();
        this.zza = bArr;
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzgwn) || zzd() != ((zzgwn) obj).zzd()) {
            return false;
        }
        if (zzd() == 0) {
            return true;
        }
        if (!(obj instanceof zzgwk)) {
            return obj.equals(this);
        }
        zzgwk zzgwkVar = (zzgwk) obj;
        int iZzr = zzr();
        int iZzr2 = zzgwkVar.zzr();
        if (iZzr == 0 || iZzr2 == 0 || iZzr == iZzr2) {
            return zzg(zzgwkVar, 0, zzd());
        }
        return false;
    }

    @Override
    public byte zza(int i) {
        return this.zza[i];
    }

    @Override
    public byte zzb(int i) {
        return this.zza[i];
    }

    public int zzc() {
        return 0;
    }

    @Override
    public int zzd() {
        return this.zza.length;
    }

    @Override
    public void zze(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.zza, i, bArr, i2, i3);
    }

    @Override
    public final boolean zzg(zzgwn zzgwnVar, int i, int i2) {
        if (i2 > zzgwnVar.zzd()) {
            throw new IllegalArgumentException("Length too large: " + i2 + zzd());
        }
        int i3 = i + i2;
        if (i3 > zzgwnVar.zzd()) {
            throw new IllegalArgumentException("Ran off end of other: " + i + ", " + i2 + ", " + zzgwnVar.zzd());
        }
        if (!(zzgwnVar instanceof zzgwk)) {
            return zzgwnVar.zzk(i, i3).equals(zzk(0, i2));
        }
        zzgwk zzgwkVar = (zzgwk) zzgwnVar;
        byte[] bArr = this.zza;
        byte[] bArr2 = zzgwkVar.zza;
        int iZzc = zzc() + i2;
        int iZzc2 = zzc();
        int iZzc3 = zzgwkVar.zzc() + i;
        while (iZzc2 < iZzc) {
            if (bArr[iZzc2] != bArr2[iZzc3]) {
                return false;
            }
            iZzc2++;
            iZzc3++;
        }
        return true;
    }

    @Override
    public final int zzi(int i, int i2, int i3) {
        return zsi.b(i, this.zza, zzc() + i2, i3);
    }

    @Override
    public final int zzj(int i, int i2, int i3) {
        int iZzc = zzc() + i2;
        return ra.f(i, this.zza, iZzc, i3 + iZzc);
    }

    @Override
    public final zzgwn zzk(int i, int i2) {
        int iZzq = zzgwn.zzq(i, i2, zzd());
        return iZzq == 0 ? zzgwn.zzb : new zzgwh(this.zza, zzc() + i, iZzq);
    }

    @Override
    public final vri zzl() {
        return vri.f(this.zza, zzc(), zzd(), true);
    }

    @Override
    public final String zzm(Charset charset) {
        return new String(this.zza, zzc(), zzd(), charset);
    }

    @Override
    public final ByteBuffer zzn() {
        return ByteBuffer.wrap(this.zza, zzc(), zzd()).asReadOnlyBuffer();
    }

    @Override
    public final void zzo(pri priVar) throws IOException {
        priVar.a(this.zza, zzc(), zzd());
    }

    @Override
    public final boolean zzp() {
        int iZzc = zzc();
        return ra.i(this.zza, iZzc, zzd() + iZzc);
    }
}
