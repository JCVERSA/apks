package defpackage;

import com.yandex.div.evaluable.Function;
import com.yandex.div.evaluable.LocalFunctionProvider;
import com.yandex.div.evaluable.MissingLocalFunctionException;
import java.util.List;

public final class m84 implements l84 {
    public final l84 a;

    public static final class a implements l84 {
        public final LocalFunctionProvider a;
        public final m84 b;

        public a(LocalFunctionProvider localFunctionProvider, m84 m84Var) {
            this.a = localFunctionProvider;
            this.b = m84Var;
        }

        @Override
        public Function a(String str, List list) {
            y45.j(str, "name");
            y45.j(list, "args");
            try {
                return this.a.a(str, list);
            } catch (MissingLocalFunctionException unused) {
                return this.b.a.a(str, list);
            }
        }

        @Override
        public Function b(String str, List list) {
            y45.j(str, "name");
            y45.j(list, "args");
            try {
                return this.a.b(str, list);
            } catch (MissingLocalFunctionException unused) {
                return this.b.a.b(str, list);
            }
        }
    }

    public m84(l84 l84Var) {
        y45.j(l84Var, "provider");
        this.a = l84Var;
    }

    @Override
    public Function a(String str, List list) {
        y45.j(str, "name");
        y45.j(list, "args");
        return this.a.a(str, list);
    }

    @Override
    public Function b(String str, List list) {
        y45.j(str, "name");
        y45.j(list, "args");
        return this.a.b(str, list);
    }

    public final m84 d(List list) {
        y45.j(list, "functions");
        return new m84(new a(new LocalFunctionProvider(list), this));
    }
}
