package kotlinx.serialization;

import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;
import kotlinx.serialization.internal.j1;
import kotlinx.serialization.internal.o;
import kotlinx.serialization.internal.x1;

public abstract class SerializersCacheKt {

    private static final x1 f65056a = o.a(new Function1<KClass<?>, b>() {
        @Override
        public final b invoke(KClass<?> it) {
            Intrinsics.h(it, "it");
            return h.c(it);
        }
    });

    private static final x1 f65057b = o.a(new Function1<KClass<?>, b>() {
        @Override
        public final b invoke(KClass<?> it) {
            b bVarS;
            Intrinsics.h(it, "it");
            b bVarC = h.c(it);
            if (bVarC == null || (bVarS = ry.a.s(bVarC)) == null) {
                return null;
            }
            return bVarS;
        }
    });

    private static final j1 f65058c = o.b(new Function2<KClass<Object>, List<? extends KType>, b>() {
        @Override
        public final b invoke(KClass<Object> clazz, List<? extends KType> types) {
            Intrinsics.h(clazz, "clazz");
            Intrinsics.h(types, "types");
            List listE = h.e(ty.d.a(), types, true);
            Intrinsics.e(listE);
            return h.a(clazz, types, listE);
        }
    });

    private static final j1 f65059d = o.b(new Function2<KClass<Object>, List<? extends KType>, b>() {
        @Override
        public final b invoke(KClass<Object> clazz, List<? extends KType> types) {
            b bVarS;
            Intrinsics.h(clazz, "clazz");
            Intrinsics.h(types, "types");
            List listE = h.e(ty.d.a(), types, true);
            Intrinsics.e(listE);
            b bVarA = h.a(clazz, types, listE);
            if (bVarA == null || (bVarS = ry.a.s(bVarA)) == null) {
                return null;
            }
            return bVarS;
        }
    });

    public static final b a(KClass clazz, boolean z10) {
        Intrinsics.h(clazz, "clazz");
        if (z10) {
            return f65057b.a(clazz);
        }
        b bVarA = f65056a.a(clazz);
        if (bVarA != null) {
            return bVarA;
        }
        return null;
    }

    public static final Object b(KClass clazz, List types, boolean z10) {
        Intrinsics.h(clazz, "clazz");
        Intrinsics.h(types, "types");
        return !z10 ? f65058c.a(clazz, types) : f65059d.a(clazz, types);
    }
}
