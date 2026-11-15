package sz;

import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.SocketTimeoutException;
import java.nio.ByteBuffer;
import org.jsoup.helper.d;

public final class a extends BufferedInputStream {

    private final boolean f72438a;

    private final int f72439b;

    private long f72440c;

    private long f72441d;

    private int f72442e;

    private boolean f72443f;

    private a(InputStream inputStream, int i10, int i11) {
        super(inputStream, i10);
        this.f72441d = 0L;
        d.d(i11 >= 0);
        this.f72439b = i11;
        this.f72442e = i11;
        this.f72438a = i11 != 0;
        this.f72440c = System.nanoTime();
    }

    private boolean d() {
        return this.f72441d != 0 && System.nanoTime() - this.f72440c > this.f72441d;
    }

    public static a j(InputStream inputStream, int i10, int i11) {
        return inputStream instanceof a ? (a) inputStream : new a(inputStream, i10, i11);
    }

    public ByteBuffer f(int i10) throws IOException {
        d.e(i10 >= 0, "maxSize must be 0 (unlimited) or larger");
        boolean z10 = i10 > 0;
        int i11 = 32768;
        if (z10 && i10 < 32768) {
            i11 = i10;
        }
        byte[] bArr = new byte[i11];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(i11);
        while (true) {
            int i12 = read(bArr);
            if (i12 == -1) {
                break;
            }
            if (z10) {
                if (i12 >= i10) {
                    byteArrayOutputStream.write(bArr, 0, i10);
                    break;
                }
                i10 -= i12;
            }
            byteArrayOutputStream.write(bArr, 0, i12);
        }
        return ByteBuffer.wrap(byteArrayOutputStream.toByteArray());
    }

    public a h(long j10, long j11) {
        this.f72440c = j10;
        this.f72441d = j11 * 1000000;
        return this;
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        int i12;
        if (this.f72443f || (this.f72438a && this.f72442e <= 0)) {
            return -1;
        }
        if (Thread.interrupted()) {
            this.f72443f = true;
            return -1;
        }
        if (d()) {
            throw new SocketTimeoutException("Read timeout");
        }
        if (this.f72438a && i11 > (i12 = this.f72442e)) {
            i11 = i12;
        }
        try {
            int i13 = super.read(bArr, i10, i11);
            this.f72442e -= i13;
            return i13;
        } catch (SocketTimeoutException unused) {
            return 0;
        }
    }

    @Override
    public void reset() throws IOException {
        super.reset();
        this.f72442e = this.f72439b - ((BufferedInputStream) this).markpos;
    }
}
