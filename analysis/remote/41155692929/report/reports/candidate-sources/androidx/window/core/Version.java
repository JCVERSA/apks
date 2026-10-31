package androidx.window.core;

import java.math.BigInteger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.b;
import net.pubnative.library.request.PubnativeAsset;
import o.cu7;
import o.or3;
import o.pg1;
import o.t14;

public final class Version implements Comparable {
    public static final a f = new a(null);
    public static final Version g = new Version(0, 0, 0, "");
    public static final Version h = new Version(0, 1, 0, "");
    public static final Version i;
    public static final Version j;
    public final int a;
    public final int b;
    public final int c;
    public final String d;
    public final t14 e;

    public static final class a {
        public a() {
        }

        public a(pg1 pg1Var) {
            this();
        }

        public final Version a() {
            return Version.a();
        }

        public final Version b(String str) {
            String strGroup;
            if (str != null && !cu7.B(str)) {
                Matcher matcher = Pattern.compile("(\\d+)(?:\\.(\\d+))(?:\\.(\\d+))(?:-(.+))?").matcher(str);
                if (matcher.matches() && (strGroup = matcher.group(1)) != null) {
                    int i = Integer.parseInt(strGroup);
                    String strGroup2 = matcher.group(2);
                    if (strGroup2 != null) {
                        int i2 = Integer.parseInt(strGroup2);
                        String strGroup3 = matcher.group(3);
                        if (strGroup3 != null) {
                            int i3 = Integer.parseInt(strGroup3);
                            String strGroup4 = matcher.group(4) != null ? matcher.group(4) : "";
                            or3.e(strGroup4, PubnativeAsset.DESCRIPTION);
                            return new Version(i, i2, i3, strGroup4, null);
                        }
                    }
                }
            }
            return null;
        }
    }

    static {
        Version version = new Version(1, 0, 0, "");
        i = version;
        j = version;
    }

    public Version(int i2, int i3, int i4, String str) {
        this.a = i2;
        this.b = i3;
        this.c = i4;
        this.d = str;
        this.e = b.b(new Version$bigInteger$2(this));
    }

    public Version(int i2, int i3, int i4, String str, pg1 pg1Var) {
        this(i2, i3, i4, str);
    }

    public static final Version a() {
        return h;
    }

    public int b(Version version) {
        or3.f(version, "other");
        return c().compareTo(version.c());
    }

    public final BigInteger c() {
        Object value = this.e.getValue();
        or3.e(value, "<get-bigInteger>(...)");
        return (BigInteger) value;
    }

    @Override
    public int compareTo(Object obj) {
        return b((Version) obj);
    }

    public final int d() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Version)) {
            return false;
        }
        Version version = (Version) obj;
        return this.a == version.a && this.b == version.b && this.c == version.c;
    }

    public final int f() {
        return this.b;
    }

    public final int g() {
        return this.c;
    }

    public int hashCode() {
        return ((((527 + this.a) * 31) + this.b) * 31) + this.c;
    }

    public String toString() {
        String str;
        if (!cu7.B(this.d)) {
            str = '-' + this.d;
        } else {
            str = "";
        }
        return this.a + '.' + this.b + '.' + this.c + str;
    }
}
