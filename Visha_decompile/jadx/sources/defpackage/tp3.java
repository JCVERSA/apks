package defpackage;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class tp3 {
    public static final a c = new a(null);
    public final int a;
    public final boolean b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final tp3 a(boolean z) {
            tp3 tp3Var = z ? c.d : b.d;
            y45.h(tp3Var, "null cannot be cast to non-null type com.yandex.div.internal.template.Field<T of com.yandex.div.internal.template.Field.Companion.nullField>");
            return tp3Var;
        }

        public a() {
        }
    }

    public static final class b extends tp3 {
        public static final b d = new b();

        /* JADX WARN: Multi-variable type inference failed */
        public b() {
            super(0, 0 == true ? 1 : 0, null);
        }
    }

    public static final class c extends tp3 {
        public static final c d = new c();

        public c() {
            super(1, 1 == true ? 1 : 0, null);
        }
    }

    public static final class d extends tp3 {
        public final String d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(boolean z, String str) {
            super(3, z, null);
            y45.j(str, TypedValues.Custom.S_REFERENCE);
            this.d = str;
        }
    }

    public static final class e extends tp3 {
        public final Object d;

        public e(boolean z, Object obj) {
            super(2, z, null);
            this.d = obj;
        }
    }

    public tp3(int i, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, z);
    }

    public tp3(int i, boolean z) {
        this.a = i;
        this.b = z;
    }
}
