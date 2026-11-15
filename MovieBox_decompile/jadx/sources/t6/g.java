package t6;

import com.chad.library.adapter.base.BaseQuickAdapter;
import kotlin.jvm.internal.Intrinsics;

public class g {

    private final BaseQuickAdapter f72543a;

    private r6.g f72544b;

    private boolean f72545c;

    private boolean f72546d;

    private int f72547e;

    public g(BaseQuickAdapter baseQuickAdapter) {
        Intrinsics.h(baseQuickAdapter, "baseQuickAdapter");
        this.f72543a = baseQuickAdapter;
        this.f72547e = 1;
    }

    public final void a(int i10) {
        r6.g gVar;
        if (!this.f72545c || this.f72546d || i10 > this.f72547e || (gVar = this.f72544b) == null) {
            return;
        }
        gVar.a();
    }

    public void b(r6.g gVar) {
        this.f72544b = gVar;
    }

    public final void c(int i10) {
        this.f72547e = i10;
    }

    public final void d(boolean z10) {
        this.f72545c = z10;
    }

    public final void e(boolean z10) {
        this.f72546d = z10;
    }
}
