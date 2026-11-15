package com.transsion.audio.widgets.musicwaveview;

import java.util.concurrent.ArrayBlockingQueue;

public class WaveDataManager {
    public static final int FLOAT_BYTE_SIZE = 120;
    private static final int QUEUE_SIZE = 14;
    private ArrayBlockingQueue<float[]> mDrawDataQueue = new ArrayBlockingQueue<>(14);
    private float[] mLastOriginData;
    private byte[] mOriginData;

    public void clearData() {
        this.mDrawDataQueue.clear();
    }

    public void fill(byte[] bArr, float[] fArr, float f) {
        if (this.mOriginData == null) {
            this.mOriginData = new byte[bArr.length];
        }
        if (this.mDrawDataQueue.size() <= 10) {
            System.arraycopy(bArr, 0, this.mOriginData, 0, bArr.length);
            treatByte(this.mOriginData, fArr, f);
            if (this.mLastOriginData == null) {
                this.mLastOriginData = new float[fArr.length];
            }
            interceptValue(this.mLastOriginData, fArr);
            System.arraycopy(fArr, 0, this.mLastOriginData, 0, fArr.length);
        }
    }

    public float[] getFloatArray() {
        return this.mDrawDataQueue.poll();
    }

    public ArrayBlockingQueue<float[]> getmDrawDataQueue() {
        return this.mDrawDataQueue;
    }

    public void interceptValue(float[] fArr, float[] fArr2) {
        float[] fArr3 = new float[fArr2.length];
        float[] fArr4 = new float[fArr2.length];
        float[] fArr5 = new float[fArr2.length];
        float[] fArr6 = new float[fArr2.length];
        float[] fArr7 = new float[fArr2.length];
        float[] fArr8 = new float[fArr2.length];
        float[] fArr9 = new float[fArr2.length];
        for (int i = 0; i < fArr2.length; i++) {
            float f = (fArr[i] + fArr2[i]) / 2.0f;
            fArr6[i] = f;
            float f2 = (fArr[i] + f) / 2.0f;
            fArr4[i] = f2;
            fArr3[i] = (f2 + fArr[i]) / 2.0f;
            fArr5[i] = (fArr4[i] + fArr6[i]) / 2.0f;
            float f3 = (fArr6[i] + fArr2[i]) / 2.0f;
            fArr8[i] = f3;
            fArr7[i] = (f3 + fArr6[i]) / 2.0f;
            fArr9[i] = (fArr8[i] + fArr2[i]) / 2.0f;
        }
        this.mDrawDataQueue.offer(fArr3);
        this.mDrawDataQueue.offer(fArr4);
        this.mDrawDataQueue.offer(fArr5);
        this.mDrawDataQueue.offer(fArr6);
        this.mDrawDataQueue.offer(fArr7);
        this.mDrawDataQueue.offer(fArr8);
        this.mDrawDataQueue.offer(fArr9);
        this.mDrawDataQueue.offer(fArr2);
    }

    public void recycle(float[] fArr) {
    }

    public void treatByte(byte[] bArr, float[] fArr, float f) {
        int i;
        int i2;
        DataUtils.calculateFft(fArr, bArr, 3);
        DataUtils.filterAverage(fArr, 8);
        DataUtils.calculateDB(fArr);
        WaveUtils.calculateA(fArr, f, 3);
        int length = fArr.length;
        int i3 = 0;
        while (i3 < fArr.length / length) {
            int i4 = i3 * length;
            int i5 = i4;
            float f2 = 1.0f;
            while (true) {
                i = i3 + 1;
                i2 = length * i;
                if (i5 >= i2) {
                    break;
                }
                float f3 = fArr[i5];
                if (f3 > f2) {
                    f2 = f3;
                }
                i5++;
            }
            float f4 = Float.compare(f2, 1.0f) != -1 ? f2 : 1.0f;
            while (i4 < i2) {
                fArr[i4] = fArr[i4] / f4;
                i4++;
            }
            i3 = i;
        }
        DataUtils.savitzkyGolay(fArr, 13);
    }
}
