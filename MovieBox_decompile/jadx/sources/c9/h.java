package c9;

import android.content.Context;

public final class h implements w8.b {

    private final iy.a f16727a;

    public h(iy.a aVar) {
        this.f16727a = aVar;
    }

    public static h a(iy.a aVar) {
        return new h(aVar);
    }

    public static String c(Context context) {
        return (String) w8.d.d(f.b(context));
    }

    @Override
    public String get() {
        return c((Context) this.f16727a.get());
    }
}
