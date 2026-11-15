package androidx.window.core;

import java.math.BigInteger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public final class Version implements Comparable {

    public static final a f14949f = new a(null);

    private static final Version f14950g = new Version(0, 0, 0, "");

    private static final Version f14951h = new Version(0, 1, 0, "");

    private static final Version f14952i;

    private static final Version f14953j;

    private final int f14954a;

    private final int f14955b;

    private final int f14956c;

    private final String f14957d;

    private final Lazy f14958e;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Version a() {
            return Version.f14951h;
        }

        public final Version b(String str) {
            if (str == null || StringsKt.q0(str)) {
                return null;
            }
            Matcher matcher = Pattern.compile("(\\d+)(?:\\.(\\d+))(?:\\.(\\d+))(?:-(.+))?").matcher(str);
            if (!matcher.matches()) {
                return null;
            }
            String strGroup = matcher.group(1);
            Integer numValueOf = strGroup == null ? null : Integer.valueOf(Integer.parseInt(strGroup));
            if (numValueOf == null) {
                return null;
            }
            int iIntValue = numValueOf.intValue();
            String strGroup2 = matcher.group(2);
            Integer numValueOf2 = strGroup2 == null ? null : Integer.valueOf(Integer.parseInt(strGroup2));
            if (numValueOf2 == null) {
                return null;
            }
            int iIntValue2 = numValueOf2.intValue();
            String strGroup3 = matcher.group(3);
            Integer numValueOf3 = strGroup3 == null ? null : Integer.valueOf(Integer.parseInt(strGroup3));
            if (numValueOf3 == null) {
                return null;
            }
            int iIntValue3 = numValueOf3.intValue();
            String description = matcher.group(4) != null ? matcher.group(4) : "";
            Intrinsics.g(description, "description");
            return new Version(iIntValue, iIntValue2, iIntValue3, description, null);
        }

        private a() {
        }
    }

    static {
        Version version = new Version(1, 0, 0, "");
        f14952i = version;
        f14953j = version;
    }

    public Version(int i10, int i11, int i12, String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, i11, i12, str);
    }

    private final BigInteger d() {
        Object value = this.f14958e.getValue();
        Intrinsics.g(value, "<get-bigInteger>(...)");
        return (BigInteger) value;
    }

    @Override
    public int compareTo(Version other) {
        Intrinsics.h(other, "other");
        return d().compareTo(other.d());
    }

    public final int e() {
        return this.f14954a;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Version)) {
            return false;
        }
        Version version = (Version) obj;
        return this.f14954a == version.f14954a && this.f14955b == version.f14955b && this.f14956c == version.f14956c;
    }

    public final int f() {
        return this.f14955b;
    }

    public final int g() {
        return this.f14956c;
    }

    public int hashCode() {
        return ((((527 + this.f14954a) * 31) + this.f14955b) * 31) + this.f14956c;
    }

    public String toString() {
        return this.f14954a + '.' + this.f14955b + '.' + this.f14956c + (!StringsKt.q0(this.f14957d) ? Intrinsics.q("-", this.f14957d) : "");
    }

    private Version(int i10, int i11, int i12, String str) {
        this.f14954a = i10;
        this.f14955b = i11;
        this.f14956c = i12;
        this.f14957d = str;
        this.f14958e = LazyKt.b(new Function0<BigInteger>() {
            {
                super(0);
            }

            @Override
            public final BigInteger invoke() {
                return BigInteger.valueOf(this.this$0.e()).shiftLeft(32).or(BigInteger.valueOf(this.this$0.f())).shiftLeft(32).or(BigInteger.valueOf(this.this$0.g()));
            }
        });
    }
}
