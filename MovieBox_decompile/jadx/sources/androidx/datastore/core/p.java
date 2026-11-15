package androidx.datastore.core;

import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public abstract class p {

    public static final class a extends p {

        private final Function2 f8308a;

        private final kotlinx.coroutines.w f8309b;

        private final v f8310c;

        private final CoroutineContext f8311d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Function2 transform, kotlinx.coroutines.w ack, v vVar, CoroutineContext callerContext) {
            super(null);
            Intrinsics.h(transform, "transform");
            Intrinsics.h(ack, "ack");
            Intrinsics.h(callerContext, "callerContext");
            this.f8308a = transform;
            this.f8309b = ack;
            this.f8310c = vVar;
            this.f8311d = callerContext;
        }

        public final kotlinx.coroutines.w a() {
            return this.f8309b;
        }

        public final CoroutineContext b() {
            return this.f8311d;
        }

        public v c() {
            return this.f8310c;
        }

        public final Function2 d() {
            return this.f8308a;
        }
    }

    public p(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private p() {
    }
}
