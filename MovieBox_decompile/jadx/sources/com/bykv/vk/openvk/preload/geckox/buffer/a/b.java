package com.bykv.vk.openvk.preload.geckox.buffer.a;

import com.bykv.vk.openvk.preload.geckox.utils.CloseableUtils;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.concurrent.atomic.AtomicBoolean;

final class b implements com.bykv.vk.openvk.preload.geckox.buffer.a {

    private RandomAccessFile f20023a;

    private AtomicBoolean f20024b = new AtomicBoolean(false);

    private File f20025c;

    b(File file) throws IOException {
        this.f20025c = file;
        file.getParentFile().mkdirs();
        try {
            this.f20023a = new RandomAccessFile(file, "rw");
        } catch (Exception e10) {
            CloseableUtils.close(this.f20023a);
            throw new IOException("create raf mSwap failed! path: " + file.getAbsolutePath() + " caused by: " + e10.getMessage(), e10);
        }
    }

    @Override
    public final void a() throws IOException {
        if (this.f20024b.get()) {
            throw new IOException("released!");
        }
    }

    @Override
    public final long b() throws IOException {
        return this.f20023a.length();
    }

    @Override
    public final long c() throws IOException {
        if (this.f20024b.get()) {
            throw new IOException("released!");
        }
        return this.f20023a.getFilePointer();
    }

    @Override
    public final int d() throws IOException {
        byte[] bArr = new byte[1];
        if (b(bArr) <= 0) {
            return -1;
        }
        return bArr[0];
    }

    @Override
    public final void e() {
        if (this.f20024b.getAndSet(true)) {
            return;
        }
        CloseableUtils.close(this.f20023a);
    }

    @Override
    public final File f() {
        return this.f20025c;
    }

    @Override
    public final void b(long j10) throws IOException {
        if (this.f20024b.get()) {
            throw new IOException("released!");
        }
        if (j10 < 0) {
            j10 = 0;
        }
        this.f20023a.seek(j10);
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
        int i10;
        if (this.f20024b.get()) {
            throw new IOException("released!");
        }
        i10 = (int) j10;
        if (i10 == j10) {
        } else {
            throw new IOException("too large:".concat(String.valueOf(j10)));
        }
        return this.f20023a.skipBytes(i10);
    }

    @Override
    public final int b(byte[] bArr) throws IOException {
        return b(bArr, 0, bArr.length);
    }

    @Override
    public final int b(byte[] bArr, int i10, int i11) throws IOException {
        int i12;
        if (!this.f20024b.get()) {
            if (bArr == null || i11 <= 0 || i10 < 0 || i10 >= bArr.length) {
                return 0;
            }
            if (i10 + i11 > bArr.length) {
                i11 = bArr.length - i10;
            }
            synchronized (this) {
                i12 = this.f20023a.read(bArr, i10, i11);
            }
            return i12;
        }
        throw new IOException("released!");
    }

    @Override
    public final int a(byte[] bArr, int i10, int i11) throws IOException {
        if (!this.f20024b.get()) {
            if (bArr == null || bArr.length == 0 || i11 <= 0 || i10 < 0 || i10 >= bArr.length) {
                return 0;
            }
            if (i10 + i11 > bArr.length) {
                i11 = bArr.length - i10;
            }
            synchronized (this) {
                this.f20023a.write(bArr, i10, i11);
            }
            return i11;
        }
        throw new IOException("released!");
    }
}
