package m0;

import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.system.Os;
import android.system.StructStatVfs;
import d0.f;
import d0.i;
import h0.h;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import java.util.regex.Pattern;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZApp;
import ru.zdevs.zarchiver.io.SAF;

public final class a implements h0.b {

    public int f1220a = 0;

    public static void l(SAF.a aVar, String str, Pattern pattern, int[] iArr, int i2, h0.e.c cVar, v0.d dVar) {
        ArrayList arrayListR;
        if (dVar != null) {
            try {
                if (dVar.isCancelled()) {
                    return;
                }
            } catch (Exception unused) {
                return;
            }
        }
        String lowerCase = aVar.f1698a.toLowerCase(Locale.getDefault());
        if (pattern.matcher(lowerCase).matches() && h0.e.g(lowerCase, iArr)) {
            h0.e.b bVar = new h0.e.b();
            bVar.f1088a = !aVar.f1699b;
            bVar.f1089b = aVar.f1700c;
            bVar.f1090c = aVar.f1701d;
            cVar.d(bVar, new h("saf", str), aVar.f1698a, null);
        }
        if (!aVar.f1699b || a0.c.K(i2, 1) || (arrayListR = SAF.r(aVar.f1702e, null)) == null) {
            return;
        }
        Iterator it = arrayListR.iterator();
        while (it.hasNext()) {
            l((SAF.a) it.next(), str + "/" + aVar.f1698a, pattern, iArr, i2, cVar, dVar);
            if (dVar != null && dVar.isCancelled()) {
                return;
            }
        }
    }

    @Override
    public final int a(h hVar) {
        return 17;
    }

    @Override
    public final i b(i iVar) {
        i iVar2 = new i(iVar.size());
        Iterator<d0.d> it = iVar.iterator();
        while (it.hasNext()) {
            f fVar = (f) it.next();
            Uri uriL = SAF.l(0, fVar.f552k.f1108c + '/' + fVar.f539a);
            if (uriL != null ? SAF.p(uriL) : false) {
                iVar2.i(fVar);
            }
        }
        return iVar2;
    }

    @Override
    public final int c(String str, h hVar) {
        Cursor cursorS;
        Uri uriL = SAF.l(1, a0.c.i(hVar.f1108c, str));
        if (uriL == null || (cursorS = SAF.s(uriL, SAF.f1693a)) == null) {
            return -1;
        }
        int count = cursorS.getCount();
        n0.e.b(cursorS);
        return count;
    }

    @Override
    public final boolean d(h hVar) {
        return hVar.m();
    }

    @Override
    public final boolean e(h hVar, String str, int[] iArr, int i2, h0.e.c cVar, v0.d dVar) {
        SAF.a aVarE;
        if (!hVar.m() || (aVarE = SAF.e(hVar.f1108c)) == null || !aVarE.f1699b) {
            return false;
        }
        Pattern patternCompile = Pattern.compile(v0.h.c(str, false)[0]);
        try {
            ArrayList arrayListR = SAF.r(aVarE.f1702e, null);
            if (arrayListR != null) {
                int size = arrayListR.size();
                Iterator it = arrayListR.iterator();
                int i3 = 0;
                while (it.hasNext()) {
                    l((SAF.a) it.next(), hVar.f1108c, patternCompile, iArr, i2, cVar, dVar);
                    if (dVar != null && dVar.isCancelled()) {
                        return false;
                    }
                    i3++;
                    cVar.b((i3 * 100) / size);
                }
            }
        } catch (Exception unused) {
        }
        return true;
    }

    @Override
    public final int f() {
        return this.f1220a;
    }

    @Override
    public final boolean g(h hVar, d0.b bVar, int i2) {
        byte bN;
        byte b2;
        byte bL;
        if (!hVar.m()) {
            return false;
        }
        this.f1220a = 0;
        bVar.clear();
        if (a0.c.K(i2, 4)) {
            bVar.add(0, new d0.d("..", (byte) 3));
        }
        int size = bVar.size();
        boolean z2 = !a0.c.K(i2, 32);
        Cursor cursorS = null;
        try {
            try {
                Uri uriL = SAF.l(1, hVar.f1108c);
                if (uriL != null) {
                    cursorS = SAF.s(uriL, SAF.f1694b);
                }
                if (cursorS == null) {
                    if (a0.c.K(i2, 2)) {
                        this.f1220a = R.string.MES_ACCESS_DENIED;
                        n0.e.b(cursorS);
                        return true;
                    }
                    String strN = x0.d.n(hVar.f1108c);
                    if (strN != null) {
                        hVar.p(strN);
                    }
                    hVar.q("root");
                    n0.e.b(cursorS);
                    return false;
                }
                bVar.ensureCapacity(cursorS.getCount() + 1);
                try {
                    bN = j0.a.n(hVar.t(), true);
                } catch (Exception unused) {
                    bN = 0;
                }
                while (cursorS.moveToNext()) {
                    String string = cursorS.getString(0);
                    if (!z2 || string.isEmpty() || string.charAt(0) != '.') {
                        if ("vnd.android.document/directory".equals(cursorS.getString(1))) {
                            bL = j0.a.l(string, bN);
                            b2 = 4;
                        } else {
                            b2 = -1;
                            bL = 0;
                        }
                        bVar.add(new d0.d(string, b2, bL, cursorS.getLong(3), cursorS.getLong(2)));
                    }
                }
                if (bVar.size() <= size) {
                    this.f1220a = R.string.MES_EMPTY_FOLDER;
                }
                n0.e.b(cursorS);
                hVar.q("saf");
                return true;
            } catch (Throwable th) {
                n0.e.b(null);
                throw th;
            }
        } catch (Exception unused2) {
            this.f1220a = R.string.MES_ACCESS_DENIED;
            n0.e.b(null);
            return false;
        }
    }

    @Override
    public final h0.e.a h(h hVar) throws Throwable {
        Uri uriL;
        Throwable th;
        ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor;
        ParcelFileDescriptor parcelFileDescriptor = null;
        if (Build.VERSION.SDK_INT < 21 || !hVar.m() || (uriL = SAF.l(0, hVar.f1108c)) == null) {
            return null;
        }
        try {
            parcelFileDescriptorOpenFileDescriptor = ZApp.a().openFileDescriptor(uriL, "r");
            if (parcelFileDescriptorOpenFileDescriptor == null) {
                n0.e.c(parcelFileDescriptorOpenFileDescriptor);
                return null;
            }
            try {
                StructStatVfs structStatVfsFstatvfs = Os.fstatvfs(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor());
                long j2 = structStatVfsFstatvfs.f_bavail;
                long j3 = structStatVfsFstatvfs.f_bsize;
                h0.e.a aVar = new h0.e.a("Storage Access Framework", j2 * j3, structStatVfsFstatvfs.f_blocks * j3);
                n0.e.c(parcelFileDescriptorOpenFileDescriptor);
                return aVar;
            } catch (Exception unused) {
                n0.e.c(parcelFileDescriptorOpenFileDescriptor);
                return null;
            } catch (Throwable th2) {
                th = th2;
                parcelFileDescriptor = parcelFileDescriptorOpenFileDescriptor;
                n0.e.c(parcelFileDescriptor);
                throw th;
            }
        } catch (Exception unused2) {
            parcelFileDescriptorOpenFileDescriptor = null;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @Override
    public final h0.e.b i(h hVar, v0.d dVar) {
        if (!hVar.m()) {
            return null;
        }
        try {
            h0.e.b bVar = new h0.e.b();
            SAF.a aVarE = SAF.e(hVar.f1108c);
            if (aVarE == null) {
                return null;
            }
            if (aVarE.f1699b) {
                Uri uriL = aVarE.f1702e;
                if (uriL == null) {
                    uriL = SAF.l(0, null);
                }
                if (uriL != null) {
                    SAF.b(uriL, new String[]{"mime_type", "_size", "document_id"}, bVar, dVar, 0);
                }
            } else {
                bVar.f1088a = true;
                bVar.f1089b = aVarE.f1700c;
                bVar.f1090c = aVarE.f1701d;
                bVar.f1092e = false;
            }
            return bVar;
        } catch (Exception unused) {
            return null;
        }
    }

    @Override
    public final h0.e.b j(h hVar, String[] strArr, v0.d dVar) {
        if (!hVar.m()) {
            return null;
        }
        h0.e.b bVar = new h0.e.b();
        for (String str : strArr) {
            SAF.a aVarE = SAF.e(a0.c.i(hVar.f1108c, str));
            if (aVarE != null) {
                bVar.f1090c += aVarE.f1701d;
            }
        }
        return bVar;
    }

    @Override
    public final h0.e.b k(h[] hVarArr, String[] strArr, v0.d dVar) {
        if (!hVarArr[0].m()) {
            return null;
        }
        h0.e.b bVar = new h0.e.b();
        for (int i2 = 0; i2 < strArr.length; i2++) {
            SAF.a aVarE = SAF.e(a0.c.i(hVarArr[i2].f1108c, strArr[i2]));
            if (aVarE != null) {
                bVar.f1090c += aVarE.f1701d;
            }
        }
        return bVar;
    }
}
