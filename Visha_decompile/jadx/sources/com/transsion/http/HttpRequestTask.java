package com.transsion.http;

import android.os.Looper;
import androidx.annotation.NonNull;
import defpackage.ct8;
import defpackage.dv4;
import defpackage.fkd;
import defpackage.gnd;
import defpackage.h9d;
import defpackage.hf1;
import defpackage.j6d;
import defpackage.jo0;
import defpackage.kod;
import defpackage.t2d;
import defpackage.up5;
import java.io.File;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicBoolean;

public class HttpRequestTask implements Runnable, Comparable<HttpRequestTask> {
    private final dv4 a;
    private final kod b;
    private final AtomicBoolean c = new AtomicBoolean();
    private final fkd d;
    private volatile boolean e;
    private final WeakReference<Object> f;
    private final boolean g;

    public HttpRequestTask(ct8 ct8Var, dv4 dv4Var) {
        this.a = dv4Var;
        kod kodVarD = ct8Var.d();
        this.b = kodVarD;
        this.d = ct8Var.b();
        this.f = new WeakReference<>(kodVarD.e().m());
        this.g = ct8Var.c().o();
    }

    private void a() throws IOException {
        dv4 dv4Var;
        dv4 dv4Var2;
        try {
            this.b.h();
            if (isCancelled()) {
                return;
            }
            byte[] bArrD = jo0.d(jo0.b(this.b.d()));
            if (!this.g && (dv4Var2 = this.a) != null) {
                dv4Var2.g(this.b.f(), bArrD, this.b.g());
            }
            String strB = (!this.b.e().p() || this.d == null) ? null : ((j6d) this.d).b(new h9d(this.b.e().n()), new gnd(new t2d(), ByteBuffer.wrap(bArrD)));
            if (this.g && (dv4Var = this.a) != null) {
                dv4Var.a(this.b.f(), bArrD, strB);
            }
        } finally {
            this.b.a();
        }
    }

    private synchronized void b() {
        dv4 dv4Var;
        if (!this.e && this.c.get() && (dv4Var = this.a) != null) {
            dv4Var.f();
        }
    }

    public boolean cancel() {
        this.c.set(true);
        this.b.a();
        return isCancelled();
    }

    @Override
    public int compareTo(@NonNull HttpRequestTask httpRequestTask) {
        return 0;
    }

    public Object getTag() {
        return this.f;
    }

    public boolean isCancelled() {
        boolean z = this.c.get();
        if (z) {
            b();
        }
        return z;
    }

    public boolean isDone() {
        return isCancelled() || this.e;
    }

    /* JADX WARN: Code duplicated, block: B:57:0x0119 A[PHI: r0
      0x0119: PHI (r0v5 fkd) = (r0v4 fkd), (r0v11 fkd) binds: [B:56:0x0117, B:48:0x00f9] A[DONT_GENERATE, DONT_INLINE]] */
    @Override
    public void run() {
        fkd fkdVar;
        dv4 dv4Var;
        fkd fkdVar2;
        File fileA;
        up5 up5Var = hf1.a;
        StringBuilder sb = new StringBuilder();
        sb.append("run Current Looper:");
        sb.append(Looper.myLooper() == Looper.getMainLooper() ? "Main Looper" : "thread Looper");
        up5Var.d("book", sb.toString());
        if (isCancelled()) {
            return;
        }
        dv4 dv4Var2 = this.a;
        if (dv4Var2 != null) {
            dv4Var2.c();
        }
        try {
            try {
                if (!this.b.e().p() || (fkdVar2 = this.d) == null || (fileA = ((j6d) fkdVar2).a(new h9d(this.b.e().n()))) == null || !fileA.exists() || fileA.length() <= 0) {
                    a();
                } else {
                    up5 up5Var2 = hf1.a;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("image url:");
                    sb2.append(this.b.e().n());
                    up5Var2.d("image", sb2.toString());
                    up5 up5Var3 = hf1.a;
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("image path:");
                    sb3.append(fileA.getPath());
                    up5Var3.d("image", sb3.toString());
                    if (isCancelled()) {
                        this.b.a();
                        fkd fkdVar3 = this.d;
                        if (fkdVar3 != null) {
                            ((j6d) fkdVar3).c();
                            return;
                        }
                        return;
                    }
                    dv4 dv4Var3 = this.a;
                    if (dv4Var3 != null) {
                        if (this.g) {
                            dv4Var3.a(250, jo0.d(jo0.a(fileA)), fileA.getPath());
                        } else {
                            dv4Var3.b(250, jo0.d(jo0.a(fileA)));
                        }
                    }
                }
                this.b.a();
                fkdVar = this.d;
                if (fkdVar != null) {
                    ((j6d) fkdVar).c();
                }
            } catch (Exception e) {
                if (!isCancelled() && (dv4Var = this.a) != null) {
                    dv4Var.e(this.b.f(), null, e);
                }
                this.b.a();
                fkdVar = this.d;
                if (fkdVar != null) {
                    ((j6d) fkdVar).c();
                }
            }
            if (isCancelled()) {
                return;
            }
            dv4 dv4Var4 = this.a;
            if (dv4Var4 != null) {
                dv4Var4.d();
            }
            this.e = true;
        } catch (Throwable th) {
            this.b.a();
            fkd fkdVar4 = this.d;
            if (fkdVar4 != null) {
                ((j6d) fkdVar4).c();
            }
            throw th;
        }
    }
}
