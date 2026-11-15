package defpackage;

import io.appmetrica.analytics.coreutils.internal.StringUtils;

public class cd2 extends j1 implements v0 {
    public x0 b;
    public int c;

    public cd2(y1 y1Var) {
        int iJ = y1Var.J();
        this.c = iJ;
        this.b = iJ == 0 ? ld4.n(y1Var, false) : t1.x(y1Var, false);
    }

    public static cd2 n(y1 y1Var, boolean z) {
        return o(y1.G(y1Var, true));
    }

    public static cd2 o(Object obj) {
        if (obj == null || (obj instanceof cd2)) {
            return (cd2) obj;
        }
        if (obj instanceof y1) {
            return new cd2((y1) obj);
        }
        throw new IllegalArgumentException("unknown object in factory: " + obj.getClass().getName());
    }

    @Override
    public p1 j() {
        return new dq1(false, this.c, this.b);
    }

    public final void m(StringBuffer stringBuffer, String str, String str2, String str3) {
        stringBuffer.append("    ");
        stringBuffer.append(str2);
        stringBuffer.append(StringUtils.PROCESS_POSTFIX_DELIMITER);
        stringBuffer.append(str);
        stringBuffer.append("    ");
        stringBuffer.append("    ");
        stringBuffer.append(str3);
        stringBuffer.append(str);
    }

    public String toString() {
        String string;
        String str;
        String strD = u0a.d();
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("DistributionPointName: [");
        stringBuffer.append(strD);
        if (this.c == 0) {
            string = this.b.toString();
            str = "fullName";
        } else {
            string = this.b.toString();
            str = "nameRelativeToCRLIssuer";
        }
        m(stringBuffer, strD, str, string);
        stringBuffer.append("]");
        stringBuffer.append(strD);
        return stringBuffer.toString();
    }
}
