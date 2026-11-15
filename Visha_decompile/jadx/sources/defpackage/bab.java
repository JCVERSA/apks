package defpackage;

import com.airbnb.lottie.model.content.ShapeTrimPath;
import com.airbnb.lottie.model.layer.a;
import java.util.ArrayList;
import java.util.List;

public class bab implements bg1, ab0.b {
    public final String a;
    public final boolean b;
    public final List c = new ArrayList();
    public final ShapeTrimPath.Type d;
    public final ab0 e;
    public final ab0 f;
    public final ab0 g;

    public bab(a aVar, ShapeTrimPath shapeTrimPath) {
        this.a = shapeTrimPath.c();
        this.b = shapeTrimPath.g();
        this.d = shapeTrimPath.f();
        xy3 xy3VarH = shapeTrimPath.e().h();
        this.e = xy3VarH;
        xy3 xy3VarH2 = shapeTrimPath.b().h();
        this.f = xy3VarH2;
        xy3 xy3VarH3 = shapeTrimPath.d().h();
        this.g = xy3VarH3;
        aVar.i(xy3VarH);
        aVar.i(xy3VarH2);
        aVar.i(xy3VarH3);
        xy3VarH.a(this);
        xy3VarH2.a(this);
        xy3VarH3.a(this);
    }

    public void b(ab0.b bVar) {
        this.c.add(bVar);
    }

    public ab0 c() {
        return this.f;
    }

    @Override
    public void e() {
        for (int i = 0; i < this.c.size(); i++) {
            ((ab0.b) this.c.get(i)).e();
        }
    }

    @Override
    public void f(List list, List list2) {
    }

    public ab0 h() {
        return this.g;
    }

    public ab0 i() {
        return this.e;
    }

    public ShapeTrimPath.Type j() {
        return this.d;
    }

    public boolean k() {
        return this.b;
    }
}
