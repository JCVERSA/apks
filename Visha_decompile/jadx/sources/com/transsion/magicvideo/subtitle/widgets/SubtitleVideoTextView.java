package com.transsion.magicvideo.subtitle.widgets;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import com.avery.subtitle.widget.SubtitleTextView;
import com.avery.subtitle.widget.TracksSubtitleView;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.ThreadUtils;
import com.transsion.magicvideo.R;
import com.transsion.magicvideo.player.VideoPlayManager;
import defpackage.pp3;

@SuppressLint({"AppCompatCustomView"})
public class SubtitleVideoTextView extends SubtitleTextView implements VideoPlayManager.e {
    public final Runnable c;
    public boolean mIsAISubtitle;
    public boolean mIsFirstSubtitle;

    public SubtitleVideoTextView(Context context) {
        this(context, null);
    }

    public void b() {
        ThreadUtils.o().removeCallbacks(this.c);
        ThreadUtils.o().postDelayed(this.c, 5000L);
    }

    public final void c() {
        Log.e("Subtitle_Out", "mSubtitleTextResetRunnable");
        onSubtitleText("");
    }

    public void init() {
        if (pp3.r() || this.mIsFirstSubtitle) {
            VideoPlayManager.X().A(this);
        }
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (!pp3.r() || this.mIsFirstSubtitle) {
            VideoPlayManager.X().I1(this);
        }
        ThreadUtils.o().removeCallbacks(this.c);
    }

    @Override
    public void onSubtitleText(String str) {
        Log.d("SubtitleVideoTextView", "onSubtitleText " + str);
        if (!TextUtils.isEmpty(str)) {
            setVisibility(0);
            setText(str.replaceAll("^[\n\r]", "").replaceAll("[\n\r]$", ""));
            b();
        } else {
            setText(SubtitleTextView.PLACEHOLDER_TEXT);
            if (TracksSubtitleView.isInDragMode()) {
                return;
            }
            setVisibility(8);
        }
    }

    @Override
    public void setSubtitleDelayMs(long j) {
        LogUtils.i("SubtitleVideoTextView", "setSubtitleDelayMs = " + j);
    }

    public SubtitleVideoTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SubtitleVideoTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.c = new Runnable() {
            @Override
            public final void run() {
                this.b.c();
            }
        };
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SubtitleVideoTextView);
            this.mIsFirstSubtitle = typedArrayObtainStyledAttributes.getBoolean(R.styleable.SubtitleVideoTextView_isFirstSubtitle, false);
            typedArrayObtainStyledAttributes.recycle();
        }
        init();
    }
}
