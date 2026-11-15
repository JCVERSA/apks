package androidx.media3.common.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public final class b {

    private final File f10055a;

    private final File f10056b;

    private static final class a extends OutputStream {

        private final FileOutputStream f10057a;

        private boolean f10058b = false;

        public a(File file) {
            this.f10057a = new FileOutputStream(file);
        }

        @Override
        public void close() throws IOException {
            if (this.f10058b) {
                return;
            }
            this.f10058b = true;
            flush();
            try {
                this.f10057a.getFD().sync();
            } catch (IOException e10) {
                u.i("AtomicFile", "Failed to sync file descriptor:", e10);
            }
            this.f10057a.close();
        }

        @Override
        public void flush() throws IOException {
            this.f10057a.flush();
        }

        @Override
        public void write(int i10) throws IOException {
            this.f10057a.write(i10);
        }

        @Override
        public void write(byte[] bArr) throws IOException {
            this.f10057a.write(bArr);
        }

        @Override
        public void write(byte[] bArr, int i10, int i11) throws IOException {
            this.f10057a.write(bArr, i10, i11);
        }
    }

    public b(File file) {
        this.f10055a = file;
        this.f10056b = new File(file.getPath() + ".bak");
    }

    private void e() {
        if (this.f10056b.exists()) {
            this.f10055a.delete();
            this.f10056b.renameTo(this.f10055a);
        }
    }

    public void a() {
        this.f10055a.delete();
        this.f10056b.delete();
    }

    public void b(OutputStream outputStream) throws IOException {
        outputStream.close();
        this.f10056b.delete();
    }

    public boolean c() {
        return this.f10055a.exists() || this.f10056b.exists();
    }

    public InputStream d() {
        e();
        return new FileInputStream(this.f10055a);
    }

    public OutputStream f() throws IOException {
        if (this.f10055a.exists()) {
            if (this.f10056b.exists()) {
                this.f10055a.delete();
            } else if (!this.f10055a.renameTo(this.f10056b)) {
                u.h("AtomicFile", "Couldn't rename file " + this.f10055a + " to backup file " + this.f10056b);
            }
        }
        try {
            return new a(this.f10055a);
        } catch (FileNotFoundException e10) {
            File parentFile = this.f10055a.getParentFile();
            if (parentFile == null || !parentFile.mkdirs()) {
                throw new IOException("Couldn't create " + this.f10055a, e10);
            }
            try {
                return new a(this.f10055a);
            } catch (FileNotFoundException e11) {
                throw new IOException("Couldn't create " + this.f10055a, e11);
            }
        }
    }
}
