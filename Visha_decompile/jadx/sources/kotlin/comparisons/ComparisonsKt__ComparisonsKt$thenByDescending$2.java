package kotlin.comparisons;

import defpackage.e74;
import java.util.Comparator;
import kotlin.Metadata;

@Metadata(k = 3, mv = {2, 1, 0}, xi = 176)
public final class ComparisonsKt__ComparisonsKt$thenByDescending$2<T> implements Comparator {
    final Comparator<Object> $comparator;
    final e74 $selector;
    final Comparator<T> $this_thenByDescending;

    public ComparisonsKt__ComparisonsKt$thenByDescending$2(Comparator<T> comparator, Comparator<Object> comparator2, e74 e74Var) {
        this.$this_thenByDescending = comparator;
        this.$comparator = comparator2;
        this.$selector = e74Var;
    }

    @Override
    public final int compare(T t, T t2) {
        int iCompare = this.$this_thenByDescending.compare(t, t2);
        if (iCompare != 0) {
            return iCompare;
        }
        Comparator<Object> comparator = this.$comparator;
        e74 e74Var = this.$selector;
        return comparator.compare(e74Var.invoke(t2), e74Var.invoke(t));
    }
}
