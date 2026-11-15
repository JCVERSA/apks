package defpackage;

import com.google.android.gms.internal.ads.zzcm;
import java.nio.ByteBuffer;

public final class gjj extends urf {
    public static final int i = Float.floatToIntBits(Float.NaN);

    public static void i(int i2, ByteBuffer byteBuffer) {
        int iFloatToIntBits = Float.floatToIntBits((float) (((double) i2) * 4.656612875245797E-10d));
        if (iFloatToIntBits == i) {
            iFloatToIntBits = Float.floatToIntBits(0.0f);
        }
        byteBuffer.putInt(iFloatToIntBits);
    }

    @Override
    public final void a(ByteBuffer byteBuffer) {
        ByteBuffer byteBufferD;
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        int i2 = iLimit - iPosition;
        int i3 = this.b.c;
        if (i3 == 21) {
            byteBufferD = d((i2 / 3) * 4);
            while (iPosition < iLimit) {
                i(((byteBuffer.get(iPosition) & 255) << 8) | ((byteBuffer.get(iPosition + 1) & 255) << 16) | ((byteBuffer.get(iPosition + 2) & 255) << 24), byteBufferD);
                iPosition += 3;
            }
        } else if (i3 == 22) {
            byteBufferD = d(i2);
            while (iPosition < iLimit) {
                int i4 = byteBuffer.get(iPosition) & 255;
                int i5 = (byteBuffer.get(iPosition + 1) & 255) << 8;
                i(i4 | i5 | ((byteBuffer.get(iPosition + 2) & 255) << 16) | ((byteBuffer.get(iPosition + 3) & 255) << 24), byteBufferD);
                iPosition += 4;
            }
        } else if (i3 == 1342177280) {
            byteBufferD = d((i2 / 3) * 4);
            while (iPosition < iLimit) {
                i(((byteBuffer.get(iPosition + 2) & 255) << 8) | ((byteBuffer.get(iPosition + 1) & 255) << 16) | ((byteBuffer.get(iPosition) & 255) << 24), byteBufferD);
                iPosition += 3;
            }
        } else {
            if (i3 != 1610612736) {
                throw new IllegalStateException();
            }
            byteBufferD = d(i2);
            while (iPosition < iLimit) {
                int i6 = byteBuffer.get(iPosition + 3) & 255;
                int i7 = (byteBuffer.get(iPosition + 2) & 255) << 8;
                i(i6 | i7 | ((byteBuffer.get(iPosition + 1) & 255) << 16) | ((byteBuffer.get(iPosition) & 255) << 24), byteBufferD);
                iPosition += 4;
            }
        }
        byteBuffer.position(byteBuffer.limit());
        byteBufferD.flip();
    }

    @Override
    public final cpf c(cpf cpfVar) throws zzcm {
        int i2 = cpfVar.c;
        int i3 = kfh.a;
        if (i2 == 21 || i2 == 1342177280 || i2 == 22 || i2 == 1610612736) {
            return new cpf(cpfVar.a, cpfVar.b, 4);
        }
        if (i2 == 4) {
            return cpf.e;
        }
        throw new zzcm("Unhandled input format:", cpfVar);
    }
}
