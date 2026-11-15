package defpackage;

import java.io.IOException;
import java.math.BigInteger;
import java.util.HashSet;
import java.util.Set;

public abstract class qg8 {
    public static Set a;

    static {
        HashSet hashSet = new HashSet(5);
        a = hashSet;
        hashSet.add(wl1.x);
        a.add(wl1.y);
        a.add(wl1.z);
        a.add(wl1.A);
        a.add(wl1.B);
    }

    public static og8 a(dj djVar, t1 t1Var) throws IOException {
        int iBitLength;
        oqc oqcVar;
        BigInteger bigIntegerD;
        if (djVar instanceof cn8) {
            dn8 dn8Var = (dn8) djVar;
            return new og8(new oa(yu7.F1, up1.c), new en8(dn8Var.d(), dn8Var.j(), dn8Var.b(), dn8Var.i(), dn8Var.k(), dn8Var.g(), dn8Var.h(), dn8Var.l()), t1Var);
        }
        if (!(djVar instanceof l53)) {
            if (djVar instanceof aqc) {
                aqc aqcVar = (aqc) djVar;
                return new og8(new oa(g63.c), new wp1(aqcVar.getEncoded()), t1Var, aqcVar.b().getEncoded());
            }
            if (djVar instanceof wpc) {
                wpc wpcVar = (wpc) djVar;
                return new og8(new oa(g63.b), new wp1(wpcVar.getEncoded()), t1Var, wpcVar.b().getEncoded());
            }
            if (djVar instanceof e63) {
                e63 e63Var = (e63) djVar;
                return new og8(new oa(g63.e), new wp1(e63Var.getEncoded()), t1Var, e63Var.b().getEncoded());
            }
            if (!(djVar instanceof b63)) {
                throw new IOException("key parameters not recognized");
            }
            b63 b63Var = (b63) djVar;
            return new og8(new oa(g63.d), new wp1(b63Var.getEncoded()), t1Var, b63Var.b().getEncoded());
        }
        l53 l53Var = (l53) djVar;
        u43 u43VarB = l53Var.b();
        if (u43VarB != null) {
            if (u43VarB instanceof g53) {
                oqcVar = new oqc(((g53) u43VarB).i());
                bigIntegerD = u43VarB.d();
            } else {
                oqc oqcVar2 = new oqc(new qqc(u43VarB.a(), new sqc(u43VarB.b(), false), u43VarB.d(), u43VarB.c(), u43VarB.e()));
                iBitLength = u43VarB.d().bitLength();
                oqcVar = oqcVar2;
            }
            return new og8(new oa(wqc.m5, oqcVar), new k53(iBitLength, l53Var.c(), new np1(new fx3().b(u43VarB.b(), l53Var.c()).l(false)), oqcVar), t1Var);
        }
        oqcVar = new oqc((h1) up1.c);
        bigIntegerD = l53Var.c();
        iBitLength = bigIntegerD.bitLength();
        return new og8(new oa(wqc.m5, oqcVar), new k53(iBitLength, l53Var.c(), new np1(new fx3().b(u43VarB.b(), l53Var.c()).l(false)), oqcVar), t1Var);
    }
}
