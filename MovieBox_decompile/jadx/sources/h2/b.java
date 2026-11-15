package h2;

import h3.j;
import h3.k;
import h3.s;

final class b extends j {

    private final s f61222p;

    public b(String str, s sVar) {
        super(str);
        this.f61222p = sVar;
    }

    @Override
    protected k y(byte[] bArr, int i10, boolean z10) {
        if (z10) {
            this.f61222p.reset();
        }
        return this.f61222p.a(bArr, 0, i10);
    }
}
