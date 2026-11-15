package kotlin.comparisons;

import defpackage.e74;
import java.util.Comparator;
import kotlin.Metadata;

@Metadata(k = 3, mv = {2, 1, 0}, xi = 176)
public final class ComparisonsKt__ComparisonsKt$thenByDescending$1<T> implements Comparator {
    final e74 $selector;
    final Comparator<T> $this_thenByDescending;

    public ComparisonsKt__ComparisonsKt$thenByDescending$1(Comparator<T> comparator, e74 e74Var) {
        this.$this_thenByDescending = comparator;
        this.$selector = e74Var;
    }

    @Override
    public final int compare(T t, T t2) {
        int iCompare = this.$this_thenByDescending.compare(t, t2);
        if (iCompare != 0) {
            return iCompare;
        }
        e74 e74Var = this.$selector;
        return a.d((Comparable) e74Var.invoke(t2), (Comparable) e74Var.invoke(t));
    }
}
