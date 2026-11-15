package defpackage;

import androidx.collection.ArrayMap;
import com.lzy.okgo.model.Progress;
import com.yandex.div.core.state.DivStatePath;
import java.util.Iterator;
import java.util.List;

public final class sq2 {
    public final lq2 a;
    public final rga b;
    public final ArrayMap c;

    public sq2(lq2 lq2Var, rga rgaVar) {
        y45.j(lq2Var, "cache");
        y45.j(rgaVar, "temporaryCache");
        this.a = lq2Var;
        this.b = rgaVar;
        this.c = new ArrayMap();
    }

    public final uv2 a(ei2 ei2Var) {
        uv2 uv2Var;
        y45.j(ei2Var, Progress.TAG);
        synchronized (this.c) {
            try {
                uv2Var = (uv2) this.c.get(ei2Var);
                if (uv2Var == null) {
                    String strD = this.a.d(ei2Var.a());
                    if (strD != null) {
                        y45.i(strD, "getRootState(tag.id)");
                        uv2Var = new uv2(Long.parseLong(strD));
                    } else {
                        uv2Var = null;
                    }
                    this.c.put(ei2Var, uv2Var);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return uv2Var;
    }

    public final void b(List list) {
        y45.j(list, "tags");
        if (list.isEmpty()) {
            this.c.clear();
            this.a.clear();
            this.b.a();
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ei2 ei2Var = (ei2) it.next();
            this.c.remove(ei2Var);
            this.a.b(ei2Var.a());
            rga rgaVar = this.b;
            String strA = ei2Var.a();
            y45.i(strA, "tag.id");
            rgaVar.e(strA);
        }
    }

    public final void c(ei2 ei2Var, long j, boolean z) {
        y45.j(ei2Var, Progress.TAG);
        if (y45.e(ei2.b, ei2Var)) {
            return;
        }
        synchronized (this.c) {
            try {
                uv2 uv2VarA = a(ei2Var);
                this.c.put(ei2Var, uv2VarA == null ? new uv2(j) : new uv2(j, uv2VarA.b()));
                rga rgaVar = this.b;
                String strA = ei2Var.a();
                y45.i(strA, "tag.id");
                rgaVar.c(strA, String.valueOf(j));
                if (!z) {
                    this.a.e(ei2Var.a(), String.valueOf(j));
                }
                zfb zfbVar = zfb.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void d(String str, DivStatePath divStatePath, boolean z) {
        y45.j(str, "cardId");
        y45.j(divStatePath, "divStatePath");
        String strH = divStatePath.h();
        String strF = divStatePath.f();
        if (strH == null || strF == null) {
            return;
        }
        synchronized (this.c) {
            try {
                this.b.d(str, strH, strF);
                if (!z) {
                    this.a.c(str, strH, strF);
                }
                zfb zfbVar = zfb.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
