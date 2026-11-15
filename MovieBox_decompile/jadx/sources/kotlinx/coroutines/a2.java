package kotlinx.coroutines;

public abstract class a2 extends i0 {
    @Override
    public i0 limitedParallelism(int i10, String str) {
        kotlinx.coroutines.internal.i.a(i10);
        return kotlinx.coroutines.internal.i.b(this, str);
    }

    public abstract a2 p();

    protected final String q() {
        a2 a2VarP;
        a2 a2VarC = y0.c();
        if (this == a2VarC) {
            return "Dispatchers.Main";
        }
        try {
            a2VarP = a2VarC.p();
        } catch (UnsupportedOperationException unused) {
            a2VarP = null;
        }
        if (this == a2VarP) {
            return "Dispatchers.Main.immediate";
        }
        return null;
    }

    @Override
    public String toString() {
        String strQ = q();
        if (strQ != null) {
            return strQ;
        }
        return p0.a(this) + '@' + p0.b(this);
    }
}
