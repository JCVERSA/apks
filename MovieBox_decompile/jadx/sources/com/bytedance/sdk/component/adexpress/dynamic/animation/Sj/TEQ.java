package com.bytedance.sdk.component.adexpress.dynamic.animation.Sj;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.List;

public class TEQ extends EjP {
    private Sj EjP;
    private float HiB;
    private float vS;

    private class Sj {
        private View sP;

        public Sj(View view) {
            this.sP = view;
        }

        public void Sj(int i10) {
            if (!IntegrationConstants.TAB_BAR_POSITION_TOP.equals(TEQ.this.sP.Sj())) {
                ViewGroup.LayoutParams layoutParams = this.sP.getLayoutParams();
                layoutParams.height = i10;
                this.sP.setLayoutParams(layoutParams);
                this.sP.requestLayout();
                return;
            }
            if (TEQ.this.TKC instanceof ViewGroup) {
                for (int i11 = 0; i11 < ((ViewGroup) TEQ.this.TKC).getChildCount(); i11++) {
                    ((ViewGroup) TEQ.this.TKC).getChildAt(i11).setTranslationY(i10 - TEQ.this.HiB);
                }
            }
            TEQ teq = TEQ.this;
            teq.TKC.setTranslationY(teq.HiB - i10);
        }
    }

    public TEQ(View view, com.bytedance.sdk.component.adexpress.dynamic.EjP.Sj sj2) {
        super(view, sj2);
    }

    @Override
    List<ObjectAnimator> Sj() {
        int i10;
        String str;
        View view = this.TKC;
        if ((view instanceof ImageView) && (view.getParent() instanceof com.bytedance.sdk.component.adexpress.dynamic.dynamicview.HiB)) {
            this.TKC = (View) this.TKC.getParent();
        }
        this.TKC.setAlpha(0.0f);
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.TKC, "alpha", 0.0f, 1.0f).setDuration((int) (this.sP.TEQ() * 1000.0d));
        this.EjP = new Sj(this.TKC);
        final int i11 = this.TKC.getLayoutParams().height;
        this.HiB = i11;
        this.vS = this.TKC.getLayoutParams().width;
        if (TtmlNode.LEFT.equals(this.sP.Sj()) || TtmlNode.RIGHT.equals(this.sP.Sj())) {
            i10 = (int) this.vS;
            str = "width";
        } else {
            str = "height";
            i10 = i11;
        }
        ObjectAnimator duration2 = ObjectAnimator.ofInt(this.EjP, str, 0, i10).setDuration((int) (this.sP.TEQ() * 1000.0d));
        ArrayList arrayList = new ArrayList();
        arrayList.add(Sj(duration));
        arrayList.add(Sj(duration2));
        ((ObjectAnimator) arrayList.get(0)).addListener(new Animator.AnimatorListener() {
            @Override
            public void onAnimationEnd(Animator animator, boolean z10) {
            }

            @Override
            public void onAnimationStart(Animator animator) {
            }

            @Override
            public void onAnimationEnd(Animator animator) {
                TEQ.this.EjP.Sj(i11);
            }

            @Override
            public void onAnimationStart(Animator animator, boolean z10) {
            }

            @Override
            public void onAnimationCancel(Animator animator) {
            }

            @Override
            public void onAnimationRepeat(Animator animator) {
            }
        });
        return arrayList;
    }
}
