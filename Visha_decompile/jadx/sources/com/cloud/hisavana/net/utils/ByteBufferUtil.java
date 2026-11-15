package com.cloud.hisavana.net.utils;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.concurrent.atomic.AtomicReference;

public final class ByteBufferUtil {
    public static final AtomicReference a = new AtomicReference();

    public static class ContentLengthInputStream extends InputStream {
        public final InputStream b;
        public final int c;

        @Override
        public int available() {
            return this.c;
        }

        @Override
        public void close() throws IOException {
            this.b.close();
        }

        @Override
        public synchronized void mark(int i) {
            this.b.mark(i);
        }

        @Override
        public boolean markSupported() {
            return this.b.markSupported();
        }

        @Override
        public int read() {
            return this.b.read();
        }

        @Override
        public synchronized void reset() {
            this.b.reset();
        }

        @Override
        public long skip(long j) {
            return this.b.skip(j);
        }

        @Override
        public int read(byte[] bArr) {
            return this.b.read(bArr);
        }

        @Override
        public int read(byte[] bArr, int i, int i2) {
            return this.b.read(bArr, i, i2);
        }
    }

    public static final class SafeArray {
        public final int a;
        public final int b;
        public final byte[] c;

        public SafeArray(byte[] bArr, int i, int i2) {
            this.c = bArr;
            this.a = i;
            this.b = i2;
        }
    }

    private ByteBufferUtil() {
    }

    public static ByteBuffer a(File file) throws Throwable {
        RandomAccessFile randomAccessFile;
        FileChannel channel = null;
        try {
            randomAccessFile = new RandomAccessFile(file, "r");
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
            } catch (Throwable th) {
                th = th;
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
        } catch (Throwable th2) {
            th = th2;
            randomAccessFile = null;
        }
    }

    public static SafeArray b(ByteBuffer byteBuffer) {
        if (byteBuffer.isReadOnly() || !byteBuffer.hasArray()) {
            return null;
        }
        return new SafeArray(byteBuffer.array(), byteBuffer.arrayOffset(), byteBuffer.limit());
    }

    public static byte[] c(ByteBuffer byteBuffer) {
        SafeArray safeArrayB = b(byteBuffer);
        if (safeArrayB != null && safeArrayB.a == 0 && safeArrayB.b == safeArrayB.c.length) {
            return byteBuffer.array();
        }
        ByteBuffer byteBufferAsReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
        byte[] bArr = new byte[byteBufferAsReadOnlyBuffer.limit()];
        byteBufferAsReadOnlyBuffer.position(0);
        byteBufferAsReadOnlyBuffer.get(bArr);
        return bArr;
    }

    public static class ByteBufferStream extends InputStream {
        public final ByteBuffer b;
        public int c;

        @Override
        public int available() {
            return this.b.remaining();
        }

        @Override
        public synchronized void mark(int i) {
            this.c = this.b.position();
        }

        @Override
        public boolean markSupported() {
            return true;
        }

        @Override
        public int read() {
            if (this.b.hasRemaining()) {
                return this.b.get();
            }
            return -1;
        }

        @Override
        public synchronized void reset() {
            int i = this.c;
            if (i == -1) {
                throw new IOException("Cannot reset to unset mark position");
            }
            this.b.position(i);
        }

        @Override
        public long skip(long j) {
            if (!this.b.hasRemaining()) {
                return -1L;
            }
            long jMin = Math.min(j, available());
            ByteBuffer byteBuffer = this.b;
            byteBuffer.position((int) (((long) byteBuffer.position()) + jMin));
            return jMin;
        }

        @Override
        public int read(byte[] bArr, int i, int i2) {
            if (!this.b.hasRemaining()) {
                return -1;
            }
            int iMin = Math.min(i2, available());
            this.b.get(bArr, i, iMin);
            return iMin;
        }
    }
}
