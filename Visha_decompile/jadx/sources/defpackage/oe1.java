package defpackage;

import java.io.File;

public class oe1 {
    public final File a;
    public final rq3 b;
    public final hc2 c;
    public final bu9 d;
    public final po4 e;

    public oe1(File file, rq3 rq3Var, hc2 hc2Var, bu9 bu9Var, po4 po4Var) {
        this.a = file;
        this.b = rq3Var;
        this.c = hc2Var;
        this.d = bu9Var;
        this.e = po4Var;
    }

    public File a(String str) {
        return new File(this.a, this.b.a(str));
    }
}
