package kotlin.sequences;

import defpackage.e74;
import defpackage.y45;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.FunctionReferenceImpl;

@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
public class SequencesKt___SequencesKt$flatMap$1 extends FunctionReferenceImpl implements e74 {
    public static final SequencesKt___SequencesKt$flatMap$1 INSTANCE = new SequencesKt___SequencesKt$flatMap$1();

    public SequencesKt___SequencesKt$flatMap$1() {
        super(1, Iterable.class, "iterator", "iterator()Ljava/util/Iterator;", 0);
    }

    @Override
    public final Iterator<Object> invoke(Iterable<Object> iterable) {
        y45.j(iterable, "p0");
        return iterable.iterator();
    }
}
