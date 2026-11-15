package af;

import java.util.ArrayList;
import java.util.List;

public class g implements com.google.zxing.l {

    private com.google.zxing.i f307a;

    private List f308b = new ArrayList();

    public g(com.google.zxing.i iVar) {
        this.f307a = iVar;
    }

    @Override
    public void a(com.google.zxing.k kVar) {
        this.f308b.add(kVar);
    }

    protected com.google.zxing.j b(com.google.zxing.b bVar) {
        this.f308b.clear();
        try {
            com.google.zxing.i iVar = this.f307a;
            return iVar instanceof com.google.zxing.f ? ((com.google.zxing.f) iVar).d(bVar) : iVar.b(bVar);
        } catch (Exception unused) {
            return null;
        } finally {
            this.f307a.reset();
        }
    }

    public com.google.zxing.j c(com.google.zxing.e eVar) {
        return b(e(eVar));
    }

    public List d() {
        return new ArrayList(this.f308b);
    }

    protected com.google.zxing.b e(com.google.zxing.e eVar) {
        return new com.google.zxing.b(new kd.l(eVar));
    }
}
