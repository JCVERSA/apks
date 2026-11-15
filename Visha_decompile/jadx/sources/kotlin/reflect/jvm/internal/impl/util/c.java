package kotlin.reflect.jvm.internal.impl.util;

import defpackage.y45;
import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class c {
    public final boolean a;

    public static final class a extends c {
        public static final a b = new a();

        public a() {
            super(false, null);
        }
    }

    public static final class b extends c {
        public final String b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(String str) {
            super(false, null);
            y45.j(str, "error");
            this.b = str;
        }
    }

    public static final class C0412c extends c {
        public static final C0412c b = new C0412c();

        public C0412c() {
            super(true, null);
        }
    }

    public c(boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        this(z);
    }

    public final boolean a() {
        return this.a;
    }

    public c(boolean z) {
        this.a = z;
    }
}
