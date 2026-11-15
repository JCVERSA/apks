package defpackage;

import kotlinx.serialization.descriptors.a;

public final class cf8 extends dm5 {
    public final String c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cf8(a aVar) {
        super(aVar, null);
        y45.j(aVar, "primitive");
        this.c = aVar.h() + "Array";
    }

    @Override
    public String h() {
        return this.c;
    }
}
