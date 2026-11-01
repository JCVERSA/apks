package s0;

import android.content.Intent;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import ru.zdevs.zarchiver.archiver.C2JBridge;
import ru.zdevs.zarchiver.service.ZArchiverService;

public final class b extends g {

    public final int f1996i;

    public h0.h f1997j;

    public String f1998k;

    public Object f1999l;

    public Object f2000m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(ZArchiverService zArchiverService, int i2, int i3) {
        super(zArchiverService, (byte) 7, i2);
        this.f1996i = i3;
        if (i3 != 1) {
        } else {
            super(zArchiverService, (byte) 9, i2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:101:0x01fe  */
    /* JADX WARN: Code duplicated, block: B:104:0x0203  */
    /* JADX WARN: Code duplicated, block: B:107:0x020f  */
    /* JADX WARN: Code duplicated, block: B:109:0x022d  */
    /* JADX WARN: Code duplicated, block: B:112:0x0236  */
    /* JADX WARN: Code duplicated, block: B:114:0x023e  */
    /* JADX WARN: Code duplicated, block: B:115:0x0242  */
    /* JADX WARN: Code duplicated, block: B:118:0x024f  */
    /* JADX WARN: Code duplicated, block: B:120:0x0254  */
    /* JADX WARN: Code duplicated, block: B:124:0x0267  */
    /* JADX WARN: Code duplicated, block: B:125:0x026a  */
    /* JADX WARN: Code duplicated, block: B:128:0x027f A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:135:0x02a3  */
    /* JADX WARN: Code duplicated, block: B:137:0x02ab  */
    /* JADX WARN: Code duplicated, block: B:140:0x02b8  */
    /* JADX WARN: Code duplicated, block: B:144:0x02d9 A[DONT_GENERATE] */
    /* JADX WARN: Code duplicated, block: B:146:0x02db A[Catch: all -> 0x02f0, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:142:0x02d5, B:146:0x02db), top: B:197:0x02d5 }] */
    /* JADX WARN: Code duplicated, block: B:153:0x02f5  */
    /* JADX WARN: Code duplicated, block: B:197:0x02d5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:211:0x0261 A[EDGE_INSN: B:211:0x0261->B:122:0x0261 BREAK  A[LOOP:5: B:108:0x022b->B:121:0x025d], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:213:0x025d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:214:0x025d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:216:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:72:0x0184  */
    /* JADX WARN: Code duplicated, block: B:75:0x018d  */
    /* JADX WARN: Code duplicated, block: B:82:0x01a6  */
    /* JADX WARN: Code duplicated, block: B:85:0x01b2  */
    /* JADX WARN: Code duplicated, block: B:87:0x01b5  */
    /* JADX WARN: Code duplicated, block: B:90:0x01ca  */
    /* JADX WARN: Code duplicated, block: B:92:0x01d4  */
    /* JADX WARN: Code duplicated, block: B:93:0x01dc  */
    /* JADX WARN: Code duplicated, block: B:96:0x01f3  */
    /* JADX WARN: Code duplicated, block: B:99:0x01fb  */
    /* JADX WARN: Instruction removed from duplicated block: B:107:0x020f, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:140:0x02b8, please report this as an issue */
    @Override
    public final void p() {
        h0.h[] hVarArr;
        h0.h hVar;
        r0.c cVarC;
        int i2;
        h0.h hVar2;
        String strSubstring;
        ZArchiverService zArchiverService;
        int i3;
        String str;
        h0.f fVarU;
        boolean z2;
        String[] strArrH;
        h0.h hVar3;
        boolean z3;
        boolean z4;
        int size;
        int i4;
        h0.h hVar4;
        int i5;
        h0.h hVar5;
        h0.f fVarU2;
        boolean zCAddFiles;
        boolean zCRename = false;
        switch (this.f1996i) {
            case 0:
                int i6 = k(4) ? 4 : 3;
                if (!d(this.f1997j, true)) {
                    return;
                }
                int size2 = ((List) this.f1999l).size();
                int i7 = 0;
                while (true) {
                    char c2 = '\\';
                    if (i7 >= size2) {
                        if (k(1)) {
                            hVarArr = null;
                            hVar = null;
                            cVarC = null;
                        } else {
                            hVar = new h0.h(this.f1997j.f1108c);
                            cVarC = r0.c.c(hVar, true);
                            if (cVarC != null) {
                                byte[] bArr = a0.c.f19k;
                                int i8 = this.f2020c;
                                bArr[i8] = (byte) (bArr[i8] | (-128));
                                if (!cVarC.b(this)) {
                                    m(this.f1997j.e(), "Failed to write to archive");
                                    return;
                                }
                            }
                            if (k(4)) {
                                String strR = this.f1997j.r();
                                int size3 = ((List) this.f1999l).size();
                                int i9 = 0;
                                while (true) {
                                    if (i9 < size3) {
                                        String strD = a0.c.d(((h0.h) ((List) this.f2000m).get(i9)).r());
                                        String[] strArrH2 = v0.h.h((String) ((List) this.f1999l).get(i9), c2);
                                        int length = strArrH2.length;
                                        int i10 = 0;
                                        while (true) {
                                            if (i10 < length) {
                                                String str2 = strArrH2[i10];
                                                StringBuilder sb = new StringBuilder();
                                                sb.append(str2.startsWith("/") ? "" : strD);
                                                sb.append(str2);
                                                sb.append("/");
                                                if (strR.startsWith(sb.toString())) {
                                                    hVarArr = new h0.h[]{this.f1997j};
                                                } else {
                                                    i10++;
                                                }
                                            } else {
                                                i9++;
                                                c2 = '\\';
                                            }
                                        }
                                    } else {
                                        hVarArr = null;
                                    }
                                }
                            } else {
                                hVarArr = null;
                            }
                        }
                        int size4 = ((List) this.f1999l).size();
                        boolean z5 = true;
                        boolean z6 = false;
                        for (int i11 = 0; i11 < size4; i11++) {
                            String str3 = (String) ((List) this.f1999l).get(i11);
                            h0.h hVar6 = (h0.h) ((List) this.f2000m).get(i11);
                            e0.a.b(this.f2020c, false, this.f1997j.f1108c);
                            if (isCancelled()) {
                                zCAddFiles = false;
                            } else {
                                if (!k(1)) {
                                    if (h()) {
                                        zCAddFiles = C2JBridge.cAddFiles(this.f2020c, cVarC != null ? cVarC.f1428b : this.f1997j.f1108c, this.f1998k, str3, hVar6.f1108c);
                                    } else {
                                        z5 = false;
                                    }
                                    if (cVarC != null) {
                                        cVarC.a(this);
                                    }
                                    if (!k(1) && k(4) && z5 && !l()) {
                                        fVarU = h0.f.u(hVar);
                                        if (fVarU.d() || fVarU.o() <= 200) {
                                            z2 = false;
                                        } else {
                                            z2 = true;
                                        }
                                        if (z2) {
                                            strArrH = v0.h.h((String) ((List) this.f1999l).get(0), '\\');
                                            if (strArrH.length != 0) {
                                                if (strArrH[0].startsWith("/")) {
                                                    hVar3 = new h0.h(strArrH[0]);
                                                } else {
                                                    hVar3 = new h0.h(strArrH[0], (h0.h) ((List) this.f2000m).get(0));
                                                }
                                                if (hVar3.j() || x0.g.b(hVar3) != 1) {
                                                    z3 = false;
                                                } else {
                                                    z3 = true;
                                                }
                                                if (hVarArr != null || hVarArr.length == 0) {
                                                    z4 = false;
                                                } else {
                                                    z4 = true;
                                                }
                                                size = ((List) this.f1999l).size();
                                                for (i4 = 0; i4 < size; i4++) {
                                                    hVar4 = (h0.h) ((List) this.f2000m).get(i4);
                                                    for (String str4 : v0.h.h((String) ((List) this.f1999l).get(i4), '\\')) {
                                                        if (isCancelled()) {
                                                        }
                                                        if (str4.startsWith("/")) {
                                                            hVar5 = new h0.h(str4);
                                                        } else {
                                                            hVar5 = new h0.h(str4, hVar4);
                                                        }
                                                        fVarU2 = h0.f.u(hVar5);
                                                        if (fVarU2.d()) {
                                                            r0.b.g(this, fVarU2, hVarArr);
                                                            if (z3) {
                                                                q0.f.c(hVar5.f1108c, fVarU2.k(), z4);
                                                            }
                                                        }
                                                        break;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    if (z5) {
                                        i2 = 1179648;
                                    } else {
                                        i2 = 1114112;
                                    }
                                    q(i2);
                                    this.f2018a.l(this, z5, this.f2025h, null);
                                    if (k(256) && z5 && (hVar2 = (h0.h) ((List) this.f2000m).get(0)) != null && hVar2.j()) {
                                        strSubstring = (String) ((List) this.f1999l).get(0);
                                        if (!strSubstring.isEmpty()) {
                                            if (strSubstring.charAt(0) == '\\') {
                                                strSubstring = strSubstring.substring(1);
                                            }
                                            if (!strSubstring.contains("\\")) {
                                                zArchiverService = this.f2018a;
                                                i3 = this.f2020c;
                                                str = hVar2.r() + '/' + strSubstring;
                                                synchronized (zArchiverService) {
                                                    if (zArchiverService.f1714a) {
                                                        Intent intentH = ZArchiverService.h(i3, 0);
                                                        intentH.putExtra("iAction", 20);
                                                        intentH.putExtra("sFilePath", str);
                                                        zArchiverService.sendBroadcast(intentH);
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    if (z6) {
                                        this.f2018a.m(this.f2020c, 1, null);
                                        return;
                                    }
                                    return;
                                }
                                zCAddFiles = r0.a.a(j(), this.f1997j.f1108c, this.f1998k, str3, hVar6.f1108c);
                            }
                            n();
                            if (isCancelled()) {
                                if (cVarC != null) {
                                    cVarC.a(this);
                                }
                                if (!k(1)) {
                                    fVarU = h0.f.u(hVar);
                                    if (fVarU.d()) {
                                        z2 = false;
                                    } else {
                                        z2 = false;
                                    }
                                    if (z2) {
                                        strArrH = v0.h.h((String) ((List) this.f1999l).get(0), '\\');
                                        if (strArrH.length != 0) {
                                            if (strArrH[0].startsWith("/")) {
                                                hVar3 = new h0.h(strArrH[0]);
                                            } else {
                                                hVar3 = new h0.h(strArrH[0], (h0.h) ((List) this.f2000m).get(0));
                                            }
                                            if (hVar3.j()) {
                                                z3 = false;
                                            } else {
                                                z3 = false;
                                            }
                                            if (hVarArr != null) {
                                                z4 = false;
                                            } else {
                                                z4 = false;
                                            }
                                            size = ((List) this.f1999l).size();
                                            while (i4 < size) {
                                                hVar4 = (h0.h) ((List) this.f2000m).get(i4);
                                                while (i5 < r13) {
                                                    if (isCancelled()) {
                                                    }
                                                    if (str4.startsWith("/")) {
                                                        hVar5 = new h0.h(str4);
                                                    } else {
                                                        hVar5 = new h0.h(str4, hVar4);
                                                    }
                                                    fVarU2 = h0.f.u(hVar5);
                                                    if (fVarU2.d()) {
                                                        r0.b.g(this, fVarU2, hVarArr);
                                                        if (z3) {
                                                            q0.f.c(hVar5.f1108c, fVarU2.k(), z4);
                                                        }
                                                    }
                                                    break;
                                                }
                                            }
                                        }
                                    }
                                }
                                if (z5) {
                                    i2 = 1179648;
                                } else {
                                    i2 = 1114112;
                                }
                                q(i2);
                                this.f2018a.l(this, z5, this.f2025h, null);
                                if (k(256)) {
                                    strSubstring = (String) ((List) this.f1999l).get(0);
                                    if (!strSubstring.isEmpty()) {
                                        if (strSubstring.charAt(0) == '\\') {
                                            strSubstring = strSubstring.substring(1);
                                        }
                                        if (!strSubstring.contains("\\")) {
                                            zArchiverService = this.f2018a;
                                            i3 = this.f2020c;
                                            str = hVar2.r() + '/' + strSubstring;
                                            synchronized (zArchiverService) {
                                                if (zArchiverService.f1714a) {
                                                    Intent intentH2 = ZArchiverService.h(i3, 0);
                                                    intentH2.putExtra("iAction", 20);
                                                    intentH2.putExtra("sFilePath", str);
                                                    zArchiverService.sendBroadcast(intentH2);
                                                }
                                            }
                                        }
                                    }
                                }
                                if (z6) {
                                    this.f2018a.m(this.f2020c, 1, null);
                                    return;
                                }
                                return;
                            }
                            z5 = z5 && zCAddFiles;
                            z6 = z6 || zCAddFiles;
                        }
                        if (cVarC != null) {
                            cVarC.a(this);
                        }
                        if (!k(1)) {
                            fVarU = h0.f.u(hVar);
                            if (fVarU.d()) {
                                z2 = false;
                            } else {
                                z2 = false;
                            }
                            if (z2) {
                                strArrH = v0.h.h((String) ((List) this.f1999l).get(0), '\\');
                                if (strArrH.length != 0) {
                                    if (strArrH[0].startsWith("/")) {
                                        hVar3 = new h0.h(strArrH[0]);
                                    } else {
                                        hVar3 = new h0.h(strArrH[0], (h0.h) ((List) this.f2000m).get(0));
                                    }
                                    if (hVar3.j()) {
                                        z3 = false;
                                    } else {
                                        z3 = false;
                                    }
                                    if (hVarArr != null) {
                                        z4 = false;
                                    } else {
                                        z4 = false;
                                    }
                                    size = ((List) this.f1999l).size();
                                    while (i4 < size) {
                                        hVar4 = (h0.h) ((List) this.f2000m).get(i4);
                                        while (i5 < r13) {
                                            if (isCancelled()) {
                                            }
                                            if (str4.startsWith("/")) {
                                                hVar5 = new h0.h(str4);
                                            } else {
                                                hVar5 = new h0.h(str4, hVar4);
                                            }
                                            fVarU2 = h0.f.u(hVar5);
                                            if (fVarU2.d()) {
                                                r0.b.g(this, fVarU2, hVarArr);
                                                if (z3) {
                                                    q0.f.c(hVar5.f1108c, fVarU2.k(), z4);
                                                }
                                            }
                                            break;
                                        }
                                    }
                                }
                            }
                        }
                        if (z5) {
                            i2 = 1179648;
                        } else {
                            i2 = 1114112;
                        }
                        q(i2);
                        this.f2018a.l(this, z5, this.f2025h, null);
                        if (k(256)) {
                            strSubstring = (String) ((List) this.f1999l).get(0);
                            if (!strSubstring.isEmpty()) {
                                if (strSubstring.charAt(0) == '\\') {
                                    strSubstring = strSubstring.substring(1);
                                }
                                if (!strSubstring.contains("\\")) {
                                    zArchiverService = this.f2018a;
                                    i3 = this.f2020c;
                                    str = hVar2.r() + '/' + strSubstring;
                                    synchronized (zArchiverService) {
                                        if (zArchiverService.f1714a) {
                                            Intent intentH3 = ZArchiverService.h(i3, 0);
                                            intentH3.putExtra("iAction", 20);
                                            intentH3.putExtra("sFilePath", str);
                                            zArchiverService.sendBroadcast(intentH3);
                                        }
                                    }
                                }
                            }
                        }
                        if (z6) {
                            this.f2018a.m(this.f2020c, 1, null);
                            return;
                        }
                        return;
                    }
                    if (!g((h0.h) ((List) this.f2000m).get(i7), Arrays.asList(v0.h.h((String) ((List) this.f1999l).get(i7), '\\')), i6, 1)) {
                        return;
                    } else {
                        i7++;
                    }
                }
                break;
            default:
                if (d(this.f1997j, true)) {
                    String str5 = this.f1997j.f1108c;
                    int i12 = this.f2020c;
                    e0.a.b(i12, false, str5);
                    if (!isCancelled()) {
                        if (k(1)) {
                            o0.a aVarJ = j();
                            String str6 = this.f1997j.f1108c;
                            String str7 = (String) this.f2000m;
                            String str8 = this.f1998k;
                            String str9 = (String) this.f1999l;
                            ArrayList<o0.a> arrayList = r0.a.f1423a;
                            if (aVarJ.f()) {
                                r0.a.b(aVarJ);
                                String strB = v0.c.b(str6);
                                String strG = r0.a.g(aVarJ, strB, true);
                                String strE = r0.a.e(str7);
                                StringBuilder sb2 = new StringBuilder();
                                sb2.append(a0.c.r());
                                sb2.append(" rn '");
                                sb2.append(strB.replace("'", "'\\''"));
                                sb2.append("' ");
                                sb2.append(strE);
                                sb2.append(" -- '");
                                sb2.append(str8.replace("'", "'\\''"));
                                sb2.append("' '");
                                sb2.append(str9.replace("'", "'\\''"));
                                sb2.append("'");
                                boolean z7 = aVarJ.b(sb2.toString()) && a0.c.S(aVarJ) == 2;
                                if (strG != null) {
                                    r0.a.g(aVarJ, strG, false);
                                }
                                r0.a.d(aVarJ);
                                zCRename = z7;
                            }
                        } else if (h()) {
                            r0.c cVarC2 = r0.c.c(new h0.h(this.f1997j.f1108c), true);
                            if (cVarC2 != null) {
                                byte[] bArr2 = a0.c.f19k;
                                bArr2[i12] = (byte) (bArr2[i12] | (-128));
                                if (!cVarC2.b(this)) {
                                    e0.a.d(i12, 0, "Failed to write to archive");
                                    cVarC2 = null;
                                }
                            }
                            zCRename = C2JBridge.cRename(i12, cVarC2 != null ? cVarC2.f1428b : this.f1997j.f1108c, (String) this.f2000m, this.f1998k, (String) this.f1999l);
                            if (cVarC2 != null) {
                                cVarC2.a(this);
                            }
                        }
                    }
                    n();
                    q(zCRename ? 1179648 : 1114112);
                    ArrayList<e0.a.b> arrayList2 = this.f2025h;
                    ZArchiverService zArchiverService2 = this.f2018a;
                    zArchiverService2.l(this, zCRename, arrayList2, null);
                    if (zCRename) {
                        zArchiverService2.m(i12, 3, null);
                        return;
                    }
                    return;
                }
                return;
        }
    }

    public final void s(h0.h hVar) {
        switch (this.f1996i) {
            case 0:
                this.f1997j = hVar;
                break;
            default:
                this.f1997j = hVar;
                break;
        }
    }

    public final void t(int i2, String str) {
        switch (this.f1996i) {
            case 0:
                this.f1998k = str;
                this.f2021d = i2;
                break;
            default:
                this.f2000m = str;
                this.f2021d = i2;
                break;
        }
    }
}
