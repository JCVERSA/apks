package kotlin.comparisons;

import defpackage.e74;
import java.util.Comparator;
import kotlin.Metadata;

@Metadata(k = 3, mv = {2, 1, 0}, xi = 176)
public final class ComparisonsKt__ComparisonsKt$compareByDescending$2<T> implements Comparator {
    final Comparator<Object> $comparator;
    final e74 $selector;

    public ComparisonsKt__ComparisonsKt$compareByDescending$2(Comparator<Object> comparator, e74 e74Var) {
        this.$comparator = comparator;
        this.$selector = e74Var;
    }

    @Override
    public final int compare(T t, T t2) {
        Comparator<Object> comparator = this.$comparator;
        e74 e74Var = this.$selector;
        return comparator.compare(e74Var.invoke(t2), e74Var.invoke(t));
    }
}
