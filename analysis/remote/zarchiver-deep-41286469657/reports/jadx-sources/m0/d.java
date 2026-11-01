package m0;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import h0.h;
import java.util.ArrayList;
import java.util.Collections;
import ru.zdevs.zarchiver.io.SAF;
import ru.zdevs.zarchiver.provider.FileProvider;
import x0.g;

public final class d implements h0.c {

    public final Uri f1226a;

    public final String f1227b;

    public final ArrayList<String> f1228c;

    public final String f1229d;

    public final int f1230e;

    public d(ArrayList<String> arrayList, String str, int i2) {
        this.f1226a = null;
        this.f1227b = null;
        this.f1228c = arrayList;
        this.f1229d = str;
        this.f1230e = i2;
    }

    public static d f(String str) {
        h hVarM;
        Cursor cursorS;
        String strY = a0.c.y(str);
        String strA = a0.c.A(str);
        String[] strArrA = g.a(strA);
        int i2 = 0;
        Cursor cursor = null;
        if (strArrA == null) {
            x0.d.a aVarI = x0.d.i(strA);
            if (aVarI == null || !a0.c.K(aVarI.f2259f, 4)) {
                return null;
            }
            hVarM = null;
        } else {
            hVarM = SAF.m(strArrA[0], strArrA[2], false, false);
        }
        if (hVarM != null) {
            try {
                Uri uriL = SAF.l(1, hVarM.f1108c);
                cursorS = uriL == null ? null : SAF.s(uriL, SAF.f1694b);
                if (cursorS == null) {
                    n0.e.b(cursorS);
                    return null;
                }
                try {
                    ArrayList arrayList = new ArrayList();
                    while (cursorS.moveToNext()) {
                        if (!"vnd.android.document/directory".equals(cursorS.getString(1))) {
                            String string = cursorS.getString(0);
                            if (a0.c.E(string) == 9) {
                                arrayList.add(string);
                            }
                        }
                    }
                    Collections.sort(arrayList, new h1.e(1));
                    int size = arrayList.size();
                    while (true) {
                        if (i2 >= size) {
                            i2 = -1;
                            break;
                        }
                        if (strY.equals(arrayList.get(i2))) {
                            break;
                        }
                        i2++;
                    }
                    if (i2 >= 0) {
                        d dVar = new d(arrayList, hVarM.f1108c, i2);
                        n0.e.b(cursorS);
                        return dVar;
                    }
                } catch (Exception unused) {
                } catch (Throwable th) {
                    th = th;
                    cursor = cursorS;
                    n0.e.b(cursor);
                    throw th;
                }
                n0.e.b(cursorS);
            } catch (Exception unused2) {
                cursorS = null;
            } catch (Throwable th2) {
                th = th2;
            }
        }
        return null;
    }

    @Override
    public final int a() {
        return this.f1230e;
    }

    @Override
    public final Uri b(Context context, int i2) {
        Uri uri = this.f1226a;
        if (uri != null) {
            return uri;
        }
        ArrayList<String> arrayList = this.f1228c;
        if (arrayList == null) {
            return null;
        }
        return FileProvider.c(a0.c.i(this.f1229d, arrayList.get(i2)));
    }

    @Override
    public final boolean c() {
        return true;
    }

    @Override
    public final g.a d(int i2) {
        Uri uri = this.f1226a;
        if (uri != null) {
            return new g.a(uri, null, null);
        }
        ArrayList<String> arrayList = this.f1228c;
        if (arrayList == null) {
            return new g.a("Error");
        }
        try {
            Uri uriK = SAF.k(0, a0.c.i(this.f1229d, arrayList.get(i2)));
            if (uriK != null) {
                return new g.a(uriK, null, null);
            }
            throw new NullPointerException("Uri must not be null");
        } catch (Exception e2) {
            String message = e2.getMessage();
            if (message == null) {
                message = "Failed to get Uri for document";
            }
            return new g.a(message);
        }
    }

    @Override
    public final h e() {
        Uri uri = this.f1226a;
        if (uri != null) {
            if ("file".equals(uri.getScheme())) {
                return new h(a0.c.A(uri.getPath()));
            }
            return null;
        }
        String str = this.f1229d;
        if (str != null) {
            return new h(str);
        }
        return null;
    }

    @Override
    public final int getCount() {
        if (this.f1226a != null) {
            return 1;
        }
        ArrayList<String> arrayList = this.f1228c;
        if (arrayList != null) {
            return arrayList.size();
        }
        return 0;
    }

    @Override
    public final String getName(int i2) {
        String str = this.f1227b;
        if (str != null) {
            return str;
        }
        ArrayList<String> arrayList = this.f1228c;
        return arrayList != null ? arrayList.get(i2) : "";
    }

    @Override
    public final boolean remove(int i2) {
        ArrayList<String> arrayList = this.f1228c;
        if (arrayList == null) {
            return false;
        }
        arrayList.remove(i2);
        return true;
    }

    public d(Uri uri, String str) {
        this.f1226a = uri;
        this.f1227b = str;
        this.f1228c = null;
        this.f1229d = null;
        this.f1230e = 0;
    }
}
