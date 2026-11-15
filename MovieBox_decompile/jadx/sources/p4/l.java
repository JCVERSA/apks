package p4;

import java.util.List;

public class l extends g {

    private final y4.d f69041i;

    public l(List list) {
        super(list);
        this.f69041i = new y4.d();
    }

    @Override
    public y4.d i(y4.a aVar, float f10) {
        Object obj;
        y4.d dVar;
        Object obj2 = aVar.f76135b;
        if (obj2 == null || (obj = aVar.f76136c) == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        y4.d dVar2 = (y4.d) obj2;
        y4.d dVar3 = (y4.d) obj;
        y4.c cVar = this.f69005e;
        if (cVar != null && (dVar = (y4.d) cVar.b(aVar.f76140g, aVar.f76141h.floatValue(), dVar2, dVar3, f10, e(), f())) != null) {
            return dVar;
        }
        this.f69041i.d(x4.k.i(dVar2.b(), dVar3.b(), f10), x4.k.i(dVar2.c(), dVar3.c(), f10));
        return this.f69041i;
    }
}
