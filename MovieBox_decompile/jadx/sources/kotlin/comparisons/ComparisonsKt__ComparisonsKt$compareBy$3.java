package kotlin.comparisons;

import java.util.Comparator;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

@Metadata(k = 3, mv = {2, 1, 0}, xi = 176)
public final class ComparisonsKt__ComparisonsKt$compareBy$3<T> implements Comparator {
    final Comparator<Object> $comparator;
    final Function1<T, Object> $selector;

    /* JADX WARN: Multi-variable type inference failed */
    public ComparisonsKt__ComparisonsKt$compareBy$3(Comparator<Object> comparator, Function1<? super T, Object> function1) {
        this.$comparator = comparator;
        this.$selector = function1;
    }

    @Override
    public final int compare(T t10, T t11) {
        Comparator<Object> comparator = this.$comparator;
        Function1<T, Object> function1 = this.$selector;
        return comparator.compare(function1.invoke(t10), function1.invoke(t11));
    }
}
