package p1;

import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import q1.g;

public final class c {

    private final x0 f68964a;

    private final v0.c f68965b;

    private final a f68966c;

    public c(x0 store, v0.c factory, a extras) {
        Intrinsics.h(store, "store");
        Intrinsics.h(factory, "factory");
        Intrinsics.h(extras, "extras");
        this.f68964a = store;
        this.f68965b = factory;
        this.f68966c = extras;
    }

    public static t0 b(c cVar, KClass kClass, String str, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str = g.f69329a.c(kClass);
        }
        return cVar.a(kClass, str);
    }

    public final t0 a(KClass modelClass, String key) {
        Intrinsics.h(modelClass, "modelClass");
        Intrinsics.h(key, "key");
        t0 t0VarB = this.f68964a.b(key);
        if (!modelClass.d(t0VarB)) {
            b bVar = new b(this.f68966c);
            bVar.c(g.a.f69330a, key);
            t0 t0VarA = d.a(this.f68965b, modelClass, bVar);
            this.f68964a.d(key, t0VarA);
            return t0VarA;
        }
        Object obj = this.f68965b;
        if (obj instanceof v0.e) {
            Intrinsics.e(t0VarB);
            ((v0.e) obj).a(t0VarB);
        }
        Intrinsics.f(t0VarB, "null cannot be cast to non-null type T of androidx.lifecycle.viewmodel.ViewModelProviderImpl.getViewModel");
        return t0VarB;
    }
}
