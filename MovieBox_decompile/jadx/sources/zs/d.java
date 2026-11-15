package zs;

import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

public final class d implements zs.b {

    public static final a f76882g = new a(null);

    private Set f76883b = new CopyOnWriteArraySet();

    private final String f76884c = d.class.getSimpleName();

    private final n0 f76885d = o0.a(y0.c());

    private final Lazy f76886e = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return d.b();
        }
    });

    private final b f76887f = new b();

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public static final class b {
        b() {
        }
    }

    public static final vs.c b() {
        ws.a aVarB = cs.a.f58651a.b();
        if (aVarB != null) {
            return aVarB.b();
        }
        return null;
    }

    @Override
    public void init() {
    }
}
