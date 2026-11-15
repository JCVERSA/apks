package cn.com.custommma.mobile.tracking.viewability.webjs;

import android.content.Context;
import defpackage.ubc;
import defpackage.yr1;
import java.util.HashMap;
import java.util.Iterator;
import java.util.TimerTask;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

public class ViewAbilityJsService {
    public Context a;
    public ScheduledExecutorService b;
    public boolean c;
    public HashMap d = new HashMap();

    public final class MonitorTask extends TimerTask {
        private MonitorTask() {
        }

        @Override
        public void run() {
            try {
                Iterator it = ViewAbilityJsService.this.d.keySet().iterator();
                if (it.hasNext()) {
                    ubc.a(ViewAbilityJsService.this.d.get((String) it.next()));
                    throw null;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public ViewAbilityJsService(Context context) {
        this.b = null;
        this.c = false;
        this.a = context;
        this.b = Executors.newScheduledThreadPool(1);
        yr1.d(this.a).b();
        this.c = false;
    }
}
