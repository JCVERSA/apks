package defpackage;

import java.io.IOException;

public class kd4 extends j1 implements v0 {
    public x0 b;
    public int c;

    public kd4(int i, x0 x0Var) {
        this.b = x0Var;
        this.c = i;
    }

    public static kd4 m(Object obj) {
        if (obj == null || (obj instanceof kd4)) {
            return (kd4) obj;
        }
        if (!(obj instanceof y1)) {
            if (obj instanceof byte[]) {
                try {
                    return m(p1.t((byte[]) obj));
                } catch (IOException unused) {
                    throw new IllegalArgumentException("unable to parse encoded general name");
                }
            }
            throw new IllegalArgumentException("unknown object in getInstance: " + obj.getClass().getName());
        }
        y1 y1Var = (y1) obj;
        int iJ = y1Var.J();
        switch (iJ) {
            case 0:
            case 3:
            case 5:
                return new kd4(iJ, s1.y(y1Var, false));
            case 1:
            case 2:
            case 6:
                return new kd4(iJ, e1.x(y1Var, false));
            case 4:
                return new kd4(iJ, cqc.m(y1Var, true));
            case 7:
                return new kd4(iJ, m1.x(y1Var, false));
            case 8:
                return new kd4(iJ, l1.C(y1Var, false));
            default:
                throw new IllegalArgumentException("unknown tag: " + iJ);
        }
    }

    @Override
    public p1 j() {
        int i = this.c;
        return new dq1(i == 4, i, this.b);
    }

    public x0 n() {
        return this.b;
    }

    public int o() {
        return this.c;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0032  */
    public String toString() {
        String string;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.c);
        stringBuffer.append(": ");
        int i = this.c;
        if (i == 1 || i == 2) {
            string = e1.y(this.b).getString();
        } else if (i == 4) {
            string = cqc.o(this.b).toString();
        } else if (i != 6) {
            string = this.b.toString();
        } else {
            string = e1.y(this.b).getString();
        }
        stringBuffer.append(string);
        return stringBuffer.toString();
    }

    public kd4(cqc cqcVar) {
        this.b = cqcVar;
        this.c = 4;
    }
}
