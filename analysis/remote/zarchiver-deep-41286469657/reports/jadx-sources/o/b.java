package o;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.Locale;

public final class b {

    public e.c f1268a;

    public String[] f1269b;

    public final ByteBuffer f1270c;

    public g f1271d;

    public final q.g f1272e;

    public Locale f1273f = s.a.f1994a;

    public b(ByteBuffer byteBuffer, q.g gVar) {
        ByteBuffer byteBufferDuplicate = byteBuffer.duplicate();
        this.f1270c = byteBufferDuplicate;
        byteBufferDuplicate.order(ByteOrder.LITTLE_ENDIAN);
        this.f1272e = gVar;
    }

    public final void a() {
        p.a aVarB;
        String[] strArr;
        if (b() == null || (aVarB = b()) == null) {
            return;
        }
        Charset charset = s.b.f1995a;
        short s2 = aVarB.f1310a;
        if (1 != s2) {
            throw new n.a("Expect chunk type:" + Integer.toHexString(1) + ", but got:" + Integer.toHexString(s2));
        }
        ByteBuffer byteBuffer = this.f1270c;
        this.f1268a = s.b.b(byteBuffer, (p.c) aVarB);
        p.a aVarB2 = b();
        if (aVarB2 == null) {
            return;
        }
        if (aVarB2.f1310a == 384) {
            r.b bVar = (r.b) aVarB2;
            int i2 = (bVar.f1312c - bVar.f1311b) / 4;
            long[] jArr = new long[i2];
            for (int i3 = 0; i3 < i2; i3++) {
                jArr[i3] = a0.c.V(byteBuffer);
            }
            this.f1269b = new String[i2];
            for (int i4 = 0; i4 < i2; i4++) {
                this.f1269b[i4] = "AttrId:0x" + Long.toHexString(jArr[i4]);
            }
            aVarB2 = b();
        }
        while (aVarB2 != null) {
            long jPosition = byteBuffer.position();
            short s3 = aVarB2.f1311b;
            int i5 = aVarB2.f1312c;
            short s4 = aVarB2.f1310a;
            switch (s4) {
                case 256:
                    int i6 = byteBuffer.getInt();
                    int i7 = byteBuffer.getInt();
                    if (i6 > 0) {
                        this.f1268a.f(i6);
                    }
                    if (i7 > 0) {
                        this.f1268a.f(i7);
                    }
                    this.f1271d.d();
                    break;
                case 257:
                    int i8 = byteBuffer.getInt();
                    int i9 = byteBuffer.getInt();
                    if (i8 > 0) {
                        this.f1268a.f(i8);
                    }
                    if (i9 > 0) {
                        this.f1268a.f(i9);
                    }
                    this.f1271d.c();
                    break;
                case 258:
                    int i10 = byteBuffer.getInt();
                    int i11 = byteBuffer.getInt();
                    d dVar = new d();
                    if (i10 > 0) {
                        dVar.f1279b = this.f1268a.f(i10);
                    }
                    dVar.f1280c = this.f1268a.f(i11);
                    byteBuffer.getShort();
                    byteBuffer.getShort();
                    int i12 = byteBuffer.getShort() & 65535;
                    byteBuffer.getShort();
                    byteBuffer.getShort();
                    byteBuffer.getShort();
                    e.c cVar = new e.c(i12, 2);
                    for (int i13 = 0; i13 < i12; i13++) {
                        int i14 = byteBuffer.getInt();
                        int i15 = byteBuffer.getInt();
                        r.a aVar = new r.a();
                        if (i14 > 0) {
                            e.c cVar2 = this.f1268a;
                            if (i14 < ((String[]) cVar2.f588a).length) {
                                aVar.f1418a = cVar2.f(i14);
                            }
                        }
                        String strF = this.f1268a.f(i15);
                        aVar.f1419b = strF;
                        if (strF.isEmpty() && (strArr = this.f1269b) != null && i15 < strArr.length) {
                            aVar.f1419b = strArr[i15];
                        }
                        int i16 = byteBuffer.getInt();
                        if (i16 > 0) {
                            aVar.f1420c = this.f1268a.f(i16);
                        }
                        p.b bVarA = s.b.a(byteBuffer, this.f1268a);
                        aVar.f1421d = bVarA;
                        if (this.f1271d != null) {
                            Locale locale = this.f1273f;
                            String strC = aVar.f1420c;
                            if (strC == null) {
                                strC = bVarA != null ? bVarA.c(this.f1272e, locale) : "";
                            }
                            aVar.f1422e = strC;
                            ((r.a[]) cVar.f588a)[i13] = aVar;
                        }
                    }
                    dVar.f1281d = cVar;
                    g gVar = this.f1271d;
                    if (gVar != null) {
                        gVar.a(dVar);
                    }
                    break;
                case 259:
                    int i17 = byteBuffer.getInt();
                    int i18 = byteBuffer.getInt();
                    if (i17 > 0) {
                        this.f1268a.f(i17);
                    }
                    this.f1268a.f(i18);
                    g gVar2 = this.f1271d;
                    if (gVar2 != null) {
                        gVar2.b();
                    }
                    break;
                case 260:
                    int i19 = byteBuffer.getInt();
                    if (i19 > 0) {
                        this.f1268a.f(i19);
                    }
                    s.b.a(byteBuffer, this.f1268a);
                    break;
                default:
                    if (s4 < 256 || s4 > 383) {
                        throw new n.a("Unexpected chunk type:" + ((int) s4));
                    }
                    byteBuffer.position(byteBuffer.position() + (i5 - s3));
                    break;
                    break;
            }
            a0.c.R(byteBuffer, jPosition + ((long) (i5 - s3)));
            aVarB2 = b();
        }
    }

    public final p.a b() {
        ByteBuffer byteBuffer = this.f1270c;
        if (!byteBuffer.hasRemaining()) {
            return null;
        }
        long jPosition = byteBuffer.position();
        int i2 = byteBuffer.getShort() & 65535;
        int i3 = 65535 & byteBuffer.getShort();
        long jV = a0.c.V(byteBuffer);
        if (i2 == 0) {
            return new q.a(i2, i3, jV);
        }
        if (i2 == 1) {
            p.c cVar = new p.c(i3, jV);
            cVar.f1318d = a0.c.m(a0.c.V(byteBuffer));
            a0.c.m(a0.c.V(byteBuffer));
            cVar.f1319e = a0.c.V(byteBuffer);
            cVar.f1320f = a0.c.V(byteBuffer);
            a0.c.V(byteBuffer);
            a0.c.R(byteBuffer, jPosition + ((long) i3));
            return cVar;
        }
        if (i2 == 3) {
            return new q.a(i2, i3, jV);
        }
        if (i2 == 384) {
            a0.c.R(byteBuffer, jPosition + ((long) i3));
            return new r.b(i2, i3, jV);
        }
        switch (i2) {
            case 256:
            case 257:
            case 258:
            case 259:
            case 260:
                q.a aVar = new q.a(i2, i3, jV);
                a0.c.V(byteBuffer);
                a0.c.V(byteBuffer);
                a0.c.R(byteBuffer, jPosition + ((long) i3));
                return aVar;
            default:
                throw new n.a("Unexpected chunk type:" + i2);
        }
    }
}
