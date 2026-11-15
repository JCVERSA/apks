package com.mbridge.msdk.dycreator.baseview;

import android.content.Context;
import android.util.AttributeSet;
import com.mbridge.msdk.dycreator.binding.response.SplashResData;
import com.mbridge.msdk.dycreator.bus.EventBus;
import com.mbridge.msdk.dycreator.listener.action.EAction;
import com.mbridge.msdk.util.timer.a;
import com.mbridge.msdk.util.timer.b;

public class MBCountDownView extends MBTextView {

    private b f33618f;

    private MBCountDownView f33619g;

    public MBCountDownView(Context context) {
        super(context);
        this.f33619g = this;
    }

    public void initView(final String str, final String str2, int i10) {
        this.f33618f = new b().b(i10 * 1000).a(1000L).a(new a() {
            @Override
            public void onFinish() {
                MBCountDownView.this.f33618f.a();
                SplashResData splashResData = new SplashResData();
                splashResData.seteAction(EAction.CLOSE);
                EventBus.getDefault().post(splashResData);
            }

            @Override
            public void onTick(long j10) {
                if (str2.startsWith("zh")) {
                    MBCountDownView.this.f33619g.setText((j10 / 1000) + "s" + str);
                    return;
                }
                MBCountDownView.this.f33619g.setText(MBCountDownView.this.f33619g + " " + (j10 / 1000) + "s");
            }
        });
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        b bVar = this.f33618f;
        if (bVar != null) {
            bVar.c();
        }
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        b bVar = this.f33618f;
        if (bVar != null) {
            bVar.a();
        }
    }

    public MBCountDownView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f33619g = this;
    }

    public MBCountDownView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f33619g = this;
    }
}
