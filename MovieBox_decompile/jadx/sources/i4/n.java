package i4;

import android.content.Context;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class n {

    private final g f61847a;

    private final c f61848b;

    private final g f61849c;

    private final g f61850d;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public n(Context context, k4.c taskExecutor) {
        this(context, taskExecutor, null, null, null, null, 60, null);
        Intrinsics.h(context, "context");
        Intrinsics.h(taskExecutor, "taskExecutor");
    }

    public final g a() {
        return this.f61847a;
    }

    public final c b() {
        return this.f61848b;
    }

    public final g c() {
        return this.f61849c;
    }

    public final g d() {
        return this.f61850d;
    }

    public n(Context context, k4.c taskExecutor, g batteryChargingTracker, c batteryNotLowTracker, g networkStateTracker, g storageNotLowTracker) {
        Intrinsics.h(context, "context");
        Intrinsics.h(taskExecutor, "taskExecutor");
        Intrinsics.h(batteryChargingTracker, "batteryChargingTracker");
        Intrinsics.h(batteryNotLowTracker, "batteryNotLowTracker");
        Intrinsics.h(networkStateTracker, "networkStateTracker");
        Intrinsics.h(storageNotLowTracker, "storageNotLowTracker");
        this.f61847a = batteryChargingTracker;
        this.f61848b = batteryNotLowTracker;
        this.f61849c = networkStateTracker;
        this.f61850d = storageNotLowTracker;
    }

    public n(Context context, k4.c cVar, g gVar, c cVar2, g gVar2, g gVar3, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        g aVar;
        c cVar3;
        g gVarA;
        g lVar;
        if ((i10 & 4) != 0) {
            Context applicationContext = context.getApplicationContext();
            Intrinsics.g(applicationContext, "context.applicationContext");
            aVar = new a(applicationContext, cVar);
        } else {
            aVar = gVar;
        }
        if ((i10 & 8) != 0) {
            Context applicationContext2 = context.getApplicationContext();
            Intrinsics.g(applicationContext2, "context.applicationContext");
            cVar3 = new c(applicationContext2, cVar);
        } else {
            cVar3 = cVar2;
        }
        if ((i10 & 16) != 0) {
            Context applicationContext3 = context.getApplicationContext();
            Intrinsics.g(applicationContext3, "context.applicationContext");
            gVarA = j.a(applicationContext3, cVar);
        } else {
            gVarA = gVar2;
        }
        if ((i10 & 32) != 0) {
            Context applicationContext4 = context.getApplicationContext();
            Intrinsics.g(applicationContext4, "context.applicationContext");
            lVar = new l(applicationContext4, cVar);
        } else {
            lVar = gVar3;
        }
        this(context, cVar, aVar, cVar3, gVarA, lVar);
    }
}
