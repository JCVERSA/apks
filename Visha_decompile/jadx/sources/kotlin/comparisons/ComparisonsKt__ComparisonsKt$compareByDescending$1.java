package kotlin.comparisons;

import defpackage.e74;
import java.util.Comparator;
import kotlin.Metadata;

@Metadata(k = 3, mv = {2, 1, 0}, xi = 176)
public final class ComparisonsKt__ComparisonsKt$compareByDescending$1<T> implements Comparator {
    final e74 $selector;

    public ComparisonsKt__ComparisonsKt$compareByDescending$1(e74 e74Var) {
        this.$selector = e74Var;
    }

    @Override
    public final int compare(T t, T t2) {
        e74 e74Var = this.$selector;
        return a.d((Comparable) e74Var.invoke(t2), (Comparable) e74Var.invoke(t));
    }
}
