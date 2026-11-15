package defpackage;

import android.text.TextUtils;
import java.util.Objects;

public class d5d {
    public String a;
    public String b;
    public int c;
    public int d;
    public int e;
    public boolean f;

    public d5d(String str, String str2, int i, int i2, int i3, boolean z) {
        this.a = str;
        this.b = str2;
        this.c = i;
        this.d = i2;
        this.e = i3;
        this.f = z;
    }

    public String a() {
        return this.a + "-" + this.b + "-" + this.d + "-" + this.c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof d5d) {
            return TextUtils.equals(a(), ((d5d) obj).a());
        }
        return false;
    }

    public int hashCode() {
        return Objects.hash(this.a, this.b, Integer.valueOf(this.c), Integer.valueOf(this.d), Integer.valueOf(this.e), Boolean.valueOf(this.f));
    }
}
