package defpackage;

public class ld4 extends j1 {
    public final kd4[] b;

    public ld4(s1 s1Var) {
        this.b = new kd4[s1Var.size()];
        for (int i = 0; i != s1Var.size(); i++) {
            this.b[i] = kd4.m(s1Var.A(i));
        }
    }

    public static kd4[] m(kd4[] kd4VarArr) {
        kd4[] kd4VarArr2 = new kd4[kd4VarArr.length];
        System.arraycopy(kd4VarArr, 0, kd4VarArr2, 0, kd4VarArr.length);
        return kd4VarArr2;
    }

    public static ld4 n(y1 y1Var, boolean z) {
        return new ld4(s1.y(y1Var, z));
    }

    public static ld4 o(Object obj) {
        if (obj instanceof ld4) {
            return (ld4) obj;
        }
        if (obj != null) {
            return new ld4(s1.z(obj));
        }
        return null;
    }

    @Override
    public p1 j() {
        return new aq1(this.b);
    }

    public kd4[] p() {
        return m(this.b);
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        String strD = u0a.d();
        stringBuffer.append("GeneralNames:");
        stringBuffer.append(strD);
        for (int i = 0; i != this.b.length; i++) {
            stringBuffer.append("    ");
            stringBuffer.append(this.b[i]);
            stringBuffer.append(strD);
        }
        return stringBuffer.toString();
    }

    public ld4(kd4 kd4Var) {
        this.b = new kd4[]{kd4Var};
    }
}
