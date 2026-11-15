package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import kotlin.jvm.internal.DefaultConstructorMarker;

public final class a {
    public static final C0387a e = new C0387a(null);
    public static final a f = new a(null, null, false, false, 8, null);
    public final NullabilityQualifier a;
    public final MutabilityQualifier b;
    public final boolean c;
    public final boolean d;

    public static final class C0387a {
        public C0387a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final a a() {
            return a.f;
        }

        public C0387a() {
        }
    }

    public a(NullabilityQualifier nullabilityQualifier, MutabilityQualifier mutabilityQualifier, boolean z, boolean z2) {
        this.a = nullabilityQualifier;
        this.b = mutabilityQualifier;
        this.c = z;
        this.d = z2;
    }

    public final boolean b() {
        return this.c;
    }

    public final MutabilityQualifier c() {
        return this.b;
    }

    public final NullabilityQualifier d() {
        return this.a;
    }

    public final boolean e() {
        return this.d;
    }

    public a(NullabilityQualifier nullabilityQualifier, MutabilityQualifier mutabilityQualifier, boolean z, boolean z2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(nullabilityQualifier, mutabilityQualifier, z, (i & 8) != 0 ? false : z2);
    }
}
