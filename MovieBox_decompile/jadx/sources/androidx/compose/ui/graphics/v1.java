package androidx.compose.ui.graphics;

import android.graphics.ColorFilter;
import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class v1 {

    public static final a f4366b = new a(null);

    private final ColorFilter f4367a;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static v1 b(a aVar, long j10, int i10, int i11, Object obj) {
            if ((i11 & 2) != 0) {
                i10 = c1.f3983a.z();
            }
            return aVar.a(j10, i10);
        }

        public final v1 a(long j10, int i10) {
            return new d1(j10, i10, (DefaultConstructorMarker) null);
        }

        private a() {
        }
    }

    public v1(ColorFilter colorFilter) {
        this.f4367a = colorFilter;
    }

    public final ColorFilter a() {
        return this.f4367a;
    }
}
