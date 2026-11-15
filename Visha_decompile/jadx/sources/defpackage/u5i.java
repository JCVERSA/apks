package defpackage;

import android.net.Uri;
import com.google.android.gms.internal.ads.zzgf;

public final class u5i extends p4i {
    public Uri e;
    public byte[] f;
    public int g;
    public int h;
    public boolean i;
    public final f5i j;

    public u5i(byte[] bArr) {
        f5i f5iVar = new f5i(bArr);
        super(false);
        this.j = f5iVar;
        n7g.d(bArr.length > 0);
    }

    @Override
    public final int b(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        int i3 = this.h;
        if (i3 == 0) {
            return -1;
        }
        int iMin = Math.min(i2, i3);
        byte[] bArr2 = this.f;
        n7g.b(bArr2);
        System.arraycopy(bArr2, this.g, bArr, i, iMin);
        this.g += iMin;
        this.h -= iMin;
        zzg(iMin);
        return iMin;
    }

    @Override
    public final long j(cfi cfiVar) throws zzgf {
        l(cfiVar);
        this.e = cfiVar.a;
        byte[] bArr = this.j.a;
        this.f = bArr;
        long j = cfiVar.e;
        int length = bArr.length;
        if (j > length) {
            throw new zzgf(2008);
        }
        int i = (int) j;
        this.g = i;
        int i2 = length - i;
        this.h = i2;
        long j2 = cfiVar.f;
        if (j2 != -1) {
            this.h = (int) Math.min(i2, j2);
        }
        this.i = true;
        m(cfiVar);
        return j2 != -1 ? j2 : this.h;
    }

    @Override
    public final Uri zzc() {
        return this.e;
    }

    @Override
    public final void zzd() {
        if (this.i) {
            this.i = false;
            k();
        }
        this.e = null;
        this.f = null;
    }
}
