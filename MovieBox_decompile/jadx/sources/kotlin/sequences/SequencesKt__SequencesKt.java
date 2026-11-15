package kotlin.sequences;

import java.util.Iterator;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public class SequencesKt__SequencesKt extends d {
    public static Sequence e(final Iterator it) {
        Intrinsics.h(it, "<this>");
        return SequencesKt.f(new Sequence<Object>() {
            @Override
            public Iterator getF64466a() {
                return it;
            }
        });
    }

    public static Sequence f(Sequence sequence) {
        Intrinsics.h(sequence, "<this>");
        return sequence instanceof ConstrainedOnceSequence ? sequence : new ConstrainedOnceSequence(sequence);
    }

    public static final Sequence g() {
        return b.f64508a;
    }

    public static Sequence h(final Object obj, Function1 nextFunction) {
        Intrinsics.h(nextFunction, "nextFunction");
        return obj == null ? b.f64508a : new GeneratorSequence(new Function0() {
            @Override
            public final Object invoke() {
                return SequencesKt__SequencesKt.l(obj);
            }
        }, nextFunction);
    }

    public static Sequence i(final Function0 nextFunction) {
        Intrinsics.h(nextFunction, "nextFunction");
        return SequencesKt.f(new GeneratorSequence(nextFunction, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return SequencesKt__SequencesKt.k(nextFunction, obj);
            }
        }));
    }

    public static Sequence j(Function0 seedFunction, Function1 nextFunction) {
        Intrinsics.h(seedFunction, "seedFunction");
        Intrinsics.h(nextFunction, "nextFunction");
        return new GeneratorSequence(seedFunction, nextFunction);
    }

    public static final Object k(Function0 function0, Object it) {
        Intrinsics.h(it, "it");
        return function0.invoke();
    }

    public static final Object l(Object obj) {
        return obj;
    }
}
