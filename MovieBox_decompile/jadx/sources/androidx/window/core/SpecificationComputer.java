package androidx.window.core;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public abstract class SpecificationComputer {

    public static final a f14948a = new a(null);

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Landroidx/window/core/SpecificationComputer$VerificationMode;", "", "(Ljava/lang/String;I)V", "STRICT", "LOG", "QUIET", "window_release"}, k = 1, mv = {1, 6, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public enum VerificationMode {
        STRICT,
        LOG,
        QUIET
    }

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static SpecificationComputer b(a aVar, Object obj, String str, VerificationMode verificationMode, e eVar, int i10, Object obj2) {
            if ((i10 & 2) != 0) {
                verificationMode = c.f14964a.a();
            }
            if ((i10 & 4) != 0) {
                eVar = androidx.window.core.a.f14959a;
            }
            return aVar.a(obj, str, verificationMode, eVar);
        }

        public final SpecificationComputer a(Object obj, String tag, VerificationMode verificationMode, e logger) {
            Intrinsics.h(obj, "<this>");
            Intrinsics.h(tag, "tag");
            Intrinsics.h(verificationMode, "verificationMode");
            Intrinsics.h(logger, "logger");
            return new f(obj, tag, verificationMode, logger);
        }

        private a() {
        }
    }

    public abstract Object a();

    protected final String b(Object value, String message) {
        Intrinsics.h(value, "value");
        Intrinsics.h(message, "message");
        return message + " value: " + value;
    }

    public abstract SpecificationComputer c(String str, Function1 function1);
}
