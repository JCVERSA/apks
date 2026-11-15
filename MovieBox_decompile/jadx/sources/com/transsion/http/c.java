package com.transsion.http;

import android.os.Looper;
import androidx.annotation.NonNull;
import com.transsion.http.impl.r;
import el.b;
import el.d;
import fl.h;
import fl.j;
import il.f;
import java.io.File;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicBoolean;
import kl.a;

public class c implements Runnable, Comparable<c> {

    private final r f44568a;

    private final f f44569b;

    private final AtomicBoolean f44570c = new AtomicBoolean();

    private final h f44571d;

    private volatile boolean f44572e;

    public c(b bVar, r rVar) {
        this.f44568a = rVar;
        f fVarD = bVar.d();
        this.f44569b = fVarD;
        this.f44571d = bVar.b();
        new WeakReference(fVarD.e().m());
    }

    private void b() throws IOException {
        try {
            this.f44569b.i();
            if (a()) {
                return;
            }
            byte[] bArrD = a.d(a.b(this.f44569b.c()));
            r rVar = this.f44568a;
            if (rVar != null) {
                rVar.c(this.f44569b.g(), bArrD);
            }
            if (this.f44569b.e().o() && this.f44571d != null) {
                ((fl.b) this.f44571d).c(new d(this.f44569b.e().n()), new j(new fl.a(), ByteBuffer.wrap(bArrD)));
            }
        } finally {
            this.f44569b.a();
        }
    }

    private synchronized void c() {
        r rVar;
        if (!this.f44572e && this.f44570c.get() && (rVar = this.f44568a) != null) {
            rVar.e();
        }
    }

    public boolean a() {
        boolean z10 = this.f44570c.get();
        if (z10) {
            c();
        }
        return z10;
    }

    @Override
    public int compareTo(@NonNull c cVar) {
        return 0;
    }

    /* JADX WARN: Code duplicated, block: B:54:0x0105 A[PHI: r0
      0x0105: PHI (r0v5 fl.h) = (r0v4 fl.h), (r0v11 fl.h) binds: [B:53:0x0103, B:45:0x00e5] A[DONT_GENERATE, DONT_INLINE]] */
    @Override
    public void run() {
        h hVar;
        r rVar;
        h hVar2;
        File fileA;
        jl.c cVar = jl.a.f63170a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("run Current Looper:");
        sb2.append(Looper.myLooper() == Looper.getMainLooper() ? "Main Looper" : "thread Looper");
        cVar.d("book", sb2.toString());
        if (a()) {
            return;
        }
        r rVar2 = this.f44568a;
        if (rVar2 != null) {
            rVar2.a();
        }
        try {
            try {
                if (!this.f44569b.e().o() || (hVar2 = this.f44571d) == null || (fileA = ((fl.b) hVar2).a(new d(this.f44569b.e().n()))) == null || !fileA.exists() || fileA.length() <= 0) {
                    b();
                } else {
                    jl.c cVar2 = jl.a.f63170a;
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("image url:");
                    sb3.append(this.f44569b.e().n());
                    cVar2.d("image", sb3.toString());
                    jl.c cVar3 = jl.a.f63170a;
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append("image path:");
                    sb4.append(fileA.getPath());
                    cVar3.d("image", sb4.toString());
                    if (a()) {
                        this.f44569b.a();
                        h hVar3 = this.f44571d;
                        if (hVar3 != null) {
                            ((fl.b) hVar3).b();
                            return;
                        }
                        return;
                    }
                    r rVar3 = this.f44568a;
                    if (rVar3 != null) {
                        rVar3.c(250, a.d(a.a(fileA)));
                    }
                }
                this.f44569b.a();
                hVar = this.f44571d;
                if (hVar != null) {
                    ((fl.b) hVar).b();
                }
            } catch (Exception e10) {
                if (!a() && (rVar = this.f44568a) != null) {
                    rVar.d(this.f44569b.g(), null, e10);
                }
                this.f44569b.a();
                hVar = this.f44571d;
                if (hVar != null) {
                    ((fl.b) hVar).b();
                }
            }
            if (a()) {
                return;
            }
            r rVar4 = this.f44568a;
            if (rVar4 != null) {
                rVar4.b();
            }
            this.f44572e = true;
        } catch (Throwable th2) {
            this.f44569b.a();
            h hVar4 = this.f44571d;
            if (hVar4 != null) {
                ((fl.b) hVar4).b();
            }
            throw th2;
        }
    }
}
