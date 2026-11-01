package i0;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import d0.d;
import h0.h;
import java.util.ArrayList;
import ru.zdevs.zarchiver.archiver.NArc;
import ru.zdevs.zarchiver.provider.ArchiveFileProvider;

public final class b implements h0.c {

    public final NArc f1134a;

    public final ArrayList<d> f1135b;

    public final int f1136c;

    public final String f1137d;

    public final ArchiveFileProvider.a f1138e;

    public b(NArc nArc, ArrayList<d> arrayList, int i2, String str, ArchiveFileProvider.a aVar) {
        this.f1134a = nArc;
        this.f1135b = arrayList;
        this.f1136c = i2;
        this.f1137d = str;
        this.f1138e = aVar;
    }

    @Override
    public final int a() {
        return this.f1136c;
    }

    @Override
    public final Uri b(Context context, int i2) {
        ArchiveFileProvider.a aVar = this.f1138e;
        h hVar = new h(aVar.f1706a);
        hVar.c();
        hVar.a(getName(i2));
        return ArchiveFileProvider.d(context, hVar, hVar.f1107b, -2L, aVar.f1707b, aVar.f1708c);
    }

    @Override
    public final boolean c() {
        return false;
    }

    @Override
    public final g.a d(int i2) {
        try {
            d dVar = this.f1135b.get(i2);
            ParcelFileDescriptor parcelFileDescriptorD = this.f1134a.d(a0.c.i0(-1, dVar.f540b), a0.c.i(this.f1137d, dVar.f539a), 2097152);
            long j2 = dVar.f542d;
            if (Build.VERSION.SDK_INT < 21) {
                throw new RuntimeException("Unsupported use PFD");
            }
            g.a aVar = new g.a(null, null, parcelFileDescriptorD);
            aVar.f802e = j2;
            return aVar;
        } catch (Exception e2) {
            String message = e2.getMessage();
            if (message == null) {
                message = "Failed to open image from archive";
            }
            return new g.a(message);
        }
    }

    @Override
    public final h e() {
        h hVar = new h(this.f1138e.f1706a);
        hVar.c();
        return hVar;
    }

    public final void finalize() throws Throwable {
        super.finalize();
        this.f1134a.close();
    }

    @Override
    public final int getCount() {
        return this.f1135b.size();
    }

    @Override
    public final String getName(int i2) {
        return this.f1135b.get(i2).f539a;
    }

    @Override
    public final boolean remove(int i2) {
        return false;
    }
}
