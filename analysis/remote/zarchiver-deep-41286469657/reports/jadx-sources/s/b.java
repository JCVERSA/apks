package s;

import e.c;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import o.f;

public final class b {

    public static final Charset f1995a = Charset.forName("UTF-8");

    public static p.b a(ByteBuffer byteBuffer, c cVar) {
        byteBuffer.getShort();
        byteBuffer.get();
        short s2 = (short) (byteBuffer.get() & 255);
        if (s2 == 0) {
            return p.b.f.f1314b;
        }
        if (s2 == 1) {
            return new p.b.i(byteBuffer.getInt());
        }
        if (s2 == 3) {
            int i2 = byteBuffer.getInt();
            if (i2 >= 0) {
                return new p.b.j(i2, cVar);
            }
            return null;
        }
        if (s2 == 5) {
            return new p.b.c(byteBuffer.getInt());
        }
        if (s2 == 6) {
            return new p.b.d(byteBuffer.getInt());
        }
        switch (s2) {
            case 16:
                return new p.b.C0024b(byteBuffer.getInt());
            case 17:
                return new p.b.e(byteBuffer.getInt());
            case 18:
                return new p.b.a(byteBuffer.getInt());
            default:
                switch (s2) {
                    case 28:
                    case 30:
                        return new p.b.g(byteBuffer.getInt(), 8);
                    case 29:
                    case 31:
                        return new p.b.g(byteBuffer.getInt(), 6);
                    default:
                        return new p.b.h(byteBuffer.getInt(), s2);
                }
        }
    }

    public static c b(ByteBuffer byteBuffer, p.c cVar) {
        String string;
        long j2;
        long jPosition = byteBuffer.position();
        int i2 = cVar.f1318d;
        int[] iArr = new int[i2];
        if (i2 > 0) {
            for (int i3 = 0; i3 < cVar.f1318d; i3++) {
                iArr[i3] = (int) a0.c.V(byteBuffer);
            }
        }
        boolean z2 = (cVar.f1319e & 256) != 0;
        long j3 = cVar.f1320f + jPosition;
        short s2 = cVar.f1311b;
        long j4 = j3 - ((long) s2);
        a0.c.R(byteBuffer, j4);
        f[] fVarArr = new f[i2];
        int i4 = 0;
        while (i4 < i2) {
            fVarArr[i4] = new f(i4, (((long) iArr[i4]) & 4294967295L) + j4);
            i4++;
            z2 = z2;
        }
        boolean z3 = z2;
        c cVar2 = new c(cVar.f1318d, 1);
        String str = null;
        long j5 = -1;
        int i5 = 0;
        while (i5 < i2) {
            f fVar = fVarArr[i5];
            long j6 = fVar.f1286b;
            Object obj = cVar2.f588a;
            int i6 = i2;
            int i7 = fVar.f1285a;
            if (j6 == j5) {
                ((String[]) obj)[i7] = str;
                j2 = j5;
            } else {
                a0.c.R(byteBuffer, j6);
                if (z3) {
                    if ((((short) (byteBuffer.get() & 255)) & 128) != 0) {
                        byteBuffer.get();
                    }
                    int i8 = (short) (byteBuffer.get() & 255);
                    if ((i8 & 128) != 0) {
                        i8 = (((i8 & 127) << 8) | 0) + ((short) (byteBuffer.get() & 255));
                    }
                    byte[] bArr = new byte[i8];
                    byteBuffer.get(bArr);
                    string = new String(bArr, f1995a);
                    byteBuffer.get();
                } else {
                    int i9 = byteBuffer.getShort() & 65535;
                    if ((32768 & i9) != 0) {
                        i9 = (((i9 & 32767) << 16) | 0) + (65535 & byteBuffer.getShort());
                    }
                    StringBuilder sb = new StringBuilder(i9);
                    for (int i10 = 0; i10 < i9; i10++) {
                        sb.append(byteBuffer.getChar());
                    }
                    string = sb.toString();
                    byteBuffer.getShort();
                }
                ((String[]) obj)[i7] = string;
                j2 = fVar.f1286b;
                str = string;
            }
            i5++;
            j5 = j2;
            i2 = i6;
        }
        a0.c.R(byteBuffer, jPosition + ((long) (cVar.f1312c - s2)));
        return cVar2;
    }
}
