package o;

import androidx.compose.runtime.i1;
import androidx.compose.runtime.u2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class a {

    private final i1 f67395a;

    public static abstract class AbstractC0824a {

        public static final class C0825a extends AbstractC0824a {

            public static final C0825a f67396a = new C0825a();

            private C0825a() {
                super(null);
            }

            public String toString() {
                return "Closed";
            }
        }

        public AbstractC0824a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private AbstractC0824a() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public a() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public final AbstractC0824a a() {
        return (AbstractC0824a) this.f67395a.getValue();
    }

    public final void b(AbstractC0824a abstractC0824a) {
        this.f67395a.setValue(abstractC0824a);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof a) {
            return Intrinsics.c(((a) obj).a(), a());
        }
        return false;
    }

    public int hashCode() {
        return a().hashCode();
    }

    public String toString() {
        return "ContextMenuState(status=" + a() + ')';
    }

    public a(AbstractC0824a abstractC0824a) {
        this.f67395a = u2.c(abstractC0824a, null, 2, null);
    }

    public a(AbstractC0824a abstractC0824a, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? AbstractC0824a.C0825a.f67396a : abstractC0824a);
    }
}
