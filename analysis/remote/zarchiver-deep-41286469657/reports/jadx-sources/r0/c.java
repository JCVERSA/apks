package r0;

import h0.h;
import java.io.File;
import ru.zdevs.zarchiver.io.SAF;
import ru.zdevs.zarchiver.service.ZArchiverService;
import x0.d;

public final class c {

    public final boolean f1427a;

    public final String f1428b;

    public final h f1429c;

    public final h f1430d;

    public c(String str, h hVar, h hVar2, boolean z2) {
        this.f1428b = str;
        this.f1429c = hVar;
        this.f1430d = hVar2;
        this.f1427a = z2;
    }

    public static c c(h hVar, boolean z2) {
        d.a aVarJ;
        String strO = SAF.o(hVar.f1108c);
        if (strO == null || (aVarJ = d.j(strO)) == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder("Android/data/ru.zdevs.zarchiver/cache/tmp");
        sb.append(System.currentTimeMillis() % 1000);
        sb.append(z2 ? "/" : "");
        sb.append(hVar.e());
        String string = sb.toString();
        h hVarN = SAF.n(aVarJ, string);
        if (hVarN == null) {
            return null;
        }
        String str = aVarJ.f2255b + "/" + string;
        try {
            File file = new File(z2 ? a0.c.A(str) : str);
            if (file.exists() || file.mkdirs()) {
                return new c(str, hVarN, hVar, z2);
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public final boolean a(s0.a aVar) {
        int iJ;
        int iJ2 = !ZArchiverService.i(1) ? 17 : 0;
        File file = new File(this.f1428b);
        boolean z2 = this.f1427a;
        h hVar = this.f1430d;
        h hVar2 = this.f1429c;
        if (z2) {
            iJ = b.j(aVar, hVar2, hVar.f(), iJ2, 1);
            File parentFile = file.getParentFile();
            if (parentFile != null && parentFile.exists()) {
                if (parentFile.isDirectory()) {
                    n0.d.c(parentFile);
                }
                parentFile.delete();
            }
        } else {
            String[] list = file.list();
            if (list != null) {
                for (String str : list) {
                    iJ2 = b.j(aVar, new h(str, hVar2), hVar, iJ2, 1);
                    if (iJ2 < 0) {
                        break;
                    }
                }
            }
            if (file.exists()) {
                if (file.isDirectory()) {
                    n0.d.c(file);
                }
                file.delete();
            }
            iJ = iJ2;
        }
        return iJ != -1;
    }

    public final boolean b(s0.a aVar) {
        if (this.f1427a) {
            return b.j(aVar, this.f1430d, this.f1429c.f(), 17, 1) != -1;
        }
        return true;
    }
}
