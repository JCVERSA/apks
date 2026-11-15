package defpackage;

import java.math.BigInteger;
import java.security.spec.ECField;
import java.security.spec.ECFieldF2m;
import java.security.spec.ECFieldFp;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.security.spec.EllipticCurve;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import org.bouncycastle.jce.provider.BouncyCastleProvider;

public abstract class q43 {

    public static class a {
        public static Map a = a();

        public static Map a() {
            HashMap map = new HashMap();
            Enumeration enumerationM = oo1.m();
            while (enumerationM.hasMoreElements()) {
                String str = (String) enumerationM.nextElement();
                rqc rqcVarA = f53.a(str);
                if (rqcVarA != null) {
                    t43 t43VarC = rqcVarA.c();
                    if (r43.e(t43VarC)) {
                        map.put(t43VarC, oo1.i(str).c());
                    }
                }
            }
            t43 t43VarC2 = oo1.i("Curve25519").c();
            map.put(new t43.f(t43VarC2.q().b(), t43VarC2.m().t(), t43VarC2.n().t(), t43VarC2.u(), t43VarC2.o(), true), t43VarC2);
            return map;
        }

        public static t43 b(t43 t43Var) {
            t43 t43Var2 = (t43) a.get(t43Var);
            return t43Var2 != null ? t43Var2 : t43Var;
        }
    }

    public static t43 a(EllipticCurve ellipticCurve) {
        ECField field = ellipticCurve.getField();
        BigInteger a2 = ellipticCurve.getA();
        BigInteger b = ellipticCurve.getB();
        if (field instanceof ECFieldFp) {
            return a.b(new t43.f(((ECFieldFp) field).getP(), a2, b, null, null));
        }
        ECFieldF2m eCFieldF2m = (ECFieldF2m) field;
        int m = eCFieldF2m.getM();
        int[] iArrA = p53.a(eCFieldF2m.getMidTermsOfReductionPolynomial());
        return new t43.e(m, iArrA[0], iArrA[1], iArrA[2], a2, b, (BigInteger) null, (BigInteger) null);
    }

    public static EllipticCurve b(t43 t43Var, byte[] bArr) {
        return new EllipticCurve(c(t43Var.q()), t43Var.m().t(), t43Var.n().t(), null);
    }

    public static ECField c(vv3 vv3Var) {
        if (r43.f(vv3Var)) {
            return new ECFieldFp(vv3Var.b());
        }
        rc8 rc8VarC = ((sc8) vv3Var).c();
        int[] iArrA = rc8VarC.a();
        return new ECFieldF2m(rc8VarC.b(), ci.G(ci.r(iArrA, 1, iArrA.length - 1)));
    }

    public static i53 d(t43 t43Var, ECPoint eCPoint) {
        return t43Var.g(eCPoint.getAffineX(), eCPoint.getAffineY());
    }

    public static i53 e(ECParameterSpec eCParameterSpec, ECPoint eCPoint) {
        return d(a(eCParameterSpec.getCurve()), eCPoint);
    }

    public static ECPoint f(i53 i53Var) {
        i53 i53VarY = i53Var.y();
        return new ECPoint(i53VarY.f().t(), i53VarY.g().t());
    }

    public static h53 g(ECParameterSpec eCParameterSpec) {
        t43 t43VarA = a(eCParameterSpec.getCurve());
        i53 i53VarD = d(t43VarA, eCParameterSpec.getGenerator());
        BigInteger order = eCParameterSpec.getOrder();
        BigInteger bigIntegerValueOf = BigInteger.valueOf(eCParameterSpec.getCofactor());
        byte[] seed = eCParameterSpec.getCurve().getSeed();
        return eCParameterSpec instanceof e53 ? new d53(((e53) eCParameterSpec).a(), t43VarA, i53VarD, order, bigIntegerValueOf, seed) : new h53(t43VarA, i53VarD, order, bigIntegerValueOf, seed);
    }

    public static ECParameterSpec h(EllipticCurve ellipticCurve, h53 h53Var) {
        ECPoint eCPointF = f(h53Var.b());
        return h53Var instanceof d53 ? new e53(((d53) h53Var).f(), ellipticCurve, eCPointF, h53Var.d(), h53Var.c()) : new ECParameterSpec(ellipticCurve, eCPointF, h53Var.d(), h53Var.c().intValue());
    }

    public static ECParameterSpec i(oqc oqcVar, t43 t43Var) {
        ECParameterSpec e53Var;
        if (oqcVar.p()) {
            l1 l1Var = (l1) oqcVar.n();
            qqc qqcVarF = p53.f(l1Var);
            if (qqcVarF == null) {
                Map mapC = BouncyCastleProvider.CONFIGURATION.c();
                if (!mapC.isEmpty()) {
                    qqcVarF = (qqc) mapC.get(l1Var);
                }
            }
            return new e53(p53.c(l1Var), b(t43Var, qqcVarF.r()), f(qqcVarF.n()), qqcVarF.q(), qqcVarF.o());
        }
        if (oqcVar.o()) {
            return null;
        }
        s1 s1VarZ = s1.z(oqcVar.n());
        if (s1VarZ.size() > 3) {
            qqc qqcVarP = qqc.p(s1VarZ);
            EllipticCurve ellipticCurveB = b(t43Var, qqcVarP.r());
            e53Var = qqcVarP.o() != null ? new ECParameterSpec(ellipticCurveB, f(qqcVarP.n()), qqcVarP.q(), qqcVarP.o().intValue()) : new ECParameterSpec(ellipticCurveB, f(qqcVarP.n()), qqcVarP.q(), 1);
        } else {
            pa4 pa4VarO = pa4.o(s1VarZ);
            d53 d53VarA = x43.a(y43.l(pa4VarO.p()));
            e53Var = new e53(y43.l(pa4VarO.p()), b(d53VarA.a(), d53VarA.e()), f(d53VarA.b()), d53VarA.d(), d53VarA.c());
        }
        return e53Var;
    }

    public static ECParameterSpec j(qqc qqcVar) {
        return new ECParameterSpec(b(qqcVar.m(), null), f(qqcVar.n()), qqcVar.q(), qqcVar.o().intValue());
    }

    public static t43 k(qj8 qj8Var, oqc oqcVar) {
        Set setB = qj8Var.b();
        if (!oqcVar.p()) {
            if (oqcVar.o()) {
                return qj8Var.a().a();
            }
            s1 s1VarZ = s1.z(oqcVar.n());
            if (setB.isEmpty()) {
                return (s1VarZ.size() > 3 ? qqc.p(s1VarZ) : y43.k(l1.D(s1VarZ.A(0)))).m();
            }
            throw new IllegalStateException("encoded parameters not acceptable");
        }
        l1 l1VarD = l1.D(oqcVar.n());
        if (!setB.isEmpty() && !setB.contains(l1VarD)) {
            throw new IllegalStateException("named curve not acceptable");
        }
        qqc qqcVarF = p53.f(l1VarD);
        if (qqcVarF == null) {
            qqcVarF = (qqc) qj8Var.c().get(l1VarD);
        }
        return qqcVarF.m();
    }

    public static u43 l(qj8 qj8Var, ECParameterSpec eCParameterSpec) {
        if (eCParameterSpec != null) {
            return p53.d(qj8Var, g(eCParameterSpec));
        }
        h53 h53VarA = qj8Var.a();
        return new u43(h53VarA.a(), h53VarA.b(), h53VarA.d(), h53VarA.c(), h53VarA.e());
    }
}
