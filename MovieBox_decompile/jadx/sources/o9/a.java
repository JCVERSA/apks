package o9;

import com.google.android.exoplayer2.ParserException;
import i9.m;
import java.util.ArrayDeque;

final class a implements c {

    private final byte[] f67640a = new byte[8];

    private final ArrayDeque f67641b = new ArrayDeque();

    private final g f67642c = new g();

    private o9.b f67643d;

    private int f67644e;

    private int f67645f;

    private long f67646g;

    private static final class b {

        private final int f67647a;

        private final long f67648b;

        private b(int i10, long j10) {
            this.f67647a = i10;
            this.f67648b = j10;
        }
    }

    private long c(m mVar) {
        mVar.resetPeekPosition();
        while (true) {
            mVar.peekFully(this.f67640a, 0, 4);
            int iC = g.c(this.f67640a[0]);
            if (iC != -1 && iC <= 4) {
                int iA = (int) g.a(this.f67640a, iC, false);
                if (this.f67643d.isLevel1Element(iA)) {
                    mVar.skipFully(iC);
                    return iA;
                }
            }
            mVar.skipFully(1);
        }
    }

    private double d(m mVar, int i10) {
        long jE = e(mVar, i10);
        return i10 == 4 ? Float.intBitsToFloat((int) jE) : Double.longBitsToDouble(jE);
    }

    private long e(m mVar, int i10) {
        mVar.readFully(this.f67640a, 0, i10);
        long j10 = 0;
        for (int i11 = 0; i11 < i10; i11++) {
            j10 = (j10 << 8) | ((long) (this.f67640a[i11] & 255));
        }
        return j10;
    }

    private static String f(m mVar, int i10) {
        if (i10 == 0) {
            return "";
        }
        byte[] bArr = new byte[i10];
        mVar.readFully(bArr, 0, i10);
        while (i10 > 0 && bArr[i10 - 1] == 0) {
            i10--;
        }
        return new String(bArr, 0, i10);
    }

    @Override
    public boolean a(m mVar) throws ParserException {
        com.google.android.exoplayer2.util.a.i(this.f67643d);
        while (true) {
            b bVar = (b) this.f67641b.peek();
            if (bVar != null && mVar.getPosition() >= bVar.f67648b) {
                this.f67643d.endMasterElement(((b) this.f67641b.pop()).f67647a);
                return true;
            }
            if (this.f67644e == 0) {
                long jD = this.f67642c.d(mVar, true, false, 4);
                if (jD == -2) {
                    jD = c(mVar);
                }
                if (jD == -1) {
                    return false;
                }
                this.f67645f = (int) jD;
                this.f67644e = 1;
            }
            if (this.f67644e == 1) {
                this.f67646g = this.f67642c.d(mVar, false, true, 8);
                this.f67644e = 2;
            }
            int elementType = this.f67643d.getElementType(this.f67645f);
            if (elementType != 0) {
                if (elementType == 1) {
                    long position = mVar.getPosition();
                    this.f67641b.push(new b(this.f67645f, this.f67646g + position));
                    this.f67643d.startMasterElement(this.f67645f, position, this.f67646g);
                    this.f67644e = 0;
                    return true;
                }
                if (elementType == 2) {
                    long j10 = this.f67646g;
                    if (j10 <= 8) {
                        this.f67643d.integerElement(this.f67645f, e(mVar, (int) j10));
                        this.f67644e = 0;
                        return true;
                    }
                    throw ParserException.createForMalformedContainer("Invalid integer size: " + this.f67646g, null);
                }
                if (elementType == 3) {
                    long j11 = this.f67646g;
                    if (j11 <= 2147483647L) {
                        this.f67643d.stringElement(this.f67645f, f(mVar, (int) j11));
                        this.f67644e = 0;
                        return true;
                    }
                    throw ParserException.createForMalformedContainer("String element size: " + this.f67646g, null);
                }
                if (elementType == 4) {
                    this.f67643d.a(this.f67645f, (int) this.f67646g, mVar);
                    this.f67644e = 0;
                    return true;
                }
                if (elementType != 5) {
                    throw ParserException.createForMalformedContainer("Invalid element type " + elementType, null);
                }
                long j12 = this.f67646g;
                if (j12 == 4 || j12 == 8) {
                    this.f67643d.floatElement(this.f67645f, d(mVar, (int) j12));
                    this.f67644e = 0;
                    return true;
                }
                throw ParserException.createForMalformedContainer("Invalid float size: " + this.f67646g, null);
            }
            mVar.skipFully((int) this.f67646g);
            this.f67644e = 0;
        }
    }

    @Override
    public void b(o9.b bVar) {
        this.f67643d = bVar;
    }

    @Override
    public void reset() {
        this.f67644e = 0;
        this.f67641b.clear();
        this.f67642c.e();
    }
}
