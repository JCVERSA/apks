package defpackage;

import android.text.TextUtils;
import com.mgadplus.b.d.a;
import com.mgadplus.b.d.c;
import com.mgadplus.mgutil.SourceKitLogger;
import java.util.concurrent.ExecutorService;

public class a2d {
    public ExecutorService a;
    public r5d b;
    public c c;

    public a2d(ExecutorService executorService, r5d r5dVar) {
        this.a = executorService;
        this.b = r5dVar;
    }

    public final void a(c cVar) {
        cVar.b();
        ExecutorService executorService = this.a;
        if (executorService != null) {
            executorService.execute(cVar);
        }
    }

    public void b(String str, n8d n8dVar) {
        if ((str == null || TextUtils.isEmpty(str)) && n8dVar != null) {
            n8dVar.a(3, str);
        }
        if (this.a != null) {
            this.a.execute(new a(str, n8dVar));
        } else if (n8dVar != null) {
            n8dVar.a(2, str);
        }
    }

    public boolean c(long j, x1d.b bVar) {
        SourceKitLogger.a("DeleteFileManager", "freeSize");
        if (this.b == null) {
            SourceKitLogger.a("DeleteFileManager", "no mDownloadRecord");
            bVar.b();
            return false;
        }
        c cVar = this.c;
        if (cVar != null && cVar.a()) {
            SourceKitLogger.a("DeleteFileManager", "");
            bVar.b();
            return false;
        }
        c cVar2 = new c(this.b, 1, j, bVar);
        this.c = cVar2;
        a(cVar2);
        return true;
    }
}
