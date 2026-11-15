package j4;

import kotlin.jvm.internal.Intrinsics;

public final class a {

    private final String f62937a;

    private final String f62938b;

    public a(String workSpecId, String prerequisiteId) {
        Intrinsics.h(workSpecId, "workSpecId");
        Intrinsics.h(prerequisiteId, "prerequisiteId");
        this.f62937a = workSpecId;
        this.f62938b = prerequisiteId;
    }

    public final String a() {
        return this.f62938b;
    }

    public final String b() {
        return this.f62937a;
    }
}
