package androidx.compose.ui.text.font;

import androidx.compose.runtime.a3;
import kotlin.jvm.internal.DefaultConstructorMarker;

public interface e0 extends a3 {
    boolean a();

    public static final class a implements e0 {

        private final Object f5813a;

        private final boolean f5814b;

        public a(Object obj, boolean z10) {
            this.f5813a = obj;
            this.f5814b = z10;
        }

        @Override
        public boolean a() {
            return this.f5814b;
        }

        @Override
        public Object getValue() {
            return this.f5813a;
        }

        public a(Object obj, boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this(obj, (i10 & 2) != 0 ? true : z10);
        }
    }
}
