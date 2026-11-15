package c9;

import android.content.Context;

public final class w0 implements w8.b {

    private final iy.a f16780a;

    private final iy.a f16781b;

    private final iy.a f16782c;

    public w0(iy.a aVar, iy.a aVar2, iy.a aVar3) {
        this.f16780a = aVar;
        this.f16781b = aVar2;
        this.f16782c = aVar3;
    }

    public static w0 a(iy.a aVar, iy.a aVar2, iy.a aVar3) {
        return new w0(aVar, aVar2, aVar3);
    }

    public static v0 c(Context context, String str, int i10) {
        return new v0(context, str, i10);
    }

    @Override
    public v0 get() {
        return c((Context) this.f16780a.get(), (String) this.f16781b.get(), ((Integer) this.f16782c.get()).intValue());
    }
}
