package com.transsion.tranplayer.media;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Canvas;
import android.media.MediaFormat;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SurfaceView;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.MediaController;
import com.transsion.tranplayer.LibVLC;
import com.transsion.tranplayer.Media;
import java.io.InputStream;
import java.util.Map;

public class VideoView extends SurfaceView implements MediaController.MediaPlayerControl {
    private static LibVLC sLibVLC;

    public VideoView(Context context) {
        super(context);
        sLibVLC = new LibVLC(context, null);
    }

    public void addSubtitleSource(InputStream inputStream, MediaFormat mediaFormat) {
    }

    @Override
    public boolean canPause() {
        return false;
    }

    @Override
    public boolean canSeekBackward() {
        return false;
    }

    @Override
    public boolean canSeekForward() {
        return false;
    }

    @Override
    public void draw(Canvas canvas) {
        super.draw(canvas);
    }

    @Override
    @TargetApi(18)
    public int getAudioSessionId() {
        return 0;
    }

    @Override
    public int getBufferPercentage() {
        return 0;
    }

    @Override
    public int getCurrentPosition() {
        return 0;
    }

    @Override
    public int getDuration() {
        return -1;
    }

    @Override
    public boolean isPlaying() {
        return false;
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override
    @TargetApi(14)
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
    }

    @Override
    @TargetApi(14)
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
    }

    @Override
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        return super.onKeyDown(i, keyEvent);
    }

    @Override
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
    }

    @Override
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent);
    }

    @Override
    public boolean onTrackballEvent(MotionEvent motionEvent) {
        return super.onTrackballEvent(motionEvent);
    }

    @Override
    public void pause() {
    }

    public int resolveAdjustedSize(int i, int i2) {
        return View.getDefaultSize(i, i2);
    }

    public void resume() {
    }

    @Override
    public void seekTo(int i) {
    }

    public void setMediaController(MediaController mediaController) {
    }

    public void setOnCompletionListener(android.media.MediaPlayer.OnCompletionListener onCompletionListener) {
    }

    public void setOnErrorListener(android.media.MediaPlayer.OnErrorListener onErrorListener) {
    }

    @TargetApi(17)
    public void setOnInfoListener(android.media.MediaPlayer.OnInfoListener onInfoListener) {
    }

    public void setOnPreparedListener(android.media.MediaPlayer.OnPreparedListener onPreparedListener) {
    }

    public void setVideoPath(String str) {
        new Media(sLibVLC, str);
    }

    public void setVideoURI(Uri uri) {
        new Media(sLibVLC, uri);
    }

    @Override
    public void start() {
    }

    public void stopPlayback() {
    }

    public void suspend() {
    }

    @TargetApi(21)
    public void setVideoURI(Uri uri, Map<String, String> map) {
        setVideoURI(uri);
    }

    public VideoView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public VideoView(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    @TargetApi(21)
    public VideoView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }
}
