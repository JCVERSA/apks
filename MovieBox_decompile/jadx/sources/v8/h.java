package v8;

import android.content.Context;

public final class h implements w8.b {

    private final iy.a f73472a;

    private final iy.a f73473b;

    private final iy.a f73474c;

    public h(iy.a aVar, iy.a aVar2, iy.a aVar3) {
        this.f73472a = aVar;
        this.f73473b = aVar2;
        this.f73474c = aVar3;
    }

    public static h a(iy.a aVar, iy.a aVar2, iy.a aVar3) {
        return new h(aVar, aVar2, aVar3);
    }

    public static g c(Context context, e9.a aVar, e9.a aVar2) {
        return new g(context, aVar, aVar2);
    }

    @Override
    public g get() {
        return c((Context) this.f73472a.get(), (e9.a) this.f73473b.get(), (e9.a) this.f73474c.get());
    }
}
