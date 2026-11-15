package com.tn.lib.widget.toast.core;

import android.app.Activity;
import android.app.Application;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public class g extends Handler implements gh.b {

    public static final a f40479e = new a(null);

    private Application f40480a;

    private com.tn.lib.widget.toast.core.a f40481b;

    private WeakReference f40482c;

    private gh.c f40483d;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public g() {
        super(Looper.getMainLooper());
    }

    private final int d(CharSequence charSequence) {
        return charSequence.length() > 20 ? 1 : 0;
    }

    @Override
    public void a(CharSequence charSequence) {
        removeMessages(1);
        Message messageObtain = Message.obtain();
        messageObtain.what = 1;
        messageObtain.obj = charSequence;
        sendMessageDelayed(messageObtain, 200L);
    }

    @Override
    public void b(gh.c cVar) {
        this.f40483d = cVar;
    }

    public gh.a c(Application application) {
        gh.a dVar;
        com.tn.lib.widget.toast.core.a aVar = this.f40481b;
        Intrinsics.e(aVar);
        Activity activityA = aVar.a();
        if (activityA != null) {
            dVar = new b(activityA);
        } else {
            dVar = Build.VERSION.SDK_INT == 25 ? new d(application) : new e(application);
        }
        gh.c cVar = this.f40483d;
        Intrinsics.e(cVar);
        dVar.b(cVar.createView(application));
        gh.c cVar2 = this.f40483d;
        Intrinsics.e(cVar2);
        int gravity = cVar2.getGravity();
        gh.c cVar3 = this.f40483d;
        Intrinsics.e(cVar3);
        int xOffset = cVar3.getXOffset();
        gh.c cVar4 = this.f40483d;
        Intrinsics.e(cVar4);
        dVar.setGravity(gravity, xOffset, cVar4.getYOffset());
        gh.c cVar5 = this.f40483d;
        Intrinsics.e(cVar5);
        float horizontalMargin = cVar5.getHorizontalMargin();
        gh.c cVar6 = this.f40483d;
        Intrinsics.e(cVar6);
        dVar.setMargin(horizontalMargin, cVar6.getVerticalMargin());
        return dVar;
    }

    @Override
    public void handleMessage(Message msg) {
        Object obj;
        Intrinsics.h(msg, "msg");
        WeakReference weakReference = this.f40482c;
        if (weakReference != null) {
            Intrinsics.e(weakReference);
            obj = weakReference.get();
        } else {
            obj = null;
        }
        int i10 = msg.what;
        if (i10 != 1) {
            if (i10 == 2 && obj != null) {
                ((gh.a) obj).cancel();
                return;
            }
            return;
        }
        Object obj2 = msg.obj;
        if (obj2 instanceof CharSequence) {
            Intrinsics.f(obj2, "null cannot be cast to non-null type kotlin.CharSequence");
            CharSequence charSequence = (CharSequence) obj2;
            gh.a aVar = (gh.a) obj;
            if (aVar != null) {
                aVar.cancel();
            }
            gh.a aVarC = c(this.f40480a);
            this.f40482c = new WeakReference(aVarC);
            Intrinsics.e(aVarC);
            aVarC.setDuration(d(charSequence));
            aVarC.setText(charSequence);
            try {
                Result.Companion companion = Result.INSTANCE;
                aVarC.show();
                Result.m453constructorimpl(Unit.f64096a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m453constructorimpl(ResultKt.a(th2));
            }
            b(new hh.a());
        }
    }

    @Override
    public void registerStrategy(Application application) {
        this.f40480a = application;
        com.tn.lib.widget.toast.core.a.C0561a c0561a = com.tn.lib.widget.toast.core.a.f40464b;
        Intrinsics.e(application);
        this.f40481b = c0561a.a(application);
    }
}
