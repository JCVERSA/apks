package defpackage;

import com.transsion.socket.pkgdata.SocketData;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.List;
import org.mozilla.classfile.ByteCode;

public final class ejj {
    public static final byte[] d = {79, 103, 103, 83, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, -43, -59, -9, 1, 19, 79, 112, 117, 115, 72, 101, 97, 100, 1, 2, 56, 1, SocketData.CLAZZ_TYPE_END_SOCKET, -69, 0, 0, 0, 0, 0};
    public static final byte[] e = {79, 103, 103, 83, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, ByteCode.T_LONG, -103, 87, 83, 1, 16, 79, 112, 117, 115, 84, 97, 103, 115, 0, 0, 0, 0, 0, 0, 0, 0};
    public ByteBuffer a = vqf.a;
    public int c = 0;
    public int b = 2;

    public static final void c(ByteBuffer byteBuffer, long j, int i, int i2, boolean z) {
        byteBuffer.put((byte) 79);
        byteBuffer.put((byte) 103);
        byteBuffer.put((byte) 103);
        byteBuffer.put((byte) 83);
        byteBuffer.put((byte) 0);
        byteBuffer.put(true != z ? (byte) 0 : (byte) 2);
        byteBuffer.putLong(j);
        byteBuffer.putInt(0);
        byteBuffer.putInt(i);
        byteBuffer.putInt(0);
        byteBuffer.put(z6i.a(i2));
    }

    public final void a(xzi xziVar, List list) {
        int length;
        ByteBuffer byteBuffer = xziVar.d;
        byteBuffer.getClass();
        if (byteBuffer.limit() - xziVar.d.position() == 0) {
            return;
        }
        byte[] bArr = null;
        if (this.b == 2 && (list.size() == 1 || list.size() == 3)) {
            bArr = (byte[]) list.get(0);
        }
        ByteBuffer byteBuffer2 = xziVar.d;
        int iPosition = byteBuffer2.position();
        int iLimit = byteBuffer2.limit();
        int i = iLimit - iPosition;
        int i2 = (i + 255) / 255;
        int i3 = i2 + 27 + i;
        if (this.b == 2) {
            length = bArr != null ? bArr.length + 28 : 47;
            i3 += length + 44;
        } else {
            length = 0;
        }
        if (this.a.capacity() < i3) {
            this.a = ByteBuffer.allocate(i3).order(ByteOrder.LITTLE_ENDIAN);
        } else {
            this.a.clear();
        }
        ByteBuffer byteBuffer3 = this.a;
        if (this.b == 2) {
            if (bArr != null) {
                c(byteBuffer3, 0L, 0, 1, true);
                int length2 = bArr.length;
                byteBuffer3.put(z6i.a(length2));
                byteBuffer3.put(bArr);
                int i4 = length2 + 28;
                byteBuffer3.putInt(22, kfh.A(byteBuffer3.array(), byteBuffer3.arrayOffset(), i4, 0));
                byteBuffer3.position(i4);
            } else {
                byteBuffer3.put(d);
            }
            byteBuffer3.put(e);
        }
        int iC = this.c + x9e.c(byteBuffer2);
        this.c = iC;
        c(byteBuffer3, iC, this.b, i2, false);
        for (int i5 = 0; i5 < i2; i5++) {
            if (i >= 255) {
                byteBuffer3.put((byte) -1);
                i -= 255;
            } else {
                byteBuffer3.put((byte) i);
                i = 0;
            }
        }
        while (iPosition < iLimit) {
            byteBuffer3.put(byteBuffer2.get(iPosition));
            iPosition++;
        }
        byteBuffer2.position(byteBuffer2.limit());
        byteBuffer3.flip();
        if (this.b == 2) {
            byteBuffer3.putInt(length + 66, kfh.A(byteBuffer3.array(), byteBuffer3.arrayOffset() + length + 44, byteBuffer3.limit() - byteBuffer3.position(), 0));
        } else {
            byteBuffer3.putInt(22, kfh.A(byteBuffer3.array(), byteBuffer3.arrayOffset(), byteBuffer3.limit() - byteBuffer3.position(), 0));
        }
        this.b++;
        this.a = byteBuffer3;
        xziVar.b();
        xziVar.j(this.a.remaining());
        xziVar.d.put(this.a);
        xziVar.k();
    }

    public final void b() {
        this.a = vqf.a;
        this.c = 0;
        this.b = 2;
    }
}
