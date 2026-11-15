package com.google.android.exoplayer2.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public final class b {

    private final File f26782a;

    private final File f26783b;

    private static final class a extends OutputStream {

        private final FileOutputStream f26784a;

        private boolean f26785b = false;

        public a(File file) {
            this.f26784a = new FileOutputStream(file);
        }

        @Override
        public void close() throws IOException {
            if (this.f26785b) {
                return;
            }
            this.f26785b = true;
            flush();
            try {
                this.f26784a.getFD().sync();
            } catch (IOException e10) {
                s.j("AtomicFile", "Failed to sync file descriptor:", e10);
            }
            this.f26784a.close();
        }

        @Override
        public void flush() throws IOException {
            this.f26784a.flush();
        }

        @Override
        public void write(int i10) throws IOException {
            this.f26784a.write(i10);
        }

        @Override
        public void write(byte[] bArr) throws IOException {
            this.f26784a.write(bArr);
        }

        @Override
        public void write(byte[] bArr, int i10, int i11) throws IOException {
            this.f26784a.write(bArr, i10, i11);
        }
    }

    public b(File file) {
        this.f26782a = file;
        this.f26783b = new File(file.getPath() + ".bak");
    }

    private void e() {
        if (this.f26783b.exists()) {
            this.f26782a.delete();
            this.f26783b.renameTo(this.f26782a);
        }
    }

    public void a() {
        this.f26782a.delete();
        this.f26783b.delete();
    }

    public void b(OutputStream outputStream) throws IOException {
        outputStream.close();
        this.f26783b.delete();
    }

    public boolean c() {
        return this.f26782a.exists() || this.f26783b.exists();
    }

    public InputStream d() {
        e();
        return new FileInputStream(this.f26782a);
    }

    public OutputStream f() throws IOException {
        if (this.f26782a.exists()) {
            if (this.f26783b.exists()) {
                this.f26782a.delete();
            } else if (!this.f26782a.renameTo(this.f26783b)) {
                s.i("AtomicFile", "Couldn't rename file " + this.f26782a + " to backup file " + this.f26783b);
            }
        }
        try {
            return new a(this.f26782a);
        } catch (FileNotFoundException e10) {
            File parentFile = this.f26782a.getParentFile();
            if (parentFile == null || !parentFile.mkdirs()) {
                throw new IOException("Couldn't create " + this.f26782a, e10);
            }
            try {
                return new a(this.f26782a);
            } catch (FileNotFoundException e11) {
                throw new IOException("Couldn't create " + this.f26782a, e11);
            }
        }
    }
}
