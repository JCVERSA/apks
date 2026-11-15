package com.transsion.shorttv_pugc.base.activity;

import android.view.MotionEvent;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import f4.a;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import vs.g;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b&\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u0003B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0019\u0010\t\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\nR\u001d\u0010\u0010\u001a\u0004\u0018\u00010\u000b8DX\u0084\u0084\u0002¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0011"}, d2 = {"Lcom/transsion/shorttv_pugc/base/activity/BaseMusicFloatActivity;", "Lf4/a;", "T", "Lcom/transsion/shorttv_pugc/base/activity/BaseCommonActivity;", "<init>", "()V", "Landroid/view/MotionEvent;", "ev", "", "dispatchTouchEvent", "(Landroid/view/MotionEvent;)Z", "Lvs/g;", "c", "Lkotlin/Lazy;", "P", "()Lvs/g;", "shortMusicAudioProvider", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public abstract class BaseMusicFloatActivity<T extends f4.a> extends BaseCommonActivity<T> {

    private final Lazy shortMusicAudioProvider = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return BaseMusicFloatActivity.Q();
        }
    });

    public static final g Q() {
        ws.a aVarB = cs.a.f58651a.b();
        if (aVarB != null) {
            return aVarB.g();
        }
        return null;
    }

    protected final g P() {
        return (g) this.shortMusicAudioProvider.getValue();
    }

    @Override
    public boolean dispatchTouchEvent(MotionEvent ev2) {
        g gVarP;
        Integer numValueOf = ev2 != null ? Integer.valueOf(ev2.getAction()) : null;
        if (numValueOf != null && numValueOf.intValue() == 0 && (gVarP = P()) != null) {
            gVarP.c(this, ev2);
        }
        return super.dispatchTouchEvent(ev2);
    }
}
