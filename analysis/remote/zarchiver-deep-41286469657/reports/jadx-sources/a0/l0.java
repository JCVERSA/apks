package a0;

import android.util.SparseArray;
import java.lang.ref.WeakReference;
import ru.zdevs.zarchiver.ZArchiver;

public final class l0 extends w0.c {

    public final WeakReference<g0.y> f60e;

    public final h0.h f61f;

    public final h0.h f62g;

    public final String[] f63h;

    public l0(g0.y yVar, h0.h hVar, h0.h hVar2, String[] strArr) {
        this.f60e = new WeakReference<>(yVar);
        this.f61f = hVar;
        this.f62g = hVar2;
        this.f63h = strArr;
        b.e(hVar);
    }

    @Override
    public final w0.a.b f() {
        boolean zG;
        h0.h hVar = this.f61f;
        try {
            String[] strArr = this.f63h;
            if (strArr != null) {
                zG = q0.a.i(this.f62g, strArr);
            } else {
                zG = c.E(hVar.f1108c) == 6 ? q0.a.g(hVar) : q0.a.j(hVar, ZArchiver.class);
            }
        } catch (q0.a.b e2) {
            ZArchiver zArchiverZ = ZArchiver.z();
            if (zArchiverZ != null) {
                zArchiverZ.startActivityForResult(e2.f1373a, 1203);
            }
            zG = false;
        }
        g0.y yVar = this.f60e.get();
        if (yVar != null) {
            SparseArray<Object> sparseArray = yVar.f964e;
            if ((sparseArray == null ? null : sparseArray.get(0)) == this) {
                yVar.o(0, null);
            }
            if (!zG) {
                yVar.f();
            }
        }
        return null;
    }
}
