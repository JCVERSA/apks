package p4;

import java.util.List;

public class d extends g {
    public d(List list) {
        super(list);
    }

    public float q() {
        return r(b(), d());
    }

    float r(y4.a aVar, float f10) {
        Float f11;
        if (aVar.f76135b == null || aVar.f76136c == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        y4.c cVar = this.f69005e;
        return (cVar == null || (f11 = (Float) cVar.b(aVar.f76140g, aVar.f76141h.floatValue(), (Float) aVar.f76135b, (Float) aVar.f76136c, f10, e(), f())) == null) ? x4.k.i(aVar.g(), aVar.d(), f10) : f11.floatValue();
    }

    @Override
    public Float i(y4.a aVar, float f10) {
        return Float.valueOf(r(aVar, f10));
    }
}
