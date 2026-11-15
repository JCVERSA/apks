package com.transsion.audio.widgets.musicwaveview;

import android.graphics.Canvas;

public interface Wave {
    public static final int F_COUNT = 512;
    public static final int MAX_F = 10000;

    void drawWave(Canvas canvas, float[] fArr, int i, int i2);

    float[] getDrawData();

    void onAttached();

    void onDetached();

    void onFftData(byte[] bArr);

    void onMusicChange();

    void onSurfaceSize(int i, int i2);
}
