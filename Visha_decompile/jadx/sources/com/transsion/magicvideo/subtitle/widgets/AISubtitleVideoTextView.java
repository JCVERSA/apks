package com.transsion.magicvideo.subtitle.widgets;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.ScrollView;
import com.avery.subtitle.widget.SubtitleTextView;
import com.avery.subtitle.widget.TracksSubtitleView;
import com.blankj.utilcode.util.ThreadUtils;
import com.transsion.magicvideo.R;
import com.transsion.magicvideo.player.VideoPlayManager;
import com.transsion.playercommon.subtitle.model.AILaunageConfig;
import defpackage.n;
import defpackage.pp3;
import defpackage.s74;
import defpackage.w;
import defpackage.w5a;
import defpackage.zfb;

public class AISubtitleVideoTextView extends SubtitleVideoTextView {
    public int d;
    public boolean e;
    public boolean f;
    public final Runnable g;

    public AISubtitleVideoTextView(Context context) {
        this(context, null);
    }

    private void setSubtitleText(String str) {
        Log.e("Subtitle_Out", "AISubtitleVideoTextView setSubtitleText：" + str);
        if (TextUtils.isEmpty(str)) {
            setText(SubtitleTextView.PLACEHOLDER_TEXT);
            if (TracksSubtitleView.isInDragMode() || this.f) {
                return;
            }
            setVisibility(8);
            return;
        }
        boolean z = false;
        setVisibility(0);
        setText(str.replaceAll("^[\n\r]", "").replaceAll("[\n\r]$", ""));
        if (n.b.booleanValue() && getResources().getString(R.string.visha_ai_speech_rcognizing).equals(str)) {
            z = true;
        }
        this.e = z;
    }

    @Override
    public void addLocalSubtitleTextListener() {
        i(false);
        if (pp3.r() || this.mIsFirstSubtitle) {
            VideoPlayManager.X().A(this);
        }
    }

    @Override
    public void clearAISubtitleText() {
        super.clearAISubtitleText();
        Log.e("Subtitle_Out", "AISubtitleVideoTextView clearAISubtitleText");
        ThreadUtils.o().removeCallbacks(this.g);
        setAlpha(1.0f);
        setSubtitleText("");
    }

    public final void f() {
        Log.e("Subtitle_Out", "RealTimeAiTextResetRunnable");
        setAlpha(0.6f);
        setSubtitleText(getContext().getString(R.string.visha_ai_speech_rcognizing));
    }

    public final zfb g(String str, Boolean bool) {
        setSubtitleText(str);
        return null;
    }

    public final void h() {
        View view = (View) getParent();
        if (view instanceof ScrollView) {
            view.setVisibility(getVisibility());
        }
    }

    public final void i(boolean z) {
        if (this.mIsAISubtitle == z) {
            return;
        }
        this.mIsAISubtitle = z;
    }

    @Override
    public void init() {
        this.d = getLineHeight();
        i(n.b.booleanValue());
    }

    @Override
    public void onAISubtitleText(String str, boolean z) {
        Log.e("Subtitle_Out", "AISubtitleVideoTextView onAISubtitleText " + str);
        super.onAISubtitleText(str, z);
        ThreadUtils.o().removeCallbacks(this.g);
        ThreadUtils.o().postDelayed(this.g, 5000L);
        setAlpha(1.0f);
        setSubtitleText(str);
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ThreadUtils.o().removeCallbacks(this.g);
    }

    @Override
    public void onLocalSubtitleTranText(String str) {
        Log.e("Subtitle_Out", "AISubtitleVideoTextView onLocalSubtitleTranText " + str);
        super.onLocalSubtitleTranText(str);
        setAlpha(1.0f);
        setSubtitleText(str);
    }

    @Override
    public void onMeasure(int i, int i2) {
        int measuredHeight;
        super.onMeasure(i, i2);
        if (this.b == null || this.e || (measuredHeight = getMeasuredHeight()) <= 0 || measuredHeight >= getLineHeight() * 2 || this.d == measuredHeight) {
            return;
        }
        this.d = measuredHeight;
        Log.i("AISubtitleVideoTextView", "onMeasure MeasuredHeight:" + measuredHeight + ",lineHeight:" + getLineHeight());
        this.b.onTextLineHeightChanged(measuredHeight);
    }

    @Override
    public void onSubtitleText(String str) {
        if (n.a.booleanValue() && !this.mIsAISubtitle) {
            if ("none".equals(n.g)) {
                setSubtitleText(str);
            } else {
                onTransCallback(str);
            }
        }
    }

    @Override
    public void onTransCallback(String str) {
        Log.e("Subtitle_Out", "AISubtitleVideoTextView onTransCallback " + str);
        if (TextUtils.isEmpty(str)) {
            setSubtitleText("");
            return;
        }
        AILaunageConfig aILaunageConfig = new AILaunageConfig(n.f, n.g);
        if (w.j()) {
            w5a.b().h(str);
        } else {
            w5a.b().a(str, aILaunageConfig, new s74() {
                @Override
                public final Object invoke(Object obj, Object obj2) {
                    return this.b.g((String) obj, (Boolean) obj2);
                }
            });
        }
    }

    @Override
    public void removeLocalSubtitleTextListener() {
        i(true);
        if (pp3.r() || this.mIsFirstSubtitle) {
            VideoPlayManager.X().I1(this);
        }
    }

    @Override
    public void setShowSetting(boolean z) {
        this.f = z;
        if (z || n.b.booleanValue()) {
            return;
        }
        setSubtitleText(getText() != null ? getText().toString().trim() : "");
    }

    @Override
    public void setVisibility(int i) {
        boolean z = this.mIsAISubtitle;
        if (z && this.mIsFirstSubtitle) {
            ThreadUtils.o().removeCallbacks(this.c);
            i = 0;
        } else if (!z && i == 0) {
            b();
        } else if (i != 0) {
            ThreadUtils.o().removeCallbacks(this.c);
        }
        super.setVisibility(i);
        h();
    }

    public AISubtitleVideoTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AISubtitleVideoTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f = false;
        this.g = new Runnable() {
            @Override
            public final void run() {
                this.b.f();
            }
        };
    }
}
