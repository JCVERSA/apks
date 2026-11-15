package com.avery.subtitle.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.avery.subtitle.b;

@SuppressLint({"AppCompatCustomView"})
public class SubtitleTextView extends TextView implements b {
    public static final String EMPTY_TEXT = "";
    public static final String PLACEHOLDER_TEXT = "                    ";
    public a b;

    public interface a {
        void onTextLineHeightChanged(int i);
    }

    public SubtitleTextView(Context context) {
        super(context);
    }

    public void addLocalSubtitleTextListener() {
    }

    public void bindToMediaPlayer(com.transsion.playercommon.player.b bVar) {
    }

    public void clearAISubtitleText() {
    }

    public void destroy() {
    }

    public void onAISubtitleText(String str, boolean z) {
    }

    public void onLocalSubtitleTranText(String str) {
    }

    public void onSubtitleText(String str) {
    }

    public void onTransCallback(String str) {
    }

    public void pause() {
    }

    public void removeLocalSubtitleTextListener() {
    }

    public void reset() {
    }

    public void resume() {
    }

    public void setMeasureTextLineHeightCallBack(a aVar) {
        this.b = aVar;
    }

    public void setOnSubtitleChangeListener(b.a aVar) {
    }

    public void setOnSubtitlePreparedListener(b.InterfaceC0029b interfaceC0029b) {
    }

    public void setShowSetting(boolean z) {
    }

    public void setSpeed(float f) {
    }

    public void setSubtitleDelayMs(long j) {
    }

    public void setSubtitlePath(String str) {
    }

    public void start() {
    }

    public void stop() {
    }

    public SubtitleTextView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public SubtitleTextView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
