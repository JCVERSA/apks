package kotlinx.serialization.json;

import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

public abstract class k {

    public static final class a implements kotlinx.serialization.descriptors.f {

        private final Lazy f65383a;

        a(Function0 function0) {
            this.f65383a = LazyKt.b(function0);
        }

        private final kotlinx.serialization.descriptors.f a() {
            return (kotlinx.serialization.descriptors.f) this.f65383a.getValue();
        }

        @Override
        public boolean b() {
            return kotlinx.serialization.descriptors.f.a.c(this);
        }

        @Override
        public int c(String name) {
            Intrinsics.h(name, "name");
            return a().c(name);
        }

        @Override
        public kotlinx.serialization.descriptors.h d() {
            return a().d();
        }

        @Override
        public int e() {
            return a().e();
        }

        @Override
        public String f(int i10) {
            return a().f(i10);
        }

        @Override
        public List g(int i10) {
            return a().g(i10);
        }

        @Override
        public List getAnnotations() {
            return kotlinx.serialization.descriptors.f.a.a(this);
        }

        @Override
        public kotlinx.serialization.descriptors.f h(int i10) {
            return a().h(i10);
        }

        @Override
        public String i() {
            return a().i();
        }

        @Override
        public boolean isInline() {
            return kotlinx.serialization.descriptors.f.a.b(this);
        }

        @Override
        public boolean j(int i10) {
            return a().j(i10);
        }
    }

    public static final g d(sy.e eVar) {
        Intrinsics.h(eVar, "<this>");
        g gVar = eVar instanceof g ? (g) eVar : null;
        if (gVar != null) {
            return gVar;
        }
        throw new IllegalStateException("This serializer can be used only with Json format.Expected Decoder to be JsonDecoder, got " + Reflection.b(eVar.getClass()));
    }

    public static final l e(sy.f fVar) {
        Intrinsics.h(fVar, "<this>");
        l lVar = fVar instanceof l ? (l) fVar : null;
        if (lVar != null) {
            return lVar;
        }
        throw new IllegalStateException("This serializer can be used only with Json format.Expected Encoder to be JsonEncoder, got " + Reflection.b(fVar.getClass()));
    }

    public static final kotlinx.serialization.descriptors.f f(Function0 function0) {
        return new a(function0);
    }

    public static final void g(sy.e eVar) {
        d(eVar);
    }

    public static final void h(sy.f fVar) {
        e(fVar);
    }
}
