package h7;

import android.graphics.Color;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class e {

    public static final a f61306e = new a(null);

    private final String f61307a;

    private final int f61308b;

    private final float f61309c;

    private Function0 f61310d;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final e a(String title, Function0 function0) {
            Intrinsics.h(title, "title");
            return new e(title, Color.parseColor("#FF007AFF"), 16.0f, function0);
        }

        private a() {
        }
    }

    public e(String title, int i10, float f10, Function0 function0) {
        Intrinsics.h(title, "title");
        this.f61307a = title;
        this.f61308b = i10;
        this.f61309c = f10;
        this.f61310d = function0;
    }

    public final Function0 a() {
        return this.f61310d;
    }

    public final int b() {
        return this.f61308b;
    }

    public final float c() {
        return this.f61309c;
    }

    public final String d() {
        return this.f61307a;
    }

    public final void e(Function0 function0) {
        this.f61310d = function0;
    }
}
