package defpackage;

import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.Map;

public final class zji {
    public final Map a;
    public final Map b;
    public final Map c;
    public final Map d;

    public zji() {
        this.a = new HashMap();
        this.b = new HashMap();
        this.c = new HashMap();
        this.d = new HashMap();
    }

    public final zji a(ihi ihiVar) throws GeneralSecurityException {
        aki akiVar = new aki(ihiVar.d(), ihiVar.c(), null);
        Map map = this.b;
        if (map.containsKey(akiVar)) {
            ihi ihiVar2 = (ihi) map.get(akiVar);
            if (!ihiVar2.equals(ihiVar) || !ihiVar.equals(ihiVar2)) {
                throw new GeneralSecurityException("Attempt to register non-equal parser for already existing object of type: ".concat(akiVar.toString()));
            }
        } else {
            map.put(akiVar, ihiVar);
        }
        return this;
    }

    public final zji b(mhi mhiVar) throws GeneralSecurityException {
        bki bkiVar = new bki(mhiVar.c(), mhiVar.d(), null);
        Map map = this.a;
        if (map.containsKey(bkiVar)) {
            mhi mhiVar2 = (mhi) map.get(bkiVar);
            if (!mhiVar2.equals(mhiVar) || !mhiVar.equals(mhiVar2)) {
                throw new GeneralSecurityException("Attempt to register non-equal serializer for already existing object of type: ".concat(bkiVar.toString()));
            }
        } else {
            map.put(bkiVar, mhiVar);
        }
        return this;
    }

    public final zji c(vii viiVar) throws GeneralSecurityException {
        aki akiVar = new aki(viiVar.d(), viiVar.c(), null);
        Map map = this.d;
        if (map.containsKey(akiVar)) {
            vii viiVar2 = (vii) map.get(akiVar);
            if (!viiVar2.equals(viiVar) || !viiVar.equals(viiVar2)) {
                throw new GeneralSecurityException("Attempt to register non-equal parser for already existing object of type: ".concat(akiVar.toString()));
            }
        } else {
            map.put(akiVar, viiVar);
        }
        return this;
    }

    public final zji d(zii ziiVar) throws GeneralSecurityException {
        bki bkiVar = new bki(ziiVar.c(), ziiVar.d(), null);
        Map map = this.c;
        if (map.containsKey(bkiVar)) {
            zii ziiVar2 = (zii) map.get(bkiVar);
            if (!ziiVar2.equals(ziiVar) || !ziiVar.equals(ziiVar2)) {
                throw new GeneralSecurityException("Attempt to register non-equal serializer for already existing object of type: ".concat(bkiVar.toString()));
            }
        } else {
            map.put(bkiVar, ziiVar);
        }
        return this;
    }

    public zji(dki dkiVar) {
        this.a = new HashMap(dkiVar.a);
        this.b = new HashMap(dkiVar.b);
        this.c = new HashMap(dkiVar.c);
        this.d = new HashMap(dkiVar.d);
    }
}
