package defpackage;

import androidx.media3.exoplayer.audio.SilenceSkippingAudioProcessor;
import com.google.android.gms.internal.ads.zzcm;
import com.transsion.socket.pkgdata.SocketData;
import java.nio.ByteBuffer;

public final class fjj extends urf {
    public int i;
    public boolean j;
    public int k;
    public long l;
    public byte[] n;
    public byte[] q;
    public int m = 0;
    public int o = 0;
    public int p = 0;

    public fjj() {
        byte[] bArr = kfh.c;
        this.n = bArr;
        this.q = bArr;
    }

    public static int m(byte b, byte b2) {
        return (b << 8) | (b2 & 255);
    }

    public static final boolean p(byte b, byte b2) {
        return Math.abs(m(b, b2)) > 1024;
    }

    @Override
    public final void a(ByteBuffer byteBuffer) {
        int iLimit;
        int i;
        int iPosition;
        while (byteBuffer.hasRemaining() && !h()) {
            if (this.k != 0) {
                n7g.f(this.o < this.n.length);
                int iLimit2 = byteBuffer.limit();
                int iPosition2 = byteBuffer.position() + 1;
                while (true) {
                    if (iPosition2 >= byteBuffer.limit()) {
                        iLimit = byteBuffer.limit();
                        break;
                    } else {
                        if (p(byteBuffer.get(iPosition2), byteBuffer.get(iPosition2 - 1))) {
                            int i2 = this.i;
                            iLimit = i2 * (iPosition2 / i2);
                            break;
                        }
                        iPosition2 += 2;
                    }
                }
                int iPosition3 = iLimit - byteBuffer.position();
                int i3 = this.o;
                int i4 = this.p;
                int i5 = i3 + i4;
                int length = this.n.length;
                if (i5 < length) {
                    i = length - i5;
                } else {
                    i5 = i4 - (length - i3);
                    i = i3 - i5;
                }
                int iMin = Math.min(iPosition3, i);
                byteBuffer.limit(byteBuffer.position() + iMin);
                byteBuffer.get(this.n, i5, iMin);
                int i6 = this.p + iMin;
                this.p = i6;
                n7g.f(i6 <= this.n.length);
                boolean z = iLimit < iLimit2 && iPosition3 < i;
                n(z);
                if (z) {
                    this.k = 0;
                    this.m = 0;
                }
                byteBuffer.limit(iLimit2);
            } else {
                int iLimit3 = byteBuffer.limit();
                byteBuffer.limit(Math.min(iLimit3, byteBuffer.position() + this.n.length));
                int iLimit4 = byteBuffer.limit() - 1;
                while (true) {
                    if (iLimit4 < byteBuffer.position()) {
                        iPosition = byteBuffer.position();
                        break;
                    } else {
                        if (p(byteBuffer.get(iLimit4), byteBuffer.get(iLimit4 - 1))) {
                            int i7 = this.i;
                            iPosition = ((iLimit4 / i7) * i7) + i7;
                            break;
                        }
                        iLimit4 -= 2;
                    }
                }
                if (iPosition == byteBuffer.position()) {
                    this.k = 1;
                } else {
                    byteBuffer.limit(Math.min(iPosition, byteBuffer.capacity()));
                    d(byteBuffer.remaining()).put(byteBuffer).flip();
                }
                byteBuffer.limit(iLimit3);
            }
        }
    }

    @Override
    public final cpf c(cpf cpfVar) throws zzcm {
        if (cpfVar.c == 2) {
            return cpfVar.a == -1 ? cpf.e : cpfVar;
        }
        throw new zzcm("Unhandled input format:", cpfVar);
    }

    @Override
    public final void e() {
        if (zzg()) {
            int i = this.b.b;
            this.i = i + i;
            int iL = l(SilenceSkippingAudioProcessor.DEFAULT_MINIMUM_SILENCE_DURATION_US) / 2;
            int i2 = this.i;
            int i3 = (iL / i2) * i2;
            int i4 = i3 + i3;
            if (this.n.length != i4) {
                this.n = new byte[i4];
                this.q = new byte[i4];
            }
        }
        this.k = 0;
        this.l = 0L;
        this.m = 0;
        this.o = 0;
        this.p = 0;
    }

    @Override
    public final void f() {
        if (this.p > 0) {
            n(true);
            this.m = 0;
        }
    }

    @Override
    public final void g() {
        this.j = false;
        byte[] bArr = kfh.c;
        this.n = bArr;
        this.q = bArr;
    }

    public final long i() {
        return this.l;
    }

    public final void j(boolean z) {
        this.j = z;
    }

    public final int k(int i) {
        int iL = ((l(SilenceSkippingAudioProcessor.DEFAULT_MAX_SILENCE_TO_KEEP_DURATION_US) - this.m) * this.i) - (this.n.length >> 1);
        n7g.f(iL >= 0);
        int iMin = (int) Math.min((i * 0.2f) + 0.5f, iL);
        int i2 = this.i;
        return (iMin / i2) * i2;
    }

    public final int l(long j) {
        return (int) ((j * ((long) this.b.a)) / 1000000);
    }

    public final void n(boolean z) {
        int i;
        int length;
        int i2 = this.p;
        int length2 = this.n.length;
        if (i2 != length2) {
            if (!z) {
                return;
            } else {
                z = true;
            }
        }
        if (this.m == 0) {
            if (z) {
                o(i2, 3);
                length = i2;
            } else {
                n7g.f(i2 >= (length2 >> 1));
                length = this.n.length >> 1;
                o(length, 0);
            }
            i = length;
        } else {
            int i3 = length2 >> 1;
            int i4 = i2 - i3;
            if (z) {
                int iK = k(i4) + (this.n.length >> 1);
                o(iK, 2);
                int i5 = i3 + i4;
                i = iK;
                length = i5;
            } else {
                int iK2 = k(i4);
                o(iK2, 1);
                i = iK2;
                length = i4;
            }
        }
        n7g.g(length % this.i == 0, "bytesConsumed is not aligned to frame size: %s" + length);
        n7g.f(i2 >= i);
        this.p -= length;
        int i6 = this.o + length;
        this.o = i6;
        this.o = i6 % this.n.length;
        int i7 = this.m;
        int i8 = this.i;
        this.m = i7 + (i / i8);
        this.l += (long) ((length - i) / i8);
    }

    public final void o(int i, int i2) {
        int i3;
        if (i == 0) {
            return;
        }
        n7g.d(this.p >= i);
        if (i2 == 2) {
            int i4 = this.o;
            int i5 = this.p;
            int i6 = i4 + i5;
            byte[] bArr = this.n;
            int length = bArr.length;
            if (i6 <= length) {
                System.arraycopy(bArr, i6 - i, this.q, 0, i);
            } else {
                int i7 = i5 - (length - i4);
                if (i7 >= i) {
                    System.arraycopy(bArr, i7 - i, this.q, 0, i);
                } else {
                    int i8 = i - i7;
                    System.arraycopy(bArr, length - i8, this.q, 0, i8);
                    System.arraycopy(this.n, 0, this.q, i8, i7);
                }
            }
        } else {
            int i9 = this.o;
            int i10 = i9 + i;
            byte[] bArr2 = this.n;
            int length2 = bArr2.length;
            if (i10 <= length2) {
                System.arraycopy(bArr2, i9, this.q, 0, i);
            } else {
                int i11 = length2 - i9;
                System.arraycopy(bArr2, i9, this.q, 0, i11);
                System.arraycopy(this.n, 0, this.q, i11, i - i11);
            }
        }
        n7g.e(i % this.i == 0, "sizeToOutput is not aligned to frame size: " + i);
        n7g.f(this.o < this.n.length);
        byte[] bArr3 = this.q;
        n7g.e(i % this.i == 0, "byteOutput size is not aligned to frame size " + i);
        if (i2 != 3) {
            for (int i12 = 0; i12 < i; i12 += 2) {
                int i13 = i12 + 1;
                int iM = m(bArr3[i13], bArr3[i12]);
                if (i2 == 0) {
                    i3 = ((((i12 * 1000) / (i - 1)) * (-90)) / 1000) + 100;
                } else {
                    i3 = 10;
                    if (i2 == 2) {
                        i3 = 10 + (((90000 * i12) / (i - 1)) / 1000);
                    }
                }
                int i14 = (iM * i3) / 100;
                if (i14 >= 32767) {
                    bArr3[i12] = -1;
                    bArr3[i13] = 127;
                } else if (i14 <= -32768) {
                    bArr3[i12] = 0;
                    bArr3[i13] = SocketData.CLAZZ_TYPE_END_SOCKET;
                } else {
                    bArr3[i12] = (byte) (i14 & 255);
                    bArr3[i13] = (byte) (i14 >> 8);
                }
            }
        }
        d(i).put(bArr3, 0, i).flip();
    }

    @Override
    public final boolean zzg() {
        return super.zzg() && this.j;
    }
}
