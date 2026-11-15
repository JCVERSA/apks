package com.google.android.gms.internal.auth;

import java.nio.charset.Charset;

class zzeb extends zzea {
    protected final byte[] zza;

    zzeb(byte[] bArr) {
        bArr.getClass();
        this.zza = bArr;
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzee) || zzd() != ((zzee) obj).zzd()) {
            return false;
        }
        if (zzd() == 0) {
            return true;
        }
        if (!(obj instanceof zzeb)) {
            return obj.equals(this);
        }
        zzeb zzebVar = (zzeb) obj;
        int iZzj = zzj();
        int iZzj2 = zzebVar.zzj();
        if (iZzj != 0 && iZzj2 != 0 && iZzj != iZzj2) {
            return false;
        }
        int iZzd = zzd();
        if (iZzd > zzebVar.zzd()) {
            throw new IllegalArgumentException("Length too large: " + iZzd + zzd());
        }
        if (iZzd > zzebVar.zzd()) {
            throw new IllegalArgumentException("Ran off end of other: 0, " + iZzd + ", " + zzebVar.zzd());
        }
        byte[] bArr = this.zza;
        byte[] bArr2 = zzebVar.zza;
        zzebVar.zzc();
        int i10 = 0;
        int i11 = 0;
        while (i10 < iZzd) {
            if (bArr[i10] != bArr2[i11]) {
                return false;
            }
            i10++;
            i11++;
        }
        return true;
    }

    @Override
    public byte zza(int i10) {
        return this.zza[i10];
    }

    @Override
    byte zzb(int i10) {
        return this.zza[i10];
    }

    protected int zzc() {
        return 0;
    }

    @Override
    public int zzd() {
        return this.zza.length;
    }

    @Override
    protected final int zze(int i10, int i11, int i12) {
        return zzez.zzd(i10, this.zza, 0, i12);
    }

    @Override
    public final zzee zzf(int i10, int i11) {
        int iZzi = zzee.zzi(0, i11, zzd());
        return iZzi == 0 ? zzee.zzb : new zzdy(this.zza, 0, iZzi);
    }

    @Override
    protected final String zzg(Charset charset) {
        return new String(this.zza, 0, zzd(), charset);
    }

    @Override
    public final boolean zzh() {
        return zzhm.zzd(this.zza, 0, zzd());
    }
}
