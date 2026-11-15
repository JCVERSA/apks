package kl;

import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.concurrent.atomic.AtomicReference;

public abstract class a {

    private static final AtomicReference f64036a = new AtomicReference();

    static final class b {

        private final int f64039a;

        private final int f64040b;

        private final byte[] f64041c;

        public b(byte[] bArr, int i10, int i11) {
            this.f64041c = bArr;
            this.f64039a = i10;
            this.f64040b = i11;
        }
    }

    public static ByteBuffer a(File file) throws Throwable {
        RandomAccessFile randomAccessFile;
        FileChannel channel = null;
        try {
            randomAccessFile = new RandomAccessFile(file, CampaignEx.JSON_KEY_AD_R);
            try {
                channel = randomAccessFile.getChannel();
                MappedByteBuffer mappedByteBufferLoad = channel.map(FileChannel.MapMode.READ_ONLY, 0L, file.length()).load();
                try {
                    channel.close();
                } catch (IOException unused) {
                }
                try {
                    randomAccessFile.close();
                } catch (IOException unused2) {
                }
                return mappedByteBufferLoad;
            } catch (Throwable th2) {
                th = th2;
                if (channel != null) {
                    try {
                        channel.close();
                    } catch (IOException unused3) {
                    }
                }
                if (randomAccessFile == null) {
                    throw th;
                }
                try {
                    randomAccessFile.close();
                    throw th;
                } catch (IOException unused4) {
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            randomAccessFile = null;
        }
    }

    public static ByteBuffer b(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(16384);
        byte[] bArr = (byte[]) f64036a.getAndSet(null);
        if (bArr == null) {
            bArr = new byte[16384];
        }
        while (true) {
            int i10 = inputStream.read(bArr);
            if (i10 < 0) {
                f64036a.set(bArr);
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                return (ByteBuffer) ByteBuffer.allocateDirect(byteArray.length).put(byteArray).position(0);
            }
            byteArrayOutputStream.write(bArr, 0, i10);
        }
    }

    private static b c(ByteBuffer byteBuffer) {
        if (byteBuffer.isReadOnly() || !byteBuffer.hasArray()) {
            return null;
        }
        return new b(byteBuffer.array(), byteBuffer.arrayOffset(), byteBuffer.limit());
    }

    public static byte[] d(ByteBuffer byteBuffer) {
        b bVarC = c(byteBuffer);
        if (bVarC != null && bVarC.f64039a == 0 && bVarC.f64040b == bVarC.f64041c.length) {
            return byteBuffer.array();
        }
        ByteBuffer byteBufferAsReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
        byte[] bArr = new byte[byteBufferAsReadOnlyBuffer.limit()];
        byteBufferAsReadOnlyBuffer.position(0);
        byteBufferAsReadOnlyBuffer.get(bArr);
        return bArr;
    }

    public static void e(ByteBuffer byteBuffer, File file) throws Throwable {
        RandomAccessFile randomAccessFile;
        FileChannel channel = null;
        try {
            randomAccessFile = new RandomAccessFile(file, "rw");
            try {
                channel = randomAccessFile.getChannel();
                channel.write(byteBuffer);
                channel.force(false);
                channel.close();
                randomAccessFile.close();
                try {
                    channel.close();
                } catch (IOException unused) {
                }
                try {
                    randomAccessFile.close();
                } catch (IOException unused2) {
                }
            } catch (Throwable th2) {
                th = th2;
                if (channel != null) {
                    try {
                        channel.close();
                    } catch (IOException unused3) {
                    }
                }
                if (randomAccessFile == null) {
                    throw th;
                }
                try {
                    randomAccessFile.close();
                    throw th;
                } catch (IOException unused4) {
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            randomAccessFile = null;
        }
    }

    public static InputStream f(ByteBuffer byteBuffer) {
        return new C0794a(byteBuffer);
    }

    private static class C0794a extends InputStream {

        private final ByteBuffer f64037a;

        private int f64038b = -1;

        public C0794a(ByteBuffer byteBuffer) {
            this.f64037a = byteBuffer;
        }

        @Override
        public int available() {
            return this.f64037a.remaining();
        }

        @Override
        public synchronized void mark(int i10) {
            this.f64038b = this.f64037a.position();
        }

        @Override
        public boolean markSupported() {
            return true;
        }

        @Override
        public int read() {
            if (this.f64037a.hasRemaining()) {
                return this.f64037a.get();
            }
            return -1;
        }

        @Override
        public synchronized void reset() {
            int i10 = this.f64038b;
            if (i10 == -1) {
                throw new IOException("Cannot reset to unset mark position");
            }
            this.f64037a.position(i10);
        }

        @Override
        public long skip(long j10) {
            if (!this.f64037a.hasRemaining()) {
                return -1L;
            }
            long jMin = Math.min(j10, this.f64037a.remaining());
            ByteBuffer byteBuffer = this.f64037a;
            byteBuffer.position((int) (((long) byteBuffer.position()) + jMin));
            return jMin;
        }

        @Override
        public int read(byte[] bArr, int i10, int i11) {
            if (!this.f64037a.hasRemaining()) {
                return -1;
            }
            int iMin = Math.min(i11, this.f64037a.remaining());
            this.f64037a.get(bArr, i10, iMin);
            return iMin;
        }
    }
}
