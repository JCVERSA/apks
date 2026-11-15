package androidx.work.impl.background.systemalarm;

import android.content.Intent;
import androidx.p009lifecycle.LifecycleService;
import androidx.work.impl.utils.s;
import androidx.work.j;

public class SystemAlarmService extends LifecycleService implements SystemAlarmDispatcher.a {

    private static final String f15206d = j.i("SystemAlarmService");

    private SystemAlarmDispatcher f15207b;

    private boolean f15208c;

    private void e() {
        SystemAlarmDispatcher systemAlarmDispatcher = new SystemAlarmDispatcher(this);
        this.f15207b = systemAlarmDispatcher;
        systemAlarmDispatcher.l(this);
    }

    @Override
    public void b() {
        this.f15208c = true;
        j.e().a(f15206d, "All commands completed in dispatcher");
        s.a();
        stopSelf();
    }

    @Override
    public void onCreate() {
        super.onCreate();
        e();
        this.f15208c = false;
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        this.f15208c = true;
        this.f15207b.j();
    }

    @Override
    public int onStartCommand(Intent intent, int i10, int i11) {
        super.onStartCommand(intent, i10, i11);
        if (this.f15208c) {
            j.e().f(f15206d, "Re-initializing SystemAlarmDispatcher after a request to shut-down.");
            this.f15207b.j();
            e();
            this.f15208c = false;
        }
        if (intent == null) {
            return 3;
        }
        this.f15207b.a(intent, i11);
        return 3;
    }
}
