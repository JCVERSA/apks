package na;

import java.util.List;

public final class t extends c {

    private final int f67097h;

    private final Object f67098i;

    public t(v9.w wVar, int i10, int i11) {
        this(wVar, i10, i11, 0, null);
    }

    @Override
    public int getSelectedIndex() {
        return 0;
    }

    @Override
    public Object getSelectionData() {
        return this.f67098i;
    }

    @Override
    public int getSelectionReason() {
        return this.f67097h;
    }

    public t(v9.w wVar, int i10, int i11, int i12, Object obj) {
        super(wVar, new int[]{i10}, i11);
        this.f67097h = i12;
        this.f67098i = obj;
    }

    @Override
    public void f(long j10, long j11, long j12, List list, x9.o[] oVarArr) {
    }
}
