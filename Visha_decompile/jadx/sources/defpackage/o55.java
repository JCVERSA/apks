package defpackage;

import io.appmetrica.analytics.coreutils.internal.StringUtils;
import org.apache.commons.lang3.BooleanUtils;

public class o55 extends j1 {
    public cd2 b;
    public boolean c;
    public boolean d;
    public mo8 e;
    public boolean f;
    public boolean g;
    public s1 h;

    public o55(s1 s1Var) {
        this.h = s1Var;
        for (int i = 0; i != s1Var.size(); i++) {
            y1 y1VarH = y1.H(s1Var.A(i));
            int iJ = y1VarH.J();
            if (iJ == 0) {
                this.b = cd2.n(y1VarH, true);
            } else if (iJ == 1) {
                this.c = u0.x(y1VarH, false).A();
            } else if (iJ == 2) {
                this.d = u0.x(y1VarH, false).A();
            } else if (iJ == 3) {
                this.e = new mo8(s0.y(y1VarH, false));
            } else if (iJ == 4) {
                this.f = u0.x(y1VarH, false).A();
            } else {
                if (iJ != 5) {
                    throw new IllegalArgumentException("unknown tag in IssuingDistributionPoint");
                }
                this.g = u0.x(y1VarH, false).A();
            }
        }
    }

    private void m(StringBuffer stringBuffer, String str, String str2, String str3) {
        stringBuffer.append("    ");
        stringBuffer.append(str2);
        stringBuffer.append(StringUtils.PROCESS_POSTFIX_DELIMITER);
        stringBuffer.append(str);
        stringBuffer.append("    ");
        stringBuffer.append("    ");
        stringBuffer.append(str3);
        stringBuffer.append(str);
    }

    public static o55 o(Object obj) {
        if (obj instanceof o55) {
            return (o55) obj;
        }
        if (obj != null) {
            return new o55(s1.z(obj));
        }
        return null;
    }

    @Override
    public p1 j() {
        return this.h;
    }

    public final String n(boolean z) {
        return z ? BooleanUtils.TRUE : BooleanUtils.FALSE;
    }

    public boolean p() {
        return this.f;
    }

    public String toString() {
        String strD = u0a.d();
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("IssuingDistributionPoint: [");
        stringBuffer.append(strD);
        cd2 cd2Var = this.b;
        if (cd2Var != null) {
            m(stringBuffer, strD, "distributionPoint", cd2Var.toString());
        }
        boolean z = this.c;
        if (z) {
            m(stringBuffer, strD, "onlyContainsUserCerts", n(z));
        }
        boolean z2 = this.d;
        if (z2) {
            m(stringBuffer, strD, "onlyContainsCACerts", n(z2));
        }
        mo8 mo8Var = this.e;
        if (mo8Var != null) {
            m(stringBuffer, strD, "onlySomeReasons", mo8Var.toString());
        }
        boolean z3 = this.g;
        if (z3) {
            m(stringBuffer, strD, "onlyContainsAttributeCerts", n(z3));
        }
        boolean z4 = this.f;
        if (z4) {
            m(stringBuffer, strD, "indirectCRL", n(z4));
        }
        stringBuffer.append("]");
        stringBuffer.append(strD);
        return stringBuffer.toString();
    }
}
