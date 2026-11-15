package defpackage;

public class rq4 {
    public final sq4 a;

    public rq4(sq4 sq4Var) {
        y45.j(sq4Var, "histogramReporterDelegate");
        this.a = sq4Var;
    }

    public static void b(rq4 rq4Var, String str, long j, String str2, String str3, mq4 mq4Var, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: reportDuration");
        }
        rq4Var.a(str, j, (i & 4) != 0 ? null : str2, (i & 8) != 0 ? null : str3, (i & 16) != 0 ? mq4.a.f() : mq4Var);
    }

    public void a(String str, long j, String str2, String str3, mq4 mq4Var) {
        y45.j(str, "histogramName");
        y45.j(mq4Var, "filter");
        if (mq4Var.a(null)) {
            this.a.a(str, j, str3);
        }
        if (str2 != null) {
            String str4 = str2 + '.' + str;
            if (mq4Var.a(str2)) {
                this.a.a(str4, j, str3);
            }
        }
    }
}
