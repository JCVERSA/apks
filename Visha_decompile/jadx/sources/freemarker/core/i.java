package freemarker.core;

import defpackage.jw7;
import defpackage.zfa;
import org.apache.commons.lang3.BooleanUtils;

public final class i extends t0 {
    public final boolean h;

    public i(boolean z) {
        this.h = z;
    }

    @Override
    public zfa F(Environment environment) {
        return this.h ? freemarker.template.a.z6 : freemarker.template.a.y6;
    }

    @Override
    public t0 J(String str, t0 t0Var, t0.a aVar) {
        return new i(this.h);
    }

    @Override
    public boolean O(Environment environment) {
        return this.h;
    }

    @Override
    public boolean T() {
        return true;
    }

    @Override
    public String o() {
        return this.h ? BooleanUtils.TRUE : BooleanUtils.FALSE;
    }

    @Override
    public String r() {
        return o();
    }

    @Override
    public int s() {
        return 0;
    }

    @Override
    public jw7 t(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override
    public String toString() {
        return this.h ? BooleanUtils.TRUE : BooleanUtils.FALSE;
    }

    @Override
    public Object u(int i) {
        throw new IndexOutOfBoundsException();
    }
}
