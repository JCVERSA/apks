package kotlin.sequences;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.sequences.SequencesKt___SequencesKt$minus$4;

@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\b\u0003\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0096\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"kotlin/sequences/SequencesKt___SequencesKt$minus$4", "Lkotlin/sequences/Sequence;", "", "iterator", "()Ljava/util/Iterator;", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class SequencesKt___SequencesKt$minus$4 implements Sequence<Object> {

    final Sequence f64475a;

    final Sequence f64476b;

    public static final boolean c(List list, Object obj) {
        return list.contains(obj);
    }

    @Override
    public Iterator getF64466a() {
        final List listC = SequencesKt.C(this.f64475a);
        return listC.isEmpty() ? this.f64476b.getF64466a() : SequencesKt___SequencesKt.q(this.f64476b, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return Boolean.valueOf(SequencesKt___SequencesKt$minus$4.c(listC, obj));
            }
        }).getF64466a();
    }
}
