package kotlinx.serialization.json.internal;

import defpackage.l83;
import defpackage.y45;

public final class JsonElementMarker {
    public final l83 a;
    public boolean b;

    public JsonElementMarker(kotlinx.serialization.descriptors.a aVar) {
        y45.j(aVar, "descriptor");
        this.a = new l83(aVar, new JsonElementMarker$origin$1(this));
    }

    public final boolean b() {
        return this.b;
    }

    public final void c(int i) {
        this.a.a(i);
    }

    public final int d() {
        return this.a.d();
    }

    public final boolean e(kotlinx.serialization.descriptors.a aVar, int i) {
        boolean z = !aVar.i(i) && aVar.d(i).b();
        this.b = z;
        return z;
    }
}
