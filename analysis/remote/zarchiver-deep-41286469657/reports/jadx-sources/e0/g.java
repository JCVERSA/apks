package e0;

import android.os.ParcelFileDescriptor;
import java.io.IOException;
import ru.zdevs.zarchiver.archiver.NArc;

public final class g extends ParcelFileDescriptor {

    public final NArc f685a;

    public final d f686b;

    public volatile boolean f687c;

    public g(NArc nArc, d dVar, ParcelFileDescriptor parcelFileDescriptor) {
        super(parcelFileDescriptor);
        this.f685a = nArc;
        this.f686b = dVar;
        this.f687c = false;
    }

    @Override
    public final void close() throws IOException {
        synchronized (this) {
            if (this.f687c) {
                return;
            }
            this.f687c = true;
            if (this.f685a.f1627c == this) {
                this.f685a.f1627c = null;
            }
            super.close();
            this.f686b.d();
            this.f685a.o(this.f686b.a());
        }
    }

    @Override
    public final int detachFd() {
        if (!this.f686b.b()) {
            throw new IllegalStateException("Detach FD is not supported");
        }
        this.f687c = true;
        if (this.f685a.f1627c == this) {
            this.f685a.f1627c = null;
        }
        return super.detachFd();
    }

    @Override
    public final long getStatSize() {
        long jOnGetSize = this.f686b.onGetSize();
        if (jOnGetSize > 0) {
            return jOnGetSize;
        }
        return -1L;
    }
}
