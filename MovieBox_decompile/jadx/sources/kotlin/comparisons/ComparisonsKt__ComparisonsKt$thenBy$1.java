package kotlin.comparisons;

import java.util.Comparator;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

@Metadata(k = 3, mv = {2, 1, 0}, xi = 176)
public final class ComparisonsKt__ComparisonsKt$thenBy$1<T> implements Comparator {
    final Function1<T, Comparable<?>> $selector;
    final Comparator<T> $this_thenBy;

    /* JADX WARN: Multi-variable type inference failed */
    public ComparisonsKt__ComparisonsKt$thenBy$1(Comparator<T> comparator, Function1<? super T, ? extends Comparable<?>> function1) {
        this.$this_thenBy = comparator;
        this.$selector = function1;
    }

    @Override
    public final int compare(T t10, T t11) {
        int iCompare = this.$this_thenBy.compare(t10, t11);
        if (iCompare != 0) {
            return iCompare;
        }
        Function1<T, Comparable<?>> function1 = this.$selector;
        return ComparisonsKt.d((Comparable) function1.invoke(t10), (Comparable) function1.invoke(t11));
    }
}
