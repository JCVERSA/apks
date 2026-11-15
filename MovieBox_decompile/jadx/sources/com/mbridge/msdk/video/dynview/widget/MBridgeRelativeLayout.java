package com.mbridge.msdk.video.dynview.widget;

import android.animation.AnimatorSet;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import com.mbridge.msdk.video.dynview.moffer.b;
import com.mbridge.msdk.video.dynview.moffer.d;

public class MBridgeRelativeLayout extends RelativeLayout {

    private d f38311a;

    private boolean f38312b;

    private AnimatorSet f38313c;

    private boolean f38314d;

    private b f38315e;

    public MBridgeRelativeLayout(Context context) {
        super(context);
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        AnimatorSet animatorSet = this.f38313c;
        if (animatorSet != null) {
            try {
                animatorSet.start();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @Override
    protected void onDetachedFromWindow() {
        d dVar;
        super.onDetachedFromWindow();
        if (!this.f38312b && (dVar = this.f38311a) != null) {
            this.f38312b = true;
            dVar.a();
        }
        AnimatorSet animatorSet = this.f38313c;
        if (animatorSet != null) {
            try {
                animatorSet.cancel();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @Override
    protected void onVisibilityChanged(@NonNull View view, int i10) {
        b bVar;
        super.onVisibilityChanged(view, i10);
        if (!(view instanceof MBridgeRelativeLayout) || i10 != 0 || (bVar = this.f38315e) == null || this.f38314d) {
            return;
        }
        this.f38314d = true;
        bVar.a();
    }

    public void setAnimatorSet(AnimatorSet animatorSet) {
        this.f38313c = animatorSet;
    }

    public void setMoreOfferCacheReportCallBack(b bVar) {
        this.f38315e = bVar;
    }

    public void setMoreOfferShowFailedCallBack(d dVar) {
        this.f38311a = dVar;
    }

    public MBridgeRelativeLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public MBridgeRelativeLayout(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
    }
}
