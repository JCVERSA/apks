package defpackage;

import com.yandex.div.R;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.io.IOUtils;

public final class md3 {
    public final boolean a;
    public final int b;
    public final int c;
    public final String d;
    public final String e;

    public md3(boolean z, int i, int i2, String str, String str2) {
        y45.j(str, "errorDetails");
        y45.j(str2, "warningDetails");
        this.a = z;
        this.b = i;
        this.c = i2;
        this.d = str;
        this.e = str2;
    }

    public static md3 b(md3 md3Var, boolean z, int i, int i2, String str, String str2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            z = md3Var.a;
        }
        if ((i3 & 2) != 0) {
            i = md3Var.b;
        }
        int i4 = i;
        if ((i3 & 4) != 0) {
            i2 = md3Var.c;
        }
        int i5 = i2;
        if ((i3 & 8) != 0) {
            str = md3Var.d;
        }
        String str3 = str;
        if ((i3 & 16) != 0) {
            str2 = md3Var.e;
        }
        return md3Var.a(z, i4, i5, str3, str2);
    }

    public final md3 a(boolean z, int i, int i2, String str, String str2) {
        y45.j(str, "errorDetails");
        y45.j(str2, "warningDetails");
        return new md3(z, i, i2, str, str2);
    }

    public final int c() {
        int i = this.c;
        if (i > 0 && this.b > 0) {
            return R.drawable.warning_error_counter_background;
        }
        if (i == 0 && this.b == 0) {
            return R.drawable.neutral_counter_background;
        }
        return i > 0 ? R.drawable.warning_counter_background : R.drawable.error_counter_background;
    }

    public final String d() {
        int i = this.b;
        if (i <= 0 || this.c <= 0) {
            int i2 = this.c;
            if (i2 > 0) {
                return String.valueOf(i2);
            }
            return i > 0 ? String.valueOf(i) : "";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.b);
        sb.append(IOUtils.DIR_SEPARATOR_UNIX);
        sb.append(this.c);
        return sb.toString();
    }

    public final String e() {
        if (this.b <= 0 || this.c <= 0) {
            return this.c > 0 ? this.e : this.d;
        }
        return this.d + "\n\n" + this.e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof md3)) {
            return false;
        }
        md3 md3Var = (md3) obj;
        return this.a == md3Var.a && this.b == md3Var.b && this.c == md3Var.c && y45.e(this.d, md3Var.d) && y45.e(this.e, md3Var.e);
    }

    public final boolean f() {
        return this.a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11 */
    public int hashCode() {
        boolean z = this.a;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        return (((((((r0 * 31) + Integer.hashCode(this.b)) * 31) + Integer.hashCode(this.c)) * 31) + this.d.hashCode()) * 31) + this.e.hashCode();
    }

    public String toString() {
        return "ErrorViewModel(showDetails=" + this.a + ", errorCount=" + this.b + ", warningCount=" + this.c + ", errorDetails=" + this.d + ", warningDetails=" + this.e + ')';
    }

    public md3(boolean z, int i, int i2, String str, String str2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? false : z, (i3 & 2) != 0 ? 0 : i, (i3 & 4) != 0 ? 0 : i2, (i3 & 8) != 0 ? "" : str, (i3 & 16) != 0 ? "" : str2);
    }
}
