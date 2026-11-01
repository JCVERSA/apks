package j0;

import android.os.Build;
import android.os.Environment;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.system.StructStat;
import android.system.StructStatVfs;
import d0.i;
import h0.h;
import java.io.File;
import java.util.Iterator;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZApp;
import ru.zdevs.zarchiver.io.SAF;

public final class b extends a {
    public static d0.d q(String str, String str2) {
        try {
            StructStat structStatStat = Os.stat(str + str2);
            if (OsConstants.S_ISDIR(structStatStat.st_mode)) {
                return null;
            }
            return new d0.d(str2, (byte) 9, (byte) 0, 1000 * structStatStat.st_mtime, structStatStat.st_size);
        } catch (ErrnoException unused) {
            return null;
        }
    }

    @Override
    public final i b(i iVar) {
        i iVar2 = new i(iVar.size());
        Iterator<d0.d> it = iVar.iterator();
        while (it.hasNext()) {
            d0.f fVar = (d0.f) it.next();
            try {
                if (Os.access(fVar.f552k.f1108c + '/' + fVar.f539a, OsConstants.F_OK)) {
                    iVar2.i(fVar);
                }
            } catch (ErrnoException unused) {
            }
        }
        return iVar2;
    }

    /* JADX WARN: Code duplicated, block: B:126:0x01fb  */
    /* JADX WARN: Code duplicated, block: B:127:0x01fc  */
    /* JADX WARN: Code duplicated, block: B:129:0x0200  */
    /* JADX WARN: Code duplicated, block: B:130:0x0202 A[Catch: Exception -> 0x029f, TryCatch #1 {Exception -> 0x029f, blocks: (B:46:0x00ae, B:51:0x00b9, B:53:0x00bd, B:55:0x00c7, B:57:0x00cd, B:60:0x00d7, B:63:0x00de, B:66:0x00f2, B:68:0x00f8, B:70:0x0100, B:72:0x0106, B:73:0x010e, B:76:0x0113, B:80:0x0132, B:82:0x0140, B:84:0x0146, B:85:0x014f, B:89:0x015d, B:91:0x0165, B:94:0x016f, B:99:0x0182, B:101:0x0197, B:103:0x019f, B:107:0x01ae, B:109:0x01b8, B:111:0x01be, B:120:0x01df, B:121:0x01e1, B:150:0x0249, B:118:0x01d2, B:130:0x0202, B:135:0x020c, B:138:0x0225, B:142:0x022e, B:152:0x0257, B:156:0x0261, B:158:0x0269, B:160:0x026f, B:161:0x0278, B:166:0x028a, B:169:0x0291), top: B:178:0x00ae }] */
    /* JADX WARN: Code duplicated, block: B:135:0x020c A[Catch: Exception -> 0x029f, TryCatch #1 {Exception -> 0x029f, blocks: (B:46:0x00ae, B:51:0x00b9, B:53:0x00bd, B:55:0x00c7, B:57:0x00cd, B:60:0x00d7, B:63:0x00de, B:66:0x00f2, B:68:0x00f8, B:70:0x0100, B:72:0x0106, B:73:0x010e, B:76:0x0113, B:80:0x0132, B:82:0x0140, B:84:0x0146, B:85:0x014f, B:89:0x015d, B:91:0x0165, B:94:0x016f, B:99:0x0182, B:101:0x0197, B:103:0x019f, B:107:0x01ae, B:109:0x01b8, B:111:0x01be, B:120:0x01df, B:121:0x01e1, B:150:0x0249, B:118:0x01d2, B:130:0x0202, B:135:0x020c, B:138:0x0225, B:142:0x022e, B:152:0x0257, B:156:0x0261, B:158:0x0269, B:160:0x026f, B:161:0x0278, B:166:0x028a, B:169:0x0291), top: B:178:0x00ae }] */
    /* JADX WARN: Code duplicated, block: B:136:0x0222  */
    /* JADX WARN: Code duplicated, block: B:138:0x0225 A[Catch: Exception -> 0x029f, TryCatch #1 {Exception -> 0x029f, blocks: (B:46:0x00ae, B:51:0x00b9, B:53:0x00bd, B:55:0x00c7, B:57:0x00cd, B:60:0x00d7, B:63:0x00de, B:66:0x00f2, B:68:0x00f8, B:70:0x0100, B:72:0x0106, B:73:0x010e, B:76:0x0113, B:80:0x0132, B:82:0x0140, B:84:0x0146, B:85:0x014f, B:89:0x015d, B:91:0x0165, B:94:0x016f, B:99:0x0182, B:101:0x0197, B:103:0x019f, B:107:0x01ae, B:109:0x01b8, B:111:0x01be, B:120:0x01df, B:121:0x01e1, B:150:0x0249, B:118:0x01d2, B:130:0x0202, B:135:0x020c, B:138:0x0225, B:142:0x022e, B:152:0x0257, B:156:0x0261, B:158:0x0269, B:160:0x026f, B:161:0x0278, B:166:0x028a, B:169:0x0291), top: B:178:0x00ae }] */
    /* JADX WARN: Code duplicated, block: B:140:0x022b  */
    /* JADX WARN: Code duplicated, block: B:190:0x023b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:38:0x009d  */
    @Override
    public final boolean g(h hVar, d0.b bVar, int i2) {
        char c2;
        int i3;
        String[] strArr;
        int i4;
        String str;
        String str2;
        StructStat structStatLstat;
        boolean z2;
        long j2;
        byte b2;
        byte b3;
        String[] strArrA;
        h hVarM;
        this.f1152a = 0;
        File file = hVar.toFile();
        if (file == null) {
            return false;
        }
        String absolutePath = file.getAbsolutePath();
        int i5 = Build.VERSION.SDK_INT;
        boolean z3 = true;
        if (i5 < 30 || (strArrA = x0.g.a(absolutePath)) == null) {
            c2 = 0;
        } else {
            boolean z4 = "Android/data".equals(strArrA[2]) || "Android/obb".equals(strArrA[2]);
            if (t0.b.f(67108864)) {
                c2 = '\n';
            } else if (n0.i.b(strArrA)) {
                file = new File(n0.i.a(absolutePath, strArrA[2]));
                c2 = 11;
            } else if (i5 < 33 || !z4) {
                String strI = SAF.i(strArrA[2]);
                x0.d.a aVarJ = x0.d.j(strArrA[0]);
                if (aVarJ != null && aVarJ.d(strI) && (hVarM = SAF.m(aVarJ.a(), strI, true, false)) != null) {
                    hVar.p(hVarM.f1108c);
                    hVar.q(hVarM.f1106a);
                    return false;
                }
                if (z4) {
                    c2 = 1;
                } else {
                    c2 = 3;
                }
            } else if (!"Android/obb".equals(strArrA[2]) || h1.h.b()) {
                c2 = 2;
            } else {
                c2 = 1;
            }
        }
        if (!file.isDirectory() && c2 != 2) {
            return false;
        }
        bVar.clear();
        try {
            String[] list = file.list();
            if (c2 == 2) {
                if (list != null) {
                    int length = list.length;
                    int i6 = 0;
                    while (true) {
                        if (i6 >= length) {
                            z3 = true;
                            break;
                        }
                        String str3 = list[i6];
                        if (!".".equals(str3) && !"..".equals(str3) && !"ru.zdevs.zarchiver".equals(str3)) {
                            z3 = false;
                            break;
                        }
                        i6++;
                    }
                }
                if (z3) {
                    list = g.a(absolutePath, absolutePath.startsWith(x0.d.m().f2255b));
                }
            }
            if (list == null) {
                if (!a0.c.K(i2, 2)) {
                    return false;
                }
                if (!"/".equals(absolutePath) && a0.c.K(i2, 4)) {
                    bVar.add(0, new d0.d("..", (byte) 3));
                }
                this.f1152a = R.string.MES_ACCESS_DENIED;
                return true;
            }
            String strD = a0.c.d(file.getAbsolutePath());
            byte bN = a.n(absolutePath.replace(n0.i.f1262a, ""), false);
            boolean z5 = !a0.c.K(i2, 32);
            bVar.ensureCapacity(list.length + 1);
            if (strD.lastIndexOf(47) > 1 && a0.c.K(i2, 4)) {
                bVar.add(0, new d0.d("..", (byte) 3));
            }
            int size = bVar.size();
            boolean zK = a0.c.K(i2, 2);
            boolean z6 = !zK;
            int length2 = list.length;
            boolean z7 = z6;
            int i7 = 0;
            boolean z8 = zK;
            boolean z9 = false;
            while (i7 < length2) {
                String str4 = list[i7];
                if (str4.isEmpty()) {
                    strArr = list;
                    i4 = length2;
                } else {
                    try {
                        try {
                            try {
                                if (z5) {
                                    strArr = list;
                                    i4 = length2;
                                    if (str4.charAt(0) == '.') {
                                    }
                                    i7++;
                                    length2 = i4;
                                    list = strArr;
                                    strD = str;
                                    z5 = z5;
                                } else {
                                    strArr = list;
                                    i4 = length2;
                                }
                                long j3 = -2;
                                if (OsConstants.S_ISDIR(structStatLstat.st_mode)) {
                                    byte bL = a.l(str4, bN);
                                    if (bL == 0) {
                                        bL = a.m(str2);
                                    }
                                    if (!z2) {
                                        j3 = 0;
                                    }
                                    b3 = bL;
                                    j2 = j3;
                                    b2 = 4;
                                } else {
                                    if (!z2) {
                                        j3 = structStatLstat.st_size;
                                    }
                                    j2 = j3;
                                    z7 = false;
                                    b2 = -1;
                                    b3 = 0;
                                }
                                bVar.add(new d0.d(str4, b2, b3, structStatLstat.st_mtime * 1000, j2));
                            } catch (ErrnoException unused) {
                                if (!z8) {
                                    if (c2 == '\n') {
                                        return false;
                                    }
                                    if (c2 != 0 && t0.b.i(absolutePath)) {
                                        return false;
                                    }
                                    if (c2 == 2) {
                                        bVar.add(new d0.d(str4, (byte) 4, (byte) 126, -1L, 0L));
                                    } else {
                                        if ((c2 != 1 && Build.VERSION.SDK_INT < 33) || c2 == 3) {
                                            bVar.clear();
                                            this.f1152a = R.string.MES_ACCESS_DENIED;
                                            return true;
                                        }
                                        z9 = true;
                                        z8 = true;
                                    }
                                }
                                i7++;
                                length2 = i4;
                                list = strArr;
                                strD = str;
                                z5 = z5;
                            }
                            if (OsConstants.S_ISLNK(structStatLstat.st_mode)) {
                                try {
                                    structStatLstat = Os.stat(str2);
                                    z2 = true;
                                } catch (ErrnoException unused2) {
                                    z5 = z5;
                                    if (!z8) {
                                        if (c2 == '\n') {
                                            return false;
                                        }
                                        if (c2 != 0) {
                                        }
                                        if (c2 == 2) {
                                            if (c2 != 1) {
                                                z9 = true;
                                                z8 = true;
                                            } else {
                                                z9 = true;
                                                z8 = true;
                                            }
                                            bVar.clear();
                                            this.f1152a = R.string.MES_ACCESS_DENIED;
                                            return true;
                                        }
                                        bVar.add(new d0.d(str4, (byte) 4, (byte) 126, -1L, 0L));
                                    }
                                    i7++;
                                    length2 = i4;
                                    list = strArr;
                                    strD = str;
                                    z5 = z5;
                                }
                            } else {
                                z2 = false;
                            }
                        } catch (ErrnoException unused3) {
                            z5 = z5;
                            if (!z8) {
                                if (c2 == '\n') {
                                    return false;
                                }
                                if (c2 != 0) {
                                }
                                if (c2 == 2) {
                                    if (c2 != 1) {
                                        z9 = true;
                                        z8 = true;
                                    } else {
                                        z9 = true;
                                        z8 = true;
                                    }
                                    bVar.clear();
                                    this.f1152a = R.string.MES_ACCESS_DENIED;
                                    return true;
                                }
                                bVar.add(new d0.d(str4, (byte) 4, (byte) 126, -1L, 0L));
                            }
                            i7++;
                            length2 = i4;
                            list = strArr;
                            strD = str;
                            z5 = z5;
                        }
                        str2 = strD + str4;
                        structStatLstat = Os.lstat(str2);
                        str = strD;
                    } catch (ErrnoException unused4) {
                        str = strD;
                    }
                    i7++;
                    length2 = i4;
                    list = strArr;
                    strD = str;
                    z5 = z5;
                }
                str = strD;
                z5 = z5;
                i7++;
                length2 = i4;
                list = strArr;
                strD = str;
                z5 = z5;
            }
            if (z7 && (((i3 = Build.VERSION.SDK_INT) >= 33 || (i3 >= 30 && !z0.e.d(ZApp.f1434c))) && !Environment.isExternalStorageManager())) {
                bVar.clear();
                this.f1152a = R.string.MES_ACCESS_DENIED;
            } else if (bVar.size() <= size) {
                this.f1152a = z9 ? R.string.MES_ACCESS_DENIED : R.string.MES_EMPTY_FOLDER;
            } else if (c2 == 11) {
                hVar.p(file.getAbsolutePath());
            }
            hVar.q("file");
            return true;
        } catch (Exception unused5) {
            return false;
        }
    }

    @Override
    public final h0.e.a h(h hVar) {
        if (!hVar.j() || hVar.l()) {
            return null;
        }
        try {
            StructStatVfs structStatVfsStatvfs = Os.statvfs(hVar.r());
            long j2 = structStatVfsStatvfs.f_bavail;
            long j3 = structStatVfsStatvfs.f_bsize;
            return new h0.e.a("Local", j2 * j3, structStatVfsStatvfs.f_blocks * j3);
        } catch (Exception unused) {
            return null;
        }
    }

    @Override
    public final h0.e.b i(h hVar, v0.d dVar) {
        h0.e.b bVarI = super.i(hVar, dVar);
        if (bVarI != null && hVar != null) {
            try {
                StructStat structStatStat = Os.stat(hVar.f1108c);
                if (structStatStat != null) {
                    int i2 = structStatStat.st_mode;
                    int i3 = 0;
                    int i4 = 0;
                    int i5 = 1;
                    while (i3 < 3) {
                        i4 += (i2 % 8) * i5;
                        i3++;
                        i5 *= 10;
                        i2 /= 8;
                    }
                    bVarI.f1096i = i4;
                }
            } catch (Exception unused) {
            }
        }
        return bVarI;
    }
}
