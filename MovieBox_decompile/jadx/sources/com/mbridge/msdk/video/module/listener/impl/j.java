package com.mbridge.msdk.video.module.listener.impl;

import android.graphics.Bitmap;
import android.widget.ImageView;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.n0;

public class j extends e {

    private int f38627d;

    public j(ImageView imageView, int i10) {
        super(imageView);
        this.f38627d = i10;
    }

    @Override
    public void onSuccessLoad(Bitmap bitmap, String str) {
        Bitmap bitmapA;
        if (bitmap == null) {
            return;
        }
        try {
            if (this.f38620a == null || bitmap.isRecycled() || (bitmapA = n0.a(bitmap, 1, this.f38627d)) == null) {
                return;
            }
            this.f38620a.setImageBitmap(bitmapA);
        } catch (Throwable th2) {
            if (MBridgeConstans.DEBUG) {
                th2.printStackTrace();
            }
        }
    }
}
