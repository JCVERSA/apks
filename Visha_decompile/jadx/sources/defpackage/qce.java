package defpackage;

import java.nio.charset.StandardCharsets;
import java.util.Arrays;

public final class qce implements iqe {
    public final int a;
    public final String b;
    public final String c;
    public final int d;
    public final int e;
    public final int f;
    public final int g;
    public final byte[] h;

    public qce(int i, String str, String str2, int i2, int i3, int i4, int i5, byte[] bArr) {
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = i2;
        this.e = i3;
        this.f = i4;
        this.g = i5;
        this.h = bArr;
    }

    public static qce b(u4h u4hVar) {
        int iA = u4hVar.A();
        String strE = bue.e(u4hVar.b(u4hVar.A(), StandardCharsets.US_ASCII));
        String strB = u4hVar.b(u4hVar.A(), StandardCharsets.UTF_8);
        int iA2 = u4hVar.A();
        int iA3 = u4hVar.A();
        int iA4 = u4hVar.A();
        int iA5 = u4hVar.A();
        int iA6 = u4hVar.A();
        byte[] bArr = new byte[iA6];
        u4hVar.h(bArr, 0, iA6);
        return new qce(iA, strE, strB, iA2, iA3, iA4, iA5, bArr);
    }

    @Override
    public final void a(une uneVar) {
        uneVar.x(this.h, this.a);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && qce.class == obj.getClass()) {
            qce qceVar = (qce) obj;
            if (this.a == qceVar.a && this.b.equals(qceVar.b) && this.c.equals(qceVar.c) && this.d == qceVar.d && this.e == qceVar.e && this.f == qceVar.f && this.g == qceVar.g && Arrays.equals(this.h, qceVar.h)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((((((((((((this.a + 527) * 31) + this.b.hashCode()) * 31) + this.c.hashCode()) * 31) + this.d) * 31) + this.e) * 31) + this.f) * 31) + this.g) * 31) + Arrays.hashCode(this.h);
    }

    public final String toString() {
        return "Picture: mimeType=" + this.b + ", description=" + this.c;
    }
}
