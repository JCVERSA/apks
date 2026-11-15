package androidx.window.core;

import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

final class d extends SpecificationComputer {

    private final Object f14966b;

    private final String f14967c;

    private final String f14968d;

    private final e f14969e;

    private final SpecificationComputer.VerificationMode f14970f;

    private final WindowStrictModeException f14971g;

    public class a {

        public static final int[] f14972a;

        static {
            int[] iArr = new int[SpecificationComputer.VerificationMode.values().length];
            iArr[SpecificationComputer.VerificationMode.STRICT.ordinal()] = 1;
            iArr[SpecificationComputer.VerificationMode.LOG.ordinal()] = 2;
            iArr[SpecificationComputer.VerificationMode.QUIET.ordinal()] = 3;
            f14972a = iArr;
        }
    }

    public d(Object value, String tag, String message, e logger, SpecificationComputer.VerificationMode verificationMode) {
        Intrinsics.h(value, "value");
        Intrinsics.h(tag, "tag");
        Intrinsics.h(message, "message");
        Intrinsics.h(logger, "logger");
        Intrinsics.h(verificationMode, "verificationMode");
        this.f14966b = value;
        this.f14967c = tag;
        this.f14968d = message;
        this.f14969e = logger;
        this.f14970f = verificationMode;
        WindowStrictModeException windowStrictModeException = new WindowStrictModeException(b(value, message));
        StackTraceElement[] stackTrace = windowStrictModeException.getStackTrace();
        Intrinsics.g(stackTrace, "stackTrace");
        Object[] array = ArraysKt.O(stackTrace, 2).toArray(new StackTraceElement[0]);
        if (array == null) {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        }
        windowStrictModeException.setStackTrace((StackTraceElement[]) array);
        this.f14971g = windowStrictModeException;
    }

    @Override
    public Object a() throws WindowStrictModeException {
        int i10 = a.f14972a[this.f14970f.ordinal()];
        if (i10 == 1) {
            throw this.f14971g;
        }
        if (i10 == 2) {
            this.f14969e.debug(this.f14967c, b(this.f14966b, this.f14968d));
            return null;
        }
        if (i10 == 3) {
            return null;
        }
        throw new NoWhenBranchMatchedException();
    }

    @Override
    public SpecificationComputer c(String message, Function1 condition) {
        Intrinsics.h(message, "message");
        Intrinsics.h(condition, "condition");
        return this;
    }
}
