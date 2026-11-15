package androidx.media3.exoplayer.audio;

import androidx.media3.common.audio.AudioProcessor;
import androidx.media3.decoder.DecoderInputBuffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.List;

public final class b1 {

    private static final byte[] f10819d = {79, 103, 103, 83, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, -43, -59, -9, 1, 19, 79, 112, 117, 115, 72, 101, 97, 100, 1, 2, 56, 1, -128, -69, 0, 0, 0, 0, 0};

    private static final byte[] f10820e = {79, 103, 103, 83, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 11, -103, 87, 83, 1, 16, 79, 112, 117, 115, 84, 97, 103, 115, 0, 0, 0, 0, 0, 0, 0, 0};

    private ByteBuffer f10821a = AudioProcessor.f9503a;

    private int f10823c = 0;

    private int f10822b = 2;

    private ByteBuffer b(ByteBuffer byteBuffer, byte[] bArr) {
        int i10;
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        int i11 = iLimit - iPosition;
        int i12 = (i11 + 255) / 255;
        int length = i12 + 27 + i11;
        if (this.f10822b == 2) {
            int length2 = bArr != null ? bArr.length + 28 : f10819d.length;
            length += f10820e.length + length2;
            i10 = length2;
        } else {
            i10 = 0;
        }
        ByteBuffer byteBufferC = c(length);
        if (this.f10822b == 2) {
            if (bArr != null) {
                e(byteBufferC, bArr);
            } else {
                byteBufferC.put(f10819d);
            }
            byteBufferC.put(f10820e);
        }
        int iJ = this.f10823c + k2.k0.j(byteBuffer);
        this.f10823c = iJ;
        f(byteBufferC, iJ, this.f10822b, i12, false);
        for (int i13 = 0; i13 < i12; i13++) {
            if (i11 >= 255) {
                byteBufferC.put((byte) -1);
                i11 -= 255;
            } else {
                byteBufferC.put((byte) i11);
                i11 = 0;
            }
        }
        while (iPosition < iLimit) {
            byteBufferC.put(byteBuffer.get(iPosition));
            iPosition++;
        }
        byteBuffer.position(byteBuffer.limit());
        byteBufferC.flip();
        if (this.f10822b == 2) {
            byte[] bArrArray = byteBufferC.array();
            int iArrayOffset = byteBufferC.arrayOffset() + i10;
            byte[] bArr2 = f10820e;
            byteBufferC.putInt(i10 + bArr2.length + 22, androidx.media3.common.util.a1.x(bArrArray, iArrayOffset + bArr2.length, byteBufferC.limit() - byteBufferC.position(), 0));
        } else {
            byteBufferC.putInt(22, androidx.media3.common.util.a1.x(byteBufferC.array(), byteBufferC.arrayOffset(), byteBufferC.limit() - byteBufferC.position(), 0));
        }
        this.f10822b++;
        return byteBufferC;
    }

    private ByteBuffer c(int i10) {
        if (this.f10821a.capacity() < i10) {
            this.f10821a = ByteBuffer.allocate(i10).order(ByteOrder.LITTLE_ENDIAN);
        } else {
            this.f10821a.clear();
        }
        return this.f10821a;
    }

    private void e(ByteBuffer byteBuffer, byte[] bArr) {
        f(byteBuffer, 0L, 0, 1, true);
        byteBuffer.put(com.google.common.primitives.f.a(bArr.length));
        byteBuffer.put(bArr);
        byteBuffer.putInt(22, androidx.media3.common.util.a1.x(byteBuffer.array(), byteBuffer.arrayOffset(), bArr.length + 28, 0));
        byteBuffer.position(bArr.length + 28);
    }

    private void f(ByteBuffer byteBuffer, long j10, int i10, int i11, boolean z10) {
        byteBuffer.put((byte) 79);
        byteBuffer.put((byte) 103);
        byteBuffer.put((byte) 103);
        byteBuffer.put((byte) 83);
        byteBuffer.put((byte) 0);
        byteBuffer.put(z10 ? (byte) 2 : (byte) 0);
        byteBuffer.putLong(j10);
        byteBuffer.putInt(0);
        byteBuffer.putInt(i10);
        byteBuffer.putInt(0);
        byteBuffer.put(com.google.common.primitives.f.a(i11));
    }

    public void a(DecoderInputBuffer decoderInputBuffer, List list) {
        androidx.media3.common.util.a.e(decoderInputBuffer.f10606c);
        if (decoderInputBuffer.f10606c.limit() - decoderInputBuffer.f10606c.position() == 0) {
            return;
        }
        this.f10821a = b(decoderInputBuffer.f10606c, (this.f10822b == 2 && (list.size() == 1 || list.size() == 3)) ? (byte[]) list.get(0) : null);
        decoderInputBuffer.clear();
        decoderInputBuffer.b(this.f10821a.remaining());
        decoderInputBuffer.f10606c.put(this.f10821a);
        decoderInputBuffer.d();
    }

    public void d() {
        this.f10821a = AudioProcessor.f9503a;
        this.f10823c = 0;
        this.f10822b = 2;
    }
}
