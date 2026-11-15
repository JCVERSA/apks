package com.cloud.hisavana.net.utils;

import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.concurrent.atomic.AtomicReference;

public final class ByteBufferUtil {

    private static final AtomicReference f20803a = new AtomicReference();

    public static class ContentLengthInputStream extends InputStream {

        private final InputStream f20806a;

        private final int f20807b;

        @Override
        public int available() {
            return this.f20807b;
        }

        @Override
        public void close() throws IOException {
            this.f20806a.close();
        }

        @Override
        public synchronized void mark(int i10) {
            this.f20806a.mark(i10);
        }

        @Override
        public boolean markSupported() {
            return this.f20806a.markSupported();
        }

        @Override
        public int read() {
            return this.f20806a.read();
        }

        @Override
        public synchronized void reset() {
            this.f20806a.reset();
        }

        @Override
        public long skip(long j10) {
            return this.f20806a.skip(j10);
        }

        @Override
        public int read(byte[] bArr) {
            return this.f20806a.read(bArr);
        }

        @Override
        public int read(byte[] bArr, int i10, int i11) {
            return this.f20806a.read(bArr, i10, i11);
        }
    }

    static final class SafeArray {

        private final int f20808a;

        private final int f20809b;

        private final byte[] f20810c;

        public SafeArray(byte[] bArr, int i10, int i11) {
            this.f20810c = bArr;
            this.f20808a = i10;
            this.f20809b = i11;
        }
    }

    private ByteBufferUtil() {
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

    private static SafeArray b(ByteBuffer byteBuffer) {
        if (byteBuffer.isReadOnly() || !byteBuffer.hasArray()) {
            return null;
        }
        return new SafeArray(byteBuffer.array(), byteBuffer.arrayOffset(), byteBuffer.limit());
    }

    public static byte[] c(ByteBuffer byteBuffer) {
        SafeArray safeArrayB = b(byteBuffer);
        if (safeArrayB != null && safeArrayB.f20808a == 0 && safeArrayB.f20809b == safeArrayB.f20810c.length) {
            return byteBuffer.array();
        }
        ByteBuffer byteBufferAsReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
        byte[] bArr = new byte[byteBufferAsReadOnlyBuffer.limit()];
        byteBufferAsReadOnlyBuffer.position(0);
        byteBufferAsReadOnlyBuffer.get(bArr);
        return bArr;
    }

    private static class ByteBufferStream extends InputStream {

        private final ByteBuffer f20804a;

        private int f20805b;

        @Override
        public int available() {
            return this.f20804a.remaining();
        }

        @Override
        public synchronized void mark(int i10) {
            this.f20805b = this.f20804a.position();
        }

        @Override
        public boolean markSupported() {
            return true;
        }

        @Override
        public int read() {
            if (this.f20804a.hasRemaining()) {
                return this.f20804a.get();
            }
            return -1;
        }

        @Override
        public synchronized void reset() {
            int i10 = this.f20805b;
            if (i10 == -1) {
                throw new IOException("Cannot reset to unset mark position");
            }
            this.f20804a.position(i10);
        }

        @Override
        public long skip(long j10) {
            if (!this.f20804a.hasRemaining()) {
                return -1L;
            }
            long jMin = Math.min(j10, available());
            ByteBuffer byteBuffer = this.f20804a;
            byteBuffer.position((int) (((long) byteBuffer.position()) + jMin));
            return jMin;
        }

        @Override
        public int read(byte[] bArr, int i10, int i11) {
            if (!this.f20804a.hasRemaining()) {
                return -1;
            }
            int iMin = Math.min(i11, available());
            this.f20804a.get(bArr, i10, iMin);
            return iMin;
        }
    }
}
