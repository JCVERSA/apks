package androidx.datastore.core;

import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class a0 implements CoroutineContext.Element {

    public static final a f8297c = new a(null);

    private static final String f8298d = "Calling updateData inside updateData on the same DataStore instance is not supported\nsince updates made in the parent updateData call will not be visible to the nested\nupdateData call. See https://issuetracker.google.com/issues/241760537 for details.";

    private final a0 f8299a;

    private final DataStoreImpl f8300b;

    public static final class a {

        public static final class C0067a implements CoroutineContext.Key {

            public static final C0067a f8301a = new C0067a();

            private C0067a() {
            }
        }

        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public a0(a0 a0Var, DataStoreImpl instance) {
        Intrinsics.h(instance, "instance");
        this.f8299a = a0Var;
        this.f8300b = instance;
    }

    public final void a(g candidate) {
        Intrinsics.h(candidate, "candidate");
        if (this.f8300b == candidate) {
            throw new IllegalStateException(f8298d.toString());
        }
        a0 a0Var = this.f8299a;
        if (a0Var != null) {
            a0Var.a(candidate);
        }
    }

    @Override
    public Object fold(Object obj, Function2 function2) {
        return CoroutineContext.Element.DefaultImpls.a(this, obj, function2);
    }

    @Override
    public CoroutineContext.Element get(CoroutineContext.Key key) {
        return CoroutineContext.Element.DefaultImpls.b(this, key);
    }

    @Override
    public CoroutineContext.Key getKey() {
        return a.C0067a.f8301a;
    }

    @Override
    public CoroutineContext minusKey(CoroutineContext.Key key) {
        return CoroutineContext.Element.DefaultImpls.c(this, key);
    }

    @Override
    public CoroutineContext plus(CoroutineContext coroutineContext) {
        return CoroutineContext.Element.DefaultImpls.d(this, coroutineContext);
    }
}
