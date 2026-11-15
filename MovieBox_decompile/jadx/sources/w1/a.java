package w1;

import androidx.media3.common.util.a1;
import java.util.ArrayList;
import java.util.Map;

public abstract class a implements androidx.media3.datasource.a {

    private final boolean f74083a;

    private final ArrayList f74084b = new ArrayList(1);

    private int f74085c;

    private h f74086d;

    protected a(boolean z10) {
        this.f74083a = z10;
    }

    @Override
    public final void c(n nVar) {
        androidx.media3.common.util.a.e(nVar);
        if (this.f74084b.contains(nVar)) {
            return;
        }
        this.f74084b.add(nVar);
        this.f74085c++;
    }

    protected final void d(int i10) {
        h hVar = (h) a1.i(this.f74086d);
        for (int i11 = 0; i11 < this.f74085c; i11++) {
            ((n) this.f74084b.get(i11)).e(this, hVar, this.f74083a, i10);
        }
    }

    protected final void e() {
        h hVar = (h) a1.i(this.f74086d);
        for (int i10 = 0; i10 < this.f74085c; i10++) {
            ((n) this.f74084b.get(i10)).f(this, hVar, this.f74083a);
        }
        this.f74086d = null;
    }

    protected final void f(h hVar) {
        for (int i10 = 0; i10 < this.f74085c; i10++) {
            ((n) this.f74084b.get(i10)).g(this, hVar, this.f74083a);
        }
    }

    protected final void g(h hVar) {
        this.f74086d = hVar;
        for (int i10 = 0; i10 < this.f74085c; i10++) {
            ((n) this.f74084b.get(i10)).h(this, hVar, this.f74083a);
        }
    }

    @Override
    public Map getResponseHeaders() {
        return e.a(this);
    }
}
