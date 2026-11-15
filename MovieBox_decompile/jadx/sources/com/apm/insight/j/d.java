package com.apm.insight.j;

import android.content.Context;
import android.os.Handler;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class d {

    private List<a> f18954a = new ArrayList(3);

    private d(Handler handler, Context context) {
        if (com.apm.insight.l.a.b(context)) {
            this.f18954a.add(new c(handler));
        }
    }

    public static d a(Handler handler, Context context) {
        return new d(handler, context);
    }

    public final void a() {
        com.apm.insight.a.a((Object) ("[ScheduleTaskManager] execute, task size=" + this.f18954a.size()));
        Iterator<a> it = this.f18954a.iterator();
        while (it.hasNext()) {
            try {
                it.next().a();
            } catch (Throwable unused) {
            }
        }
    }
}
