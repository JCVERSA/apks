package a9;

import android.content.Context;
import b9.u;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig;

public final class i implements w8.b {

    private final iy.a f254a;

    private final iy.a f255b;

    private final iy.a f256c;

    private final iy.a f257d;

    public i(iy.a aVar, iy.a aVar2, iy.a aVar3, iy.a aVar4) {
        this.f254a = aVar;
        this.f255b = aVar2;
        this.f256c = aVar3;
        this.f257d = aVar4;
    }

    public static i a(iy.a aVar, iy.a aVar2, iy.a aVar3, iy.a aVar4) {
        return new i(aVar, aVar2, aVar3, aVar4);
    }

    public static u c(Context context, c9.d dVar, SchedulerConfig schedulerConfig, e9.a aVar) {
        return (u) w8.d.d(h.a(context, dVar, schedulerConfig, aVar));
    }

    @Override
    public u get() {
        return c((Context) this.f254a.get(), (c9.d) this.f255b.get(), (SchedulerConfig) this.f256c.get(), (e9.a) this.f257d.get());
    }
}
