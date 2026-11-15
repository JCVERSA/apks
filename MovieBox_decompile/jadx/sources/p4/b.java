package p4;

import java.util.List;

public class b extends g {
    public b(List list) {
        super(list);
    }

    public int q() {
        return r(b(), d());
    }

    public int r(y4.a aVar, float f10) {
        Float f11;
        Integer num;
        if (aVar.f76135b == null || aVar.f76136c == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        y4.c cVar = this.f69005e;
        return (cVar == null || (f11 = aVar.f76141h) == null || (num = (Integer) cVar.b(aVar.f76140g, f11.floatValue(), (Integer) aVar.f76135b, (Integer) aVar.f76136c, f10, e(), f())) == null) ? x4.d.c(x4.k.b(f10, 0.0f, 1.0f), ((Integer) aVar.f76135b).intValue(), ((Integer) aVar.f76136c).intValue()) : num.intValue();
    }

    @Override
    public Integer i(y4.a aVar, float f10) {
        return Integer.valueOf(r(aVar, f10));
    }
}
