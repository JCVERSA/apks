package defpackage;

import java.security.GeneralSecurityException;

public final class oai implements tji {
    public static final oai a = new oai();
    public static final jji b = jji.b(new gji() {
        @Override
        public final Object a(b9i b9iVar) {
            return bgi.b((thi) b9iVar);
        }
    }, thi.class, q8i.class);

    public static void b() {
        nii.a().d(a);
        nii.a().c(b);
    }

    public static void c(kji kjiVar) {
        kjiVar.b(a);
    }

    @Override
    public final Object a(ohi ohiVar, xhi xhiVar, f9i f9iVar) throws GeneralSecurityException {
        yhi yhiVar;
        yhi yhiVarA;
        eri eriVarC;
        bji bjiVar = new bji();
        for (int i = 0; i < ohiVar.zza(); i++) {
            nhi nhiVarD = ohiVar.d(i);
            b9i b9iVarZzb = nhiVarD.zzb();
            if (b9iVarZzb instanceof iai) {
                eriVarC = ((iai) b9iVarZzb).b();
            } else {
                if (!(b9iVarZzb instanceof thi)) {
                    throw new GeneralSecurityException("Cannot get output prefix for key of class " + b9iVarZzb.getClass().getName() + " with parameters " + String.valueOf(b9iVarZzb.a()));
                }
                eriVarC = ((thi) b9iVarZzb).c();
            }
            bjiVar.a(eriVarC, new lai((q8i) f9iVar.a(nhiVarD), nhiVarD.zza()));
        }
        if (xhiVar.a()) {
            yhiVar = cii.a;
            yhiVarA = yhiVar;
        } else {
            zhi zhiVarA = lii.b().a();
            yhi yhiVarA2 = zhiVarA.a(ohiVar, xhiVar, "aead", "encrypt");
            yhiVarA = zhiVarA.a(ohiVar, xhiVar, "aead", "decrypt");
            yhiVar = yhiVarA2;
        }
        return new mai(new lai((q8i) f9iVar.a(ohiVar.zze()), ohiVar.zze().zza()), bjiVar.b(), yhiVar, yhiVarA, null);
    }

    @Override
    public final Class zza() {
        return q8i.class;
    }

    @Override
    public final Class zzb() {
        return q8i.class;
    }
}
