package defpackage;

import com.transsion.socket.pkgdata.SocketData;
import org.mozilla.classfile.ByteCode;

public class pr1 extends j1 {
    public static final byte[] e = {-87, -42, -21, 69, -15, 60, 112, SocketData.CLAZZ_TYPE_SEND_PACKAGE, SocketData.CLAZZ_TYPE_END_SOCKET, -60, -106, 123, 35, 31, 94, -83, -10, 88, -21, -92, -64, 55, 41, 29, 56, -39, 107, -16, 37, -54, 78, 23, -8, -23, 114, 13, -58, 21, -76, 58, 40, -105, 95, ByteCode.T_LONG, -63, -34, -93, 100, 56, -75, 100, -22, 44, 23, -97, -48, 18, 62, 109, -72, -6, -59, 121, 4};
    public l1 b;
    public nr1 c;
    public byte[] d = e;

    public pr1(l1 l1Var) {
        this.b = l1Var;
    }

    public static byte[] n() {
        return ci.f(e);
    }

    public static pr1 p(Object obj) {
        if (obj instanceof pr1) {
            return (pr1) obj;
        }
        if (obj == null) {
            throw new IllegalArgumentException("object parse error");
        }
        s1 s1VarZ = s1.z(obj);
        pr1 pr1Var = s1VarZ.A(0) instanceof l1 ? new pr1(l1.D(s1VarZ.A(0))) : new pr1(nr1.q(s1VarZ.A(0)));
        if (s1VarZ.size() == 2) {
            byte[] bArrZ = m1.y(s1VarZ.A(1)).z();
            pr1Var.d = bArrZ;
            if (bArrZ.length != e.length) {
                throw new IllegalArgumentException("object parse error");
            }
        }
        return pr1Var;
    }

    @Override
    public p1 j() {
        y0 y0Var = new y0(2);
        x0 x0Var = this.b;
        if (x0Var == null) {
            x0Var = this.c;
        }
        y0Var.a(x0Var);
        if (!ci.b(this.d, e)) {
            y0Var.a(new wp1(this.d));
        }
        return new aq1(y0Var);
    }

    public byte[] m() {
        return ci.f(this.d);
    }

    public nr1 o() {
        return this.c;
    }

    public l1 q() {
        return this.b;
    }

    public boolean r() {
        return this.b != null;
    }

    public pr1(nr1 nr1Var) {
        this.c = nr1Var;
    }
}
