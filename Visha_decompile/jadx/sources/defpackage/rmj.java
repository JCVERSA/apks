package defpackage;

import android.net.Uri;
import java.util.Map;

public final class rmj implements v9i {
    public final v9i a;
    public final int b;
    public final qmj c;
    public final byte[] d;
    public int e;

    public rmj(v9i v9iVar, int i, qmj qmjVar) {
        n7g.d(i > 0);
        this.a = v9iVar;
        this.b = i;
        this.c = qmjVar;
        this.d = new byte[1];
        this.e = i;
    }

    @Override
    public final int b(byte[] bArr, int i, int i2) {
        int i3 = this.e;
        if (i3 == 0) {
            v9i v9iVar = this.a;
            byte[] bArr2 = this.d;
            int i4 = 0;
            if (v9iVar.b(bArr2, 0, 1) != -1) {
                int i5 = (bArr2[0] & 255) << 4;
                if (i5 != 0) {
                    byte[] bArr3 = new byte[i5];
                    int i6 = i5;
                    while (i6 > 0) {
                        int iB = v9iVar.b(bArr3, i4, i6);
                        if (iB != -1) {
                            i4 += iB;
                            i6 -= iB;
                        }
                    }
                    while (i5 > 0) {
                        int i7 = i5 - 1;
                        if (bArr3[i7] != 0) {
                            break;
                        }
                        i5 = i7;
                    }
                    if (i5 > 0) {
                        this.c.a(new u4h(bArr3, i5));
                    }
                }
                i3 = this.b;
                this.e = i3;
            }
            return -1;
        }
        int iB2 = this.a.b(bArr, i, Math.min(i3, i2));
        if (iB2 != -1) {
            this.e -= iB2;
        }
        return iB2;
    }

    @Override
    public final void c(ixi ixiVar) {
        ixiVar.getClass();
        this.a.c(ixiVar);
    }

    @Override
    public final long j(cfi cfiVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final Uri zzc() {
        return this.a.zzc();
    }

    @Override
    public final void zzd() {
        throw new UnsupportedOperationException();
    }

    @Override
    public final Map zze() {
        return this.a.zze();
    }
}
