package kotlin.sequences;

import defpackage.e74;
import defpackage.pc9;
import defpackage.y45;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.FunctionReferenceImpl;

@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
public class SequencesKt___SequencesKt$flatMap$2 extends FunctionReferenceImpl implements e74 {
    public static final SequencesKt___SequencesKt$flatMap$2 INSTANCE = new SequencesKt___SequencesKt$flatMap$2();

    public SequencesKt___SequencesKt$flatMap$2() {
        super(1, pc9.class, "iterator", "iterator()Ljava/util/Iterator;", 0);
    }

    @Override
    public final Iterator<Object> invoke(pc9 pc9Var) {
        y45.j(pc9Var, "p0");
        return pc9Var.iterator();
    }
}
