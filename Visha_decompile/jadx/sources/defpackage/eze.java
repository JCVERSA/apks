package defpackage;

public class eze {
    public final String a;
    public final Object b;
    public final int c;

    public eze(String str, Object obj, int i) {
        this.a = str;
        this.b = obj;
        this.c = i;
    }

    public static eze a(String str, double d) {
        return new eze(str, Double.valueOf(d), 3);
    }

    public static eze b(String str, long j) {
        return new eze(str, Long.valueOf(j), 2);
    }

    public static eze c(String str, String str2) {
        return new eze("gad:dynamite_module:experiment_id", "", 4);
    }

    public static eze d(String str, boolean z) {
        return new eze(str, Boolean.valueOf(z), 1);
    }

    public final Object e() {
        o0f o0fVarA = q0f.a();
        if (o0fVarA == null) {
            q0f.b();
            return this.b;
        }
        int i = this.c - 1;
        if (i == 0) {
            return o0fVarA.d(this.a, ((Boolean) this.b).booleanValue());
        }
        if (i != 1) {
            return i != 2 ? o0fVarA.a(this.a, (String) this.b) : o0fVarA.b(this.a, ((Double) this.b).doubleValue());
        }
        return o0fVarA.c(this.a, ((Long) this.b).longValue());
    }
}
