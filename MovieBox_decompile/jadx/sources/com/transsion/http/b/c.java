package com.transsion.http.b;

import android.os.Looper;
import androidx.annotation.NonNull;
import com.transsion.http.impl.DownloadCallback;
import fl.e;
import il.f;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.atomic.AtomicBoolean;
import kl.d;

public class c implements Runnable, Comparable<c> {

    final el.b f44553a;

    final DownloadCallback f44554b;

    private String f44555c;

    private String f44556d;

    private final Object f44559g;

    private String f44560h;

    private long f44561i;

    private boolean f44562j;

    private f f44563k;

    private volatile boolean f44564l;

    private final el.c f44565m;

    private a f44566n;

    private final AtomicBoolean f44557e = new AtomicBoolean();

    private final e f44558f = new e();

    private long f44567o = 0;

    public c(el.b bVar, DownloadCallback downloadCallback) {
        this.f44553a = bVar;
        this.f44554b = downloadCallback;
        this.f44562j = bVar.c().k();
        this.f44559g = bVar.c().m();
        this.f44555c = bVar.c().i();
        String strN = bVar.c().n();
        this.f44560h = strN;
        this.f44565m = new el.c(strN);
    }

    private void e() {
        if (this.f44563k != null) {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                new Thread(new b(this)).start();
            } else {
                this.f44563k.a();
            }
        }
    }

    private synchronized void f() {
        DownloadCallback downloadCallback;
        if (!this.f44564l && this.f44557e.get() && (downloadCallback = this.f44554b) != null) {
            downloadCallback.e();
        }
    }

    private synchronized void g() {
        DownloadCallback downloadCallback;
        if (!this.f44564l && this.f44557e.get() && (downloadCallback = this.f44554b) != null) {
            downloadCallback.u();
        }
    }

    public void a(a aVar) {
    }

    public Object b() {
        return this.f44559g;
    }

    public boolean c() {
        return this.f44557e.get();
    }

    @Override
    public int compareTo(@NonNull c cVar) {
        return 0;
    }

    public boolean d() {
        this.f44557e.set(true);
        e();
        boolean z10 = this.f44557e.get();
        if (z10) {
            g();
        }
        return z10;
    }

    @Override
    public void run() {
        DownloadCallback downloadCallback;
        DownloadCallback downloadCallback2;
        DownloadCallback downloadCallback3;
        DownloadCallback downloadCallback4;
        if (c()) {
            return;
        }
        DownloadCallback downloadCallback5 = this.f44554b;
        if (downloadCallback5 != null) {
            downloadCallback5.a();
        }
        f fVarD = this.f44553a.d();
        this.f44563k = fVarD;
        try {
            File fileA = a(fVarD);
            if (fileA == null || !fileA.exists() || fileA.length() <= 0) {
                if (!c() && (downloadCallback3 = this.f44554b) != null) {
                    downloadCallback3.w(fVarD.g(), this.f44560h, "file is null");
                }
            } else if (!c() && (downloadCallback4 = this.f44554b) != null) {
                downloadCallback4.A(fVarD.g(), this.f44560h, fileA);
            }
        } catch (Throwable th2) {
            try {
                File file = new File(this.f44555c);
                if (!file.exists() || file.length() <= 0) {
                    if (!c() && (downloadCallback = this.f44554b) != null) {
                        downloadCallback.w(fVarD.g(), this.f44560h, th2.getMessage());
                    }
                } else if (!c() && (downloadCallback2 = this.f44554b) != null) {
                    downloadCallback2.A(fVarD.g(), this.f44560h, file);
                }
            } catch (Throwable th3) {
                fVarD.a();
                throw th3;
            }
        }
        fVarD.a();
        if (c()) {
            return;
        }
        DownloadCallback downloadCallback6 = this.f44554b;
        if (downloadCallback6 != null) {
            downloadCallback6.b();
        }
        this.f44564l = true;
    }

    private File a(f fVar) throws Throwable {
        FileOutputStream fileOutputStream;
        long j10;
        this.f44558f.a(this.f44565m);
        this.f44556d = this.f44555c + ".tmp";
        File file = new File(this.f44556d);
        if (!file.exists()) {
            File parentFile = file.getParentFile();
            if (!parentFile.exists() && !parentFile.mkdirs()) {
                throw new IOException("can not create dir: " + parentFile.getAbsolutePath());
            }
        } else if (this.f44562j) {
            this.f44567o = file.length();
        }
        this.f44553a.c().f().put("RANGE", "bytes=" + this.f44567o + "-");
        if (c()) {
            return null;
        }
        fVar.i();
        this.f44561i = fVar.b();
        InputStream inputStreamC = fVar.c();
        File file2 = new File(this.f44556d);
        if (this.f44562j) {
            j10 = this.f44567o;
            fileOutputStream = new FileOutputStream(file2, true);
        } else {
            fileOutputStream = new FileOutputStream(file2);
            j10 = 0;
        }
        long j11 = this.f44561i + j10;
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStreamC);
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(fileOutputStream);
        if (c()) {
            return null;
        }
        DownloadCallback downloadCallback = this.f44554b;
        if (downloadCallback != null) {
            downloadCallback.y(this.f44563k.g(), this.f44560h, j10, j11);
        }
        byte[] bArr = new byte[4096];
        while (true) {
            int i10 = bufferedInputStream.read(bArr);
            if (i10 != -1) {
                if (file2.getParentFile().exists()) {
                    bufferedOutputStream.write(bArr, 0, i10);
                    j10 += (long) i10;
                    if (c()) {
                        return null;
                    }
                    DownloadCallback downloadCallback2 = this.f44554b;
                    if (downloadCallback2 != null) {
                        downloadCallback2.y(this.f44563k.g(), this.f44560h, j10, j11);
                    }
                    bufferedInputStream = bufferedInputStream;
                } else {
                    d.a(bufferedInputStream);
                    d.a(bufferedOutputStream);
                    d.a(fileOutputStream);
                    this.f44558f.b(this.f44565m);
                    throw new IOException("parent be deleted!");
                }
            } else {
                bufferedOutputStream.flush();
                d.a(bufferedInputStream);
                d.a(bufferedOutputStream);
                this.f44558f.b(this.f44565m);
                if (!this.f44555c.equals(this.f44556d)) {
                    File file3 = new File(this.f44555c);
                    if (file2.renameTo(file3)) {
                        return file3;
                    }
                }
                return file2;
            }
        }
    }

    public boolean a() {
        jl.a.f63170a.d("book", "cancel by tag");
        this.f44557e.set(true);
        f();
        e();
        return c();
    }
}
