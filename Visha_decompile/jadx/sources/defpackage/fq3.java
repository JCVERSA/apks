package defpackage;

import com.danikula.videocache.ProxyCacheException;
import com.danikula.videocache.file.Files;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;

public class fq3 implements gp0 {
    public final hc2 a;
    public File b;
    public RandomAccessFile c;

    public fq3(File file, hc2 hc2Var) throws ProxyCacheException {
        File file2;
        try {
            if (hc2Var == null) {
                throw new NullPointerException();
            }
            this.a = hc2Var;
            Files.b(file.getParentFile());
            boolean zExists = file.exists();
            if (zExists) {
                file2 = file;
            } else {
                file2 = new File(file.getParentFile(), file.getName() + ".download");
            }
            this.b = file2;
            this.c = new RandomAccessFile(this.b, zExists ? "r" : "rw");
        } catch (IOException e) {
            throw new ProxyCacheException("Error using file " + file + " as disc cache", e);
        }
    }

    @Override
    public synchronized void a(byte[] bArr, int i) {
        try {
            if (isCompleted()) {
                throw new ProxyCacheException("Error append cache: cache file " + this.b + " is completed!");
            }
            this.c.seek(available());
            this.c.write(bArr, 0, i);
        } catch (IOException e) {
            throw new ProxyCacheException(String.format("Error writing %d bytes to %s from buffer with size %d", Integer.valueOf(i), this.c, Integer.valueOf(bArr.length)), e);
        }
    }

    @Override
    public synchronized long available() {
        try {
        } catch (IOException e) {
            throw new ProxyCacheException("Error reading length of file " + this.b, e);
        }
        return (int) this.c.length();
    }

    @Override
    public synchronized int b(byte[] bArr, long j, int i) {
        try {
            this.c.seek(j);
        } catch (IOException e) {
            throw new ProxyCacheException(String.format("Error reading %d bytes with offset %d from file[%d bytes] to buffer[%d bytes]", Integer.valueOf(i), Long.valueOf(j), Long.valueOf(available()), Integer.valueOf(bArr.length)), e);
        }
        return this.c.read(bArr, 0, i);
    }

    public final boolean c(File file) {
        return file.getName().endsWith(".download");
    }

    @Override
    public synchronized void close() {
        try {
            this.c.close();
            this.a.a(this.b);
        } catch (IOException e) {
            throw new ProxyCacheException("Error closing file " + this.b, e);
        }
    }

    @Override
    public synchronized void complete() {
        if (isCompleted()) {
            return;
        }
        close();
        File file = new File(this.b.getParentFile(), this.b.getName().substring(0, this.b.getName().length() - 9));
        if (!this.b.renameTo(file)) {
            throw new ProxyCacheException("Error renaming file " + this.b + " to " + file + " for completion!");
        }
        this.b = file;
        try {
            this.c = new RandomAccessFile(this.b, "r");
            this.a.a(this.b);
        } catch (IOException e) {
            throw new ProxyCacheException("Error opening " + this.b + " as disc cache", e);
        }
    }

    @Override
    public synchronized boolean isCompleted() {
        return !c(this.b);
    }
}
