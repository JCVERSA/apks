package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;
import com.transsion.socket.pkgdata.SocketData;
import java.io.EOFException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;

final class jt1 {
    private final cd a;
    private final int b;
    private final ag1 c;
    private a d;
    private a e;
    private a f;
    private long g;

    public jt1(cd cdVar) {
        this.a = cdVar;
        int iB = ((dz) cdVar).b();
        this.b = iB;
        this.c = new ag1(32);
        a aVar = new a(iB, 0L);
        this.d = aVar;
        this.e = aVar;
        this.f = aVar;
    }

    public final void a(long j) {
        a aVar;
        if (j == -1) {
            return;
        }
        while (true) {
            aVar = this.d;
            if (j < aVar.b) {
                break;
            }
            ((dz) this.a).a(aVar.c);
            a aVar2 = this.d;
            aVar2.c = null;
            a aVar3 = aVar2.d;
            aVar2.d = null;
            this.d = aVar3;
        }
        if (this.e.a < aVar.a) {
            this.e = aVar;
        }
    }

    public final void b(ry ryVar, kt1.a aVar) {
        this.e = a(this.e, ryVar, aVar, this.c);
    }

    public final void c() {
        this.e = this.d;
    }

    public static final class a implements cd.a {
        public long a;
        public long b;

        @Nullable
        public bd c;

        @Nullable
        public a d;

        public a(int i, long j) {
            a(i, j);
        }

        @Override
        public final bd a() {
            bd bdVar = this.c;
            bdVar.getClass();
            return bdVar;
        }

        @Override
        @Nullable
        public final cd.a next() {
            a aVar = this.d;
            if (aVar == null || aVar.c == null) {
                return null;
            }
            return aVar;
        }

        public final void a(int i, long j) {
            if (this.c == null) {
                this.a = j;
                this.b = j + ((long) i);
                return;
            }
            throw new IllegalStateException();
        }
    }

    public final void b() {
        a aVar = this.d;
        if (aVar.c != null) {
            ((dz) this.a).a(aVar);
            aVar.c = null;
            aVar.d = null;
        }
        this.d.a(this.b, 0L);
        a aVar2 = this.d;
        this.e = aVar2;
        this.f = aVar2;
        this.g = 0L;
        ((dz) this.a).e();
    }

    public final long a() {
        return this.g;
    }

    public final void a(ry ryVar, kt1.a aVar) {
        a(this.e, ryVar, aVar, this.c);
    }

    private static a a(a aVar, long j, ByteBuffer byteBuffer, int i) {
        while (j >= aVar.b) {
            aVar = aVar.d;
        }
        while (i > 0) {
            int iMin = Math.min(i, (int) (aVar.b - j));
            bd bdVar = aVar.c;
            byteBuffer.put(bdVar.a, ((int) (j - aVar.a)) + bdVar.b, iMin);
            i -= iMin;
            j += (long) iMin;
            if (j == aVar.b) {
                aVar = aVar.d;
            }
        }
        return aVar;
    }

    private static a a(a aVar, long j, byte[] bArr, int i) {
        while (j >= aVar.b) {
            aVar = aVar.d;
        }
        int i2 = i;
        while (i2 > 0) {
            int iMin = Math.min(i2, (int) (aVar.b - j));
            bd bdVar = aVar.c;
            System.arraycopy(bdVar.a, ((int) (j - aVar.a)) + bdVar.b, bArr, i - i2, iMin);
            i2 -= iMin;
            j += (long) iMin;
            if (j == aVar.b) {
                aVar = aVar.d;
            }
        }
        return aVar;
    }

    private static a a(a aVar, ry ryVar, kt1.a aVar2, ag1 ag1Var) {
        a aVarA;
        int iZ;
        if (ryVar.i()) {
            long j = aVar2.b;
            ag1Var.c(1);
            a aVarA2 = a(aVar, j, ag1Var.c(), 1);
            long j2 = j + 1;
            byte b = ag1Var.c()[0];
            boolean z = (b & SocketData.CLAZZ_TYPE_END_SOCKET) != 0;
            int i = b & 127;
            gv gvVar = ryVar.c;
            byte[] bArr = gvVar.a;
            if (bArr == null) {
                gvVar.a = new byte[16];
            } else {
                Arrays.fill(bArr, (byte) 0);
            }
            aVarA = a(aVarA2, j2, gvVar.a, i);
            long j3 = j2 + ((long) i);
            if (z) {
                ag1Var.c(2);
                aVarA = a(aVarA, j3, ag1Var.c(), 2);
                j3 += 2;
                iZ = ag1Var.z();
            } else {
                iZ = 1;
            }
            int[] iArr = gvVar.d;
            if (iArr == null || iArr.length < iZ) {
                iArr = new int[iZ];
            }
            int[] iArr2 = iArr;
            int[] iArr3 = gvVar.e;
            if (iArr3 == null || iArr3.length < iZ) {
                iArr3 = new int[iZ];
            }
            int[] iArr4 = iArr3;
            if (z) {
                int i2 = iZ * 6;
                ag1Var.c(i2);
                aVarA = a(aVarA, j3, ag1Var.c(), i2);
                j3 += (long) i2;
                ag1Var.e(0);
                for (int i3 = 0; i3 < iZ; i3++) {
                    iArr2[i3] = ag1Var.z();
                    iArr4[i3] = ag1Var.x();
                }
            } else {
                iArr2[0] = 0;
                iArr4[0] = aVar2.a - ((int) (j3 - aVar2.b));
            }
            a62.a aVar3 = aVar2.c;
            int i4 = f92.a;
            gvVar.a(iZ, iArr2, iArr4, aVar3.b, gvVar.a, aVar3.a, aVar3.c, aVar3.d);
            long j4 = aVar2.b;
            int i5 = (int) (j3 - j4);
            aVar2.b = j4 + ((long) i5);
            aVar2.a -= i5;
        } else {
            aVarA = aVar;
        }
        if (ryVar.d()) {
            ag1Var.c(4);
            a aVarA3 = a(aVarA, aVar2.b, ag1Var.c(), 4);
            int iX = ag1Var.x();
            aVar2.b += 4;
            aVar2.a -= 4;
            ryVar.e(iX);
            a aVarA4 = a(aVarA3, aVar2.b, ryVar.d, iX);
            aVar2.b += (long) iX;
            int i6 = aVar2.a - iX;
            aVar2.a = i6;
            ByteBuffer byteBuffer = ryVar.g;
            if (byteBuffer != null && byteBuffer.capacity() >= i6) {
                ryVar.g.clear();
            } else {
                ryVar.g = ByteBuffer.allocate(i6);
            }
            return a(aVarA4, aVar2.b, ryVar.g, aVar2.a);
        }
        ryVar.e(aVar2.a);
        return a(aVarA, aVar2.b, ryVar.d, aVar2.a);
    }

    public final int a(qv qvVar, int i, boolean z) throws IOException {
        a aVar = this.f;
        if (aVar.c == null) {
            bd bdVarA = ((dz) this.a).a();
            a aVar2 = new a(this.b, this.f.b);
            aVar.c = bdVarA;
            aVar.d = aVar2;
        }
        int iMin = Math.min(i, (int) (this.f.b - this.g));
        a aVar3 = this.f;
        bd bdVar = aVar3.c;
        int i2 = qvVar.read(bdVar.a, ((int) (this.g - aVar3.a)) + bdVar.b, iMin);
        if (i2 == -1) {
            if (z) {
                return -1;
            }
            throw new EOFException();
        }
        long j = this.g + ((long) i2);
        this.g = j;
        a aVar4 = this.f;
        if (j == aVar4.b) {
            this.f = aVar4.d;
        }
        return i2;
    }

    public final void a(int i, ag1 ag1Var) {
        while (i > 0) {
            a aVar = this.f;
            if (aVar.c == null) {
                bd bdVarA = ((dz) this.a).a();
                a aVar2 = new a(this.b, this.f.b);
                aVar.c = bdVarA;
                aVar.d = aVar2;
            }
            int iMin = Math.min(i, (int) (this.f.b - this.g));
            a aVar3 = this.f;
            bd bdVar = aVar3.c;
            ag1Var.a(bdVar.a, ((int) (this.g - aVar3.a)) + bdVar.b, iMin);
            i -= iMin;
            long j = this.g + ((long) iMin);
            this.g = j;
            a aVar4 = this.f;
            if (j == aVar4.b) {
                this.f = aVar4.d;
            }
        }
    }
}
