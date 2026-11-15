package androidx.work.impl.foreground;

import android.app.Notification;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.text.TextUtils;
import androidx.work.impl.d0;
import androidx.work.impl.e;
import androidx.work.j;
import g4.c;
import g4.d;
import j4.m;
import j4.u;
import j4.x;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

public class SystemForegroundDispatcher implements c, e {

    static final String f15270k = j.i("SystemFgDispatcher");

    private Context f15271a;

    private d0 f15272b;

    private final k4.c f15273c;

    final Object f15274d = new Object();

    m f15275e;

    final Map f15276f;

    final Map f15277g;

    final Set f15278h;

    final d f15279i;

    private a f15280j;

    interface a {
        void a(int i10, Notification notification);

        void c(int i10, int i11, Notification notification);

        void d(int i10);

        void stop();
    }

    SystemForegroundDispatcher(Context context) {
        this.f15271a = context;
        d0 d0VarO = d0.o(context);
        this.f15272b = d0VarO;
        this.f15273c = d0VarO.u();
        this.f15275e = null;
        this.f15276f = new LinkedHashMap();
        this.f15278h = new HashSet();
        this.f15277g = new HashMap();
        this.f15279i = new g4.e(this.f15272b.s(), this);
        this.f15272b.q().g(this);
    }

    public static Intent c(Context context, m mVar, androidx.work.e eVar) {
        Intent intent = new Intent(context, (Class<?>) SystemForegroundService.class);
        intent.setAction("ACTION_NOTIFY");
        intent.putExtra("KEY_NOTIFICATION_ID", eVar.c());
        intent.putExtra("KEY_FOREGROUND_SERVICE_TYPE", eVar.a());
        intent.putExtra("KEY_NOTIFICATION", eVar.b());
        intent.putExtra("KEY_WORKSPEC_ID", mVar.b());
        intent.putExtra("KEY_GENERATION", mVar.a());
        return intent;
    }

    public static Intent e(Context context, m mVar, androidx.work.e eVar) {
        Intent intent = new Intent(context, (Class<?>) SystemForegroundService.class);
        intent.setAction("ACTION_START_FOREGROUND");
        intent.putExtra("KEY_WORKSPEC_ID", mVar.b());
        intent.putExtra("KEY_GENERATION", mVar.a());
        intent.putExtra("KEY_NOTIFICATION_ID", eVar.c());
        intent.putExtra("KEY_FOREGROUND_SERVICE_TYPE", eVar.a());
        intent.putExtra("KEY_NOTIFICATION", eVar.b());
        return intent;
    }

    public static Intent g(Context context) {
        Intent intent = new Intent(context, (Class<?>) SystemForegroundService.class);
        intent.setAction("ACTION_STOP_FOREGROUND");
        return intent;
    }

    private void h(Intent intent) {
        j.e().f(f15270k, "Stopping foreground work for " + intent);
        String stringExtra = intent.getStringExtra("KEY_WORKSPEC_ID");
        if (stringExtra == null || TextUtils.isEmpty(stringExtra)) {
            return;
        }
        this.f15272b.i(UUID.fromString(stringExtra));
    }

    private void i(Intent intent) {
        int iA = 0;
        int intExtra = intent.getIntExtra("KEY_NOTIFICATION_ID", 0);
        int intExtra2 = intent.getIntExtra("KEY_FOREGROUND_SERVICE_TYPE", 0);
        String stringExtra = intent.getStringExtra("KEY_WORKSPEC_ID");
        m mVar = new m(stringExtra, intent.getIntExtra("KEY_GENERATION", 0));
        Notification notification = (Notification) intent.getParcelableExtra("KEY_NOTIFICATION");
        j.e().a(f15270k, "Notifying with (id:" + intExtra + ", workSpecId: " + stringExtra + ", notificationType :" + intExtra2 + ")");
        if (notification == null || this.f15280j == null) {
            return;
        }
        this.f15276f.put(mVar, new androidx.work.e(intExtra, notification, intExtra2));
        if (this.f15275e == null) {
            this.f15275e = mVar;
            this.f15280j.c(intExtra, intExtra2, notification);
            return;
        }
        this.f15280j.a(intExtra, notification);
        if (intExtra2 == 0 || Build.VERSION.SDK_INT < 29) {
            return;
        }
        Iterator it = this.f15276f.entrySet().iterator();
        while (it.hasNext()) {
            iA |= ((androidx.work.e) ((Map.Entry) it.next()).getValue()).a();
        }
        androidx.work.e eVar = (androidx.work.e) this.f15276f.get(this.f15275e);
        if (eVar != null) {
            this.f15280j.c(eVar.c(), iA, eVar.b());
        }
    }

    private void j(Intent intent) {
        j.e().f(f15270k, "Started foreground service " + intent);
        final String stringExtra = intent.getStringExtra("KEY_WORKSPEC_ID");
        this.f15273c.c(new Runnable() {
            @Override
            public void run() {
                u uVarH = SystemForegroundDispatcher.this.f15272b.q().h(stringExtra);
                if (uVarH == null || !uVarH.h()) {
                    return;
                }
                synchronized (SystemForegroundDispatcher.this.f15274d) {
                    SystemForegroundDispatcher.this.f15277g.put(x.a(uVarH), uVarH);
                    SystemForegroundDispatcher.this.f15278h.add(uVarH);
                    SystemForegroundDispatcher systemForegroundDispatcher = SystemForegroundDispatcher.this;
                    systemForegroundDispatcher.f15279i.a(systemForegroundDispatcher.f15278h);
                }
            }
        });
    }

    @Override
    public void a(List list) {
        if (list.isEmpty()) {
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            u uVar = (u) it.next();
            String str = uVar.f62987a;
            j.e().a(f15270k, "Constraints unmet for WorkSpec " + str);
            this.f15272b.B(x.a(uVar));
        }
    }

    @Override
    public void l(m mVar, boolean z10) {
        Map.Entry entry;
        synchronized (this.f15274d) {
            try {
                u uVar = (u) this.f15277g.remove(mVar);
                if (uVar != null ? this.f15278h.remove(uVar) : false) {
                    this.f15279i.a(this.f15278h);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        androidx.work.e eVar = (androidx.work.e) this.f15276f.remove(mVar);
        if (mVar.equals(this.f15275e) && this.f15276f.size() > 0) {
            Iterator it = this.f15276f.entrySet().iterator();
            Object next = it.next();
            while (true) {
                entry = (Map.Entry) next;
                if (!it.hasNext()) {
                    break;
                } else {
                    next = it.next();
                }
            }
            this.f15275e = (m) entry.getKey();
            if (this.f15280j != null) {
                androidx.work.e eVar2 = (androidx.work.e) entry.getValue();
                this.f15280j.c(eVar2.c(), eVar2.a(), eVar2.b());
                this.f15280j.d(eVar2.c());
            }
        }
        a aVar = this.f15280j;
        if (eVar == null || aVar == null) {
            return;
        }
        j.e().a(f15270k, "Removing Notification (id: " + eVar.c() + ", workSpecId: " + mVar + ", notificationType: " + eVar.a());
        aVar.d(eVar.c());
    }

    void k(Intent intent) {
        j.e().f(f15270k, "Stopping foreground service");
        a aVar = this.f15280j;
        if (aVar != null) {
            aVar.stop();
        }
    }

    void l() {
        this.f15280j = null;
        synchronized (this.f15274d) {
            this.f15279i.reset();
        }
        this.f15272b.q().n(this);
    }

    void m(Intent intent) {
        String action = intent.getAction();
        if ("ACTION_START_FOREGROUND".equals(action)) {
            j(intent);
            i(intent);
        } else if ("ACTION_NOTIFY".equals(action)) {
            i(intent);
        } else if ("ACTION_CANCEL_WORK".equals(action)) {
            h(intent);
        } else if ("ACTION_STOP_FOREGROUND".equals(action)) {
            k(intent);
        }
    }

    void n(a aVar) {
        if (this.f15280j != null) {
            j.e().c(f15270k, "A callback already exists.");
        } else {
            this.f15280j = aVar;
        }
    }

    @Override
    public void f(List list) {
    }
}
