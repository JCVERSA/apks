package com.hunantv.media.player.utils;

import android.graphics.Bitmap;
import android.view.PixelCopy;
import android.view.SurfaceView;
import androidx.annotation.RequiresApi;

public class SurfaceViewUtil {
    @RequiresApi(api = 24)
    public static Bitmap getSnapshot(SurfaceView surfaceView, int i, int i2) {
        Bitmap bitmapCreateScaledBitmap;
        if (surfaceView == null || i <= 0 || i2 <= 0) {
            return null;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(surfaceView.getWidth(), surfaceView.getHeight(), Bitmap.Config.ARGB_8888);
        PixelCopy.request(surfaceView, bitmapCreateBitmap, new PixelCopy.OnPixelCopyFinishedListener() {
            @Override
            public void onPixelCopyFinished(int i3) {
            }
        }, surfaceView.getHandler());
        if ((surfaceView.getWidth() == i && surfaceView.getHeight() == i2) || (bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapCreateBitmap, i, i2, true)) == null || bitmapCreateScaledBitmap.equals(bitmapCreateBitmap)) {
            return bitmapCreateBitmap;
        }
        bitmapCreateBitmap.recycle();
        return bitmapCreateScaledBitmap;
    }

    public static boolean isSnapshotSupport() {
        return true;
    }
}
