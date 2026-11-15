package p4;

import android.graphics.Path;
import java.util.List;
import o4.s;

public class m extends a {

    private final t4.i f69042i;

    private final Path f69043j;

    private Path f69044k;

    private Path f69045l;

    private List f69046m;

    public m(List list) {
        super(list);
        this.f69042i = new t4.i();
        this.f69043j = new Path();
    }

    @Override
    public Path i(y4.a aVar, float f10) {
        t4.i iVar = (t4.i) aVar.f76135b;
        t4.i iVar2 = (t4.i) aVar.f76136c;
        this.f69042i.c(iVar, iVar2 == null ? iVar : iVar2, f10);
        t4.i iVarE = this.f69042i;
        List list = this.f69046m;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                iVarE = ((s) this.f69046m.get(size)).e(iVarE);
            }
        }
        x4.k.h(iVarE, this.f69043j);
        if (this.f69005e == null) {
            return this.f69043j;
        }
        if (this.f69044k == null) {
            this.f69044k = new Path();
            this.f69045l = new Path();
        }
        x4.k.h(iVar, this.f69044k);
        if (iVar2 != null) {
            x4.k.h(iVar2, this.f69045l);
        }
        y4.c cVar = this.f69005e;
        float f11 = aVar.f76140g;
        float fFloatValue = aVar.f76141h.floatValue();
        Path path = this.f69044k;
        return (Path) cVar.b(f11, fFloatValue, path, iVar2 == null ? path : this.f69045l, f10, e(), f());
    }

    public void r(List list) {
        this.f69046m = list;
    }
}
