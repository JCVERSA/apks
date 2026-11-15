package androidx.datastore.preferences.protobuf;

final class g0 implements c1 {

    private static final m0 f8461b = new a();

    private final m0 f8462a;

    class a implements m0 {
        a() {
        }

        @Override
        public boolean isSupported(Class cls) {
            return false;
        }

        @Override
        public l0 messageInfoFor(Class cls) {
            throw new IllegalStateException("This should never be called.");
        }
    }

    static class b {

        static final int[] f8463a;

        static {
            int[] iArr = new int[ProtoSyntax.values().length];
            f8463a = iArr;
            try {
                iArr[ProtoSyntax.PROTO3.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    private static class c implements m0 {

        private m0[] f8464a;

        c(m0... m0VarArr) {
            this.f8464a = m0VarArr;
        }

        @Override
        public boolean isSupported(Class cls) {
            for (m0 m0Var : this.f8464a) {
                if (m0Var.isSupported(cls)) {
                    return true;
                }
            }
            return false;
        }

        @Override
        public l0 messageInfoFor(Class cls) {
            for (m0 m0Var : this.f8464a) {
                if (m0Var.isSupported(cls)) {
                    return m0Var.messageInfoFor(cls);
                }
            }
            throw new UnsupportedOperationException("No factory is available for message type: " + cls.getName());
        }
    }

    public g0() {
        this(b());
    }

    private static boolean a(l0 l0Var) {
        return b.f8463a[l0Var.getSyntax().ordinal()] != 1;
    }

    private static m0 b() {
        return new c(u.a(), c());
    }

    private static m0 c() {
        if (x0.f8619d) {
            return f8461b;
        }
        try {
            return (m0) Class.forName("androidx.datastore.preferences.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", null).invoke(null, null);
        } catch (Exception unused) {
            return f8461b;
        }
    }

    private static b1 d(Class cls, l0 l0Var) {
        if (e(cls)) {
            return q0.M(cls, l0Var, u0.b(), e0.b(), d1.K(), a(l0Var) ? r.b() : null, k0.b());
        }
        return q0.M(cls, l0Var, u0.a(), e0.a(), d1.J(), a(l0Var) ? r.a() : null, k0.a());
    }

    private static boolean e(Class cls) {
        return x0.f8619d || GeneratedMessageLite.class.isAssignableFrom(cls);
    }

    @Override
    public b1 createSchema(Class cls) {
        d1.G(cls);
        l0 l0VarMessageInfoFor = this.f8462a.messageInfoFor(cls);
        if (l0VarMessageInfoFor.isMessageSetWireFormat()) {
            return e(cls) ? r0.f(d1.K(), r.b(), l0VarMessageInfoFor.getDefaultInstance()) : r0.f(d1.J(), r.a(), l0VarMessageInfoFor.getDefaultInstance());
        }
        return d(cls, l0VarMessageInfoFor);
    }

    private g0(m0 m0Var) {
        this.f8462a = (m0) w.b(m0Var, "messageInfoFactory");
    }
}
