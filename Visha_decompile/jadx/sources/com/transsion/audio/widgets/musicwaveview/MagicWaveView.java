package com.transsion.audio.widgets.musicwaveview;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.media.audiofx.Visualizer;
import android.util.AttributeSet;
import android.util.Log;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import androidx.annotation.NonNull;
import com.transsion.audio.player.MusicPlayManager;
import com.transsion.audio.widgets.musicwaveview.wave.LineWave;
import com.transsion.dbdata.beans.media.AudioItem;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.Arrays;

public class MagicWaveView extends SurfaceView implements SurfaceHolder.Callback, Visualizer.OnDataCaptureListener {
    public static final String DRAWTHREAD_NAME = "WaveDrawThread";
    public static final int FPS_TIME = 16;
    public static final boolean OPEN_DEBUG_LOG = true;
    private static final String TAG = "visha_MagicWaveView";
    private static DrawThread drawThread;
    private static BaseWave mWave;
    private static Visualizer visualizer;
    private int mHeight;
    private boolean mInitSuccess;
    private int mWidth;
    private MusicPlayManager.d playerListener;

    public class DrawThread extends Thread {
        public final Object drawLock;
        public volatile boolean pauseDraw;
        public volatile boolean stopDraw;

        public DrawThread(String str) {
            super(str);
            this.drawLock = new Object();
            this.pauseDraw = false;
            this.stopDraw = false;
        }

        /* JADX WARN: Code duplicated, block: B:28:0x0064  */
        /* JADX WARN: Code duplicated, block: B:42:0x006b A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:48:0x005a A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:49:0x007d A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:50:0x004a A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:51:0x007d A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:54:0x0000 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:55:0x0000 A[SYNTHETIC] */
        @Override
        public void run() {
            float[] drawData;
            while (!this.stopDraw && !isInterrupted()) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (this.pauseDraw) {
                    synchronized (this.drawLock) {
                        try {
                            try {
                                Log.d(MagicWaveView.TAG, "start wait.....");
                                this.drawLock.wait();
                            } catch (InterruptedException e) {
                                Log.e(MagicWaveView.TAG, "InterruptedException " + e);
                                drawData = MagicWaveView.mWave.getDrawData();
                                if (drawData == null) {
                                    Log.e(MagicWaveView.TAG, "DrawThread run data null");
                                    if (!MagicWaveView.this.delayFps(jCurrentTimeMillis)) {
                                        return;
                                    }
                                } else {
                                    if (!MusicPlayManager.S().s0()) {
                                        Arrays.fill(drawData, 0.0f);
                                    }
                                    synchronized (this.drawLock) {
                                        MagicWaveView.this.draw(drawData);
                                        if (!MagicWaveView.this.delayFps(jCurrentTimeMillis)) {
                                            return;
                                        }
                                    }
                                }
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
                drawData = MagicWaveView.mWave.getDrawData();
                if (drawData == null) {
                    Log.e(MagicWaveView.TAG, "DrawThread run data null");
                    if (!MagicWaveView.this.delayFps(jCurrentTimeMillis)) {
                        return;
                    }
                } else {
                    if (!MusicPlayManager.S().s0()) {
                        Arrays.fill(drawData, 0.0f);
                    }
                    synchronized (this.drawLock) {
                        MagicWaveView.this.draw(drawData);
                    }
                    if (!MagicWaveView.this.delayFps(jCurrentTimeMillis)) {
                        return;
                    }
                }
            }
        }
    }

    public MagicWaveView(Context context) {
        super(context);
        init(context);
    }

    public boolean delayFps(long j) {
        try {
            long jCurrentTimeMillis = System.currentTimeMillis() - j;
            Thread.sleep(jCurrentTimeMillis > 16 ? 0L : 16 - jCurrentTimeMillis);
            return true;
        } catch (InterruptedException e) {
            Log.e(TAG, "delayFps exception:" + e);
            return false;
        }
    }

    public void draw(@NonNull float[] fArr) {
        StringBuilder sb;
        Log.d(TAG, "draw data:" + Arrays.toString(fArr));
        Canvas canvasLockCanvas = null;
        try {
            canvasLockCanvas = getHolder().lockCanvas();
            if (canvasLockCanvas != null) {
                canvasLockCanvas.drawColor(0, PorterDuff.Mode.CLEAR);
                mWave.drawWave(canvasLockCanvas, fArr, this.mWidth, this.mHeight);
            }
            if (canvasLockCanvas != null) {
                try {
                } catch (Exception e) {
                    e = e;
                    sb = new StringBuilder();
                    sb.append("unlockCanvasAndPost:");
                    sb.append(e);
                    String string = sb.toString();
                }
            }
        } catch (Exception e2) {
            Log.e(TAG, "draw exception:" + e2);
            if (canvasLockCanvas != null) {
                try {
                } catch (Exception e3) {
                    e = e3;
                    sb = new StringBuilder();
                    sb.append("unlockCanvasAndPost:");
                    sb.append(e);
                    String string2 = sb.toString();
                }
            }
        } finally {
            if (canvasLockCanvas != null) {
                try {
                    getHolder().unlockCanvasAndPost(canvasLockCanvas);
                } catch (Exception e4) {
                    Log.e(TAG, "unlockCanvasAndPost:" + e4);
                }
            }
        }
    }

    private void init(Context context) {
        if (mWave == null) {
            mWave = new LineWave(context);
        }
        getHolder().addCallback(this);
        getHolder().setFormat(-3);
        setZOrderOnTop(true);
        Log.e(TAG, "init");
    }

    private void initDraw() {
        initVisualizer();
        DrawThread drawThread2 = drawThread;
        if (drawThread2 != null) {
            try {
                drawThread2.drawLock.notifyAll();
            } catch (Exception unused) {
            }
            try {
                drawThread.pauseDraw = false;
                drawThread.stopDraw = true;
                drawThread.interrupt();
            } catch (Exception e) {
                Log.e(TAG, "drawThread stop error:" + e.getMessage());
            }
        }
        DrawThread drawThread3 = new DrawThread(DRAWTHREAD_NAME);
        drawThread = drawThread3;
        drawThread3.pauseDraw = false;
        drawThread.stopDraw = false;
        drawThread.start();
    }

    private void quiteDraw() {
        Visualizer visualizer2 = visualizer;
        if (visualizer2 != null) {
            visualizer2.setEnabled(false);
            visualizer.release();
            visualizer = null;
        }
        mWave.setStop(true);
        DrawThread drawThread2 = drawThread;
        if (drawThread2 != null) {
            drawThread2.stopDraw = true;
            drawThread.interrupt();
            drawThread = null;
        }
    }

    public void releaseVisualizer() {
        int i = mWave.maxF;
        Log.i(TAG, "releaseVisualizer :" + visualizer);
        Visualizer visualizer2 = visualizer;
        if (visualizer2 != null) {
            this.mInitSuccess = false;
            visualizer2.setEnabled(false);
            visualizer.setDataCaptureListener(null, i, false, false);
            visualizer.release();
            visualizer = null;
        }
    }

    public void initVisualizer() {
        if (this.mInitSuccess) {
            return;
        }
        try {
            int iM = MusicPlayManager.S().M();
            Visualizer visualizer2 = new Visualizer(iM);
            visualizer = visualizer2;
            visualizer2.setCaptureSize(mWave.fCount);
            Log.i(TAG, "initVisualizer sessionID:" + iM + ",setstatus:" + visualizer.setDataCaptureListener(this, mWave.maxF, false, true) + StringUtils.COMMA + visualizer);
            visualizer.setEnabled(true);
            this.mInitSuccess = true;
        } catch (Exception e) {
            Log.e(TAG, "initVisualization error:" + e.getMessage());
            this.mInitSuccess = false;
        }
    }

    @Override
    public void onAttachedToWindow() {
        Log.e(TAG, "onAttachedToWindow");
        super.onAttachedToWindow();
        initDraw();
        this.playerListener = new MusicPlayManager.d() {
            @Override
            public void hideBottomOperateBar() {
                super.hideBottomOperateBar();
            }

            @Override
            public void onFftDataCapture(Visualizer visualizer2, byte[] bArr, int i) {
                super.onFftDataCapture(visualizer2, bArr, i);
            }

            @Override
            public boolean onInfo(int i, int i2) {
                return super.onInfo(i, i2);
            }

            @Override
            public void onPlayItemChanged(AudioItem audioItem) {
                MagicWaveView.mWave.onMusicChange();
                MagicWaveView.this.releaseVisualizer();
            }

            @Override
            public void onPlayListLoadFinished(ArrayList arrayList) {
                super.onPlayListLoadFinished(arrayList);
            }

            @Override
            public void onPlayerStateUpdate(int i) {
                if (i == 3) {
                    MagicWaveView.this.initVisualizer();
                }
            }

            @Override
            public void onShowError(int i, int i2) {
                super.onShowError(i, i2);
            }

            @Override
            public void onTimerShow(long j) {
                super.onTimerShow(j);
            }

            @Override
            public void onUpdateAll(MusicPlayManager musicPlayManager) {
                super.onUpdateAll(musicPlayManager);
            }

            @Override
            public void onVideoSizeChanged(int i, int i2) {
                super.onVideoSizeChanged(i, i2);
            }

            @Override
            public void seekTo(int i) {
                super.seekTo(i);
            }
        };
        MusicPlayManager.S().f1(this.playerListener);
        BaseWave baseWave = mWave;
        if (baseWave != null) {
            baseWave.onAttached();
        }
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        Log.i(TAG, "onConfigurationChanged:" + configuration);
    }

    @Override
    public void onDetachedFromWindow() {
        Log.e(TAG, "onDetachedFromWindow");
        super.onDetachedFromWindow();
        MusicPlayManager.S().F1(this.playerListener);
        quiteDraw();
        BaseWave baseWave = mWave;
        if (baseWave != null) {
            baseWave.onDetached();
        }
    }

    @Override
    public void onFftDataCapture(Visualizer visualizer2, byte[] bArr, int i) {
        Log.d(TAG, "onFftDataCapture " + visualizer2 + ", fft:" + Arrays.toString(bArr));
        mWave.onFftData(bArr);
    }

    @Override
    public void onScreenStateChanged(int i) {
        Log.i(TAG, "onScreenStateChanged:" + i);
        super.onScreenStateChanged(i);
        if (i != 1) {
            pauseDraw();
        } else if (getVisibility() == 0) {
            resumeDraw();
        }
    }

    @Override
    public void onWaveFormDataCapture(Visualizer visualizer2, byte[] bArr, int i) {
        Log.d(TAG, "onWaveFormDataCapture " + visualizer2 + ",waveform:" + Arrays.toString(bArr));
    }

    public void pauseDraw() {
        DrawThread drawThread2 = drawThread;
        if (drawThread2 != null) {
            drawThread2.pauseDraw = true;
        }
        BaseWave baseWave = mWave;
        if (baseWave != null) {
            baseWave.setPauseDraw(true);
        }
    }

    public void resumeDraw() {
        DrawThread drawThread2 = drawThread;
        if (drawThread2 != null) {
            drawThread2.pauseDraw = false;
            synchronized (drawThread.drawLock) {
                drawThread.drawLock.notifyAll();
                Log.d(TAG, "resumeDraw notifyAll...");
            }
        }
        BaseWave baseWave = mWave;
        if (baseWave != null) {
            baseWave.setPauseDraw(false);
        }
    }

    @Override
    public void setVisibility(int i) {
        super.setVisibility(i);
        if (drawThread != null) {
            if (i != 0) {
                pauseDraw();
                return;
            }
            if (!this.mInitSuccess) {
                initVisualizer();
            }
            resumeDraw();
        }
    }

    @Override
    public void surfaceChanged(@NonNull SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        this.mWidth = i2;
        this.mHeight = i3;
        mWave.onSurfaceSize(i2, i3);
        StringBuilder sb = new StringBuilder();
        sb.append("surfaceChanged:width:");
        sb.append(i2);
        sb.append("  height:");
        sb.append(i3);
        sb.append("  visible:");
        sb.append(getVisibility() == 0);
        Log.e(TAG, sb.toString());
    }

    @Override
    public void surfaceCreated(@NonNull SurfaceHolder surfaceHolder) {
        mWave.setStop(false);
        resumeDraw();
        Log.w(TAG, "surfaceCreated:" + this);
    }

    @Override
    public void surfaceDestroyed(@NonNull SurfaceHolder surfaceHolder) {
        mWave.setStop(true);
        pauseDraw();
        Log.w(TAG, "surfaceDestroyed:" + this);
    }

    public MagicWaveView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context);
    }

    public MagicWaveView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context);
    }

    public MagicWaveView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        init(context);
    }
}
