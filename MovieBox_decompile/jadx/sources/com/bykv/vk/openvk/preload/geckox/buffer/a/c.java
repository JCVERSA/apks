package com.bykv.vk.openvk.preload.geckox.buffer.a;

import com.bykv.vk.openvk.preload.geckox.utils.CloseableUtils;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.concurrent.atomic.AtomicBoolean;

final class c implements com.bykv.vk.openvk.preload.geckox.buffer.a {

    private long f20026a;

    private long f20027b;

    private RandomAccessFile f20028c;

    private AtomicBoolean f20029d = new AtomicBoolean(false);

    private File f20030e;

    c(long j10, File file) throws IOException {
        this.f20026a = j10;
        this.f20030e = file;
        file.getParentFile().mkdirs();
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
            this.f20028c = randomAccessFile;
            randomAccessFile.setLength(j10);
        } catch (Exception e10) {
            CloseableUtils.close(this.f20028c);
            throw new IOException("create raf swap failed! path: " + file.getAbsolutePath() + " caused by: " + e10.getMessage(), e10);
        }
    }

    @Override
    public final void a() throws IOException {
        if (this.f20029d.get()) {
            throw new IOException("released!");
        }
    }

    @Override
    public final long b() {
        return this.f20026a;
    }

    @Override
    public final long c() throws IOException {
        if (this.f20029d.get()) {
            throw new IOException("released!");
        }
        return this.f20027b;
    }

    @Override
    public final int d() throws IOException {
        byte[] bArr = new byte[1];
        if (b(bArr) == 0) {
            return -1;
        }
        return bArr[0];
    }

    @Override
    public final void e() {
        if (this.f20029d.getAndSet(true)) {
            return;
        }
        CloseableUtils.close(this.f20028c);
    }

    @Override
    public final File f() {
        return this.f20030e;
    }

    /* JADX WARN: Code duplicated, block: B:6:0x000e A[PHI: r0
      0x000e: PHI (r0v5 long) = (r0v2 long), (r0v3 long) binds: [B:5:0x000c, B:8:0x0014] A[DONT_GENERATE, DONT_INLINE]] */
    @Override
    public final void b(long j10) throws IOException {
        if (this.f20029d.get()) {
            throw new IOException("released!");
        }
        long j11 = 0;
        if (j10 < 0) {
            j10 = j11;
        } else {
            j11 = this.f20026a;
            if (j10 > j11) {
                j10 = j11;
            }
        }
        this.f20027b = j10;
        this.f20028c.seek(j10);
    }

    @Override
    public final void a(int i10) throws IOException {
        a(new byte[]{(byte) i10});
    }

    @Override
    public final void a(byte[] bArr) throws IOException {
        a(bArr, 0, bArr.length);
    }

    @Override
    public final synchronized long a(long j10) throws IOException {
        int iSkipBytes;
        if (this.f20029d.get()) {
            throw new IOException("released!");
        }
        int i10 = (int) j10;
        if (i10 == j10) {
            iSkipBytes = this.f20028c.skipBytes(i10);
            this.f20027b = this.f20028c.getFilePointer();
        } else {
            throw new IOException("too large:".concat(String.valueOf(j10)));
        }
        return iSkipBytes;
    }

    @Override
    public final int b(byte[] bArr) throws IOException {
        return b(bArr, 0, bArr.length);
    }

    @Override
    public final int b(byte[] bArr, int i10, int i11) throws IOException {
        if (!this.f20029d.get()) {
            if (bArr == null || i11 <= 0 || i10 < 0 || i10 >= bArr.length) {
                return 0;
            }
            if (i10 + i11 > bArr.length) {
                i11 = bArr.length - i10;
            }
            synchronized (this) {
                try {
                    long j10 = this.f20027b;
                    long j11 = this.f20026a;
                    if (j10 == j11) {
                        return -1;
                    }
                    if (((long) i11) + j10 > j11) {
                        i11 = (int) (j11 - j10);
                    }
                    int i12 = this.f20028c.read(bArr, i10, i11);
                    if (i12 == -1) {
                        return -1;
                    }
                    this.f20027b += (long) i12;
                    return i12;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        throw new IOException("released!");
    }

    @Override
    public final int a(byte[] bArr, int i10, int i11) throws IOException {
        if (!this.f20029d.get()) {
            if (bArr == null || bArr.length == 0 || i11 <= 0 || i10 < 0 || i10 >= bArr.length) {
                return 0;
            }
            if (i10 + i11 > bArr.length) {
                i11 = bArr.length - i10;
            }
            synchronized (this) {
                try {
                    long j10 = this.f20027b;
                    long j11 = this.f20026a;
                    if (j10 == j11) {
                        return 0;
                    }
                    if (((long) i11) + j10 > j11) {
                        i11 = (int) (j11 - j10);
                    }
                    this.f20028c.write(bArr, i10, i11);
                    this.f20027b += (long) i11;
                    return i11;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        throw new IOException("released!");
    }
}
