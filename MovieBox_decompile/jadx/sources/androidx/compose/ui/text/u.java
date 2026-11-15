package androidx.compose.ui.text;

import kotlin.jvm.internal.DefaultConstructorMarker;

public final class u {

    public static final a f6137c = new a(null);

    private static final u f6138d = new u();

    private final boolean f6139a;

    private final int f6140b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public u(int i10, boolean z10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, z10);
    }

    public final int a() {
        return this.f6140b;
    }

    public final boolean b() {
        return this.f6139a;
    }

    public final u c(u uVar) {
        return uVar == null ? this : uVar;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof u)) {
            return false;
        }
        u uVar = (u) obj;
        return this.f6139a == uVar.f6139a && e.g(this.f6140b, uVar.f6140b);
    }

    public int hashCode() {
        return (androidx.compose.foundation.e.a(this.f6139a) * 31) + e.h(this.f6140b);
    }

    public String toString() {
        return "PlatformParagraphStyle(includeFontPadding=" + this.f6139a + ", emojiSupportMatch=" + ((Object) e.i(this.f6140b)) + ')';
    }

    public u(boolean z10) {
        this.f6139a = z10;
        this.f6140b = e.f5783b.b();
    }

    private u(int i10, boolean z10) {
        this.f6139a = z10;
        this.f6140b = i10;
    }

    public u() {
        this(e.f5783b.b(), false, null);
    }
}
