package s0;

import java.io.File;
import java.util.ArrayList;
import ru.zdevs.zarchiver.archiver.C2JBridge;
import ru.zdevs.zarchiver.service.ZArchiverService;

public final class d extends g {

    public h0.h f2005i;

    public String f2006j;

    public boolean f2007k;

    public String f2008l;

    public d(ZArchiverService zArchiverService, int i2) {
        super(zArchiverService, (byte) 12, i2);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0025  */
    /* JADX WARN: Code duplicated, block: B:15:0x002f  */
    /* JADX WARN: Code duplicated, block: B:18:0x003d  */
    /* JADX WARN: Code duplicated, block: B:20:0x0043  */
    /* JADX WARN: Code duplicated, block: B:22:0x0055  */
    /* JADX WARN: Code duplicated, block: B:24:0x005b  */
    /* JADX WARN: Code duplicated, block: B:26:0x006a  */
    /* JADX WARN: Code duplicated, block: B:28:0x0079  */
    /* JADX WARN: Code duplicated, block: B:30:0x0081  */
    /* JADX WARN: Code duplicated, block: B:31:0x0084  */
    /* JADX WARN: Code duplicated, block: B:34:0x0092  */
    @Override
    public final void p() {
        boolean zCreateNewFile;
        r0.c cVarC;
        String str;
        boolean zCAddFiles;
        if (d(this.f2005i, true)) {
            String strH = n0.e.h();
            File file = new File(strH, this.f2006j);
            boolean z2 = this.f2007k;
            int i2 = this.f2020c;
            boolean z3 = false;
            if (z2) {
                try {
                    zCreateNewFile = file.createNewFile();
                } catch (Exception unused) {
                    zCreateNewFile = false;
                }
                if (zCreateNewFile) {
                    e0.a.b(i2, false, this.f2005i.f1108c);
                    if (!isCancelled()) {
                        if (k(1)) {
                            zCAddFiles = r0.a.a(j(), this.f2005i.f1108c, this.f2008l, this.f2006j, strH);
                        } else if (h()) {
                            cVarC = r0.c.c(new h0.h(this.f2005i.f1108c), true);
                            if (cVarC != null) {
                                byte[] bArr = a0.c.f19k;
                                bArr[i2] = (byte) (bArr[i2] | (-128));
                                if (!cVarC.b(this)) {
                                    e0.a.d(i2, 0, "Failed to write to archive");
                                    cVarC = null;
                                }
                            }
                            if (cVarC != null) {
                                str = cVarC.f1428b;
                            } else {
                                str = this.f2005i.f1108c;
                            }
                            zCAddFiles = C2JBridge.cAddFiles(i2, str, this.f2008l, this.f2006j, strH);
                            if (cVarC != null) {
                                cVarC.a(this);
                            }
                        }
                        z3 = zCAddFiles;
                    }
                    n();
                    file.delete();
                } else if (!this.f2007k && file.mkdir()) {
                    e0.a.b(i2, false, this.f2005i.f1108c);
                    if (!isCancelled()) {
                        if (k(1)) {
                            zCAddFiles = r0.a.a(j(), this.f2005i.f1108c, this.f2008l, this.f2006j, strH);
                        } else if (h()) {
                            cVarC = r0.c.c(new h0.h(this.f2005i.f1108c), true);
                            if (cVarC != null) {
                                byte[] bArr2 = a0.c.f19k;
                                bArr2[i2] = (byte) (bArr2[i2] | (-128));
                                if (!cVarC.b(this)) {
                                    e0.a.d(i2, 0, "Failed to write to archive");
                                    cVarC = null;
                                }
                            }
                            if (cVarC != null) {
                                str = cVarC.f1428b;
                            } else {
                                str = this.f2005i.f1108c;
                            }
                            zCAddFiles = C2JBridge.cAddFiles(i2, str, this.f2008l, this.f2006j, strH);
                            if (cVarC != null) {
                                cVarC.a(this);
                            }
                        }
                        z3 = zCAddFiles;
                    }
                    n();
                    file.delete();
                }
            } else if (!this.f2007k) {
                e0.a.b(i2, false, this.f2005i.f1108c);
                if (!isCancelled()) {
                    if (k(1)) {
                        zCAddFiles = r0.a.a(j(), this.f2005i.f1108c, this.f2008l, this.f2006j, strH);
                    } else if (h()) {
                        cVarC = r0.c.c(new h0.h(this.f2005i.f1108c), true);
                        if (cVarC != null) {
                            byte[] bArr3 = a0.c.f19k;
                            bArr3[i2] = (byte) (bArr3[i2] | (-128));
                            if (!cVarC.b(this)) {
                                e0.a.d(i2, 0, "Failed to write to archive");
                                cVarC = null;
                            }
                        }
                        if (cVarC != null) {
                            str = cVarC.f1428b;
                        } else {
                            str = this.f2005i.f1108c;
                        }
                        zCAddFiles = C2JBridge.cAddFiles(i2, str, this.f2008l, this.f2006j, strH);
                        if (cVarC != null) {
                            cVarC.a(this);
                        }
                    }
                    z3 = zCAddFiles;
                }
                n();
                file.delete();
            }
            q(z3 ? 1179648 : 1114112);
            ArrayList<e0.a.b> arrayList = this.f2025h;
            ZArchiverService zArchiverService = this.f2018a;
            zArchiverService.l(this, z3, arrayList, null);
            if (z3) {
                zArchiverService.m(i2, 1, null);
            }
        }
    }
}
