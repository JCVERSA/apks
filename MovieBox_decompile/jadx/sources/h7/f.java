package h7;

import android.graphics.Color;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class f {

    public static final a f61311d = new a(null);

    private final String f61312a;

    private final int f61313b;

    private final float f61314c;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final f a(String title) {
            Intrinsics.h(title, "title");
            return new f(title, Color.parseColor("#92969E"), 14.0f);
        }

        public final f b(String title) {
            Intrinsics.h(title, "title");
            return new f(title, Color.parseColor("#191F2B"), 16.0f);
        }

        private a() {
        }
    }

    public f(String text, int i10, float f10) {
        Intrinsics.h(text, "text");
        this.f61312a = text;
        this.f61313b = i10;
        this.f61314c = f10;
    }

    public final int a() {
        return this.f61313b;
    }

    public final String b() {
        return this.f61312a;
    }

    public final float c() {
        return this.f61314c;
    }
}
