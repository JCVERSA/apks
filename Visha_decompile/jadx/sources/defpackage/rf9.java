package defpackage;

import android.graphics.Path;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.model.content.ShapeTrimPath;
import com.airbnb.lottie.model.layer.a;
import java.util.ArrayList;
import java.util.List;

public class rf9 implements by7, ab0.b, vf5 {
    public final String b;
    public final boolean c;
    public final LottieDrawable d;
    public final yf9 e;
    public boolean f;
    public final Path a = new Path();
    public final vd1 g = new vd1();

    public rf9(LottieDrawable lottieDrawable, a aVar, bg9 bg9Var) {
        this.b = bg9Var.b();
        this.c = bg9Var.d();
        this.d = lottieDrawable;
        yf9 yf9VarH = bg9Var.c().h();
        this.e = yf9VarH;
        aVar.i(yf9VarH);
        yf9VarH.a(this);
    }

    private void b() {
        this.f = false;
        this.d.invalidateSelf();
    }

    @Override
    public void c(tf5 tf5Var, int i, List list, tf5 tf5Var2) {
        xp6.k(tf5Var, i, list, tf5Var2, this);
    }

    @Override
    public void e() {
        b();
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0026  */
    /* JADX WARN: Code duplicated, block: B:12:0x002a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:13:0x002c  */
    /* JADX WARN: Code duplicated, block: B:21:0x0036 A[SYNTHETIC] */
    @Override
    public void f(List list, List list2) {
        ArrayList arrayList = null;
        for (int i = 0; i < list.size(); i++) {
            bg1 bg1Var = (bg1) list.get(i);
            if (bg1Var instanceof bab) {
                bab babVar = (bab) bg1Var;
                if (babVar.j() == ShapeTrimPath.Type.SIMULTANEOUSLY) {
                    this.g.a(babVar);
                    babVar.b(this);
                } else if (!(bg1Var instanceof ag9)) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add((ag9) bg1Var);
                }
            } else if (!(bg1Var instanceof ag9)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add((ag9) bg1Var);
            }
        }
        this.e.r(arrayList);
    }

    @Override
    public String getName() {
        return this.b;
    }

    @Override
    public Path getPath() {
        if (this.f && !this.e.k()) {
            return this.a;
        }
        this.a.reset();
        if (this.c) {
            this.f = true;
            return this.a;
        }
        Path path = (Path) this.e.h();
        if (path == null) {
            return this.a;
        }
        this.a.set(path);
        this.a.setFillType(Path.FillType.EVEN_ODD);
        this.g.b(this.a);
        this.f = true;
        return this.a;
    }

    @Override
    public void h(Object obj, iu5 iu5Var) {
        if (obj == it5.P) {
            this.e.o(iu5Var);
        }
    }
}
