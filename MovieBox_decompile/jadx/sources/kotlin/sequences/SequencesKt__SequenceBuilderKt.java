package kotlin.sequences;

import java.util.Iterator;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

public class SequencesKt__SequenceBuilderKt {
    public static Iterator a(Function2 block) {
        Intrinsics.h(block, "block");
        c cVar = new c();
        cVar.i(IntrinsicsKt.a(block, cVar, cVar));
        return cVar;
    }

    public static Sequence b(final Function2 block) {
        Intrinsics.h(block, "block");
        return new Sequence<Object>() {
            @Override
            public Iterator iterator() {
                return SequencesKt.a(block);
            }
        };
    }
}
