package com.google.android.gms.internal.measurement;

import defpackage.bcj;
import defpackage.j7j;
import defpackage.m3j;
import defpackage.ubc;
import java.io.IOException;
import java.nio.charset.Charset;

class zzja extends zziz {
    protected final byte[] zza;

    public zzja(byte[] bArr) {
        bArr.getClass();
        this.zza = bArr;
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzjd) || zzd() != ((zzjd) obj).zzd()) {
            return false;
        }
        if (zzd() == 0) {
            return true;
        }
        if (!(obj instanceof zzja)) {
            return obj.equals(this);
        }
        zzja zzjaVar = (zzja) obj;
        int iZzk = zzk();
        int iZzk2 = zzjaVar.zzk();
        if (iZzk != 0 && iZzk2 != 0 && iZzk != iZzk2) {
            return false;
        }
        int iZzd = zzd();
        if (iZzd > zzjaVar.zzd()) {
            throw new IllegalArgumentException("Length too large: " + iZzd + zzd());
        }
        if (iZzd > zzjaVar.zzd()) {
            throw new IllegalArgumentException("Ran off end of other: 0, " + iZzd + ", " + zzjaVar.zzd());
        }
        byte[] bArr = this.zza;
        byte[] bArr2 = zzjaVar.zza;
        zzjaVar.zzc();
        int i = 0;
        int i2 = 0;
        while (i < iZzd) {
            if (bArr[i] != bArr2[i2]) {
                return false;
            }
            i++;
            i2++;
        }
        return true;
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
    public final int zze(int i, int i2, int i3) {
        return j7j.b(i, this.zza, 0, i3);
    }

    @Override
    public final zzjd zzf(int i, int i2) {
        int iZzj = zzjd.zzj(0, i2, zzd());
        return iZzj == 0 ? zzjd.zzb : new zzix(this.zza, 0, iZzj);
    }

    @Override
    public final String zzg(Charset charset) {
        return new String(this.zza, 0, zzd(), charset);
    }

    @Override
    public final void zzh(m3j m3jVar) throws IOException {
        zzd();
        ubc.a(m3jVar);
        throw null;
    }

    @Override
    public final boolean zzi() {
        return bcj.b(this.zza, 0, zzd());
    }
}
