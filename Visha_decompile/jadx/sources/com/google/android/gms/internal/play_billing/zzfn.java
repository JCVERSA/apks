package com.google.android.gms.internal.play_billing;

import defpackage.lqi;
import defpackage.srh;
import defpackage.y2i;
import java.io.IOException;
import java.util.Arrays;

final class zzfn extends zzfm {
    private final byte[] zzb;

    public zzfn(byte[] bArr) {
        super(null);
        this.zzb = bArr;
    }

    @Override
    public final byte zza(int i) {
        return this.zzb[i];
    }

    @Override
    public final int zzc(int i, int i2, int i3) {
        return lqi.b(i, this.zzb, 0, i3);
    }

    @Override
    public final int zzd() {
        return this.zzb.length;
    }

    @Override
    public final zzfp zze(int i, int i2) {
        byte[] bArr = this.zzb;
        int iZzj = zzfp.zzj(0, i2, bArr.length);
        return iZzj == 0 ? zzfp.zza : new zzfj(bArr, 0, iZzj);
    }

    @Override
    public final void zzf(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.zzb, 0, bArr, 0, i3);
    }

    @Override
    public final void zzg(srh srhVar) throws IOException {
        byte[] bArr = this.zzb;
        ((y2i) srhVar).y(bArr, 0, bArr.length);
    }

    @Override
    public final boolean zzh(zzfp zzfpVar) {
        boolean z = zzfpVar instanceof zzfn;
        if (z) {
            return Arrays.equals(this.zzb, ((zzfn) zzfpVar).zzb);
        }
        boolean z2 = zzfpVar instanceof zzfj;
        if (!z2) {
            return zzfpVar.zzh(this);
        }
        byte[] bArr = this.zzb;
        int iZzd = zzfpVar.zzd();
        int length = bArr.length;
        if (length > iZzd) {
            throw new IllegalArgumentException("Length too large: " + length + length);
        }
        if (length <= zzfpVar.zzd()) {
            if (z) {
                return zzfp.zzl(bArr, 0, ((zzfn) zzfpVar).zzb, 0, length);
            }
            if (!z2) {
                return zzfpVar.zze(0, length).equals(zze(0, length));
            }
            zzfj zzfjVar = (zzfj) zzfpVar;
            return zzfp.zzl(bArr, 0, zzfjVar.zzb, zzfjVar.zzc, length);
        }
        throw new IllegalArgumentException("Ran off end of other: 0, " + length + ", " + zzfpVar.zzd());
    }
}
