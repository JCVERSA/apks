package defpackage;

import android.content.Context;
import android.text.TextUtils;
import com.mgadplus.mgutil.SourceKitLogger;
import com.mgmi.db.dao3.c;
import java.io.File;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class x1d {
    public static x1d f = null;
    public static Context g = null;
    public static final String h = "x1d";
    public a2d a;
    public r5d b;
    public o8d c;
    public ExecutorService d = Executors.newCachedThreadPool();
    public y1d e;

    public static class a {
        public String a;
        public String b;
        public z1d c;

        public a a(z1d z1dVar) {
            this.c = z1dVar;
            return this;
        }

        public a b(String str) {
            this.a = str;
            return this;
        }

        public String c() {
            return this.a;
        }

        public a d(String str) {
            this.b = str;
            return this;
        }

        public String e() {
            return this.b;
        }

        public z1d f() {
            return this.c;
        }
    }

    public interface b {
        void a();

        void b();
    }

    public x1d(Context context) {
        this.e = y1d.a(context);
    }

    public static x1d a(Context context) {
        if (context == null) {
            return null;
        }
        if (g == null) {
            g = context.getApplicationContext();
        }
        if (f == null) {
            synchronized (x1d.class) {
                try {
                    if (f == null) {
                        f = new x1d(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f;
    }

    public c b(String str) {
        if (this.b == null) {
            this.b = new s5d(this.e, this);
        }
        return this.b.a(str);
    }

    public void c() {
        this.b = new s5d(this.e, this);
    }

    public void d(long j, b bVar, String str, int i) {
        if (this.a == null) {
            this.a = new a2d(this.d, j());
        }
        this.a.c(j, bVar);
    }

    public void e(a aVar) {
        if (this.e == null || this.d == null) {
            SourceKitLogger.a("mgmi", "MgmiDownloadManager entry null");
        } else {
            n(aVar);
        }
    }

    public void f(a aVar, int i) {
        SourceKitLogger.a(h, "notifyError reason = " + i);
        if (i == 7) {
            return;
        }
        if (aVar != null) {
            i(aVar.c(), true);
        }
        if (aVar == null || aVar.f() == null) {
            return;
        }
        aVar.f().a(i, aVar.c());
    }

    public void g(a aVar, long j, long j2) {
        if (aVar == null || aVar.f() == null) {
            return;
        }
        aVar.f().a(j, j2, aVar.c());
    }

    public void h(com.mgadplus.b.d.b bVar) {
        SourceKitLogger.a(h, "runTask task");
        bVar.e();
        this.d.execute(bVar);
    }

    public void i(String str, boolean z) {
        String str2 = h;
        SourceKitLogger.a(str2, "deleteFile");
        com.mgadplus.b.d.b bVarA = this.c.a(str);
        if (bVarA != null && !z && bVarA.f()) {
            SourceKitLogger.a(str2, "task is running !!!!!");
            return;
        }
        this.c.d(bVarA);
        c cVarA = this.b.a(str);
        if (cVarA != null) {
            this.b.a(cVarA);
            if (this.a == null) {
                this.a = new a2d(this.d, j());
            }
            this.a.b(cVarA.c(), null);
        }
    }

    public final r5d j() {
        if (this.b == null) {
            this.b = new s5d(this.e, this);
        }
        return this.b;
    }

    public String k(String str) {
        c cVarB = b(str);
        if (cVarB == null || !cVarB.j()) {
            return null;
        }
        String strC = cVarB.c();
        if (TextUtils.isEmpty(strC)) {
            return null;
        }
        if (!new File(strC).exists()) {
            SourceKitLogger.a("download1", "文件不存在");
            return null;
        }
        SourceKitLogger.a("download1", "获取到了数据中的记录：" + strC);
        return strC;
    }

    public void l(a aVar) {
        o8d o8dVar = this.c;
        if (o8dVar != null) {
            o8dVar.c(aVar, true);
        }
        if (aVar == null || aVar.f() == null) {
            return;
        }
        aVar.f().a(aVar.c());
    }

    public final synchronized void m(a aVar) {
        try {
            if (this.c == null) {
                this.c = new o8d(this.e, j(), this);
            }
            this.c.e(aVar);
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void n(a aVar) {
        m(aVar);
    }
}
