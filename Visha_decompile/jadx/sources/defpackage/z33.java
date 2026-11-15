package defpackage;

import java.util.List;

public final class z33 extends rm9 {
    public final a43 o;

    public z33(List list) {
        super("DvbDecoder");
        qw7 qw7Var = new qw7((byte[]) list.get(0));
        this.o = new a43(qw7Var.I(), qw7Var.I());
    }

    @Override
    public l2a v(byte[] bArr, int i, boolean z) {
        if (z) {
            this.o.r();
        }
        return new b43(this.o.b(bArr, i));
    }
}
