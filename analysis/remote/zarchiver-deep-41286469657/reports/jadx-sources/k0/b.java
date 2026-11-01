package k0;

import android.content.ContentProviderClient;
import android.database.Cursor;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import h0.f;
import h0.h;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import l0.c;
import l0.d;
import l0.e;

public final class b extends f {

    public c.b f1166b;

    public b(h hVar, c.b bVar) {
        super(hVar);
        this.f1166b = bVar;
    }

    public final boolean A() {
        c.b bVar;
        if (this.f1166b == null) {
            h hVar = this.f1097a;
            ContentProviderClient contentProviderClientE = c.e(hVar);
            c.b bVar2 = null;
            if (contentProviderClientE != null) {
                try {
                    Cursor cursorQuery = contentProviderClientE.query(c.h(hVar), c.f1180a, "get=file", null, null);
                    if (cursorQuery != null) {
                        if (cursorQuery.moveToNext()) {
                            bVar = new c.b();
                            bVar.f1188a = cursorQuery.getString(0);
                            bVar.f1189b = cursorQuery.getString(1);
                            bVar.f1190c = cursorQuery.getInt(3) == 1;
                            bVar.f1191d = cursorQuery.getLong(4);
                            bVar.f1192e = cursorQuery.getLong(2);
                        } else {
                            bVar = null;
                        }
                        cursorQuery.close();
                        bVar2 = bVar;
                    }
                } catch (Exception unused) {
                } finally {
                    c.b(contentProviderClientE);
                }
            }
            this.f1166b = bVar2;
        }
        return this.f1166b != null;
    }

    @Override
    public final boolean a(h hVar) {
        if (hVar.k()) {
            String str = hVar.f1110e;
            h hVar2 = this.f1097a;
            if (str.equals(hVar2.f1110e)) {
                return c.c(hVar2, hVar, false);
            }
        }
        return false;
    }

    @Override
    public final h b(String str) {
        return null;
    }

    @Override
    public final boolean c() {
        return c.l(this.f1097a);
    }

    @Override
    public final boolean d() {
        return A();
    }

    @Override
    public final boolean f(String str) {
        return false;
    }

    @Override
    public final String h() {
        return c.g(this.f1097a);
    }

    @Override
    public final boolean k() {
        return A() && this.f1166b.f1190c;
    }

    @Override
    public final boolean l() {
        return A() && !this.f1166b.f1190c;
    }

    @Override
    public final boolean m() {
        return false;
    }

    @Override
    public final long n() {
        if (A()) {
            return this.f1166b.f1191d;
        }
        return 0L;
    }

    @Override
    public final long o() {
        if (A()) {
            return this.f1166b.f1192e;
        }
        return 0L;
    }

    @Override
    public final f[] p() {
        h hVar = this.f1097a;
        ContentProviderClient contentProviderClientE = c.e(hVar);
        int i2 = 0;
        ArrayList<c.b> arrayList = null;
        if (contentProviderClientE != null) {
            ArrayList arrayList2 = new ArrayList(0);
            try {
                Cursor cursorQuery = contentProviderClientE.query(c.h(hVar), c.f1180a, "get=list", null, null);
                if (cursorQuery != null) {
                    arrayList2.ensureCapacity(cursorQuery.getCount());
                    while (cursorQuery.moveToNext()) {
                        c.b bVar = new c.b();
                        bVar.f1188a = cursorQuery.getString(0);
                        boolean z2 = true;
                        bVar.f1189b = cursorQuery.getString(1);
                        if (cursorQuery.getInt(3) != 1) {
                            z2 = false;
                        }
                        bVar.f1190c = z2;
                        bVar.f1191d = cursorQuery.getLong(4);
                        bVar.f1192e = cursorQuery.getLong(2);
                        arrayList2.add(bVar);
                    }
                    cursorQuery.close();
                }
                c.b(contentProviderClientE);
                arrayList = arrayList2;
            } catch (Exception unused) {
                c.b(contentProviderClientE);
            } catch (Throwable th) {
                c.b(contentProviderClientE);
                throw th;
            }
        }
        if (arrayList == null) {
            return new f[0];
        }
        f[] fVarArr = new f[arrayList.size()];
        for (c.b bVar2 : arrayList) {
            h hVar2 = new h(bVar2.f1188a, hVar);
            hVar2.f1109d = bVar2.f1189b;
            fVarArr[i2] = new b(hVar2, bVar2);
            i2++;
        }
        return fVarArr;
    }

    @Override
    public final boolean q(String str) {
        return c.j(str, this.f1097a);
    }

    @Override
    public final boolean s(String str) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final boolean t(h hVar) {
        if (!hVar.k()) {
            return false;
        }
        String str = hVar.f1110e;
        h hVar2 = this.f1097a;
        if (str.equals(hVar2.f1110e)) {
            return c.c(hVar2, hVar, true);
        }
        return false;
    }

    @Override
    public final ParcelFileDescriptor v(int i2) throws FileNotFoundException {
        ParcelFileDescriptor parcelFileDescriptorOpenFile;
        boolean zK = a0.c.K(i2, 36864);
        h hVar = this.f1097a;
        if (zK) {
            ContentProviderClient contentProviderClientE = c.e(hVar);
            parcelFileDescriptorOpenFile = null;
            if (contentProviderClientE != null) {
                try {
                    parcelFileDescriptorOpenFile = contentProviderClientE.openFile(c.h(hVar), "rt");
                } catch (Exception unused) {
                } finally {
                    c.b(contentProviderClientE);
                }
            }
        } else {
            boolean z2 = (i2 & 536870912) == 536870912;
            ContentProviderClient contentProviderClientE2 = c.e(hVar);
            try {
                if (contentProviderClientE2 == null) {
                    throw new FileNotFoundException();
                }
                try {
                    ParcelFileDescriptor parcelFileDescriptorOpenFile2 = contentProviderClientE2.openFile(c.h(hVar), z2 ? "w" : "r");
                    c.b(contentProviderClientE2);
                    parcelFileDescriptorOpenFile = parcelFileDescriptorOpenFile2;
                } catch (RemoteException unused2) {
                    throw new FileNotFoundException();
                }
            } catch (Throwable th) {
                c.b(contentProviderClientE2);
                throw th;
            }
        }
        if (parcelFileDescriptorOpenFile != null) {
            return parcelFileDescriptorOpenFile;
        }
        throw new FileNotFoundException();
    }

    @Override
    public final InputStream w() throws FileNotFoundException {
        long jO = o();
        h hVar = this.f1097a;
        ContentProviderClient contentProviderClientE = c.e(hVar);
        d dVar = null;
        if (contentProviderClientE != null) {
            try {
                ParcelFileDescriptor parcelFileDescriptorOpenFile = contentProviderClientE.openFile(c.h(hVar), "r");
                if (parcelFileDescriptorOpenFile != null) {
                    dVar = new d(contentProviderClientE, hVar, parcelFileDescriptorOpenFile, jO);
                } else {
                    c.b(contentProviderClientE);
                }
            } catch (Exception unused) {
            }
        }
        if (dVar != null) {
            return dVar;
        }
        throw new FileNotFoundException();
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0028 A[Catch: Exception -> 0x002f, TRY_LEAVE, TryCatch #0 {Exception -> 0x002f, blocks: (B:7:0x0012, B:8:0x001e, B:10:0x0028), top: B:18:0x0012 }] */
    /* JADX WARN: Code duplicated, block: B:12:0x002f  */
    @Override
    public final OutputStream x(long j2) throws FileNotFoundException {
        ParcelFileDescriptor parcelFileDescriptorOpenFile;
        h hVar = this.f1097a;
        ContentProviderClient contentProviderClientE = c.e(hVar);
        e eVar = null;
        if (contentProviderClientE != null) {
            String str = "w";
            if (j2 > 0) {
                try {
                    str = "w" + j2;
                    parcelFileDescriptorOpenFile = contentProviderClientE.openFile(c.h(hVar), str);
                    if (parcelFileDescriptorOpenFile != null) {
                        eVar = new e(contentProviderClientE, hVar, parcelFileDescriptorOpenFile);
                    } else {
                        c.b(contentProviderClientE);
                    }
                } catch (Exception unused) {
                }
            } else {
                parcelFileDescriptorOpenFile = contentProviderClientE.openFile(c.h(hVar), str);
                if (parcelFileDescriptorOpenFile != null) {
                    eVar = new e(contentProviderClientE, hVar, parcelFileDescriptorOpenFile);
                } else {
                    c.b(contentProviderClientE);
                }
            }
        }
        if (eVar != null) {
            return eVar;
        }
        throw new FileNotFoundException();
    }

    @Override
    public final boolean y(String str) {
        return c.m(str, this.f1097a);
    }

    @Override
    public final boolean z(long j2, OutputStream outputStream) {
        return false;
    }

    public b(h hVar) {
        super(hVar);
        this.f1166b = null;
    }
}
