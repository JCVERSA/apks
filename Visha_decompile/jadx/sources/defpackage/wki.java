package defpackage;

import java.security.GeneralSecurityException;

public final class wki implements tji {
    public static final wki a = new wki();

    public static void b() {
        nii.a().d(a);
    }

    @Override
    public final Object a(ohi ohiVar, xhi xhiVar, f9i f9iVar) throws GeneralSecurityException {
        eri eriVarC;
        nhi nhiVarZze = ohiVar.zze();
        if (nhiVarZze == null) {
            throw new GeneralSecurityException("no primary in primitive set");
        }
        bji bjiVar = new bji();
        for (int i = 0; i < ohiVar.zza(); i++) {
            nhi nhiVarD = ohiVar.d(i);
            tki tkiVar = (tki) f9iVar.a(nhiVarD);
            b9i b9iVarZzb = nhiVarD.zzb();
            if (b9iVarZzb instanceof nli) {
                eriVarC = ((nli) b9iVarZzb).b();
            } else {
                if (!(b9iVarZzb instanceof thi)) {
                    throw new GeneralSecurityException("Cannot get output prefix for key of class " + b9iVarZzb.getClass().getName() + " with parameters " + String.valueOf(b9iVarZzb.a()));
                }
                eriVarC = ((thi) b9iVarZzb).c();
            }
            bjiVar.a(eriVarC, tkiVar);
        }
        return new uki(bjiVar.b(), (tki) f9iVar.a(nhiVarZze), null);
    }

    @Override
    public final Class zza() {
        return tki.class;
    }

    @Override
    public final Class zzb() {
        return tki.class;
    }
}
