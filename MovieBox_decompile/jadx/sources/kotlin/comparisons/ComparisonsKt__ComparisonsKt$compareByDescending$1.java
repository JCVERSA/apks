package kotlin.comparisons;

import java.util.Comparator;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

@Metadata(k = 3, mv = {2, 1, 0}, xi = 176)
public final class ComparisonsKt__ComparisonsKt$compareByDescending$1<T> implements Comparator {
    final Function1<T, Comparable<?>> $selector;

    /* JADX WARN: Multi-variable type inference failed */
    public ComparisonsKt__ComparisonsKt$compareByDescending$1(Function1<? super T, ? extends Comparable<?>> function1) {
        this.$selector = function1;
    }

    @Override
    public final int compare(T t10, T t11) {
        Function1<T, Comparable<?>> function1 = this.$selector;
        return ComparisonsKt.d((Comparable) function1.invoke(t11), (Comparable) function1.invoke(t10));
    }
}
