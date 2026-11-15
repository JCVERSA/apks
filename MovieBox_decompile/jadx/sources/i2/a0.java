package i2;

import java.util.List;

public final class a0 extends c {

    private final int f61623i;

    private final Object f61624j;

    public a0(androidx.media3.common.f0 f0Var, int i10, int i11) {
        this(f0Var, i10, i11, 0, null);
    }

    @Override
    public int getSelectedIndex() {
        return 0;
    }

    @Override
    public Object getSelectionData() {
        return this.f61624j;
    }

    @Override
    public int getSelectionReason() {
        return this.f61623i;
    }

    public a0(androidx.media3.common.f0 f0Var, int i10, int i11, int i12, Object obj) {
        super(f0Var, new int[]{i10}, i11);
        this.f61623i = i12;
        this.f61624j = obj;
    }

    @Override
    public void f(long j10, long j11, long j12, List list, g2.n[] nVarArr) {
    }
}
