package defpackage;

public final class s93 extends f96 {
    public static final s93 d = new s93("No compatible overloaded variation was found; wrong number of arguments.", true, null);
    public final Object a;
    public final boolean b;
    public final Object[] c;

    public s93(Object obj, boolean z, Object[] objArr) {
        this.a = obj;
        this.b = z;
        this.c = objArr;
    }

    public static s93 a(Object[] objArr) {
        return new s93("Multiple compatible overloaded variations were found with the same priority.", false, objArr);
    }

    public static f96 b(o93 o93Var, Object[] objArr) {
        if (o93Var == o93.a) {
            return g(objArr);
        }
        if (o93Var == o93.b) {
            return a(objArr);
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Unrecognized constant: ");
        stringBuffer.append(o93Var);
        throw new IllegalArgumentException(stringBuffer.toString());
    }

    public static s93 f(int i) {
        return new s93(new Object[]{"No compatible overloaded variation was found; can't convert (unwrap) the ", new l0d(new Integer(i)), " argument to the desired Java type."}, false, null);
    }

    public static s93 g(Object[] objArr) {
        return new s93("No compatible overloaded variation was found; declared parameter types and argument value types mismatch.", false, objArr);
    }

    public Object c() {
        return this.a;
    }

    public Object[] d() {
        return this.c;
    }

    public boolean e() {
        return this.b;
    }
}
