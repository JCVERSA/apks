package defpackage;

import com.transsion.socket.pkgdata.SocketData;
import java.io.EOFException;
import java.nio.ByteBuffer;
import java.util.Arrays;

public final class roj {
    public final u4h a = new u4h(32);
    public qoj b;
    public qoj c;
    public qoj d;
    public long e;
    public final nrj f;

    public roj(nrj nrjVar) {
        this.f = nrjVar;
        qoj qojVar = new qoj(0L, 65536);
        this.b = qojVar;
        this.c = qojVar;
        this.d = qojVar;
    }

    public static qoj j(qoj qojVar, long j) {
        while (j >= qojVar.b) {
            qojVar = qojVar.d;
        }
        return qojVar;
    }

    public static qoj k(qoj qojVar, long j, ByteBuffer byteBuffer, int i) {
        qoj qojVarJ = j(qojVar, j);
        while (i > 0) {
            int iMin = Math.min(i, (int) (qojVarJ.b - j));
            byteBuffer.put(qojVarJ.c.a, qojVarJ.a(j), iMin);
            i -= iMin;
            j += (long) iMin;
            if (j == qojVarJ.b) {
                qojVarJ = qojVarJ.d;
            }
        }
        return qojVarJ;
    }

    public static qoj l(qoj qojVar, long j, byte[] bArr, int i) {
        qoj qojVarJ = j(qojVar, j);
        int i2 = i;
        while (i2 > 0) {
            int iMin = Math.min(i2, (int) (qojVarJ.b - j));
            System.arraycopy(qojVarJ.c.a, qojVarJ.a(j), bArr, i - i2, iMin);
            i2 -= iMin;
            j += (long) iMin;
            if (j == qojVarJ.b) {
                qojVarJ = qojVarJ.d;
            }
        }
        return qojVarJ;
    }

    public static qoj m(qoj qojVar, xzi xziVar, toj tojVar, u4h u4hVar) {
        qoj qojVarL;
        int iK;
        if (xziVar.l()) {
            long j = tojVar.b;
            u4hVar.i(1);
            qoj qojVarL2 = l(qojVar, j, u4hVar.n(), 1);
            long j2 = j + 1;
            byte b = u4hVar.n()[0];
            int i = b & SocketData.CLAZZ_TYPE_END_SOCKET;
            int i2 = b & 127;
            pzi pziVar = xziVar.c;
            byte[] bArr = pziVar.a;
            if (bArr == null) {
                pziVar.a = new byte[16];
            } else {
                Arrays.fill(bArr, (byte) 0);
            }
            boolean z = i != 0;
            qojVarL = l(qojVarL2, j2, pziVar.a, i2);
            long j3 = j2 + ((long) i2);
            if (z) {
                u4hVar.i(2);
                qojVarL = l(qojVarL, j3, u4hVar.n(), 2);
                j3 += 2;
                iK = u4hVar.K();
            } else {
                iK = 1;
            }
            int[] iArr = pziVar.d;
            if (iArr == null || iArr.length < iK) {
                iArr = new int[iK];
            }
            int[] iArr2 = iArr;
            int[] iArr3 = pziVar.e;
            if (iArr3 == null || iArr3.length < iK) {
                iArr3 = new int[iK];
            }
            int[] iArr4 = iArr3;
            if (z) {
                int i3 = iK * 6;
                u4hVar.i(i3);
                qojVarL = l(qojVarL, j3, u4hVar.n(), i3);
                j3 += (long) i3;
                u4hVar.l(0);
                for (int i4 = 0; i4 < iK; i4++) {
                    iArr2[i4] = u4hVar.K();
                    iArr4[i4] = u4hVar.J();
                }
            } else {
                iArr2[0] = 0;
                iArr4[0] = tojVar.a - ((int) (j3 - tojVar.b));
            }
            qae qaeVar = tojVar.c;
            int i5 = kfh.a;
            pziVar.c(iK, iArr2, iArr4, qaeVar.b, pziVar.a, qaeVar.a, qaeVar.c, qaeVar.d);
            long j4 = tojVar.b;
            int i6 = (int) (j3 - j4);
            tojVar.b = j4 + ((long) i6);
            tojVar.a -= i6;
        } else {
            qojVarL = qojVar;
        }
        if (!xziVar.e()) {
            xziVar.j(tojVar.a);
            return k(qojVarL, tojVar.b, xziVar.d, tojVar.a);
        }
        u4hVar.i(4);
        qoj qojVarL3 = l(qojVarL, tojVar.b, u4hVar.n(), 4);
        int iJ = u4hVar.J();
        tojVar.b += 4;
        tojVar.a -= 4;
        xziVar.j(iJ);
        qoj qojVarK = k(qojVarL3, tojVar.b, xziVar.d, iJ);
        tojVar.b += (long) iJ;
        int i7 = tojVar.a - iJ;
        tojVar.a = i7;
        ByteBuffer byteBuffer = xziVar.g;
        if (byteBuffer == null || byteBuffer.capacity() < i7) {
            xziVar.g = ByteBuffer.allocate(i7);
        } else {
            xziVar.g.clear();
        }
        return k(qojVarK, tojVar.b, xziVar.g, tojVar.a);
    }

    public final int a(k8j k8jVar, int i, boolean z) throws EOFException {
        int i2 = i(i);
        qoj qojVar = this.d;
        int iB = k8jVar.b(qojVar.c.a, qojVar.a(this.e), i2);
        if (iB != -1) {
            n(iB);
            return iB;
        }
        if (z) {
            return -1;
        }
        throw new EOFException();
    }

    public final long b() {
        return this.e;
    }

    public final void c(long j) {
        qoj qojVar;
        if (j != -1) {
            while (true) {
                qojVar = this.b;
                if (j < qojVar.b) {
                    break;
                }
                this.f.c(qojVar.c);
                this.b = this.b.b();
            }
            if (this.c.a < qojVar.a) {
                this.c = qojVar;
            }
        }
    }

    public final void d(xzi xziVar, toj tojVar) {
        m(this.c, xziVar, tojVar, this.a);
    }

    public final void e(xzi xziVar, toj tojVar) {
        this.c = m(this.c, xziVar, tojVar, this.a);
    }

    public final void f() {
        qoj qojVar = this.b;
        if (qojVar.c != null) {
            this.f.d(qojVar);
            qojVar.b();
        }
        this.b.c(0L, 65536);
        qoj qojVar2 = this.b;
        this.c = qojVar2;
        this.d = qojVar2;
        this.e = 0L;
        this.f.g();
    }

    public final void g() {
        this.c = this.b;
    }

    public final void h(u4h u4hVar, int i) {
        while (i > 0) {
            int i2 = i(i);
            qoj qojVar = this.d;
            u4hVar.h(qojVar.c.a, qojVar.a(this.e), i2);
            i -= i2;
            n(i2);
        }
    }

    public final int i(int i) {
        qoj qojVar = this.d;
        if (qojVar.c == null) {
            brj brjVarB = this.f.b();
            qoj qojVar2 = new qoj(this.d.b, 65536);
            qojVar.c = brjVarB;
            qojVar.d = qojVar2;
        }
        return Math.min(i, (int) (this.d.b - this.e));
    }

    public final void n(int i) {
        long j = this.e + ((long) i);
        this.e = j;
        qoj qojVar = this.d;
        if (j == qojVar.b) {
            this.d = qojVar.d;
        }
    }
}
