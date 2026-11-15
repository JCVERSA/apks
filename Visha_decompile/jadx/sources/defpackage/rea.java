package defpackage;

import android.os.Bundle;

public class rea implements com.google.android.gms.common.api.a.d {
    public static final rea c = a().a();
    public final String b;

    public static class a {
        public String a;

        public a(lzd lzdVar) {
        }

        public rea a() {
            return new rea(this.a, null);
        }
    }

    public rea(String str, nzd nzdVar) {
        this.b = str;
    }

    public static a a() {
        return new a(null);
    }

    public final Bundle b() {
        Bundle bundle = new Bundle();
        String str = this.b;
        if (str != null) {
            bundle.putString("api", str);
        }
        return bundle;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof rea) {
            return jc7.a(this.b, ((rea) obj).b);
        }
        return false;
    }

    public final int hashCode() {
        return jc7.b(this.b);
    }
}
