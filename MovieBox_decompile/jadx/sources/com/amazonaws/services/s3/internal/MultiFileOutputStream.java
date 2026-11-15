package com.amazonaws.services.s3.internal;

import com.amazonaws.AbortedException;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.services.s3.OnFileDelete;
import com.amazonaws.services.s3.UploadObjectObserver;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;
import java.util.concurrent.Semaphore;

public class MultiFileOutputStream extends OutputStream implements OnFileDelete {

    private int f18018c;

    private UploadObjectObserver f18021f;

    private int f18022g;

    private long f18023h;

    private FileOutputStream f18024i;

    private boolean f18025j;

    private Semaphore f18026k;

    private long f18019d = 5242880;

    private long f18020e = Long.MAX_VALUE;

    private final File f18016a = new File(System.getProperty("java.io.tmpdir"));

    private final String f18017b = k() + "." + UUID.randomUUID();

    private void d() {
        Semaphore semaphore = this.f18026k;
        if (semaphore == null || this.f18020e == Long.MAX_VALUE) {
            return;
        }
        try {
            semaphore.acquire();
        } catch (InterruptedException e10) {
            throw new AbortedException(e10);
        }
    }

    private FileOutputStream h() throws IOException {
        if (this.f18025j) {
            throw new IOException("Output stream is already closed");
        }
        FileOutputStream fileOutputStream = this.f18024i;
        if (fileOutputStream == null || this.f18022g >= this.f18019d) {
            if (fileOutputStream != null) {
                fileOutputStream.close();
                this.f18021f.c(new PartCreationEvent(j(this.f18018c), this.f18018c, false, this));
            }
            this.f18022g = 0;
            this.f18018c++;
            d();
            File fileJ = j(this.f18018c);
            fileJ.deleteOnExit();
            this.f18024i = new FileOutputStream(fileJ);
        }
        return this.f18024i;
    }

    static String k() {
        return new SimpleDateFormat("yyMMdd-hhmmss").format(new Date());
    }

    @Override
    public void b(FileDeletionEvent fileDeletionEvent) {
        Semaphore semaphore = this.f18026k;
        if (semaphore != null) {
            semaphore.release();
        }
    }

    @Override
    public void close() throws IOException {
        if (this.f18025j) {
            return;
        }
        this.f18025j = true;
        FileOutputStream fileOutputStream = this.f18024i;
        if (fileOutputStream != null) {
            fileOutputStream.close();
            File fileJ = j(this.f18018c);
            if (fileJ.length() != 0) {
                this.f18021f.c(new PartCreationEvent(j(this.f18018c), this.f18018c, true, this));
                return;
            }
            if (fileJ.delete()) {
                return;
            }
            LogFactory.b(getClass()).a("Ignoring failure to delete empty file " + fileJ);
        }
    }

    @Override
    public void flush() throws IOException {
        FileOutputStream fileOutputStream = this.f18024i;
        if (fileOutputStream != null) {
            fileOutputStream.flush();
        }
    }

    public File j(int i10) {
        return new File(this.f18016a, this.f18017b + "." + i10);
    }

    @Override
    public void write(int i10) throws IOException {
        h().write(i10);
        this.f18022g++;
        this.f18023h++;
    }

    @Override
    public void write(byte[] bArr) throws IOException {
        if (bArr.length == 0) {
            return;
        }
        h().write(bArr);
        this.f18022g += bArr.length;
        this.f18023h += (long) bArr.length;
    }

    @Override
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        if (bArr.length == 0) {
            return;
        }
        h().write(bArr, i10, i11);
        this.f18022g += i11;
        this.f18023h += (long) i11;
    }
}
