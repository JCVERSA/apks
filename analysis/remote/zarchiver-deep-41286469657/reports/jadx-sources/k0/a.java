package k0;

import android.content.ContentProviderClient;
import android.database.Cursor;
import d0.i;
import h0.e;
import h0.f;
import h0.h;
import l0.c;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZApp;
import v0.d;

public final class a implements h0.b {

    public int f1165a = 0;

    @Override
    public final int a(h hVar) {
        int iD = c.d(hVar);
        int i2 = a0.c.K(iD, 512) ? 33 : 32;
        return a0.c.K(iD, 256) ? i2 | 2 : i2;
    }

    @Override
    public final i b(i iVar) {
        return null;
    }

    @Override
    public final int c(String str, h hVar) {
        return -1;
    }

    @Override
    public final boolean d(h hVar) {
        return hVar.k();
    }

    @Override
    public final boolean e(h hVar, String str, int[] iArr, int i2, e.c cVar, d dVar) {
        Cursor cursorQuery;
        if (!hVar.k()) {
            return false;
        }
        try {
            ContentProviderClient contentProviderClientE = c.e(hVar);
            if (contentProviderClientE == null) {
                cursorQuery = null;
            } else {
                try {
                    cursorQuery = contentProviderClientE.query(c.h(hVar), c.f1181b, "get=search", new String[]{str}, null);
                    c.b(contentProviderClientE);
                } catch (Exception unused) {
                    cursorQuery = null;
                }
            }
            if (cursorQuery != null) {
                h hVar2 = new h(hVar);
                while (cursorQuery.moveToNext()) {
                    if (dVar != null && dVar.isCancelled()) {
                        return false;
                    }
                    String string = cursorQuery.getString(0);
                    if (e.g(string, iArr)) {
                        e.b bVar = new e.b();
                        bVar.f1088a = cursorQuery.getInt(3) == 0;
                        bVar.f1089b = cursorQuery.getLong(4);
                        bVar.f1090c = cursorQuery.getLong(2);
                        String string2 = cursorQuery.getString(1);
                        String string3 = cursorQuery.getString(5);
                        if (v0.h.e(string3)) {
                            cVar.d(bVar, hVar, string, string2);
                        } else {
                            if (!hVar2.f1108c.equals(string3)) {
                                hVar2 = new h(hVar);
                                hVar2.p(string3);
                            }
                            cVar.d(bVar, hVar2, string, string2);
                        }
                    }
                }
                cursorQuery.close();
            } else {
                String strG = c.g(hVar);
                if (strG != null) {
                    ZApp.j(strG);
                }
            }
            return true;
        } catch (Exception unused2) {
            return false;
        }
    }

    @Override
    public final int f() {
        return this.f1165a;
    }

    @Override
    public final boolean g(h hVar, d0.b bVar, int i2) {
        Cursor cursorQuery;
        if (!hVar.k()) {
            return false;
        }
        this.f1165a = 0;
        bVar.clear();
        if (hVar.f1108c.length() > 1 && a0.c.K(i2, 4)) {
            bVar.add(0, new d0.d("..", (byte) 3));
        }
        int size = bVar.size();
        boolean z2 = !a0.c.K(i2, 32);
        try {
            int i3 = (a0.c.K(i2, 1) ? 2 : 0) | 1;
            ContentProviderClient contentProviderClientE = c.e(hVar);
            if (contentProviderClientE == null) {
                cursorQuery = null;
            } else {
                try {
                    cursorQuery = contentProviderClientE.query(c.h(hVar), c.f1180a, "get=list", new String[]{String.valueOf(i3)}, null);
                    c.b(contentProviderClientE);
                } catch (Exception unused) {
                    cursorQuery = null;
                }
            }
            if (cursorQuery != null) {
                bVar.ensureCapacity(cursorQuery.getCount() + 1);
                while (cursorQuery.moveToNext()) {
                    String string = cursorQuery.getString(0);
                    if (!z2 || string.isEmpty() || string.charAt(0) != '.') {
                        bVar.add(new d0.d(string, cursorQuery.getString(1), cursorQuery.getInt(3) == 1 ? (byte) 4 : (byte) -1, (byte) 0, cursorQuery.getLong(4), cursorQuery.getLong(2)));
                    }
                }
                cursorQuery.close();
            } else {
                String strG = c.g(hVar);
                if (strG != null) {
                    ZApp.j(strG);
                }
            }
            if (bVar.size() <= size) {
                this.f1165a = R.string.MES_EMPTY_FOLDER;
            }
            hVar.q("plugin");
            return true;
        } catch (Exception unused2) {
            this.f1165a = R.string.MES_ACCESS_DENIED;
            return false;
        }
    }

    @Override
    public final e.a h(h hVar) {
        c.a aVarF;
        if (!hVar.k() || (aVarF = c.f(hVar)) == null) {
            return null;
        }
        long j2 = aVarF.f1185a;
        long j3 = aVarF.f1186b + j2;
        String str = aVarF.f1187c;
        if (str == null) {
            str = "Remote";
        }
        return new e.a(str, j2, j3);
    }

    @Override
    public final e.b i(h hVar, d dVar) {
        if (!hVar.k()) {
            return null;
        }
        try {
            f fVarU = f.u(hVar);
            if (!fVarU.d()) {
                return null;
            }
            e.b bVar = new e.b();
            bVar.f1088a = fVarU.l();
            bVar.f1089b = fVarU.n();
            bVar.f1090c = fVarU.o();
            return bVar;
        } catch (Exception unused) {
            return null;
        }
    }

    @Override
    public final e.b j(h hVar, String[] strArr, d dVar) {
        if (!hVar.k()) {
            return null;
        }
        e.b bVar = new e.b();
        for (String str : strArr) {
            bVar.f1090c = f.u(new h(str, hVar)).o() + bVar.f1090c;
        }
        return bVar;
    }

    @Override
    public final e.b k(h[] hVarArr, String[] strArr, d dVar) {
        if (!hVarArr[0].k()) {
            return null;
        }
        e.b bVar = new e.b();
        for (int i2 = 0; i2 < strArr.length; i2++) {
            f fVarU = f.u(new h(strArr[i2], hVarArr[i2]));
            bVar.f1090c = fVarU.o() + bVar.f1090c;
        }
        return bVar;
    }
}
