package kotlin;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public class LazyKt__LazyJVMKt {

    @Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public class WhenMappings {

        public static final int[] f64073a;

        static {
            int[] iArr = new int[LazyThreadSafetyMode.values().length];
            try {
                iArr[LazyThreadSafetyMode.SYNCHRONIZED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LazyThreadSafetyMode.PUBLICATION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LazyThreadSafetyMode.NONE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f64073a = iArr;
        }
    }

    public static Lazy a(LazyThreadSafetyMode mode, Function0 initializer) {
        Intrinsics.h(mode, "mode");
        Intrinsics.h(initializer, "initializer");
        int i10 = WhenMappings.f64073a[mode.ordinal()];
        int i11 = 2;
        if (i10 == 1) {
            DefaultConstructorMarker defaultConstructorMarker = null;
            return new SynchronizedLazyImpl(initializer, defaultConstructorMarker, i11, defaultConstructorMarker);
        }
        if (i10 == 2) {
            return new SafePublicationLazyImpl(initializer);
        }
        if (i10 == 3) {
            return new UnsafeLazyImpl(initializer);
        }
        throw new NoWhenBranchMatchedException();
    }

    public static Lazy b(Function0 initializer) {
        Intrinsics.h(initializer, "initializer");
        DefaultConstructorMarker defaultConstructorMarker = null;
        return new SynchronizedLazyImpl(initializer, defaultConstructorMarker, 2, defaultConstructorMarker);
    }
}
