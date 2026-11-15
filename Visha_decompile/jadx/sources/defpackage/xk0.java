package defpackage;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.RandomAccessFile;

public final class xk0 {
    public final BufferedOutputStream a;
    public final FileDescriptor b;
    public final RandomAccessFile c;

    public xk0(File file) throws IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
        this.c = randomAccessFile;
        FileDescriptor fd = randomAccessFile.getFD();
        y45.i(fd, "getFD(...)");
        this.b = fd;
        this.a = new BufferedOutputStream(new FileOutputStream(randomAccessFile.getFD()));
    }

    public final void a() throws IOException {
        this.a.close();
        this.c.close();
    }

    public final void b() throws IOException {
        this.a.flush();
        this.b.sync();
    }

    public final void c(long j) throws IOException {
        this.c.seek(j);
    }

    public final void d(byte[] bArr, int i, int i2) throws IOException {
        this.a.write(bArr, i, i2);
    }
}
