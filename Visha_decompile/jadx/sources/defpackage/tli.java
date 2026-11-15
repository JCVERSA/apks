package defpackage;

import com.mgtv.downloader.p2p.mg.DownloadFacadeEnum;
import java.security.GeneralSecurityException;

public final class tli implements tji {
    public static final tli a = new tli();
    public static final jji b = jji.b(new gji() {
        @Override
        public final Object a(b9i b9iVar) {
            return pmi.a((thi) b9iVar);
        }
    }, thi.class, o9i.class);

    public static void b() {
        nii.a().d(a);
        nii.a().c(b);
    }

    @Override
    public final Object a(ohi ohiVar, xhi xhiVar, f9i f9iVar) throws GeneralSecurityException {
        yhi yhiVar;
        yhi yhiVarA;
        eri eriVarC;
        bji bjiVar = new bji();
        for (int i = 0; i < ohiVar.zza(); i++) {
            nhi nhiVarD = ohiVar.d(i);
            o9i o9iVar = (o9i) f9iVar.a(nhiVarD);
            b9i b9iVarZzb = nhiVarD.zzb();
            if (b9iVarZzb instanceof nli) {
                eriVarC = ((nli) b9iVarZzb).b();
            } else {
                if (!(b9iVarZzb instanceof thi)) {
                    throw new GeneralSecurityException("Cannot get output prefix for key of class " + b9iVarZzb.getClass().getName() + " with parameters " + String.valueOf(b9iVarZzb.a()));
                }
                eriVarC = ((thi) b9iVarZzb).c();
            }
            bjiVar.a(eriVarC, new qli(o9iVar, nhiVarD.zza()));
        }
        if (xhiVar.a()) {
            yhiVar = cii.a;
            yhiVarA = yhiVar;
        } else {
            zhi zhiVarA = lii.b().a();
            yhi yhiVarA2 = zhiVarA.a(ohiVar, xhiVar, DownloadFacadeEnum.USER_MAC, "compute");
            yhiVarA = zhiVarA.a(ohiVar, xhiVar, DownloadFacadeEnum.USER_MAC, "verify");
            yhiVar = yhiVarA2;
        }
        return new rli(new qli((o9i) f9iVar.a(ohiVar.zze()), ohiVar.zze().zza()), bjiVar.b(), yhiVar, yhiVarA, null);
    }

    @Override
    public final Class zza() {
        return o9i.class;
    }

    @Override
    public final Class zzb() {
        return o9i.class;
    }
}
