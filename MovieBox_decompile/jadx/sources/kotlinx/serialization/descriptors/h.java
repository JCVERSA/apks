package kotlinx.serialization.descriptors;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

public abstract class h {

    public static final class a extends h {

        public static final a f65099a = new a();

        private a() {
            super(null);
        }
    }

    public static final class b extends h {

        public static final b f65100a = new b();

        private b() {
            super(null);
        }
    }

    public h(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public int hashCode() {
        return toString().hashCode();
    }

    public String toString() {
        String strG = Reflection.b(getClass()).g();
        Intrinsics.e(strG);
        return strG;
    }

    private h() {
    }
}
