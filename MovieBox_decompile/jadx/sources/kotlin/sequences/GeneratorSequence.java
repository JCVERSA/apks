package kotlin.sequences;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

final class GeneratorSequence implements Sequence {

    private final Function0 f64450a;

    private final Function1 f64451b;

    @Metadata(d1 = {"\u0000!\n\u0000\n\u0002\u0010(\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\b*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0010\u0010\b\u001a\u00020\u0007H\u0096\u0002¢\u0006\u0004\b\b\u0010\tR$\u0010\u000e\u001a\u0004\u0018\u00018\u00008\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\n\u001a\u0004\b\u000b\u0010\u0006\"\u0004\b\f\u0010\rR\"\u0010\u0016\u001a\u00020\u000f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006\u0017"}, d2 = {"kotlin/sequences/GeneratorSequence$iterator$1", "", "", "a", "()V", "next", "()Ljava/lang/Object;", "", "hasNext", "()Z", "Ljava/lang/Object;", "getNextItem", "setNextItem", "(Ljava/lang/Object;)V", "nextItem", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "I", "getNextState", "()I", "setNextState", "(I)V", "nextState", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class AnonymousClass1 implements Iterator<Object>, KMappedMarker {

        private Object nextItem;

        private int nextState = -2;

        AnonymousClass1() {
        }

        private final void a() {
            Object objInvoke;
            if (this.nextState == -2) {
                objInvoke = GeneratorSequence.this.f64450a.invoke();
            } else {
                Function1 function1 = GeneratorSequence.this.f64451b;
                Object obj = this.nextItem;
                Intrinsics.e(obj);
                objInvoke = function1.invoke(obj);
            }
            this.nextItem = objInvoke;
            this.nextState = objInvoke == null ? 0 : 1;
        }

        @Override
        public boolean hasNext() {
            if (this.nextState < 0) {
                a();
            }
            return this.nextState == 1;
        }

        @Override
        public Object next() {
            if (this.nextState < 0) {
                a();
            }
            if (this.nextState == 0) {
                throw new NoSuchElementException();
            }
            Object obj = this.nextItem;
            Intrinsics.f(obj, "null cannot be cast to non-null type T of kotlin.sequences.GeneratorSequence");
            this.nextState = -1;
            return obj;
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public GeneratorSequence(Function0 getInitialValue, Function1 getNextValue) {
        Intrinsics.h(getInitialValue, "getInitialValue");
        Intrinsics.h(getNextValue, "getNextValue");
        this.f64450a = getInitialValue;
        this.f64451b = getNextValue;
    }

    @Override
    public Iterator getF64466a() {
        return new AnonymousClass1();
    }
}
