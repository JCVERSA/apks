package w2;

import androidx.media3.common.r;
import androidx.media3.common.util.j0;
import androidx.media3.common.v;
import androidx.media3.common.w;
import androidx.media3.common.x;
import androidx.media3.common.y;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;

public final class a implements x.a {

    public final int f74131a;

    public final String f74132b;

    public final String f74133c;

    public final int f74134d;

    public final int f74135e;

    public final int f74136f;

    public final int f74137g;

    public final byte[] f74138h;

    public a(int i10, String str, String str2, int i11, int i12, int i13, int i14, byte[] bArr) {
        this.f74131a = i10;
        this.f74132b = str;
        this.f74133c = str2;
        this.f74134d = i11;
        this.f74135e = i12;
        this.f74136f = i13;
        this.f74137g = i14;
        this.f74138h = bArr;
    }

    public static a b(j0 j0Var) {
        int iQ = j0Var.q();
        String strU = y.u(j0Var.F(j0Var.q(), StandardCharsets.US_ASCII));
        String strE = j0Var.E(j0Var.q());
        int iQ2 = j0Var.q();
        int iQ3 = j0Var.q();
        int iQ4 = j0Var.q();
        int iQ5 = j0Var.q();
        int iQ6 = j0Var.q();
        byte[] bArr = new byte[iQ6];
        j0Var.l(bArr, 0, iQ6);
        return new a(iQ, strU, strE, iQ2, iQ3, iQ4, iQ5, bArr);
    }

    @Override
    public void a(v.b bVar) {
        bVar.K(this.f74138h, this.f74131a);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        return this.f74131a == aVar.f74131a && this.f74132b.equals(aVar.f74132b) && this.f74133c.equals(aVar.f74133c) && this.f74134d == aVar.f74134d && this.f74135e == aVar.f74135e && this.f74136f == aVar.f74136f && this.f74137g == aVar.f74137g && Arrays.equals(this.f74138h, aVar.f74138h);
    }

    @Override
    public byte[] getWrappedMetadataBytes() {
        return w.a(this);
    }

    @Override
    public r getWrappedMetadataFormat() {
        return w.b(this);
    }

    public int hashCode() {
        return ((((((((((((((527 + this.f74131a) * 31) + this.f74132b.hashCode()) * 31) + this.f74133c.hashCode()) * 31) + this.f74134d) * 31) + this.f74135e) * 31) + this.f74136f) * 31) + this.f74137g) * 31) + Arrays.hashCode(this.f74138h);
    }

    public String toString() {
        return "Picture: mimeType=" + this.f74132b + ", description=" + this.f74133c;
    }
}
