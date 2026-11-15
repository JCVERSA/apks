package com.transsion.http.download;

import android.os.Looper;
import androidx.annotation.NonNull;
import defpackage.abd;
import defpackage.ct8;
import defpackage.hf1;
import defpackage.kod;
import defpackage.ky2;
import defpackage.lv4;
import defpackage.x7d;
import defpackage.xx2;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.atomic.AtomicBoolean;

public class DownLoaderTask implements Runnable, Comparable<DownLoaderTask> {
    final ct8 a;
    final ky2 b;
    private String c;
    private String d;
    private final Object g;
    private String h;
    private long i;
    private boolean j;
    private kod k;
    private volatile boolean l;
    private final x7d m;
    private xx2 n;
    private final AtomicBoolean e = new AtomicBoolean();
    private final abd f = new abd();
    private long o = 0;

    public DownLoaderTask(ct8 ct8Var, ky2 ky2Var) {
        this.a = ct8Var;
        this.j = ct8Var.c().k();
        this.g = ct8Var.c().m();
        this.c = ct8Var.c().i();
        String strN = ct8Var.c().n();
        this.h = strN;
        this.m = new x7d(strN);
    }

    private synchronized void b() {
        if (!this.l) {
            this.e.get();
        }
    }

    private synchronized void c() {
        if (!this.l) {
            this.e.get();
        }
    }

    public File autoRename(File file) {
        if (this.c.equals(this.d)) {
            return file;
        }
        File file2 = new File(this.c);
        return file.renameTo(file2) ? file2 : file;
    }

    public boolean cancel() {
        hf1.a.d("book", "cancel by tag");
        this.e.set(true);
        b();
        a();
        return isCancelled();
    }

    @Override
    public int compareTo(@NonNull DownLoaderTask downLoaderTask) {
        return 0;
    }

    public Object getTag() {
        return this.g;
    }

    public boolean isCancelled() {
        return this.e.get();
    }

    public boolean isDone() {
        return isCancelled() || this.l;
    }

    public boolean isPaused() {
        boolean z = this.e.get();
        if (z) {
            c();
        }
        return z;
    }

    public boolean pause() {
        this.e.set(true);
        a();
        return isPaused();
    }

    @Override
    public void run() {
        startLoad();
    }

    public void setListener(xx2 xx2Var) {
    }

    public void startLoad() {
        if (isCancelled()) {
            return;
        }
        kod kodVarD = this.a.d();
        this.k = kodVarD;
        try {
            try {
                File fileA = a(kodVarD);
                if (fileA == null || !fileA.exists() || fileA.length() > 0) {
                    isCancelled();
                } else {
                    isCancelled();
                }
            } catch (Throwable th) {
                kodVarD.a();
                throw th;
            }
        } catch (Throwable unused) {
            File file = new File(this.c);
            if (!file.exists() || file.length() > 0) {
                isCancelled();
            } else {
                isCancelled();
            }
        }
        kodVarD.a();
        if (isCancelled()) {
            return;
        }
        this.l = true;
    }

    private File a(kod kodVar) throws Throwable {
        this.f.a(this.m);
        this.d = this.c + ".tmp";
        File file = new File(this.d);
        if (!file.exists()) {
            File parentFile = file.getParentFile();
            if (!parentFile.exists() && !parentFile.mkdirs()) {
                throw new IOException("can not create dir: " + parentFile.getAbsolutePath());
            }
        } else if (this.j) {
            this.o = file.length();
        }
        this.a.c().f().put("RANGE", "bytes=" + this.o + "-");
        if (isCancelled()) {
            return null;
        }
        kodVar.h();
        this.i = kodVar.c();
        InputStream inputStreamD = kodVar.d();
        File file2 = new File(this.d);
        FileOutputStream fileOutputStream = this.j ? new FileOutputStream(file2, true) : new FileOutputStream(file2);
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStreamD);
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(fileOutputStream);
        if (isCancelled()) {
            return null;
        }
        byte[] bArr = new byte[4096];
        do {
            int i = bufferedInputStream.read(bArr);
            if (i == -1) {
                bufferedOutputStream.flush();
                lv4.a(bufferedInputStream);
                lv4.a(bufferedOutputStream);
                this.f.b(this.m);
                return autoRename(file2);
            }
            if (!file2.getParentFile().exists()) {
                lv4.a(bufferedInputStream);
                lv4.a(bufferedOutputStream);
                lv4.a(fileOutputStream);
                this.f.b(this.m);
                throw new IOException("parent be deleted!");
            }
            bufferedOutputStream.write(bArr, 0, i);
        } while (!isCancelled());
        return null;
    }

    private void a() {
        if (this.k != null) {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                new Thread(new a(this)).start();
            } else {
                this.k.a();
            }
        }
    }
}
