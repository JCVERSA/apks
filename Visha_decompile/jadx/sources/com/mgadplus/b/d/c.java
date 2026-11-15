package com.mgadplus.b.d;

import com.mgadplus.mgutil.SourceKitLogger;
import defpackage.b2d;
import defpackage.r5d;
import defpackage.x1d;
import java.util.List;

public class c implements Runnable {
    private static final String e = "c";
    private int a = 0;
    private r5d b;
    private int c;
    private x1d.b d;
    private long f;

    public c(r5d r5dVar, int i, long j, x1d.b bVar) {
        this.b = r5dVar;
        this.c = i;
        this.f = j;
        this.d = bVar;
    }

    private void c() {
        this.a = 2;
        String str = e;
        SourceKitLogger.a(str, "start free");
        try {
            try {
                r5d r5dVar = this.b;
                if (r5dVar != null) {
                    long j = this.f;
                    if (j > 0) {
                        List<com.mgmi.db.dao3.c> listA = r5dVar.a(j);
                        if (listA != null && listA.size() > 0) {
                            for (com.mgmi.db.dao3.c cVar : listA) {
                                this.b.a(cVar);
                                if (b2d.a(cVar.c())) {
                                    b2d.b(cVar.c());
                                }
                            }
                            if (this.d != null) {
                                SourceKitLogger.a(e, "onFreeSizeComplete");
                                this.d.a();
                            }
                        }
                        SourceKitLogger.a(e, "onFree finnaly");
                        this.a = 4;
                        return;
                    }
                }
                SourceKitLogger.a(str, "free error freeSize=" + this.f);
                x1d.b bVar = this.d;
                if (bVar != null) {
                    bVar.b();
                }
                SourceKitLogger.a(str, "onFree finnaly");
                this.a = 4;
            } catch (Exception unused) {
                x1d.b bVar2 = this.d;
                if (bVar2 != null) {
                    bVar2.b();
                }
            }
        } catch (Throwable th) {
            SourceKitLogger.a(e, "onFree finnaly");
            this.a = 4;
            throw th;
        }
    }

    public boolean a() {
        int i = this.a;
        if (i == 0 || i == 4) {
            return false;
        }
        SourceKitLogger.a(e, "FreeSizeTask is running");
        return true;
    }

    public void b() {
        this.a = 1;
    }

    @Override
    public void run() {
        c();
    }
}
