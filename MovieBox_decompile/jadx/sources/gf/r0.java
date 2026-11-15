package gf;

import kotlin.jvm.internal.Intrinsics;

public final class r0 {

    private d f61051a;

    private d f61052b;

    public final void a(d task) {
        Intrinsics.h(task, "task");
        if (this.f61051a == null) {
            this.f61051a = task;
        }
        d dVar = this.f61052b;
        if (dVar != null) {
            dVar.f60985c = task;
        }
        this.f61052b = task;
    }

    public final void b() {
        d dVar = this.f61051a;
        if (dVar != null) {
            dVar.request();
        }
    }
}
