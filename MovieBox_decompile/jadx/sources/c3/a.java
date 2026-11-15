package c3;

import androidx.media3.common.ParserException;
import java.util.ArrayDeque;
import k2.s;

final class a implements c {

    private final byte[] f16402a = new byte[8];

    private final ArrayDeque f16403b = new ArrayDeque();

    private final g f16404c = new g();

    private c3.b f16405d;

    private int f16406e;

    private int f16407f;

    private long f16408g;

    private static final class b {

        private final int f16409a;

        private final long f16410b;

        private b(int i10, long j10) {
            this.f16409a = i10;
            this.f16410b = j10;
        }
    }

    private long c(s sVar) {
        sVar.resetPeekPosition();
        while (true) {
            sVar.peekFully(this.f16402a, 0, 4);
            int iC = g.c(this.f16402a[0]);
            if (iC != -1 && iC <= 4) {
                int iA = (int) g.a(this.f16402a, iC, false);
                if (this.f16405d.isLevel1Element(iA)) {
                    sVar.skipFully(iC);
                    return iA;
                }
            }
            sVar.skipFully(1);
        }
    }

    private double d(s sVar, int i10) {
        long jE = e(sVar, i10);
        return i10 == 4 ? Float.intBitsToFloat((int) jE) : Double.longBitsToDouble(jE);
    }

    private long e(s sVar, int i10) {
        sVar.readFully(this.f16402a, 0, i10);
        long j10 = 0;
        for (int i11 = 0; i11 < i10; i11++) {
            j10 = (j10 << 8) | ((long) (this.f16402a[i11] & 255));
        }
        return j10;
    }

    private static String f(s sVar, int i10) {
        if (i10 == 0) {
            return "";
        }
        byte[] bArr = new byte[i10];
        sVar.readFully(bArr, 0, i10);
        while (i10 > 0 && bArr[i10 - 1] == 0) {
            i10--;
        }
        return new String(bArr, 0, i10);
    }

    @Override
    public boolean a(s sVar) throws ParserException {
        androidx.media3.common.util.a.i(this.f16405d);
        while (true) {
            b bVar = (b) this.f16403b.peek();
            if (bVar != null && sVar.getPosition() >= bVar.f16410b) {
                this.f16405d.endMasterElement(((b) this.f16403b.pop()).f16409a);
                return true;
            }
            if (this.f16406e == 0) {
                long jD = this.f16404c.d(sVar, true, false, 4);
                if (jD == -2) {
                    jD = c(sVar);
                }
                if (jD == -1) {
                    return false;
                }
                this.f16407f = (int) jD;
                this.f16406e = 1;
            }
            if (this.f16406e == 1) {
                this.f16408g = this.f16404c.d(sVar, false, true, 8);
                this.f16406e = 2;
            }
            int elementType = this.f16405d.getElementType(this.f16407f);
            if (elementType != 0) {
                if (elementType == 1) {
                    long position = sVar.getPosition();
                    this.f16403b.push(new b(this.f16407f, this.f16408g + position));
                    this.f16405d.startMasterElement(this.f16407f, position, this.f16408g);
                    this.f16406e = 0;
                    return true;
                }
                if (elementType == 2) {
                    long j10 = this.f16408g;
                    if (j10 <= 8) {
                        this.f16405d.integerElement(this.f16407f, e(sVar, (int) j10));
                        this.f16406e = 0;
                        return true;
                    }
                    throw ParserException.createForMalformedContainer("Invalid integer size: " + this.f16408g, null);
                }
                if (elementType == 3) {
                    long j11 = this.f16408g;
                    if (j11 <= 2147483647L) {
                        this.f16405d.stringElement(this.f16407f, f(sVar, (int) j11));
                        this.f16406e = 0;
                        return true;
                    }
                    throw ParserException.createForMalformedContainer("String element size: " + this.f16408g, null);
                }
                if (elementType == 4) {
                    this.f16405d.a(this.f16407f, (int) this.f16408g, sVar);
                    this.f16406e = 0;
                    return true;
                }
                if (elementType != 5) {
                    throw ParserException.createForMalformedContainer("Invalid element type " + elementType, null);
                }
                long j12 = this.f16408g;
                if (j12 == 4 || j12 == 8) {
                    this.f16405d.floatElement(this.f16407f, d(sVar, (int) j12));
                    this.f16406e = 0;
                    return true;
                }
                throw ParserException.createForMalformedContainer("Invalid float size: " + this.f16408g, null);
            }
            sVar.skipFully((int) this.f16408g);
            this.f16406e = 0;
        }
    }

    @Override
    public void b(c3.b bVar) {
        this.f16405d = bVar;
    }

    @Override
    public void reset() {
        this.f16406e = 0;
        this.f16403b.clear();
        this.f16404c.e();
    }
}
