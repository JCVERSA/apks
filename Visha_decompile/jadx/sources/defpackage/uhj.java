package defpackage;

import com.google.android.gms.internal.ads.zzcm;
import java.nio.ByteBuffer;
import java.util.Arrays;

public final class uhj extends urf {
    public int[] i;
    public int[] j;

    @Override
    public final void a(ByteBuffer byteBuffer) {
        int[] iArr = this.j;
        iArr.getClass();
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        ByteBuffer byteBufferD = d(((iLimit - iPosition) / this.b.d) * this.c.d);
        while (iPosition < iLimit) {
            for (int i : iArr) {
                int iF = (kfh.F(this.b.c) * i) + iPosition;
                int i2 = this.b.c;
                if (i2 == 2) {
                    byteBufferD.putShort(byteBuffer.getShort(iF));
                } else {
                    if (i2 != 4) {
                        throw new IllegalStateException("Unexpected encoding: " + i2);
                    }
                    byteBufferD.putFloat(byteBuffer.getFloat(iF));
                }
            }
            iPosition += this.b.d;
        }
        byteBuffer.position(iLimit);
        byteBufferD.flip();
    }

    @Override
    public final cpf c(cpf cpfVar) throws zzcm {
        int[] iArr = this.i;
        if (iArr == null) {
            return cpf.e;
        }
        int i = cpfVar.c;
        if (i != 2 && i != 4) {
            throw new zzcm("Unhandled input format:", cpfVar);
        }
        int i2 = cpfVar.b;
        boolean z = i2 != iArr.length;
        int i3 = 0;
        while (true) {
            int length = iArr.length;
            if (i3 >= length) {
                return z ? new cpf(cpfVar.a, length, i) : cpf.e;
            }
            int i4 = iArr[i3];
            if (i4 >= i2) {
                throw new zzcm("Channel map (" + Arrays.toString(iArr) + ") trying to access non-existent input channel.", cpfVar);
            }
            z |= i4 != i3;
            i3++;
        }
    }

    @Override
    public final void e() {
        this.j = this.i;
    }

    @Override
    public final void g() {
        this.j = null;
        this.i = null;
    }

    public final void i(int[] iArr) {
        this.i = iArr;
    }
}
