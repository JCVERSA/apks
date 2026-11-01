package o;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import q.h;
import q.k;
import q.m;

public final class d {

    public final int f1278a = 1;

    public Object f1279b;

    public Comparable f1280c;

    public Object f1281d;

    public d() {
    }

    public final p.a a() {
        long jPosition = ((ByteBuffer) this.f1280c).position();
        int iW = a0.c.W((ByteBuffer) this.f1280c);
        int iW2 = a0.c.W((ByteBuffer) this.f1280c);
        int iV = (int) a0.c.V((ByteBuffer) this.f1280c);
        if (iW != 0) {
            if (iW == 1) {
                p.c cVar = new p.c(iW2, iV);
                cVar.f1318d = a0.c.m(a0.c.V((ByteBuffer) this.f1280c));
                a0.c.m(a0.c.V((ByteBuffer) this.f1280c));
                cVar.f1319e = a0.c.V((ByteBuffer) this.f1280c);
                cVar.f1320f = a0.c.V((ByteBuffer) this.f1280c);
                a0.c.V((ByteBuffer) this.f1280c);
                a0.c.R((ByteBuffer) this.f1280c, jPosition + ((long) iW2));
                return cVar;
            }
            if (iW == 2) {
                h hVar = new h(iW2, iV);
                hVar.f1356d = (int) a0.c.V((ByteBuffer) this.f1280c);
                a0.c.R((ByteBuffer) this.f1280c, jPosition + ((long) iW2));
                return hVar;
            }
            switch (iW) {
                case 512:
                    q.b bVar = new q.b(iW2, iV);
                    bVar.f1336d = (int) a0.c.V((ByteBuffer) this.f1280c);
                    ByteBuffer byteBuffer = (ByteBuffer) this.f1280c;
                    Charset charset = s.b.f1995a;
                    StringBuilder sb = new StringBuilder(128);
                    for (int i2 = 0; i2 < 128; i2++) {
                        sb.append(byteBuffer.getChar());
                    }
                    String string = sb.toString();
                    for (int i3 = 0; i3 < string.length(); i3++) {
                        if (string.charAt(i3) == 0) {
                            string.substring(0, i3);
                            bVar.f1337e = a0.c.m(a0.c.V((ByteBuffer) this.f1280c));
                            a0.c.m(a0.c.V((ByteBuffer) this.f1280c));
                            bVar.f1338f = a0.c.m(a0.c.V((ByteBuffer) this.f1280c));
                            a0.c.m(a0.c.V((ByteBuffer) this.f1280c));
                            a0.c.R((ByteBuffer) this.f1280c, jPosition + ((long) iW2));
                            return bVar;
                        }
                    }
                    bVar.f1337e = a0.c.m(a0.c.V((ByteBuffer) this.f1280c));
                    a0.c.m(a0.c.V((ByteBuffer) this.f1280c));
                    bVar.f1338f = a0.c.m(a0.c.V((ByteBuffer) this.f1280c));
                    a0.c.m(a0.c.V((ByteBuffer) this.f1280c));
                    a0.c.R((ByteBuffer) this.f1280c, jPosition + ((long) iW2));
                    return bVar;
                case 513:
                    k kVar = new k(iW2, iV);
                    kVar.f1364d = (byte) a0.c.U((ByteBuffer) this.f1280c);
                    a0.c.U((ByteBuffer) this.f1280c);
                    a0.c.W((ByteBuffer) this.f1280c);
                    kVar.f1365e = a0.c.m(a0.c.V((ByteBuffer) this.f1280c));
                    kVar.f1366f = a0.c.m(a0.c.V((ByteBuffer) this.f1280c));
                    long jPosition2 = ((ByteBuffer) this.f1280c).position();
                    q.c cVar2 = new q.c();
                    long jV = a0.c.V((ByteBuffer) this.f1280c);
                    ((ByteBuffer) this.f1280c).getShort();
                    ((ByteBuffer) this.f1280c).getShort();
                    byte[] bArr = new byte[2];
                    ((ByteBuffer) this.f1280c).get(bArr);
                    new String(bArr).replace("\u0000", "");
                    byte[] bArr2 = new byte[2];
                    ((ByteBuffer) this.f1280c).get(bArr2);
                    new String(bArr2).replace("\u0000", "");
                    a0.c.U((ByteBuffer) this.f1280c);
                    a0.c.U((ByteBuffer) this.f1280c);
                    cVar2.f1339a = (short) a0.c.W((ByteBuffer) this.f1280c);
                    long jPosition3 = ((ByteBuffer) this.f1280c).position();
                    ByteBuffer byteBuffer2 = (ByteBuffer) this.f1280c;
                    byteBuffer2.position(byteBuffer2.position() + ((int) (jV - (jPosition3 - jPosition2))));
                    kVar.f1367g = cVar2;
                    a0.c.R((ByteBuffer) this.f1280c, jPosition + ((long) iW2));
                    return kVar;
                case 514:
                    m mVar = new m(iW2, iV);
                    mVar.f1371d = (byte) a0.c.U((ByteBuffer) this.f1280c);
                    a0.c.U((ByteBuffer) this.f1280c);
                    a0.c.W((ByteBuffer) this.f1280c);
                    mVar.f1372e = a0.c.m(a0.c.V((ByteBuffer) this.f1280c));
                    a0.c.R((ByteBuffer) this.f1280c, jPosition + ((long) iW2));
                    return mVar;
                case 515:
                    q.a aVar = new q.a(iW2, iV);
                    a0.c.m(a0.c.V((ByteBuffer) this.f1280c));
                    a0.c.R((ByteBuffer) this.f1280c, jPosition + ((long) iW2));
                    return aVar;
                case 516:
                case 517:
                case 518:
                    break;
                default:
                    throw new n.a("Unexpected chunk Type: 0x" + Integer.toHexString(iW));
            }
        }
        a0.c.R((ByteBuffer) this.f1280c, jPosition + ((long) iW2));
        return new q.a(iW2, iV);
    }

    public final String toString() {
        switch (this.f1278a) {
            case 1:
                StringBuilder sb = new StringBuilder("<");
                String str = (String) this.f1279b;
                if (str != null) {
                    sb.append(str);
                    sb.append(":");
                }
                sb.append((String) this.f1280c);
                sb.append('>');
                return sb.toString();
            default:
                return super.toString();
        }
    }

    public d(ByteBuffer byteBuffer) {
        ByteBuffer byteBufferDuplicate = byteBuffer.duplicate();
        this.f1280c = byteBufferDuplicate;
        byteBufferDuplicate.order(ByteOrder.LITTLE_ENDIAN);
    }
}
