package androidx.compose.foundation.lazy.layout;

import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class x {

    private final i0 f2775a;

    private final Function1 f2776b;

    private final f0 f2777c;

    private PrefetchHandleProvider f2778d;

    private final class a implements d0 {

        private final List f2779a = new ArrayList();

        public a() {
        }

        @Override
        public void a(int i10) {
            c(i10, y.f2781a);
        }

        public final List b() {
            return this.f2779a;
        }

        public void c(int i10, long j10) {
            PrefetchHandleProvider prefetchHandleProviderC = x.this.c();
            if (prefetchHandleProviderC == null) {
                return;
            }
            this.f2779a.add(prefetchHandleProviderC.c(i10, j10, x.this.f2777c));
        }
    }

    public interface b {
        void a();

        void cancel();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public x() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public final List b() {
        Function1 function1 = this.f2776b;
        if (function1 == null) {
            return CollectionsKt.l();
        }
        a aVar = new a();
        function1.invoke(aVar);
        return aVar.b();
    }

    public final PrefetchHandleProvider c() {
        return this.f2778d;
    }

    public final i0 d() {
        return this.f2775a;
    }

    public final b e(int i10, long j10) {
        b bVarD;
        PrefetchHandleProvider prefetchHandleProvider = this.f2778d;
        return (prefetchHandleProvider == null || (bVarD = prefetchHandleProvider.d(i10, j10, this.f2777c)) == null) ? androidx.compose.foundation.lazy.layout.a.f2721a : bVarD;
    }

    public final void f(PrefetchHandleProvider prefetchHandleProvider) {
        this.f2778d = prefetchHandleProvider;
    }

    public x(i0 i0Var, Function1 function1) {
        this.f2775a = i0Var;
        this.f2776b = function1;
        this.f2777c = new f0();
    }

    public x(i0 i0Var, Function1 function1, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : i0Var, (i10 & 2) != 0 ? null : function1);
    }
}
