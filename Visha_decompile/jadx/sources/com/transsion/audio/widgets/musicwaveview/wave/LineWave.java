package com.transsion.audio.widgets.musicwaveview.wave;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.os.Handler;
import android.os.Looper;
import com.transsion.audio.widgets.musicwaveview.BaseWave;
import com.transsion.audio.widgets.musicwaveview.WaveDataManager;
import com.transsion.utils.a;
import defpackage.ka2;

public class LineWave extends BaseWave {
    private static final float BASE_H = 0.1f;
    public static final String DATATHREAD_NAME = "WaveDATAThread";
    private static final int HOR_MARGIN = 5;
    private static final int LINE_COUNT_MIN;
    private static final int LINE_W = 13;
    private static final int MARGIN_W = 9;
    private static final float TOP_MARGIN = 0.1f;
    private float baseHeight;
    private DataThread dataThread;
    private float drawHeight;
    private float horMargin;
    private float[] layer1;
    private float[] layer2;
    private float[] layer3;
    private int lineCount;
    private float lineWidth;
    private WaveDataManager mDataManager;
    private float[] mMagnitudeData;
    private byte[] mOriginByte;
    private float marginWidth;
    private float topMargin;
    private Paint firstPaint = new Paint();
    private Paint secondPaint = new Paint();
    private Paint thirdPaint = new Paint();

    public class DataThread extends Thread {
        public Handler dataHandler;

        public DataThread(String str) {
            super(str);
        }

        public Handler getDataHandler() {
            return this.dataHandler;
        }

        @Override
        public void run() {
            if (this.dataHandler == null) {
                Looper.prepare();
                this.dataHandler = new Handler(Looper.myLooper());
            }
            Looper.loop();
        }
    }

    static {
        LINE_COUNT_MIN = ka2.b() ? 50 : 100;
    }

    public LineWave(Context context) {
        int i = LINE_COUNT_MIN;
        this.lineCount = i;
        this.mMagnitudeData = new float[i];
        this.marginWidth = 9.0f;
        this.lineWidth = 13.0f;
        this.layer1 = new float[i * 4];
        this.layer2 = new float[i * 4];
        this.layer3 = new float[i * 4];
        this.firstPaint.setColor(Color.parseColor("#33FFFFFF"));
        this.firstPaint.setAntiAlias(true);
        Paint paint = this.firstPaint;
        Paint.Cap cap = Paint.Cap.ROUND;
        paint.setStrokeCap(cap);
        Paint paint2 = this.firstPaint;
        Paint.Style style = Paint.Style.STROKE;
        paint2.setStyle(style);
        this.secondPaint.setColor(Color.parseColor("#66FFFFFF"));
        this.secondPaint.setAntiAlias(true);
        this.secondPaint.setStrokeCap(cap);
        this.secondPaint.setStyle(style);
        this.thirdPaint.setColor(Color.parseColor("#FFFFFFFF"));
        this.thirdPaint.setAntiAlias(true);
        this.thirdPaint.setStrokeCap(cap);
        this.thirdPaint.setStyle(style);
        this.mDataManager = new WaveDataManager();
        this.horMargin = a.d(context, 5.0f);
    }

    @Override
    public void drawWave(Canvas canvas, float[] fArr, int i, int i2) {
        float f = this.marginWidth;
        float f2 = this.lineWidth;
        float f3 = (f / 2.0f) + (f2 / 2.0f) + this.horMargin;
        float f4 = f + f2;
        float f5 = i2 - this.baseHeight;
        int i3 = 0;
        int i4 = 0;
        while (i3 < this.lineCount) {
            float f6 = (i4 * f4) + f3;
            float f7 = this.drawHeight;
            float f8 = (int) ((this.topMargin + f7) - (fArr[i3] * f7));
            float[] fArr2 = this.layer1;
            int i5 = i4 * 4;
            fArr2[i5] = f6;
            fArr2[i5 + 1] = f5;
            fArr2[i5 + 2] = f6;
            fArr2[i5 + 3] = f8 - ((f5 - f8) * 0.4f);
            i3++;
            i4++;
        }
        canvas.drawLines(this.layer1, this.thirdPaint);
        this.mDataManager.recycle(fArr);
    }

    @Override
    public float[] getDrawData() {
        return this.mDataManager.getFloatArray();
    }

    @Override
    public void onAttached() {
        DataThread dataThread = new DataThread(DATATHREAD_NAME);
        this.dataThread = dataThread;
        dataThread.start();
    }

    @Override
    public void onDetached() {
        this.dataThread.interrupt();
        this.mDataManager.getmDrawDataQueue().clear();
    }

    @Override
    public void onFftData(byte[] bArr) {
        if (this.pauseDraw || this.isStop) {
            return;
        }
        if (this.mOriginByte == null) {
            this.mOriginByte = new byte[bArr.length];
        }
        System.arraycopy(bArr, 0, this.mOriginByte, 0, bArr.length);
        setWaveData();
    }

    @Override
    public void onMusicChange() {
        this.mDataManager.clearData();
    }

    @Override
    public void onSurfaceSize(int i, int i2) {
        super.onSurfaceSize(i, i2);
        int i3 = this.width;
        float f = this.horMargin;
        float f2 = 22;
        int i4 = this.lineCount;
        this.marginWidth = ((((i3 - f) * 1.0f) * 9.0f) / f2) / (i4 + 1);
        float f3 = ((((i3 - f) * 1.0f) * 13.0f) / f2) / (i4 + 1);
        this.lineWidth = f3;
        float f4 = i2;
        float f5 = 0.1f * f4;
        this.baseHeight = f5;
        this.topMargin = f5;
        this.drawHeight = (f4 - f5) - f5;
        this.thirdPaint.setStrokeWidth(f3);
        this.secondPaint.setStrokeWidth(this.lineWidth);
        this.firstPaint.setStrokeWidth(this.lineWidth);
    }

    @Override
    public void setPauseDraw(boolean z) {
        DataThread dataThread;
        super.setPauseDraw(z);
        if (!z || (dataThread = this.dataThread) == null || dataThread.getDataHandler() == null) {
            return;
        }
        this.dataThread.getDataHandler().post(new Runnable() {
            @Override
            public void run() {
                LineWave.this.mDataManager.clearData();
            }
        });
    }

    public void setWaveData() {
        DataThread dataThread = this.dataThread;
        if (dataThread == null || dataThread.getDataHandler() == null) {
            return;
        }
        this.dataThread.getDataHandler().post(new Runnable() {
            @Override
            public void run() {
                if (!((BaseWave) LineWave.this).isStop && !Thread.interrupted()) {
                    if (((BaseWave) LineWave.this).pauseDraw) {
                        return;
                    }
                    LineWave.this.mDataManager.fill(LineWave.this.mOriginByte, LineWave.this.mMagnitudeData, (((BaseWave) LineWave.this).maxF * 0.5f) / ((BaseWave) LineWave.this).fCount);
                } else {
                    LineWave.this.dataThread.dataHandler.removeCallbacks(null);
                    Looper looperMyLooper = Looper.myLooper();
                    if (looperMyLooper != null) {
                        looperMyLooper.quit();
                    }
                    Thread.interrupted();
                }
            }
        });
    }
}
