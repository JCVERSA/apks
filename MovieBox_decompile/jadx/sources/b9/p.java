package b9;

import android.content.Context;
import java.util.concurrent.Executor;

public final class p implements w8.b {

    private final iy.a f15655a;

    private final iy.a f15656b;

    private final iy.a f15657c;

    private final iy.a f15658d;

    private final iy.a f15659e;

    private final iy.a f15660f;

    private final iy.a f15661g;

    private final iy.a f15662h;

    private final iy.a f15663i;

    public p(iy.a aVar, iy.a aVar2, iy.a aVar3, iy.a aVar4, iy.a aVar5, iy.a aVar6, iy.a aVar7, iy.a aVar8, iy.a aVar9) {
        this.f15655a = aVar;
        this.f15656b = aVar2;
        this.f15657c = aVar3;
        this.f15658d = aVar4;
        this.f15659e = aVar5;
        this.f15660f = aVar6;
        this.f15661g = aVar7;
        this.f15662h = aVar8;
        this.f15663i = aVar9;
    }

    public static p a(iy.a aVar, iy.a aVar2, iy.a aVar3, iy.a aVar4, iy.a aVar5, iy.a aVar6, iy.a aVar7, iy.a aVar8, iy.a aVar9) {
        return new p(aVar, aVar2, aVar3, aVar4, aVar5, aVar6, aVar7, aVar8, aVar9);
    }

    public static o c(Context context, v8.d dVar, c9.d dVar2, u uVar, Executor executor, d9.a aVar, e9.a aVar2, e9.a aVar3, c9.c cVar) {
        return new o(context, dVar, dVar2, uVar, executor, aVar, aVar2, aVar3, cVar);
    }

    @Override
    public o get() {
        return c((Context) this.f15655a.get(), (v8.d) this.f15656b.get(), (c9.d) this.f15657c.get(), (u) this.f15658d.get(), (Executor) this.f15659e.get(), (d9.a) this.f15660f.get(), (e9.a) this.f15661g.get(), (e9.a) this.f15662h.get(), (c9.c) this.f15663i.get());
    }
}
