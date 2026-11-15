package defpackage;

import com.yandex.div.evaluable.EvaluableType;
import com.yandex.div.evaluable.Function;
import java.util.List;

public abstract class lg extends Function {
    public final EvaluableType c;
    public final List d;
    public final boolean e;
    public final boolean f;

    public lg(EvaluableType evaluableType) {
        y45.j(evaluableType, "resultType");
        this.c = evaluableType;
        this.d = y71.n(new f84(EvaluableType.ARRAY, false, 2, null), new f84(EvaluableType.INTEGER, false, 2, null));
    }

    @Override
    public List d() {
        return this.d;
    }

    @Override
    public final EvaluableType g() {
        return this.c;
    }

    @Override
    public boolean i() {
        return this.e;
    }

    public boolean m() {
        return this.f;
    }
}
