package o4;

import com.airbnb.lottie.model.content.ShapeTrimPath;
import java.util.ArrayList;
import java.util.List;

public class u implements c, p4.a.b {

    private final String f67599a;

    private final boolean f67600b;

    private final List f67601c = new ArrayList();

    private final ShapeTrimPath.Type f67602d;

    private final p4.a f67603e;

    private final p4.a f67604f;

    private final p4.a f67605g;

    public u(com.airbnb.lottie.model.layer.a aVar, ShapeTrimPath shapeTrimPath) {
        this.f67599a = shapeTrimPath.c();
        this.f67600b = shapeTrimPath.g();
        this.f67602d = shapeTrimPath.f();
        p4.d dVarA = shapeTrimPath.e().a();
        this.f67603e = dVarA;
        p4.d dVarA2 = shapeTrimPath.b().a();
        this.f67604f = dVarA2;
        p4.d dVarA3 = shapeTrimPath.d().a();
        this.f67605g = dVarA3;
        aVar.i(dVarA);
        aVar.i(dVarA2);
        aVar.i(dVarA3);
        dVarA.a(this);
        dVarA2.a(this);
        dVarA3.a(this);
    }

    @Override
    public void a() {
        for (int i10 = 0; i10 < this.f67601c.size(); i10++) {
            ((p4.a.b) this.f67601c.get(i10)).a();
        }
    }

    void c(p4.a.b bVar) {
        this.f67601c.add(bVar);
    }

    public p4.a d() {
        return this.f67604f;
    }

    public p4.a g() {
        return this.f67605g;
    }

    public p4.a i() {
        return this.f67603e;
    }

    ShapeTrimPath.Type j() {
        return this.f67602d;
    }

    public boolean k() {
        return this.f67600b;
    }

    @Override
    public void b(List list, List list2) {
    }
}
