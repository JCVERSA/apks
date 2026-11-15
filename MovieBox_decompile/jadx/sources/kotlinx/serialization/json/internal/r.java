package kotlinx.serialization.json.internal;

import kotlin.jvm.internal.Intrinsics;

public final class r extends j {

    private final kotlinx.serialization.json.a f65372c;

    private int f65373d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r(h0 writer, kotlinx.serialization.json.a json) {
        super(writer);
        Intrinsics.h(writer, "writer");
        Intrinsics.h(json, "json");
        this.f65372c = json;
    }

    @Override
    public void b() {
        n(true);
        this.f65373d++;
    }

    @Override
    public void c() {
        n(false);
        j("\n");
        int i10 = this.f65373d;
        for (int i11 = 0; i11 < i10; i11++) {
            j(this.f65372c.e().i());
        }
    }

    @Override
    public void o() {
        e(' ');
    }

    @Override
    public void p() {
        this.f65373d--;
    }
}
