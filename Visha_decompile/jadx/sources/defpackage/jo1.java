package defpackage;

import android.graphics.Color;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class jo1 {
    public static final a e = new a(null);
    public final String a;
    public final int b;
    public final float c;
    public c74 d;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final jo1 a(String str, c74 c74Var) {
            y45.j(str, "title");
            return new jo1(str, Color.parseColor("#FF007AFF"), 16.0f, c74Var);
        }

        public a() {
        }
    }

    public jo1(String str, int i, float f, c74 c74Var) {
        y45.j(str, "title");
        this.a = str;
        this.b = i;
        this.c = f;
        this.d = c74Var;
    }

    public final c74 a() {
        return this.d;
    }

    public final int b() {
        return this.b;
    }

    public final float c() {
        return this.c;
    }

    public final String d() {
        return this.a;
    }

    public final void e(c74 c74Var) {
        this.d = c74Var;
    }
}
