package kotlin.collections;

import kotlin.Metadata;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.functions.Function1;

@Metadata(k = 3, mv = {2, 1, 0}, xi = 176)
public final class CollectionsKt__CollectionsKt$binarySearchBy$1 implements Function1<Object, Integer> {

    final Function1 f64150a;

    final Comparable f64151b;

    @Override
    public final Integer invoke(Object obj) {
        return Integer.valueOf(ComparisonsKt.d((Comparable) this.f64150a.invoke(obj), this.f64151b));
    }
}
