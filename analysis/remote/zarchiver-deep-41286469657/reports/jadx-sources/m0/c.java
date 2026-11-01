package m0;

import android.net.Uri;
import android.os.ParcelFileDescriptor;
import h0.f;
import h0.h;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.OutputStream;
import ru.zdevs.zarchiver.io.ZAIO;

public final class c extends f {

    public final Uri f1224b;

    public long f1225c;

    public c(h hVar) {
        super(hVar);
        this.f1224b = ZAIO.c(hVar.f1108c);
        this.f1225c = -1L;
    }

    @Override
    public final h b(String str) {
        return null;
    }

    @Override
    public final boolean c() {
        return false;
    }

    @Override
    public final boolean d() {
        return true;
    }

    @Override
    public final boolean f(String str) {
        return false;
    }

    @Override
    public final boolean k() {
        return false;
    }

    @Override
    public final boolean l() {
        return true;
    }

    @Override
    public final boolean m() {
        return false;
    }

    @Override
    public final long n() {
        return 0L;
    }

    @Override
    public final long o() {
        if (this.f1225c == -1) {
            this.f1225c = ZAIO.b(this.f1224b);
        }
        return this.f1225c;
    }

    @Override
    public final f[] p() {
        return new f[0];
    }

    @Override
    public final boolean q(String str) {
        return false;
    }

    @Override
    public final boolean s(String str) {
        return false;
    }

    @Override
    public final boolean t(h hVar) {
        return false;
    }

    @Override
    public final ParcelFileDescriptor v(int i2) throws FileNotFoundException {
        if ((i2 & 536870912) == 536870912) {
            throw new FileNotFoundException("Create file not supported");
        }
        ParcelFileDescriptor parcelFileDescriptorE = ZAIO.e(this.f1224b, "r");
        if (parcelFileDescriptorE != null) {
            return parcelFileDescriptorE;
        }
        throw new FileNotFoundException();
    }

    @Override
    public final InputStream w() {
        return new FileInputStream(v(268435456).getFileDescriptor());
    }

    @Override
    public final OutputStream x(long j2) {
        return null;
    }

    @Override
    public final boolean y(String str) {
        return false;
    }

    @Override
    public final boolean z(long j2, OutputStream outputStream) {
        return false;
    }
}
