package androidx.work.impl.background.systemalarm;

import android.content.Context;
import android.content.Intent;
import androidx.work.j;
import j4.u;
import j4.x;
import java.util.ArrayList;
import java.util.List;

class c {

    private static final String f15215e = j.i("ConstraintsCmdHandler");

    private final Context f15216a;

    private final int f15217b;

    private final SystemAlarmDispatcher f15218c;

    private final g4.e f15219d;

    c(Context context, int i10, SystemAlarmDispatcher systemAlarmDispatcher) {
        this.f15216a = context;
        this.f15217b = i10;
        this.f15218c = systemAlarmDispatcher;
        this.f15219d = new g4.e(systemAlarmDispatcher.g().s(), (g4.c) null);
    }

    void a() {
        List<u> listE = this.f15218c.g().t().n0().e();
        ConstraintProxy.a(this.f15216a, listE);
        this.f15219d.a(listE);
        ArrayList<u> arrayList = new ArrayList(listE.size());
        long jCurrentTimeMillis = System.currentTimeMillis();
        for (u uVar : listE) {
            String str = uVar.f62987a;
            if (jCurrentTimeMillis >= uVar.c() && (!uVar.h() || this.f15219d.d(str))) {
                arrayList.add(uVar);
            }
        }
        for (u uVar2 : arrayList) {
            String str2 = uVar2.f62987a;
            Intent intentB = b.b(this.f15216a, x.a(uVar2));
            j.e().a(f15215e, "Creating a delay_met command for workSpec with id (" + str2 + ")");
            this.f15218c.f().a().execute(new SystemAlarmDispatcher.AddRunnable(this.f15218c, intentB, this.f15217b));
        }
        this.f15219d.reset();
    }
}
