package defpackage;

import androidx.media3.extractor.avi.AviExtractor;
import com.google.common.collect.ImmutableList;

public final class pl5 implements s30 {
    public final ImmutableList a;
    public final int b;

    public pl5(int i, ImmutableList immutableList) {
        this.b = i;
        this.a = immutableList;
    }

    public static s30 a(int i, int i2, qw7 qw7Var) {
        switch (i) {
            case AviExtractor.FOURCC_strf:
                return oy9.d(i2, qw7Var);
            case AviExtractor.FOURCC_avih:
                return u30.b(qw7Var);
            case AviExtractor.FOURCC_strh:
                return v30.c(qw7Var);
            case AviExtractor.FOURCC_strn:
                return ry9.a(qw7Var);
            default:
                return null;
        }
    }

    public static pl5 c(int i, qw7 qw7Var) {
        ImmutableList.a aVar = new ImmutableList.a();
        int iF = qw7Var.f();
        int iB = -2;
        while (qw7Var.a() > 8) {
            int iP = qw7Var.p();
            int iE = qw7Var.e() + qw7Var.p();
            qw7Var.N(iE);
            s30 s30VarC = iP == 1414744396 ? c(qw7Var.p(), qw7Var) : a(iP, iB, qw7Var);
            if (s30VarC != null) {
                if (s30VarC.getType() == 1752331379) {
                    iB = ((v30) s30VarC).b();
                }
                aVar.a(s30VarC);
            }
            qw7Var.O(iE);
            qw7Var.N(iF);
        }
        return new pl5(i, aVar.e());
    }

    public s30 b(Class cls) {
        dgb it = this.a.iterator();
        while (it.hasNext()) {
            s30 s30Var = (s30) it.next();
            if (s30Var.getClass() == cls) {
                return s30Var;
            }
        }
        return null;
    }

    @Override
    public int getType() {
        return this.b;
    }
}
