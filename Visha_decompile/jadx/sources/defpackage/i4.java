package defpackage;

import java.io.IOException;
import java.util.Enumeration;
import java.util.Hashtable;
import org.bouncycastle.asn1.ASN1ParsingException;

public abstract class i4 implements eqc {
    public static Hashtable h(Hashtable hashtable) {
        Hashtable hashtable2 = new Hashtable();
        Enumeration enumerationKeys = hashtable.keys();
        while (enumerationKeys.hasMoreElements()) {
            Object objNextElement = enumerationKeys.nextElement();
            hashtable2.put(objNextElement, hashtable.get(objNextElement));
        }
        return hashtable2;
    }

    @Override
    public x0 a(l1 l1Var, String str) {
        if (str.length() == 0 || str.charAt(0) != '#') {
            if (str.length() != 0 && str.charAt(0) == '\\') {
                str = str.substring(1);
            }
            return i(l1Var, str);
        }
        try {
            return zu4.u(str, 1);
        } catch (IOException unused) {
            throw new ASN1ParsingException("can't recode value for oid " + l1Var.B());
        }
    }

    @Override
    public int c(cqc cqcVar) {
        wm8[] wm8VarArrP = cqcVar.p();
        int iHashCode = 0;
        for (int i = 0; i != wm8VarArrP.length; i++) {
            if (wm8VarArrP[i].p()) {
                nl[] nlVarArrO = wm8VarArrP[i].o();
                for (int i2 = 0; i2 != nlVarArrO.length; i2++) {
                    iHashCode = (iHashCode ^ nlVarArrO[i2].n().hashCode()) ^ g(nlVarArrO[i2].o());
                }
            } else {
                iHashCode = (iHashCode ^ wm8VarArrP[i].m().n().hashCode()) ^ g(wm8VarArrP[i].m().o());
            }
        }
        return iHashCode;
    }

    @Override
    public boolean f(cqc cqcVar, cqc cqcVar2) {
        if (cqcVar.size() != cqcVar2.size()) {
            return false;
        }
        wm8[] wm8VarArrP = cqcVar.p();
        wm8[] wm8VarArrP2 = cqcVar2.p();
        nl nlVarM = wm8VarArrP[0].m();
        nl nlVarM2 = wm8VarArrP2[0].m();
        boolean z = (nlVarM == null || nlVarM2 == null) ? false : !nlVarM.n().s(nlVarM2.n());
        for (int i = 0; i != wm8VarArrP.length; i++) {
            if (!j(z, wm8VarArrP[i], wm8VarArrP2)) {
                return false;
            }
        }
        return true;
    }

    public final int g(x0 x0Var) {
        return zu4.g(x0Var).hashCode();
    }

    public x0 i(l1 l1Var, String str) {
        return new fq1(str);
    }

    public final boolean j(boolean z, wm8 wm8Var, wm8[] wm8VarArr) {
        if (z) {
            for (int length = wm8VarArr.length - 1; length >= 0; length--) {
                wm8 wm8Var2 = wm8VarArr[length];
                if (wm8Var2 != null && k(wm8Var, wm8Var2)) {
                    wm8VarArr[length] = null;
                    return true;
                }
            }
        } else {
            for (int i = 0; i != wm8VarArr.length; i++) {
                wm8 wm8Var3 = wm8VarArr[i];
                if (wm8Var3 != null && k(wm8Var, wm8Var3)) {
                    wm8VarArr[i] = null;
                    return true;
                }
            }
        }
        return false;
    }

    public boolean k(wm8 wm8Var, wm8 wm8Var2) {
        return zu4.o(wm8Var, wm8Var2);
    }
}
