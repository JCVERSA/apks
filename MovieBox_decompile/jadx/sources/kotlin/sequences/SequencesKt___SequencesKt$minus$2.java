package kotlin.sequences;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.sequences.SequencesKt___SequencesKt$minus$2;

@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\b\u0003\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0096\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"kotlin/sequences/SequencesKt___SequencesKt$minus$2", "Lkotlin/sequences/Sequence;", "", "iterator", "()Ljava/util/Iterator;", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class SequencesKt___SequencesKt$minus$2 implements Sequence<Object> {

    final Sequence f64471a;

    final Object[] f64472b;

    public static final boolean c(Object[] objArr, Object obj) {
        return ArraysKt.L(objArr, obj);
    }

    @Override
    public Iterator getF64466a() {
        Sequence sequence = this.f64471a;
        final Object[] objArr = this.f64472b;
        return SequencesKt___SequencesKt.q(sequence, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return Boolean.valueOf(SequencesKt___SequencesKt$minus$2.c(objArr, obj));
            }
        }).getF64466a();
    }
}
