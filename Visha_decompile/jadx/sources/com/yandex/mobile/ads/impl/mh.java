package com.yandex.mobile.ads.impl;

import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public final class mh {
    private final File a;
    private final File b;

    public static final class a extends OutputStream {
        private final FileOutputStream a;
        private boolean b = false;

        public a(File file) throws FileNotFoundException {
            this.a = new FileOutputStream(file);
        }

        @Override
        public final void close() throws IOException {
            if (this.b) {
                return;
            }
            this.b = true;
            this.a.flush();
            try {
                this.a.getFD().sync();
            } catch (IOException e) {
                et0.b("AtomicFile", "Failed to sync file descriptor:", e);
            }
            this.a.close();
        }

        @Override
        public final void flush() throws IOException {
            this.a.flush();
        }

        @Override
        public final void write(int i) throws IOException {
            this.a.write(i);
        }

        @Override
        public final void write(byte[] bArr) throws IOException {
            this.a.write(bArr);
        }

        @Override
        public final void write(byte[] bArr, int i, int i2) throws IOException {
            this.a.write(bArr, i, i2);
        }
    }

    public mh(File file) {
        this.a = file;
        this.b = new File(file.getPath() + ".bak");
    }

    public final void a() {
        this.a.delete();
        this.b.delete();
    }

    public final boolean b() {
        return this.a.exists() || this.b.exists();
    }

    public final FileInputStream c() throws FileNotFoundException {
        if (this.b.exists()) {
            this.a.delete();
            this.b.renameTo(this.a);
        }
        return new FileInputStream(this.a);
    }

    public final OutputStream d() throws IOException {
        if (this.a.exists()) {
            if (this.b.exists()) {
                this.a.delete();
            } else if (!this.a.renameTo(this.b)) {
                et0.d("AtomicFile", "Couldn't rename file " + this.a + " to backup file " + this.b);
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

    public final void a(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.close();
        this.b.delete();
    }
}
