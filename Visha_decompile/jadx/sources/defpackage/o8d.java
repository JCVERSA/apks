package defpackage;

import android.text.TextUtils;
import com.mgadplus.b.d.b;
import com.mgadplus.mgutil.SourceKitLogger;
import com.mgmi.db.dao3.c;
import java.io.File;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;

public class o8d {
    public final String a = o8d.class.getSimpleName();
    public Map b = new ConcurrentHashMap();
    public Object c = new Object();
    public y1d d;
    public r5d e;
    public x1d f;

    public o8d(y1d y1dVar, r5d r5dVar, x1d x1dVar) {
        this.d = y1dVar;
        this.e = r5dVar;
        this.f = x1dVar;
        b();
    }

    public b a(String str) {
        b bVar = (b) this.b.get(str);
        if (str == null || bVar == null) {
            return null;
        }
        return bVar;
    }

    public final void b() {
    }

    public void c(x1d.a aVar, boolean z) {
        if (aVar == null || aVar.c() == null || TextUtils.isEmpty(aVar.c())) {
            SourceKitLogger.a(this.a, "remove task fail");
            return;
        }
        b bVar = (b) this.b.get(aVar.c());
        if (bVar == null || (bVar.f() && !z)) {
            SourceKitLogger.a(this.a, "remove task fail because it is run");
            return;
        }
        if (z && bVar.f()) {
            bVar.c();
        }
        synchronized (this.c) {
            try {
                if (this.b.containsKey(bVar.a().c())) {
                    this.b.remove(bVar.a().c());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void d(b bVar) {
        SourceKitLogger.a(this.a, "removeTask----");
        if (bVar.f()) {
            bVar.c();
        }
        if (bVar.a() == null || bVar.a().c() == null || TextUtils.isEmpty(bVar.a().c())) {
            SourceKitLogger.a(this.a, "remove task fail");
            return;
        }
        synchronized (this.c) {
            try {
                if (this.b.containsKey(bVar.a().c())) {
                    this.b.remove(bVar.a().c());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean e(x1d.a aVar) {
        SourceKitLogger.a(this.a, "start DownloadTaskManager url = " + aVar.c());
        c cVarA = this.e.a(aVar.c());
        if (cVarA == null) {
            SourceKitLogger.a(this.a, "start info null");
            c cVar = new c();
            cVar.a(0L);
            cVar.a(aVar.c());
            cVar.b(0L);
            cVar.c(System.currentTimeMillis());
            cVar.c(UUID.randomUUID().toString());
            cVar.b(cVar.d(aVar.e()));
            this.e.b(cVar);
        } else if (cVarA.j()) {
            String strC = cVarA.c();
            if (!TextUtils.isEmpty(strC) && new File(strC).exists()) {
                return true;
            }
        }
        return g(aVar);
    }

    public final void f(b bVar) {
        b bVar2;
        x1d x1dVar;
        if (bVar == null) {
            return;
        }
        synchronized (this.c) {
            try {
                bVar2 = (b) this.b.get(bVar.a().c());
                if (bVar2 == null) {
                    this.b.put(bVar.a().c(), bVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (bVar2 == null && (x1dVar = this.f) != null) {
            x1dVar.h(bVar);
        } else {
            if (bVar2 == null || this.f == null) {
                return;
            }
            h(bVar2);
        }
    }

    public final boolean g(x1d.a aVar) {
        b bVar;
        if (!t5d.a(aVar.c())) {
            SourceKitLogger.a(this.a, "startInter but url invalid");
            x1d x1dVar = this.f;
            if (x1dVar == null) {
                return false;
            }
            x1dVar.f(aVar, 6);
            return false;
        }
        synchronized (this.c) {
            bVar = (b) this.b.get(aVar.c());
        }
        if (bVar != null) {
            h(bVar);
            return true;
        }
        b bVar2 = new b(aVar, this.e, this.f, this);
        bVar2.a(aVar);
        f(bVar2);
        return true;
    }

    public final void h(b bVar) {
        if (bVar.f()) {
            x1d x1dVar = this.f;
            if (x1dVar != null) {
                x1dVar.f(bVar.a(), 7);
                return;
            }
            return;
        }
        x1d x1dVar2 = this.f;
        if (x1dVar2 != null) {
            x1dVar2.h(bVar);
        }
    }
}
