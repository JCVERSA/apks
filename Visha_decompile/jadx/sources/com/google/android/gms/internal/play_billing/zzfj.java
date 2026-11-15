package com.google.android.gms.internal.play_billing;

import defpackage.lqi;
import defpackage.srh;
import defpackage.y2i;
import java.io.IOException;

final class zzfj extends zzfm {
    private final byte[] zzb;
    private final int zzc;
    private final int zzd;

    public zzfj(byte[] bArr, int i, int i2) {
        super(null);
        zzfp.zzj(i, i + i2, bArr.length);
        this.zzb = bArr;
        this.zzc = i;
        this.zzd = i2;
    }

    @Override
    public final byte zza(int i) {
        return this.zzb[this.zzc + i];
    }

    @Override
    public final int zzc(int i, int i2, int i3) {
        return lqi.b(i, this.zzb, this.zzc, i3);
    }

    @Override
    public final int zzd() {
        return this.zzd;
    }

    @Override
    public final zzfp zze(int i, int i2) {
        int iZzj = zzfp.zzj(i, i2, this.zzd);
        return iZzj == 0 ? zzfp.zza : new zzfj(this.zzb, this.zzc + i, iZzj);
    }

    @Override
    public final void zzf(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.zzb, this.zzc, bArr, 0, i3);
    }

    @Override
    public final void zzg(srh srhVar) throws IOException {
        ((y2i) srhVar).y(this.zzb, this.zzc, this.zzd);
    }

    @Override
    public final boolean zzh(zzfp zzfpVar) {
        boolean z = zzfpVar instanceof zzfn;
        if (!z && !(zzfpVar instanceof zzfj)) {
            return zzfpVar.zzh(this);
        }
        int i = this.zzd;
        if (i > zzfpVar.zzd()) {
            throw new IllegalArgumentException("Length too large: " + i + i);
        }
        if (i > zzfpVar.zzd()) {
            throw new IllegalArgumentException("Ran off end of other: 0, " + i + ", " + zzfpVar.zzd());
        }
        if (z) {
            return zzfp.zzl(this.zzb, this.zzc, ((zzfn) zzfpVar).zzb, 0, i);
        }
        if (zzfpVar instanceof zzfj) {
            zzfj zzfjVar = (zzfj) zzfpVar;
            return zzfp.zzl(this.zzb, this.zzc, zzfjVar.zzb, zzfjVar.zzc, i);
        }
        zzfp zzfpVarZze = zzfpVar.zze(0, i);
        int i2 = this.zzc;
        return zzfpVarZze.equals(zze(i2, i + i2));
    }
}
