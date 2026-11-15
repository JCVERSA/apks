package com.bytedance.sdk.component.adexpress.vS;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.LinearInterpolator;
import android.widget.TextSwitcher;
import android.widget.TextView;
import android.widget.ViewSwitcher;
import com.bytedance.sdk.component.utils.LqL;
import java.util.ArrayList;
import java.util.List;

public class Sj extends TextSwitcher implements ViewSwitcher.ViewFactory, LqL.Sj {
    private int Dq;
    private final int EjP;
    private int Fmk;
    private Context HiB;
    private int Jcg;
    Animation.AnimationListener Sj;
    private int TEQ;
    private int TKC;
    private int Ym;

    private int f20291aa;
    private List<String> sP;
    private Handler sef;
    private float uA;
    private TextView vS;

    public Sj(Context context, int i10, float f10, int i11, int i12) {
        super(context);
        this.sP = new ArrayList();
        this.TKC = 0;
        this.EjP = 1;
        this.sef = new LqL(Looper.getMainLooper(), this);
        this.Sj = new Animation.AnimationListener() {
            @Override
            public void onAnimationEnd(Animation animation) {
                if (Sj.this.vS != null) {
                    Sj.this.vS.setText("");
                }
            }

            @Override
            public void onAnimationRepeat(Animation animation) {
            }

            @Override
            public void onAnimationStart(Animation animation) {
            }
        };
        this.HiB = context;
        this.Dq = i10;
        this.uA = f10;
        this.TEQ = i11;
        this.Fmk = i12;
        TKC();
    }

    private void TKC() {
        setFactory(this);
    }

    @Override
    public View makeView() {
        TextView textView = new TextView(getContext());
        this.vS = textView;
        textView.setTextColor(this.Dq);
        this.vS.setTextSize(this.uA);
        this.vS.setMaxLines(this.TEQ);
        this.vS.setTextAlignment(this.Fmk);
        return this.vS;
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.sef.sendEmptyMessageDelayed(1, this.Jcg);
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.sef.removeMessages(1);
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        try {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(com.bytedance.sdk.component.adexpress.dynamic.HiB.Ym.sP(this.sP.get(this.Ym), this.uA, false)[0], 1073741824), i10);
        } catch (Exception unused) {
            super.onMeasure(i10, i11);
        }
    }

    public void sP() {
        List<String> list = this.sP;
        if (list == null || list.size() <= 0) {
            return;
        }
        int i10 = this.TKC;
        this.TKC = i10 + 1;
        this.Ym = i10;
        setText(this.sP.get(i10));
        if (this.TKC > this.sP.size() - 1) {
            this.TKC = 0;
        }
    }

    public void setAnimationDuration(int i10) {
        this.Jcg = i10;
    }

    public void setAnimationText(List<String> list) {
        this.sP = list;
    }

    public void setAnimationType(int i10) {
        this.f20291aa = i10;
    }

    public void setMaxLines(int i10) {
        this.TEQ = i10;
    }

    public void setTextColor(int i10) {
        this.Dq = i10;
    }

    public void setTextSize(float f10) {
        this.uA = f10;
    }

    public void Sj() {
        int i10 = this.f20291aa;
        if (i10 == 1) {
            setInAnimation(getContext(), com.bytedance.sdk.component.utils.ib.uA(this.HiB, "tt_text_animation_y_in"));
            setOutAnimation(getContext(), com.bytedance.sdk.component.utils.ib.uA(this.HiB, "tt_text_animation_y_out"));
        } else if (i10 == 0) {
            setInAnimation(getContext(), com.bytedance.sdk.component.utils.ib.uA(this.HiB, "tt_text_animation_x_in"));
            setOutAnimation(getContext(), com.bytedance.sdk.component.utils.ib.uA(this.HiB, "tt_text_animation_x_in"));
            getInAnimation().setInterpolator(new LinearInterpolator());
            getOutAnimation().setInterpolator(new LinearInterpolator());
            getInAnimation().setAnimationListener(this.Sj);
            getOutAnimation().setAnimationListener(this.Sj);
        }
        this.sef.sendEmptyMessage(1);
    }

    @Override
    public void Sj(Message message) {
        if (message.what != 1) {
            return;
        }
        sP();
        this.sef.sendEmptyMessageDelayed(1, this.Jcg);
    }
}
