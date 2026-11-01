package m0;

import android.net.Uri;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.system.Os;
import android.system.OsConstants;
import h0.f;
import h0.h;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.InvalidPropertiesFormatException;
import n0.g;
import ru.zdevs.zarchiver.ZApp;
import ru.zdevs.zarchiver.archiver.C2JBridge;
import ru.zdevs.zarchiver.io.SAF;

public final class b extends f {

    public SAF.a f1221b;

    public boolean f1222c;

    public String f1223d;

    public b(h hVar, SAF.a aVar) {
        super(hVar);
        this.f1221b = aVar;
        this.f1222c = false;
        this.f1223d = null;
    }

    public final void A() {
        if (this.f1222c && this.f1221b == null) {
            this.f1221b = SAF.e(this.f1097a.f1108c);
            this.f1222c = false;
        }
    }

    public final boolean B(int i2) {
        if (i2 != (-OsConstants.EPERM)) {
            this.f1223d = Os.strerror(-i2);
        } else {
            this.f1223d = null;
        }
        return i2 == 0;
    }

    @Override
    public final h b(String str) throws FileNotFoundException, InvalidPropertiesFormatException {
        h hVar = new h("saf", this.f1097a.f1108c + '/' + str);
        SAF.k(2, hVar.f1108c);
        return hVar;
    }

    @Override
    public final boolean c() {
        boolean zW;
        Uri uri;
        SAF.a aVar = this.f1221b;
        if (aVar == null || (uri = aVar.f1702e) == null) {
            zW = SAF.remove(this.f1097a.f1108c) == 0;
        } else {
            zW = SAF.w(uri);
        }
        if (zW) {
            this.f1221b = null;
        }
        return zW;
    }

    @Override
    public final boolean d() {
        A();
        return this.f1221b != null;
    }

    @Override
    public final boolean f(String str) {
        Uri uriL;
        A();
        SAF.a aVar = this.f1221b;
        if (aVar == null || !aVar.f1699b || (uriL = SAF.l(0, a0.c.i(this.f1097a.f1108c, str))) == null) {
            return false;
        }
        return SAF.p(uriL);
    }

    @Override
    public final String h() {
        return this.f1223d;
    }

    @Override
    public final boolean k() {
        A();
        SAF.a aVar = this.f1221b;
        return aVar != null && aVar.f1699b;
    }

    @Override
    public final boolean l() {
        A();
        SAF.a aVar = this.f1221b;
        return (aVar == null || aVar.f1699b) ? false : true;
    }

    @Override
    public final boolean m() {
        return false;
    }

    @Override
    public final long n() {
        A();
        SAF.a aVar = this.f1221b;
        if (aVar == null) {
            return 0L;
        }
        return aVar.f1700c;
    }

    @Override
    public final long o() {
        A();
        SAF.a aVar = this.f1221b;
        if (aVar == null) {
            return 0L;
        }
        return aVar.f1701d;
    }

    @Override
    public final f[] p() {
        A();
        SAF.a aVar = this.f1221b;
        int i2 = 0;
        if (aVar == null) {
            return new f[0];
        }
        Uri uri = aVar.f1702e;
        h hVar = this.f1097a;
        ArrayList<SAF.a> arrayListR = SAF.r(uri, hVar.f1108c);
        if (arrayListR == null) {
            return new f[0];
        }
        f[] fVarArr = new f[arrayListR.size()];
        for (SAF.a aVar2 : arrayListR) {
            fVarArr[i2] = new b(new h(aVar2.f1698a, hVar), aVar2);
            i2++;
        }
        return fVarArr;
    }

    @Override
    public final boolean q(String str) {
        return B(SAF.mkdir(a0.c.i(this.f1097a.f1108c, str)));
    }

    @Override
    public final void r(String str) throws Exception {
        h hVar = this.f1097a;
        if (B(SAF.t(a0.c.i(hVar.f1108c, str)))) {
            return;
        }
        String str2 = this.f1223d;
        if (str2 == null) {
            str2 = "Failed to create";
        }
        throw new Exception(a0.c.i(hVar.f1108c, str) + ": " + str2);
    }

    @Override
    public final boolean s(String str) {
        h hVar = this.f1097a;
        return B(SAF.mkdirs(str == null ? hVar.f1108c : a0.c.i(hVar.f1108c, str), 0));
    }

    @Override
    public final boolean t(h hVar) {
        h hVar2 = this.f1097a;
        if (!hVar.o()) {
            return false;
        }
        try {
            boolean zU = SAF.u(a0.c.A(hVar2.f1108c), hVar2.e(), hVar.f1108c);
            if (zU) {
                this.f1221b = null;
            }
            return zU;
        } catch (Exception e2) {
            B(-SAF.d(e2));
            return false;
        }
    }

    @Override
    public final ParcelFileDescriptor v(int i2) throws FileNotFoundException {
        Uri uri;
        int i3 = i2 & 536870912;
        if (i3 == 536870912) {
            throw new FileNotFoundException("Create file not supported");
        }
        A();
        SAF.a aVar = this.f1221b;
        if (aVar == null || (uri = aVar.f1702e) == null) {
            throw new FileNotFoundException();
        }
        ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = ZApp.a().openFileDescriptor(uri, i3 == 536870912 ? "w" : "r");
        if (parcelFileDescriptorOpenFileDescriptor != null) {
            return parcelFileDescriptorOpenFileDescriptor;
        }
        throw new FileNotFoundException();
    }

    @Override
    public final InputStream w() throws FileNotFoundException {
        Uri uri;
        g gVar;
        A();
        SAF.a aVar = this.f1221b;
        if (aVar == null || (uri = aVar.f1702e) == null) {
            throw new FileNotFoundException();
        }
        long j2 = aVar.f1701d;
        try {
            ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = ZApp.a().openFileDescriptor(uri, "r");
            gVar = parcelFileDescriptorOpenFileDescriptor != null ? new g(parcelFileDescriptorOpenFileDescriptor, j2) : null;
        } catch (Exception unused) {
        }
        if (gVar != null) {
            return gVar;
        }
        throw new FileNotFoundException();
    }

    @Override
    public final OutputStream x(long j2) {
        if (this.f1221b == null) {
            SAF.a aVar = new SAF.a();
            this.f1221b = aVar;
            aVar.f1698a = null;
            aVar.f1699b = false;
            aVar.f1700c = 0L;
            aVar.f1701d = j2;
            aVar.f1702e = null;
        }
        SAF.a aVar2 = this.f1221b;
        String str = this.f1097a.f1108c;
        if (Build.VERSION.SDK_INT >= 30) {
            return SAF.v(str, aVar2.f1702e != null);
        }
        if (aVar2.f1702e == null) {
            aVar2.f1702e = SAF.k(2, str);
        }
        return ZApp.a().openOutputStream(aVar2.f1702e);
    }

    @Override
    public final boolean y(String str) {
        h hVar = this.f1097a;
        try {
            boolean zX = SAF.x(a0.c.A(hVar.f1108c), hVar.e(), str);
            if (zX) {
                this.f1221b = null;
            }
            return zX;
        } catch (Exception e2) {
            B(-SAF.d(e2));
            return false;
        }
    }

    @Override
    public final boolean z(long j2, OutputStream outputStream) {
        int iZ = a0.c.z(outputStream);
        if (iZ > 0) {
            if (((C2JBridge.f1613c || C2JBridge.e()) ? C2JBridge.cSetMTime(iZ, (int) (j2 / 1000)) : -1) == 0) {
                return true;
            }
        }
        return false;
    }

    public b(h hVar) {
        super(hVar);
        this.f1221b = null;
        this.f1222c = true;
        this.f1223d = null;
    }
}
