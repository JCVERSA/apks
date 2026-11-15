package androidx.window.core;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

final class f extends SpecificationComputer {

    private final Object f14973b;

    private final String f14974c;

    private final SpecificationComputer.VerificationMode f14975d;

    private final e f14976e;

    public f(Object value, String tag, SpecificationComputer.VerificationMode verificationMode, e logger) {
        Intrinsics.h(value, "value");
        Intrinsics.h(tag, "tag");
        Intrinsics.h(verificationMode, "verificationMode");
        Intrinsics.h(logger, "logger");
        this.f14973b = value;
        this.f14974c = tag;
        this.f14975d = verificationMode;
        this.f14976e = logger;
    }

    @Override
    public Object a() {
        return this.f14973b;
    }

    @Override
    public SpecificationComputer c(String message, Function1 condition) {
        Intrinsics.h(message, "message");
        Intrinsics.h(condition, "condition");
        return ((Boolean) condition.invoke(this.f14973b)).booleanValue() ? this : new d(this.f14973b, this.f14974c, message, this.f14976e, this.f14975d);
    }
}
