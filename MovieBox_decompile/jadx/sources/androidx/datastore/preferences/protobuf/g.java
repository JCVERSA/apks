package androidx.datastore.preferences.protobuf;

import java.io.IOException;
import java.io.OutputStream;
import java.lang.ref.SoftReference;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

abstract class g {

    private static final ThreadLocal f8458a = new ThreadLocal();

    private static final Class f8459b;

    private static final long f8460c;

    static {
        Class clsE = e("java.io.FileOutputStream");
        f8459b = clsE;
        f8460c = b(clsE);
    }

    private static byte[] a() {
        SoftReference softReference = (SoftReference) f8458a.get();
        if (softReference == null) {
            return null;
        }
        return (byte[]) softReference.get();
    }

    private static long b(Class cls) {
        if (cls == null) {
            return -1L;
        }
        try {
            if (k1.I()) {
                return k1.L(cls.getDeclaredField("channel"));
            }
            return -1L;
        } catch (Throwable unused) {
            return -1L;
        }
    }

    private static byte[] c(int i10) {
        int iMax = Math.max(i10, 1024);
        byte[] bArrA = a();
        if (bArrA == null || d(iMax, bArrA.length)) {
            bArrA = new byte[iMax];
            if (iMax <= 16384) {
                f(bArrA);
            }
        }
        return bArrA;
    }

    private static boolean d(int i10, int i11) {
        return i11 < i10 && ((float) i11) < ((float) i10) * 0.5f;
    }

    private static Class e(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    private static void f(byte[] bArr) {
        f8458a.set(new SoftReference(bArr));
    }

    static void g(ByteBuffer byteBuffer, OutputStream outputStream) {
        int iPosition = byteBuffer.position();
        try {
            if (byteBuffer.hasArray()) {
                outputStream.write(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining());
            } else if (!h(byteBuffer, outputStream)) {
                byte[] bArrC = c(byteBuffer.remaining());
                while (byteBuffer.hasRemaining()) {
                    int iMin = Math.min(byteBuffer.remaining(), bArrC.length);
                    byteBuffer.get(bArrC, 0, iMin);
                    outputStream.write(bArrC, 0, iMin);
                }
            }
        } finally {
            y.c(byteBuffer, iPosition);
        }
    }

    private static boolean h(ByteBuffer byteBuffer, OutputStream outputStream) throws IOException {
        WritableByteChannel writableByteChannel;
        long j10 = f8460c;
        if (j10 < 0 || !f8459b.isInstance(outputStream)) {
            return false;
        }
        try {
            writableByteChannel = (WritableByteChannel) k1.G(outputStream, j10);
        } catch (ClassCastException unused) {
            writableByteChannel = null;
        }
        if (writableByteChannel == null) {
            return false;
        }
        writableByteChannel.write(byteBuffer);
        return true;
    }
}
