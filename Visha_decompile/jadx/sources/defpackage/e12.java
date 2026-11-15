package defpackage;

import com.google.android.exoplayer2.ParserException;
import java.util.ArrayDeque;

public final class e12 implements z53 {
    public final byte[] a = new byte[8];
    public final ArrayDeque b = new ArrayDeque();
    public final fob c = new fob();
    public y53 d;
    public int e;
    public int f;
    public long g;

    public static final class b {
        public final int a;
        public final long b;

        public b(int i, long j) {
            this.a = i;
            this.b = j;
        }
    }

    public static String f(pk3 pk3Var, int i) {
        if (i == 0) {
            return "";
        }
        byte[] bArr = new byte[i];
        pk3Var.readFully(bArr, 0, i);
        while (i > 0 && bArr[i - 1] == 0) {
            i--;
        }
        return new String(bArr, 0, i);
    }

    @Override
    public boolean a(pk3 pk3Var) throws ParserException {
        zi.i(this.d);
        while (true) {
            b bVar = (b) this.b.peek();
            if (bVar != null && pk3Var.getPosition() >= bVar.b) {
                this.d.endMasterElement(((b) this.b.pop()).a);
                return true;
            }
            if (this.e == 0) {
                long jD = this.c.d(pk3Var, true, false, 4);
                if (jD == -2) {
                    jD = c(pk3Var);
                }
                if (jD == -1) {
                    return false;
                }
                this.f = (int) jD;
                this.e = 1;
            }
            if (this.e == 1) {
                this.g = this.c.d(pk3Var, false, true, 8);
                this.e = 2;
            }
            int elementType = this.d.getElementType(this.f);
            if (elementType != 0) {
                if (elementType == 1) {
                    long position = pk3Var.getPosition();
                    this.b.push(new b(this.f, this.g + position));
                    this.d.startMasterElement(this.f, position, this.g);
                    this.e = 0;
                    return true;
                }
                if (elementType == 2) {
                    long j = this.g;
                    if (j <= 8) {
                        this.d.integerElement(this.f, e(pk3Var, (int) j));
                        this.e = 0;
                        return true;
                    }
                    throw ParserException.createForMalformedContainer("Invalid integer size: " + this.g, null);
                }
                if (elementType == 3) {
                    long j2 = this.g;
                    if (j2 <= 2147483647L) {
                        this.d.stringElement(this.f, f(pk3Var, (int) j2));
                        this.e = 0;
                        return true;
                    }
                    throw ParserException.createForMalformedContainer("String element size: " + this.g, null);
                }
                if (elementType == 4) {
                    this.d.a(this.f, (int) this.g, pk3Var);
                    this.e = 0;
                    return true;
                }
                if (elementType != 5) {
                    throw ParserException.createForMalformedContainer("Invalid element type " + elementType, null);
                }
                long j3 = this.g;
                if (j3 == 4 || j3 == 8) {
                    this.d.floatElement(this.f, d(pk3Var, (int) j3));
                    this.e = 0;
                    return true;
                }
                throw ParserException.createForMalformedContainer("Invalid float size: " + this.g, null);
            }
            pk3Var.skipFully((int) this.g);
            this.e = 0;
        }
    }

    @Override
    public void b(y53 y53Var) {
        this.d = y53Var;
    }

    public final long c(pk3 pk3Var) {
        pk3Var.resetPeekPosition();
        while (true) {
            pk3Var.peekFully(this.a, 0, 4);
            int iC = fob.c(this.a[0]);
            if (iC != -1 && iC <= 4) {
                int iA = (int) fob.a(this.a, iC, false);
                if (this.d.isLevel1Element(iA)) {
                    pk3Var.skipFully(iC);
                    return iA;
                }
            }
            pk3Var.skipFully(1);
        }
    }

    public final double d(pk3 pk3Var, int i) {
        long jE = e(pk3Var, i);
        return i == 4 ? Float.intBitsToFloat((int) jE) : Double.longBitsToDouble(jE);
    }

    public final long e(pk3 pk3Var, int i) {
        pk3Var.readFully(this.a, 0, i);
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            j = (j << 8) | ((long) (this.a[i2] & 255));
        }
        return j;
    }

    @Override
    public void reset() {
        this.e = 0;
        this.b.clear();
        this.c.e();
    }
}
