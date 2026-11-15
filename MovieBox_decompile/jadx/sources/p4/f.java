package p4;

import java.util.List;

public class f extends g {
    public f(List list) {
        super(list);
    }

    public int q() {
        return r(b(), d());
    }

    int r(y4.a aVar, float f10) {
        Integer num;
        if (aVar.f76135b == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        int iH = aVar.f76136c == null ? aVar.h() : aVar.e();
        y4.c cVar = this.f69005e;
        return (cVar == null || (num = (Integer) cVar.b(aVar.f76140g, aVar.f76141h.floatValue(), (Integer) aVar.f76135b, Integer.valueOf(iH), f10, e(), f())) == null) ? x4.k.j(aVar.h(), iH, f10) : num.intValue();
    }

    @Override
    public Integer i(y4.a aVar, float f10) {
        return Integer.valueOf(r(aVar, f10));
    }
}
