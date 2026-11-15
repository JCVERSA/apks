package kotlinx.coroutines;

import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class m0 extends AbstractCoroutineContextElement {

    public static final a f64930b = new a(null);

    private final String f64931a;

    public static final class a implements CoroutineContext.Key {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public m0(String str) {
        super(f64930b);
        this.f64931a = str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof m0) && Intrinsics.c(this.f64931a, ((m0) obj).f64931a);
    }

    public int hashCode() {
        return this.f64931a.hashCode();
    }

    public final String p() {
        return this.f64931a;
    }

    public String toString() {
        return "CoroutineName(" + this.f64931a + ')';
    }
}
