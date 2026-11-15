package com.transsion.shorttv.base.widget.toast.core;

import android.app.Activity;
import android.app.Application;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public class g extends Handler implements kr.b {

    public static final a f50975e = new a(null);

    private Application f50976a;

    private com.transsion.shorttv.base.widget.toast.core.a f50977b;

    private WeakReference f50978c;

    private kr.c f50979d;

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
    public void b(kr.c cVar) {
        this.f50979d = cVar;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0037  */
    public kr.a c(Application application) {
        kr.a dVar;
        com.transsion.shorttv.base.widget.toast.core.a aVar = this.f50977b;
        Intrinsics.e(aVar);
        Activity activityA = aVar.a();
        if (activityA != null) {
            dVar = new b(activityA);
        } else {
            dVar = Build.VERSION.SDK_INT == 25 ? new d(application) : new e(application);
        }
        if ((dVar instanceof b) || Build.VERSION.SDK_INT < 30) {
            kr.c cVar = this.f50979d;
            Intrinsics.e(cVar);
            dVar.setView(cVar.createView(application));
            kr.c cVar2 = this.f50979d;
            Intrinsics.e(cVar2);
            int gravity = cVar2.getGravity();
            kr.c cVar3 = this.f50979d;
            Intrinsics.e(cVar3);
            int xOffset = cVar3.getXOffset();
            kr.c cVar4 = this.f50979d;
            Intrinsics.e(cVar4);
            dVar.setGravity(gravity, xOffset, cVar4.getYOffset());
            kr.c cVar5 = this.f50979d;
            Intrinsics.e(cVar5);
            float horizontalMargin = cVar5.getHorizontalMargin();
            kr.c cVar6 = this.f50979d;
            Intrinsics.e(cVar6);
            dVar.setMargin(horizontalMargin, cVar6.getVerticalMargin());
        } else {
            Intrinsics.e(application);
            if (application.getApplicationInfo().targetSdkVersion < 30) {
                kr.c cVar7 = this.f50979d;
                Intrinsics.e(cVar7);
                dVar.setView(cVar7.createView(application));
                kr.c cVar8 = this.f50979d;
                Intrinsics.e(cVar8);
                int gravity2 = cVar8.getGravity();
                kr.c cVar9 = this.f50979d;
                Intrinsics.e(cVar9);
                int xOffset2 = cVar9.getXOffset();
                kr.c cVar10 = this.f50979d;
                Intrinsics.e(cVar10);
                dVar.setGravity(gravity2, xOffset2, cVar10.getYOffset());
                kr.c cVar11 = this.f50979d;
                Intrinsics.e(cVar11);
                float horizontalMargin2 = cVar11.getHorizontalMargin();
                kr.c cVar12 = this.f50979d;
                Intrinsics.e(cVar12);
                dVar.setMargin(horizontalMargin2, cVar12.getVerticalMargin());
            }
        }
        return dVar;
    }

    @Override
    public void handleMessage(Message msg) {
        kr.a aVar;
        Intrinsics.h(msg, "msg");
        WeakReference weakReference = this.f50978c;
        if (weakReference != null) {
            Intrinsics.e(weakReference);
            aVar = (kr.a) weakReference.get();
        } else {
            aVar = null;
        }
        int i10 = msg.what;
        if (i10 != 1) {
            if (i10 == 2 && aVar != null) {
                aVar.cancel();
                return;
            }
            return;
        }
        Object obj = msg.obj;
        if (obj instanceof CharSequence) {
            Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.CharSequence");
            CharSequence charSequence = (CharSequence) obj;
            if (aVar != null) {
                aVar.cancel();
            }
            kr.a aVarC = c(this.f50976a);
            this.f50978c = new WeakReference(aVarC);
            Intrinsics.e(aVarC);
            aVarC.setDuration(d(charSequence));
            aVarC.setText(charSequence);
            aVarC.show();
            b(new lr.a());
        }
    }

    @Override
    public void registerStrategy(Application application) {
        this.f50976a = application;
        com.transsion.shorttv.base.widget.toast.core.a.C0632a c0632a = com.transsion.shorttv.base.widget.toast.core.a.f50961b;
        Intrinsics.e(application);
        this.f50977b = c0632a.a(application);
    }
}
