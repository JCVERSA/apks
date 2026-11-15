package com.transsion.baselib.config;

import ad.j;
import ad.n;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class f {

    public static final a f41894c = new a(null);

    private static final Lazy f41895d = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return f.h();
        }
    });

    private com.google.firebase.remoteconfig.a f41896a;

    private boolean f41897b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final f a() {
            return (f) f.f41895d.getValue();
        }

        private a() {
        }
    }

    public static final Unit f(j.b remoteConfigSettings) {
        Intrinsics.h(remoteConfigSettings, "$this$remoteConfigSettings");
        remoteConfigSettings.e(3600L);
        return Unit.f64096a;
    }

    public static final void g(f fVar, Function2 function2, Task task) {
        Intrinsics.h(task, "task");
        boolean zIsSuccessful = task.isSuccessful();
        fVar.f41897b = zIsSuccessful;
        Boolean boolValueOf = Boolean.valueOf(zIsSuccessful);
        com.google.firebase.remoteconfig.a aVar = fVar.f41896a;
        if (aVar == null) {
            Intrinsics.y("remoteConfig");
            aVar = null;
        }
        function2.invoke(boolValueOf, aVar);
    }

    public static final f h() {
        return new f();
    }

    public final void e(final Function2 callback) {
        Intrinsics.h(callback, "callback");
        com.google.firebase.remoteconfig.a aVarA = n.a(com.google.firebase.c.f30244a);
        this.f41896a = aVarA;
        com.google.firebase.remoteconfig.a aVar = null;
        if (aVarA == null) {
            Intrinsics.y("remoteConfig");
            aVarA = null;
        }
        aVarA.w(n.b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return f.f((j.b) obj);
            }
        }));
        com.google.firebase.remoteconfig.a aVar2 = this.f41896a;
        if (aVar2 == null) {
            Intrinsics.y("remoteConfig");
        } else {
            aVar = aVar2;
        }
        aVar.h().addOnCompleteListener(new OnCompleteListener() {
            @Override
            public final void onComplete(Task task) {
                f.g(this.f41892a, callback, task);
            }
        });
    }
}
