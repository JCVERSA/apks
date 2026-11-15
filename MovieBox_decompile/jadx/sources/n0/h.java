package n0;

import java.util.Locale;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class h {

    public static final a f66850b = new a(null);

    private final Locale f66851a;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final h a() {
            return k.a().d().e(0);
        }

        private a() {
        }
    }

    public h(Locale locale) {
        this.f66851a = locale;
    }

    public final Locale a() {
        return this.f66851a;
    }

    public final String b() {
        return l.a(this.f66851a);
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof h)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        return Intrinsics.c(b(), ((h) obj).b());
    }

    public int hashCode() {
        return b().hashCode();
    }

    public String toString() {
        return b();
    }

    public h(String str) {
        this(k.a().a(str));
    }
}
