package w1;

import android.net.Uri;
import androidx.media3.common.PriorityTaskManager;
import java.util.Map;

public final class k implements androidx.media3.datasource.a {

    private final androidx.media3.datasource.a f74120a;

    private final PriorityTaskManager f74121b;

    private final int f74122c;

    public k(androidx.media3.datasource.a aVar, PriorityTaskManager priorityTaskManager, int i10) {
        this.f74120a = (androidx.media3.datasource.a) androidx.media3.common.util.a.e(aVar);
        this.f74121b = (PriorityTaskManager) androidx.media3.common.util.a.e(priorityTaskManager);
        this.f74122c = i10;
    }

    @Override
    public long a(h hVar) {
        this.f74121b.c(this.f74122c);
        return this.f74120a.a(hVar);
    }

    @Override
    public void c(n nVar) {
        androidx.media3.common.util.a.e(nVar);
        this.f74120a.c(nVar);
    }

    @Override
    public void close() {
        this.f74120a.close();
    }

    @Override
    public Map getResponseHeaders() {
        return this.f74120a.getResponseHeaders();
    }

    @Override
    public Uri getUri() {
        return this.f74120a.getUri();
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) {
        this.f74121b.c(this.f74122c);
        return this.f74120a.read(bArr, i10, i11);
    }
}
