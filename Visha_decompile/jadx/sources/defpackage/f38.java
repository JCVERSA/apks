package defpackage;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import com.blankj.utilcode.util.AdaptScreenUtils;
import com.blankj.utilcode.util.ThreadUtils;
import com.tencent.mmkv.MMKV;
import com.transsion.onlinevideo.R;
import com.transsion.widgets.BubbleTextView;
import com.transsion.widgets.bubblepopwindow.BubblePopupWindow;

public class f38 {
    public static volatile f38 b;
    public BubblePopupWindow a;

    public static f38 c() {
        if (b == null) {
            synchronized (f38.class) {
                try {
                    if (b == null) {
                        b = new f38();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return b;
    }

    public BubblePopupWindow b() {
        return this.a;
    }

    public String d(long j) {
        if (j == 0) {
            return "";
        }
        long j2 = j / 3600;
        if (j2 <= 0) {
            return ((j % 3600) / 60) + " min";
        }
        return j2 + " h " + ((j % 3600) / 60) + " min";
    }

    public final void e() {
        BubblePopupWindow bubblePopupWindow = this.a;
        if (bubblePopupWindow != null) {
            bubblePopupWindow.dismiss();
        }
    }

    public void f(View view, Context context) {
        if (MMKV.p().e("ott_play_fullscreen_guide", false) || view == null || context == null) {
            return;
        }
        Activity activity = (Activity) context;
        if (activity.isFinishing() || activity.isDestroyed()) {
            return;
        }
        this.a = new BubblePopupWindow(context);
        View viewInflate = View.inflate(context, R.layout.player_fullscreen_popup_view, null);
        BubbleTextView bubbleTextView = (BubbleTextView) viewInflate.findViewById(R.id.tv_bubble);
        this.a.setFocusable(false);
        this.a.setOutsideTouchable(false);
        this.a.setTouchable(true);
        viewInflate.measure(0, 0);
        this.a.setBubbleView(viewInflate);
        this.a.setWidth(viewInflate.getMeasuredWidth());
        this.a.setHeight(viewInflate.getMeasuredHeight());
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        int i = iArr[0];
        iArr[0] = view.getLayoutDirection() == 1 ? AdaptScreenUtils.h(8.0f) : (f39.d() - viewInflate.getMeasuredWidth()) - AdaptScreenUtils.h(8.0f);
        iArr[1] = iArr[1] + (viewInflate.getMeasuredHeight() - AdaptScreenUtils.h(10.0f));
        bubbleTextView.setTriangleOffset(((i - iArr[0]) + (view.getMeasuredWidth() / 2)) - AdaptScreenUtils.h(5.0f));
        this.a.showAtLocation(view, 8388659, iArr[0], iArr[1]);
        MMKV.p().y("ott_play_fullscreen_guide", true);
        ThreadUtils.o().postDelayed(new Runnable() {
            @Override
            public final void run() {
                this.b.e();
            }
        }, 2000L);
    }
}
