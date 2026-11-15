package p4;

import java.util.Collections;

public class q extends a {

    private final Object f69072i;

    public q(y4.c cVar) {
        this(cVar, null);
    }

    @Override
    float c() {
        return 1.0f;
    }

    @Override
    public Object h() {
        y4.c cVar = this.f69005e;
        Object obj = this.f69072i;
        return cVar.b(0.0f, 0.0f, obj, obj, f(), f(), f());
    }

    @Override
    Object i(y4.a aVar, float f10) {
        return h();
    }

    @Override
    public void l() {
        if (this.f69005e != null) {
            super.l();
        }
    }

    @Override
    public void n(float f10) {
        this.f69004d = f10;
    }

    public q(y4.c cVar, Object obj) {
        super(Collections.emptyList());
        o(cVar);
        this.f69072i = obj;
    }
}
