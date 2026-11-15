package com.amazonaws.services.s3.internal;

import com.amazonaws.internal.SdkInputStream;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

public class RepeatableFileInputStream extends SdkInputStream {

    private static final Log f18037e = LogFactory.c("RepeatableFIS");

    private final File f18038a;

    private FileInputStream f18039b;

    private long f18040c = 0;

    private long f18041d = 0;

    public RepeatableFileInputStream(File file) {
        this.f18039b = null;
        if (file == null) {
            throw new IllegalArgumentException("File cannot be null");
        }
        this.f18039b = new FileInputStream(file);
        this.f18038a = file;
    }

    @Override
    public int available() {
        k();
        return this.f18039b.available();
    }

    @Override
    public void close() throws IOException {
        this.f18039b.close();
        k();
    }

    @Override
    public InputStream l() {
        return this.f18039b;
    }

    @Override
    public void mark(int i10) {
        k();
        this.f18041d += this.f18040c;
        this.f18040c = 0L;
        Log log = f18037e;
        if (log.b()) {
            log.a("Input stream marked at " + this.f18041d + " bytes");
        }
    }

    @Override
    public boolean markSupported() {
        return true;
    }

    @Override
    public int read() throws IOException {
        k();
        int i10 = this.f18039b.read();
        if (i10 == -1) {
            return -1;
        }
        this.f18040c++;
        return i10;
    }

    @Override
    public void reset() throws IOException {
        this.f18039b.close();
        k();
        this.f18039b = new FileInputStream(this.f18038a);
        long jSkip = this.f18041d;
        while (jSkip > 0) {
            jSkip -= this.f18039b.skip(jSkip);
        }
        Log log = f18037e;
        if (log.b()) {
            log.a("Reset to mark point " + this.f18041d + " after returning " + this.f18040c + " bytes");
        }
        this.f18040c = 0L;
    }

    @Override
    public long skip(long j10) throws IOException {
        k();
        long jSkip = this.f18039b.skip(j10);
        this.f18040c += jSkip;
        return jSkip;
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        k();
        int i12 = this.f18039b.read(bArr, i10, i11);
        this.f18040c += (long) i12;
        return i12;
    }
}
