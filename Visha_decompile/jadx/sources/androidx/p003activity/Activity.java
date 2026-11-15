package androidx.p003activity;

import android.view.View;
import androidx.annotation.RequiresApi;
import defpackage.oz3;
import defpackage.sz3;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u001c\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0087@¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroid/app/Activity;", "Landroid/view/View;", "view", "Lzfb;", "trackPipAnimationHintView", "(Landroid/app/Activity;Landroid/view/View;Lwh1;)Ljava/lang/Object;", "activity_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class Activity {
    @RequiresApi(26)
    public static final Object trackPipAnimationHintView(final android.app.Activity activity, View view, wh1<? super zfb> wh1Var) {
        Object objCollect = sz3.d(new PipHintTrackerKt$trackPipAnimationHintView$flow$1(view, null)).collect(new oz3() {
            @Override
            public Object emit(Object obj, wh1 wh1Var2) {
                return emit((android.graphics.Rect) obj, (wh1<? super zfb>) wh1Var2);
            }

            public final Object emit(android.graphics.Rect rect, wh1<? super zfb> wh1Var2) {
                Api26Impl.INSTANCE.setPipParamsSourceRectHint(activity, rect);
                return zfb.a;
            }
        }, wh1Var);
        return objCollect == z45.f() ? objCollect : zfb.a;
    }

    public static final android.graphics.Rect trackPipAnimationHintView$positionInWindow(View view) {
        android.graphics.Rect rect = new android.graphics.Rect();
        view.getGlobalVisibleRect(rect);
        return rect;
    }
}
