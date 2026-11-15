package tb;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.util.NoSuchElementException;
import java.util.logging.Level;
import java.util.logging.Logger;

class g implements Closeable {

    private static final Logger f72632g = Logger.getLogger(g.class.getName());

    private final RandomAccessFile f72633a;

    int f72634b;

    private int f72635c;

    private b f72636d;

    private b f72637e;

    private final byte[] f72638f = new byte[16];

    class a implements d {

        boolean f72639a = true;

        final StringBuilder f72640b;

        a(StringBuilder sb2) {
            this.f72640b = sb2;
        }

        @Override
        public void read(InputStream inputStream, int i10) {
            if (this.f72639a) {
                this.f72639a = false;
            } else {
                this.f72640b.append(", ");
            }
            this.f72640b.append(i10);
        }
    }

    static class b {

        static final b f72642c = new b(0, 0);

        final int f72643a;

        final int f72644b;

        b(int i10, int i11) {
            this.f72643a = i10;
            this.f72644b = i11;
        }

        public String toString() {
            return getClass().getSimpleName() + "[position = " + this.f72643a + ", length = " + this.f72644b + "]";
        }
    }

    private final class c extends InputStream {

        private int f72645a;

        private int f72646b;

        c(g gVar, b bVar, a aVar) {
            this(bVar);
        }

        @Override
        public int read(byte[] bArr, int i10, int i11) throws IOException {
            g.q(bArr, "buffer");
            if ((i10 | i11) < 0 || i11 > bArr.length - i10) {
                throw new ArrayIndexOutOfBoundsException();
            }
            int i12 = this.f72646b;
            if (i12 <= 0) {
                return -1;
            }
            if (i11 > i12) {
                i11 = i12;
            }
            g.this.x(this.f72645a, bArr, i10, i11);
            this.f72645a = g.this.W(this.f72645a + i11);
            this.f72646b -= i11;
            return i11;
        }

        private c(b bVar) {
            this.f72645a = g.this.W(bVar.f72643a + 4);
            this.f72646b = bVar.f72644b;
        }

        @Override
        public int read() throws IOException {
            if (this.f72646b == 0) {
                return -1;
            }
            g.this.f72633a.seek(this.f72645a);
            int i10 = g.this.f72633a.read();
            this.f72645a = g.this.W(this.f72645a + 1);
            this.f72646b--;
            return i10;
        }
    }

    public interface d {
        void read(InputStream inputStream, int i10);
    }

    public g(File file) throws IOException {
        if (!file.exists()) {
            o(file);
        }
        this.f72633a = r(file);
        t();
    }

    private void S(int i10) throws IOException {
        this.f72633a.setLength(i10);
        this.f72633a.getChannel().force(true);
    }

    public int W(int i10) {
        int i11 = this.f72634b;
        return i10 < i11 ? i10 : (i10 + 16) - i11;
    }

    private void X(int i10, int i11, int i12, int i13) throws IOException {
        e0(this.f72638f, i10, i11, i12, i13);
        this.f72633a.seek(0L);
        this.f72633a.write(this.f72638f);
    }

    private static void d0(byte[] bArr, int i10, int i11) {
        bArr[i10] = (byte) (i11 >> 24);
        bArr[i10 + 1] = (byte) (i11 >> 16);
        bArr[i10 + 2] = (byte) (i11 >> 8);
        bArr[i10 + 3] = (byte) i11;
    }

    private static void e0(byte[] bArr, int... iArr) {
        int i10 = 0;
        for (int i11 : iArr) {
            d0(bArr, i10, i11);
            i10 += 4;
        }
    }

    private void m(int i10) throws IOException {
        int i11 = i10 + 4;
        int iV = v();
        if (iV >= i11) {
            return;
        }
        int i12 = this.f72634b;
        do {
            iV += i12;
            i12 <<= 1;
        } while (iV < i11);
        S(i12);
        b bVar = this.f72637e;
        int iW = W(bVar.f72643a + 4 + bVar.f72644b);
        if (iW < this.f72636d.f72643a) {
            FileChannel channel = this.f72633a.getChannel();
            channel.position(this.f72634b);
            long j10 = iW - 4;
            if (channel.transferTo(16L, j10, channel) != j10) {
                throw new AssertionError("Copied insufficient number of bytes!");
            }
        }
        int i13 = this.f72637e.f72643a;
        int i14 = this.f72636d.f72643a;
        if (i13 < i14) {
            int i15 = (this.f72634b + i13) - 16;
            X(i12, this.f72635c, i14, i15);
            this.f72637e = new b(i15, this.f72637e.f72644b);
        } else {
            X(i12, this.f72635c, i14, i13);
        }
        this.f72634b = i12;
    }

    private static void o(File file) throws IOException {
        File file2 = new File(file.getPath() + ".tmp");
        RandomAccessFile randomAccessFileR = r(file2);
        try {
            randomAccessFileR.setLength(PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM);
            randomAccessFileR.seek(0L);
            byte[] bArr = new byte[16];
            e0(bArr, 4096, 0, 0, 0);
            randomAccessFileR.write(bArr);
            randomAccessFileR.close();
            if (!file2.renameTo(file)) {
                throw new IOException("Rename failed!");
            }
        } catch (Throwable th2) {
            randomAccessFileR.close();
            throw th2;
        }
    }

    public static Object q(Object obj, String str) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException(str);
    }

    private static RandomAccessFile r(File file) {
        return new RandomAccessFile(file, "rwd");
    }

    private b s(int i10) throws IOException {
        if (i10 == 0) {
            return b.f72642c;
        }
        this.f72633a.seek(i10);
        return new b(i10, this.f72633a.readInt());
    }

    private void t() throws IOException {
        this.f72633a.seek(0L);
        this.f72633a.readFully(this.f72638f);
        int iU = u(this.f72638f, 0);
        this.f72634b = iU;
        if (iU <= this.f72633a.length()) {
            this.f72635c = u(this.f72638f, 4);
            int iU2 = u(this.f72638f, 8);
            int iU3 = u(this.f72638f, 12);
            this.f72636d = s(iU2);
            this.f72637e = s(iU3);
            return;
        }
        throw new IOException("File is truncated. Expected length: " + this.f72634b + ", Actual length: " + this.f72633a.length());
    }

    private static int u(byte[] bArr, int i10) {
        return ((bArr[i10] & 255) << 24) + ((bArr[i10 + 1] & 255) << 16) + ((bArr[i10 + 2] & 255) << 8) + (bArr[i10 + 3] & 255);
    }

    private int v() {
        return this.f72634b - T();
    }

    public void x(int i10, byte[] bArr, int i11, int i12) throws IOException {
        int iW = W(i10);
        int i13 = iW + i12;
        int i14 = this.f72634b;
        if (i13 <= i14) {
            this.f72633a.seek(iW);
            this.f72633a.readFully(bArr, i11, i12);
            return;
        }
        int i15 = i14 - iW;
        this.f72633a.seek(iW);
        this.f72633a.readFully(bArr, i11, i15);
        this.f72633a.seek(16L);
        this.f72633a.readFully(bArr, i11 + i15, i12 - i15);
    }

    private void y(int i10, byte[] bArr, int i11, int i12) throws IOException {
        int iW = W(i10);
        int i13 = iW + i12;
        int i14 = this.f72634b;
        if (i13 <= i14) {
            this.f72633a.seek(iW);
            this.f72633a.write(bArr, i11, i12);
            return;
        }
        int i15 = i14 - iW;
        this.f72633a.seek(iW);
        this.f72633a.write(bArr, i11, i15);
        this.f72633a.seek(16L);
        this.f72633a.write(bArr, i11 + i15, i12 - i15);
    }

    public int T() {
        if (this.f72635c == 0) {
            return 16;
        }
        b bVar = this.f72637e;
        int i10 = bVar.f72643a;
        int i11 = this.f72636d.f72643a;
        return i10 >= i11 ? (i10 - i11) + 4 + bVar.f72644b + 16 : (((i10 + 4) + bVar.f72644b) + this.f72634b) - i11;
    }

    @Override
    public synchronized void close() {
        this.f72633a.close();
    }

    public void j(byte[] bArr) {
        k(bArr, 0, bArr.length);
    }

    public synchronized void k(byte[] bArr, int i10, int i11) {
        int iW;
        try {
            q(bArr, "buffer");
            if ((i10 | i11) < 0 || i11 > bArr.length - i10) {
                throw new IndexOutOfBoundsException();
            }
            m(i11);
            boolean zP = p();
            if (zP) {
                iW = 16;
            } else {
                b bVar = this.f72637e;
                iW = W(bVar.f72643a + 4 + bVar.f72644b);
            }
            b bVar2 = new b(iW, i11);
            d0(this.f72638f, 0, i11);
            y(bVar2.f72643a, this.f72638f, 0, 4);
            y(bVar2.f72643a + 4, bArr, i10, i11);
            X(this.f72634b, this.f72635c + 1, zP ? bVar2.f72643a : this.f72636d.f72643a, bVar2.f72643a);
            this.f72637e = bVar2;
            this.f72635c++;
            if (zP) {
                this.f72636d = bVar2;
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void l() {
        try {
            X(4096, 0, 0, 0);
            this.f72635c = 0;
            b bVar = b.f72642c;
            this.f72636d = bVar;
            this.f72637e = bVar;
            if (this.f72634b > 4096) {
                S(4096);
            }
            this.f72634b = 4096;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void n(d dVar) {
        int iW = this.f72636d.f72643a;
        for (int i10 = 0; i10 < this.f72635c; i10++) {
            b bVarS = s(iW);
            dVar.read(new c(this, bVarS, null), bVarS.f72644b);
            iW = W(bVarS.f72643a + 4 + bVarS.f72644b);
        }
    }

    public synchronized boolean p() {
        return this.f72635c == 0;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(getClass().getSimpleName());
        sb2.append('[');
        sb2.append("fileLength=");
        sb2.append(this.f72634b);
        sb2.append(", size=");
        sb2.append(this.f72635c);
        sb2.append(", first=");
        sb2.append(this.f72636d);
        sb2.append(", last=");
        sb2.append(this.f72637e);
        sb2.append(", element lengths=[");
        try {
            n(new a(sb2));
        } catch (IOException e10) {
            f72632g.log(Level.WARNING, "read error", (Throwable) e10);
        }
        sb2.append("]]");
        return sb2.toString();
    }

    public synchronized void w() {
        try {
            if (p()) {
                throw new NoSuchElementException();
            }
            if (this.f72635c == 1) {
                l();
            } else {
                b bVar = this.f72636d;
                int iW = W(bVar.f72643a + 4 + bVar.f72644b);
                x(iW, this.f72638f, 0, 4);
                int iU = u(this.f72638f, 0);
                X(this.f72634b, this.f72635c - 1, iW, this.f72637e.f72643a);
                this.f72635c--;
                this.f72636d = new b(iW, iU);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }
}
