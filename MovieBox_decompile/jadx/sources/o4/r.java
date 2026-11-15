package o4;

import android.graphics.Path;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.model.content.ShapeTrimPath;
import com.airbnb.lottie.p0;
import java.util.ArrayList;
import java.util.List;

public class r implements m, p4.a.b, k {

    private final String f67588b;

    private final boolean f67589c;

    private final LottieDrawable f67590d;

    private final p4.m f67591e;

    private boolean f67592f;

    private final Path f67587a = new Path();

    private final b f67593g = new b();

    public r(LottieDrawable lottieDrawable, com.airbnb.lottie.model.layer.a aVar, t4.l lVar) {
        this.f67588b = lVar.b();
        this.f67589c = lVar.d();
        this.f67590d = lottieDrawable;
        p4.m mVarA = lVar.c().a();
        this.f67591e = mVarA;
        aVar.i(mVarA);
        mVarA.a(this);
    }

    private void g() {
        this.f67592f = false;
        this.f67590d.invalidateSelf();
    }

    @Override
    public void a() {
        g();
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0026  */
    /* JADX WARN: Code duplicated, block: B:12:0x002a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:13:0x002c  */
    /* JADX WARN: Code duplicated, block: B:21:0x0036 A[SYNTHETIC] */
    @Override
    public void b(List list, List list2) {
        ArrayList arrayList = null;
        for (int i10 = 0; i10 < list.size(); i10++) {
            c cVar = (c) list.get(i10);
            if (cVar instanceof u) {
                u uVar = (u) cVar;
                if (uVar.j() == ShapeTrimPath.Type.SIMULTANEOUSLY) {
                    this.f67593g.a(uVar);
                    uVar.c(this);
                } else if (!(cVar instanceof s)) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add((s) cVar);
                }
            } else if (!(cVar instanceof s)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add((s) cVar);
            }
        }
        this.f67591e.r(arrayList);
    }

    @Override
    public void c(r4.d dVar, int i10, List list, r4.d dVar2) {
        x4.k.k(dVar, i10, list, dVar2, this);
    }

    @Override
    public void d(Object obj, y4.c cVar) {
        if (obj == p0.P) {
            this.f67591e.o(cVar);
        }
    }

    @Override
    public String getName() {
        return this.f67588b;
    }

    @Override
    public Path getPath() {
        if (this.f67592f && !this.f67591e.k()) {
            return this.f67587a;
        }
        this.f67587a.reset();
        if (this.f67589c) {
            this.f67592f = true;
            return this.f67587a;
        }
        Path path = (Path) this.f67591e.h();
        if (path == null) {
            return this.f67587a;
        }
        this.f67587a.set(path);
        this.f67587a.setFillType(Path.FillType.EVEN_ODD);
        this.f67593g.b(this.f67587a);
        this.f67592f = true;
        return this.f67587a;
    }
}
