package v8;

import android.content.Context;

public final class j implements w8.b {

    private final iy.a f73480a;

    private final iy.a f73481b;

    public j(iy.a aVar, iy.a aVar2) {
        this.f73480a = aVar;
        this.f73481b = aVar2;
    }

    public static j a(iy.a aVar, iy.a aVar2) {
        return new j(aVar, aVar2);
    }

    public static i c(Context context, Object obj) {
        return new i(context, (g) obj);
    }

    @Override
    public i get() {
        return c((Context) this.f73480a.get(), this.f73481b.get());
    }
}
