package a9;

import com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig;

public final class g implements w8.b {

    private final iy.a f253a;

    public g(iy.a aVar) {
        this.f253a = aVar;
    }

    public static SchedulerConfig a(e9.a aVar) {
        return (SchedulerConfig) w8.d.d(f.a(aVar));
    }

    public static g b(iy.a aVar) {
        return new g(aVar);
    }

    @Override
    public SchedulerConfig get() {
        return a((e9.a) this.f253a.get());
    }
}
