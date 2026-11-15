package defpackage;

import android.graphics.Color;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class ko1 {
    public static final a d = new a(null);
    public final String a;
    public final int b;
    public final float c;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ko1 a(String str) {
            y45.j(str, "title");
            return new ko1(str, Color.parseColor("#92969E"), 14.0f);
        }

        public final ko1 b(String str) {
            y45.j(str, "title");
            return new ko1(str, Color.parseColor("#191F2B"), 16.0f);
        }

        public a() {
        }
    }

    public ko1(String str, int i, float f) {
        y45.j(str, "text");
        this.a = str;
        this.b = i;
        this.c = f;
    }

    public final int a() {
        return this.b;
    }

    public final String b() {
        return this.a;
    }

    public final float c() {
        return this.c;
    }
}
