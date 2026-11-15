package defpackage;

import kotlin.jvm.internal.DefaultConstructorMarker;

public final class tw8 {
    public static final a c = new a(null);
    public final e92 a;
    public final mv7 b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final tw8 a(ClassLoader classLoader) {
            y45.j(classLoader, "classLoader");
            rq8 rq8Var = new rq8(classLoader);
            f92.a aVar = f92.b;
            ClassLoader classLoader2 = zfb.class.getClassLoader();
            y45.i(classLoader2, "Unit::class.java.classLoader");
            f92.a.C0342a c0342aA = aVar.a(rq8Var, new rq8(classLoader2), new wp8(classLoader), "runtime module for " + classLoader, sw8.b, uw8.a);
            return new tw8(c0342aA.a().a(), new mv7(c0342aA.b(), rq8Var), null);
        }

        public a() {
        }
    }

    public tw8(e92 e92Var, mv7 mv7Var, DefaultConstructorMarker defaultConstructorMarker) {
        this(e92Var, mv7Var);
    }

    public final e92 a() {
        return this.a;
    }

    public final qq6 b() {
        return this.a.p();
    }

    public final mv7 c() {
        return this.b;
    }

    public tw8(e92 e92Var, mv7 mv7Var) {
        this.a = e92Var;
        this.b = mv7Var;
    }
}
