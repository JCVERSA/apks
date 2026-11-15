package defpackage;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public final class zk {
    public final File a;
    public final File b;

    public static final class a extends OutputStream {
        public final FileOutputStream b;
        public boolean c = false;

        public a(File file) {
            this.b = new FileOutputStream(file);
        }

        @Override
        public void close() throws IOException {
            if (this.c) {
                return;
            }
            this.c = true;
            flush();
            try {
                this.b.getFD().sync();
            } catch (IOException e) {
                op5.j("AtomicFile", "Failed to sync file descriptor:", e);
            }
            this.b.close();
        }

        @Override
        public void flush() throws IOException {
            this.b.flush();
        }

        @Override
        public void write(int i) throws IOException {
            this.b.write(i);
        }

        @Override
        public void write(byte[] bArr) throws IOException {
            this.b.write(bArr);
        }

        @Override
        public void write(byte[] bArr, int i, int i2) throws IOException {
            this.b.write(bArr, i, i2);
        }
    }

    public zk(File file) {
        this.a = file;
        this.b = new File(file.getPath() + ".bak");
    }

    public void a() {
        this.a.delete();
        this.b.delete();
    }

    public void b(OutputStream outputStream) throws IOException {
        outputStream.close();
        this.b.delete();
    }

    public boolean c() {
        return this.a.exists() || this.b.exists();
    }

    public InputStream d() {
        e();
        return new FileInputStream(this.a);
    }

    public final void e() {
        if (this.b.exists()) {
            this.a.delete();
            this.b.renameTo(this.a);
        }
    }

    public OutputStream f() throws IOException {
        if (this.a.exists()) {
            if (this.b.exists()) {
                this.a.delete();
            } else if (!this.a.renameTo(this.b)) {
                op5.i("AtomicFile", "Couldn't rename file " + this.a + " to backup file " + this.b);
            }
        }
        try {
            return new a(this.a);
        } catch (FileNotFoundException e) {
            File parentFile = this.a.getParentFile();
            if (parentFile == null || !parentFile.mkdirs()) {
                throw new IOException("Couldn't create " + this.a, e);
            }
            try {
                return new a(this.a);
            } catch (FileNotFoundException e2) {
                throw new IOException("Couldn't create " + this.a, e2);
            }
        }
    }
}
