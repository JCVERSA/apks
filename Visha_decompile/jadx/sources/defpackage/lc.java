package defpackage;

import java.util.List;

public class lc implements tc {
    public final dc a;
    public final dc b;

    public lc(dc dcVar, dc dcVar2) {
        this.a = dcVar;
        this.b = dcVar2;
    }

    @Override
    public boolean g() {
        return this.a.g() && this.b.g();
    }

    @Override
    public ab0 h() {
        return new gv9(this.a.h(), this.b.h());
    }

    @Override
    public List i() {
        throw new UnsupportedOperationException("Cannot call getKeyframes on AnimatableSplitDimensionPathValue.");
    }
}
