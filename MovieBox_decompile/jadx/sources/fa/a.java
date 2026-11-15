package fa;

import com.google.android.exoplayer2.util.d0;
import da.h;
import da.i;
import java.util.List;

public final class a extends h {

    private final b f60052o;

    public a(List list) {
        super("DvbDecoder");
        d0 d0Var = new d0((byte[]) list.get(0));
        this.f60052o = new b(d0Var.J(), d0Var.J());
    }

    @Override
    protected i w(byte[] bArr, int i10, boolean z10) {
        if (z10) {
            this.f60052o.r();
        }
        return new c(this.f60052o.b(bArr, i10));
    }
}
