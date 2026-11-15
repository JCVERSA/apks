package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import defpackage.e74;
import defpackage.y45;
import defpackage.zfb;
import java.util.Map;
import kotlin.reflect.jvm.internal.impl.load.kotlin.SignatureBuildingComponents;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmPrimitiveType;

public abstract class PredefinedEnhancementInfoKt {
    public static final a a = new a(NullabilityQualifier.NULLABLE, null, false, false, 8, null);
    public static final a b;
    public static final a c;
    public static final Map d;

    static {
        NullabilityQualifier nullabilityQualifier = NullabilityQualifier.NOT_NULL;
        b = new a(nullabilityQualifier, null, false, false, 8, null);
        c = new a(nullabilityQualifier, null, true, false, 8, null);
        final SignatureBuildingComponents signatureBuildingComponents = SignatureBuildingComponents.a;
        final String strH = signatureBuildingComponents.h("Object");
        final String strG = signatureBuildingComponents.g("Predicate");
        final String strG2 = signatureBuildingComponents.g("Function");
        final String strG3 = signatureBuildingComponents.g("Consumer");
        final String strG4 = signatureBuildingComponents.g("BiFunction");
        final String strG5 = signatureBuildingComponents.g("BiConsumer");
        final String strG6 = signatureBuildingComponents.g("UnaryOperator");
        final String strI = signatureBuildingComponents.i("stream/Stream");
        final String strI2 = signatureBuildingComponents.i("Optional");
        b bVar = new b();
        new b.a(bVar, signatureBuildingComponents.i("Iterator")).a("forEachRemaining", new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((b.a.C0388a) obj);
                return zfb.a;
            }

            public final void invoke(b.a.C0388a c0388a) {
                y45.j(c0388a, "$this$function");
                c0388a.b(strG3, PredefinedEnhancementInfoKt.b, PredefinedEnhancementInfoKt.b);
            }
        });
        new b.a(bVar, signatureBuildingComponents.h("Iterable")).a("spliterator", new e74() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((b.a.C0388a) obj);
                return zfb.a;
            }

            public final void invoke(b.a.C0388a c0388a) {
                y45.j(c0388a, "$this$function");
                c0388a.c(signatureBuildingComponents.i("Spliterator"), PredefinedEnhancementInfoKt.b, PredefinedEnhancementInfoKt.b);
            }
        });
        b.a aVar = new b.a(bVar, signatureBuildingComponents.i("Collection"));
        aVar.a("removeIf", new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((b.a.C0388a) obj);
                return zfb.a;
            }

            public final void invoke(b.a.C0388a c0388a) {
                y45.j(c0388a, "$this$function");
                c0388a.b(strG, PredefinedEnhancementInfoKt.b, PredefinedEnhancementInfoKt.b);
                c0388a.d(JvmPrimitiveType.BOOLEAN);
            }
        });
        aVar.a("stream", new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((b.a.C0388a) obj);
                return zfb.a;
            }

            public final void invoke(b.a.C0388a c0388a) {
                y45.j(c0388a, "$this$function");
                c0388a.c(strI, PredefinedEnhancementInfoKt.b, PredefinedEnhancementInfoKt.b);
            }
        });
        aVar.a("parallelStream", new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((b.a.C0388a) obj);
                return zfb.a;
            }

            public final void invoke(b.a.C0388a c0388a) {
                y45.j(c0388a, "$this$function");
                c0388a.c(strI, PredefinedEnhancementInfoKt.b, PredefinedEnhancementInfoKt.b);
            }
        });
        new b.a(bVar, signatureBuildingComponents.i("List")).a("replaceAll", new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((b.a.C0388a) obj);
                return zfb.a;
            }

            public final void invoke(b.a.C0388a c0388a) {
                y45.j(c0388a, "$this$function");
                c0388a.b(strG6, PredefinedEnhancementInfoKt.b, PredefinedEnhancementInfoKt.b);
            }
        });
        b.a aVar2 = new b.a(bVar, signatureBuildingComponents.i("Map"));
        aVar2.a("forEach", new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((b.a.C0388a) obj);
                return zfb.a;
            }

            public final void invoke(b.a.C0388a c0388a) {
                y45.j(c0388a, "$this$function");
                c0388a.b(strG5, PredefinedEnhancementInfoKt.b, PredefinedEnhancementInfoKt.b, PredefinedEnhancementInfoKt.b);
            }
        });
        aVar2.a("putIfAbsent", new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((b.a.C0388a) obj);
                return zfb.a;
            }

            public final void invoke(b.a.C0388a c0388a) {
                y45.j(c0388a, "$this$function");
                c0388a.b(strH, PredefinedEnhancementInfoKt.b);
                c0388a.b(strH, PredefinedEnhancementInfoKt.b);
                c0388a.c(strH, PredefinedEnhancementInfoKt.a);
            }
        });
        aVar2.a("replace", new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((b.a.C0388a) obj);
                return zfb.a;
            }

            public final void invoke(b.a.C0388a c0388a) {
                y45.j(c0388a, "$this$function");
                c0388a.b(strH, PredefinedEnhancementInfoKt.b);
                c0388a.b(strH, PredefinedEnhancementInfoKt.b);
                c0388a.c(strH, PredefinedEnhancementInfoKt.a);
            }
        });
        aVar2.a("replace", new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((b.a.C0388a) obj);
                return zfb.a;
            }

            public final void invoke(b.a.C0388a c0388a) {
                y45.j(c0388a, "$this$function");
                c0388a.b(strH, PredefinedEnhancementInfoKt.b);
                c0388a.b(strH, PredefinedEnhancementInfoKt.b);
                c0388a.b(strH, PredefinedEnhancementInfoKt.b);
                c0388a.d(JvmPrimitiveType.BOOLEAN);
            }
        });
        aVar2.a("replaceAll", new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((b.a.C0388a) obj);
                return zfb.a;
            }

            public final void invoke(b.a.C0388a c0388a) {
                y45.j(c0388a, "$this$function");
                c0388a.b(strG4, PredefinedEnhancementInfoKt.b, PredefinedEnhancementInfoKt.b, PredefinedEnhancementInfoKt.b, PredefinedEnhancementInfoKt.b);
            }
        });
        aVar2.a("compute", new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((b.a.C0388a) obj);
                return zfb.a;
            }

            public final void invoke(b.a.C0388a c0388a) {
                y45.j(c0388a, "$this$function");
                c0388a.b(strH, PredefinedEnhancementInfoKt.b);
                c0388a.b(strG4, PredefinedEnhancementInfoKt.b, PredefinedEnhancementInfoKt.b, PredefinedEnhancementInfoKt.a, PredefinedEnhancementInfoKt.a);
                c0388a.c(strH, PredefinedEnhancementInfoKt.a);
            }
        });
        aVar2.a("computeIfAbsent", new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((b.a.C0388a) obj);
                return zfb.a;
            }

            public final void invoke(b.a.C0388a c0388a) {
                y45.j(c0388a, "$this$function");
                c0388a.b(strH, PredefinedEnhancementInfoKt.b);
                c0388a.b(strG2, PredefinedEnhancementInfoKt.b, PredefinedEnhancementInfoKt.b, PredefinedEnhancementInfoKt.b);
                c0388a.c(strH, PredefinedEnhancementInfoKt.b);
            }
        });
        aVar2.a("computeIfPresent", new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((b.a.C0388a) obj);
                return zfb.a;
            }

            public final void invoke(b.a.C0388a c0388a) {
                y45.j(c0388a, "$this$function");
                c0388a.b(strH, PredefinedEnhancementInfoKt.b);
                c0388a.b(strG4, PredefinedEnhancementInfoKt.b, PredefinedEnhancementInfoKt.b, PredefinedEnhancementInfoKt.c, PredefinedEnhancementInfoKt.a);
                c0388a.c(strH, PredefinedEnhancementInfoKt.a);
            }
        });
        aVar2.a("merge", new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((b.a.C0388a) obj);
                return zfb.a;
            }

            public final void invoke(b.a.C0388a c0388a) {
                y45.j(c0388a, "$this$function");
                c0388a.b(strH, PredefinedEnhancementInfoKt.b);
                c0388a.b(strH, PredefinedEnhancementInfoKt.c);
                c0388a.b(strG4, PredefinedEnhancementInfoKt.b, PredefinedEnhancementInfoKt.c, PredefinedEnhancementInfoKt.c, PredefinedEnhancementInfoKt.a);
                c0388a.c(strH, PredefinedEnhancementInfoKt.a);
            }
        });
        b.a aVar3 = new b.a(bVar, strI2);
        aVar3.a("empty", new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((b.a.C0388a) obj);
                return zfb.a;
            }

            public final void invoke(b.a.C0388a c0388a) {
                y45.j(c0388a, "$this$function");
                c0388a.c(strI2, PredefinedEnhancementInfoKt.b, PredefinedEnhancementInfoKt.c);
            }
        });
        aVar3.a("of", new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((b.a.C0388a) obj);
                return zfb.a;
            }

            public final void invoke(b.a.C0388a c0388a) {
                y45.j(c0388a, "$this$function");
                c0388a.b(strH, PredefinedEnhancementInfoKt.c);
                c0388a.c(strI2, PredefinedEnhancementInfoKt.b, PredefinedEnhancementInfoKt.c);
            }
        });
        aVar3.a("ofNullable", new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((b.a.C0388a) obj);
                return zfb.a;
            }

            public final void invoke(b.a.C0388a c0388a) {
                y45.j(c0388a, "$this$function");
                c0388a.b(strH, PredefinedEnhancementInfoKt.a);
                c0388a.c(strI2, PredefinedEnhancementInfoKt.b, PredefinedEnhancementInfoKt.c);
            }
        });
        aVar3.a("get", new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((b.a.C0388a) obj);
                return zfb.a;
            }

            public final void invoke(b.a.C0388a c0388a) {
                y45.j(c0388a, "$this$function");
                c0388a.c(strH, PredefinedEnhancementInfoKt.c);
            }
        });
        aVar3.a("ifPresent", new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((b.a.C0388a) obj);
                return zfb.a;
            }

            public final void invoke(b.a.C0388a c0388a) {
                y45.j(c0388a, "$this$function");
                c0388a.b(strG3, PredefinedEnhancementInfoKt.b, PredefinedEnhancementInfoKt.c);
            }
        });
        new b.a(bVar, signatureBuildingComponents.h("ref/Reference")).a("get", new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((b.a.C0388a) obj);
                return zfb.a;
            }

            public final void invoke(b.a.C0388a c0388a) {
                y45.j(c0388a, "$this$function");
                c0388a.c(strH, PredefinedEnhancementInfoKt.a);
            }
        });
        new b.a(bVar, strG).a("test", new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((b.a.C0388a) obj);
                return zfb.a;
            }

            public final void invoke(b.a.C0388a c0388a) {
                y45.j(c0388a, "$this$function");
                c0388a.b(strH, PredefinedEnhancementInfoKt.b);
                c0388a.d(JvmPrimitiveType.BOOLEAN);
            }
        });
        new b.a(bVar, signatureBuildingComponents.g("BiPredicate")).a("test", new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((b.a.C0388a) obj);
                return zfb.a;
            }

            public final void invoke(b.a.C0388a c0388a) {
                y45.j(c0388a, "$this$function");
                c0388a.b(strH, PredefinedEnhancementInfoKt.b);
                c0388a.b(strH, PredefinedEnhancementInfoKt.b);
                c0388a.d(JvmPrimitiveType.BOOLEAN);
            }
        });
        new b.a(bVar, strG3).a("accept", new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((b.a.C0388a) obj);
                return zfb.a;
            }

            public final void invoke(b.a.C0388a c0388a) {
                y45.j(c0388a, "$this$function");
                c0388a.b(strH, PredefinedEnhancementInfoKt.b);
            }
        });
        new b.a(bVar, strG5).a("accept", new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((b.a.C0388a) obj);
                return zfb.a;
            }

            public final void invoke(b.a.C0388a c0388a) {
                y45.j(c0388a, "$this$function");
                c0388a.b(strH, PredefinedEnhancementInfoKt.b);
                c0388a.b(strH, PredefinedEnhancementInfoKt.b);
            }
        });
        new b.a(bVar, strG2).a("apply", new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((b.a.C0388a) obj);
                return zfb.a;
            }

            public final void invoke(b.a.C0388a c0388a) {
                y45.j(c0388a, "$this$function");
                c0388a.b(strH, PredefinedEnhancementInfoKt.b);
                c0388a.c(strH, PredefinedEnhancementInfoKt.b);
            }
        });
        new b.a(bVar, strG4).a("apply", new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((b.a.C0388a) obj);
                return zfb.a;
            }

            public final void invoke(b.a.C0388a c0388a) {
                y45.j(c0388a, "$this$function");
                c0388a.b(strH, PredefinedEnhancementInfoKt.b);
                c0388a.b(strH, PredefinedEnhancementInfoKt.b);
                c0388a.c(strH, PredefinedEnhancementInfoKt.b);
            }
        });
        new b.a(bVar, signatureBuildingComponents.g("Supplier")).a("get", new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((b.a.C0388a) obj);
                return zfb.a;
            }

            public final void invoke(b.a.C0388a c0388a) {
                y45.j(c0388a, "$this$function");
                c0388a.c(strH, PredefinedEnhancementInfoKt.b);
            }
        });
        d = bVar.b();
    }

    public static final Map d() {
        return d;
    }
}
