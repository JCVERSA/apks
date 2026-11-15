package androidx.room.driver;

import kotlin.jvm.internal.Intrinsics;
import z3.e;

public final class c implements y3.c {

    private final e f14327a;

    public c(e openHelper) {
        Intrinsics.h(openHelper, "openHelper");
        this.f14327a = openHelper;
    }

    public final e a() {
        return this.f14327a;
    }

    @Override
    public a open(String fileName) {
        Intrinsics.h(fileName, "fileName");
        return new a(this.f14327a.getWritableDatabase());
    }
}
