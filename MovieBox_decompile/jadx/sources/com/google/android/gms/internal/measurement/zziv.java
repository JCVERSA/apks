package com.google.android.gms.internal.measurement;

import java.io.IOException;

class zziv extends zzis {
    protected final byte[] zzb;

    zziv(byte[] bArr) {
        super();
        bArr.getClass();
        this.zzb = bArr;
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzik) || zzb() != ((zzik) obj).zzb()) {
            return false;
        }
        if (zzb() == 0) {
            return true;
        }
        if (!(obj instanceof zziv)) {
            return obj.equals(this);
        }
        zziv zzivVar = (zziv) obj;
        int iZza = zza();
        int iZza2 = zzivVar.zza();
        if (iZza == 0 || iZza2 == 0 || iZza == iZza2) {
            return zza(zzivVar, 0, zzb());
        }
        return false;
    }

    @Override
    public byte zza(int i10) {
        return this.zzb[i10];
    }

    @Override
    byte zzb(int i10) {
        return this.zzb[i10];
    }

    protected int zzc() {
        return 0;
    }

    @Override
    public final zzik zza(int i10, int i11) {
        int iZza = zzik.zza(0, i11, zzb());
        return iZza == 0 ? zzik.zza : new zzio(this.zzb, zzc(), iZza);
    }

    @Override
    protected final int zzb(int i10, int i11, int i12) {
        return zzjv.zza(i10, this.zzb, zzc(), i12);
    }

    @Override
    public int zzb() {
        return this.zzb.length;
    }

    @Override
    final void zza(zzil zzilVar) throws IOException {
        zzilVar.zza(this.zzb, zzc(), zzb());
    }

    @Override
    final boolean zza(zzik zzikVar, int i10, int i11) {
        if (i11 <= zzikVar.zzb()) {
            if (i11 <= zzikVar.zzb()) {
                if (zzikVar instanceof zziv) {
                    zziv zzivVar = (zziv) zzikVar;
                    byte[] bArr = this.zzb;
                    byte[] bArr2 = zzivVar.zzb;
                    int iZzc = zzc() + i11;
                    int iZzc2 = zzc();
                    int iZzc3 = zzivVar.zzc();
                    while (iZzc2 < iZzc) {
                        if (bArr[iZzc2] != bArr2[iZzc3]) {
                            return false;
                        }
                        iZzc2++;
                        iZzc3++;
                    }
                    return true;
                }
                return zzikVar.zza(0, i11).equals(zza(0, i11));
            }
            throw new IllegalArgumentException("Ran off end of other: 0, " + i11 + ", " + zzikVar.zzb());
        }
        throw new IllegalArgumentException("Length too large: " + i11 + zzb());
    }
}
