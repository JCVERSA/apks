package kotlin.comparisons;

import defpackage.s74;
import java.util.Comparator;
import kotlin.Metadata;

@Metadata(k = 3, mv = {2, 1, 0}, xi = 176)
public final class ComparisonsKt__ComparisonsKt$thenComparator$1<T> implements Comparator {
    final s74 $comparison;
    final Comparator<T> $this_thenComparator;

    public ComparisonsKt__ComparisonsKt$thenComparator$1(Comparator<T> comparator, s74 s74Var) {
        this.$this_thenComparator = comparator;
        this.$comparison = s74Var;
    }

    @Override
    public final int compare(T t, T t2) {
        int iCompare = this.$this_thenComparator.compare(t, t2);
        return iCompare != 0 ? iCompare : ((Number) this.$comparison.invoke(t, t2)).intValue();
    }
}
