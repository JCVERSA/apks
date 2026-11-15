package defpackage;

import android.content.Context;
import android.view.MotionEvent;
import com.google.android.gms.internal.ads.j8;
import com.google.android.gms.internal.ads.zzfgn;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

public final class bze {
    public MotionEvent a = MotionEvent.obtain(0, 0, 1, 0.0f, 0.0f, 0);
    public MotionEvent b = MotionEvent.obtain(0, 0, 0, 0.0f, 0.0f, 0);
    public final ScheduledExecutorService c;

    public bze(Context context, ScheduledExecutorService scheduledExecutorService, dze dzeVar, zzfgn zzfgnVar) {
        this.c = scheduledExecutorService;
    }

    public final im5 a() {
        return (q7i) j8.o(q7i.zzE(j8.h(null)), ((Long) yze.c.e()).longValue(), TimeUnit.MILLISECONDS, this.c);
    }

    public final void b(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1 && motionEvent.getEventTime() > this.a.getEventTime()) {
            this.a = MotionEvent.obtain(motionEvent);
        } else {
            if (motionEvent.getAction() != 0 || motionEvent.getEventTime() <= this.b.getEventTime()) {
                return;
            }
            this.b = MotionEvent.obtain(motionEvent);
        }
    }
}
