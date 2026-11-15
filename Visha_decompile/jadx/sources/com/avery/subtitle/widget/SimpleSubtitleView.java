package com.avery.subtitle.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.Html;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import androidx.annotation.Nullable;
import com.avery.subtitle.a;
import com.avery.subtitle.b;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.arch.threads.TaskExecutor;
import defpackage.m2a;
import java.util.List;

@SuppressLint({"AppCompatCustomView"})
public class SimpleSubtitleView extends SubtitleTextView implements b.a, b.InterfaceC0029b {
    public b c;

    public SimpleSubtitleView(Context context) {
        super(context);
        init();
    }

    private void init() {
        a aVar = new a();
        this.c = aVar;
        aVar.setOnSubtitlePreparedListener(this);
        this.c.setOnSubtitleChangeListener(this);
    }

    @Override
    public void bindToMediaPlayer(com.transsion.playercommon.player.b bVar) {
        this.c.bindToMediaPlayer(bVar);
    }

    @Override
    public void destroy() {
        this.c.destroy();
    }

    @Override
    public void onDetachedFromWindow() {
        destroy();
        super.onDetachedFromWindow();
    }

    @Override
    public void onSubtitleChanged(@Nullable final m2a m2aVar) {
        if (m2aVar != null && !TextUtils.isEmpty(m2aVar.d)) {
            setVisibility(0);
            TaskExecutor.c(new TaskExecutor.Task<CharSequence>() {
                /* JADX WARN: Can't rename method to resolve collision */
                @Override
                public CharSequence onBackground() {
                    return Html.fromHtml(m2aVar.d, 0);
                }

                @Override
                public void onResult(CharSequence charSequence) {
                    Log.d("SimpleSubtitleView", "onSubtitleChanged subtitle.content" + ((Object) charSequence));
                    SimpleSubtitleView.this.setText(charSequence.toString().replaceAll("^[\n\r]", "").replaceAll("[\n\r]$", ""));
                }
            });
        } else {
            setText(SubtitleTextView.PLACEHOLDER_TEXT);
            if (TracksSubtitleView.isInDragMode()) {
                return;
            }
            setVisibility(8);
        }
    }

    @Override
    public void onSubtitlePrepared(@Nullable List<m2a> list) {
        start();
    }

    @Override
    public void pause() {
        this.c.pause();
    }

    @Override
    public void reset() {
        this.c.reset();
    }

    @Override
    public void resume() {
        this.c.resume();
    }

    @Override
    public void setOnSubtitleChangeListener(b.a aVar) {
        this.c.setOnSubtitleChangeListener(aVar);
    }

    @Override
    public void setOnSubtitlePreparedListener(b.InterfaceC0029b interfaceC0029b) {
        this.c.setOnSubtitlePreparedListener(interfaceC0029b);
    }

    @Override
    public void setSpeed(float f) {
        this.c.setSpeed(f);
    }

    @Override
    public void setSubtitleDelayMs(long j) {
        LogUtils.i("SimpleSubtitleView", "setSubtitleDelayMs = " + j);
        this.c.setSubtitleDelayMs(j);
    }

    @Override
    public void setSubtitlePath(String str) {
        this.c.setSubtitlePath(str);
    }

    @Override
    public void setTextAlignment(int i) {
        super.setTextAlignment(i);
        this.c.start();
    }

    @Override
    public void start() {
        this.c.start();
    }

    @Override
    public void stop() {
        this.c.stop();
    }

    public SimpleSubtitleView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    public SimpleSubtitleView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init();
    }
}
