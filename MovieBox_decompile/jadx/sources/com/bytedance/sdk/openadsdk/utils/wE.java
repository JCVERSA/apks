package com.bytedance.sdk.openadsdk.utils;

import android.graphics.Bitmap;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import java.lang.ref.WeakReference;

public class wE implements com.bytedance.sdk.component.HiB.uvD<Bitmap> {
    private final WeakReference<ImageView> Sj;

    public wE(ImageView imageView) {
        this.Sj = new WeakReference<>(imageView);
    }

    @Override
    public void Sj(com.bytedance.sdk.component.HiB.Ym<Bitmap> ym2) {
        ImageView imageView = this.Sj.get();
        if (imageView == null) {
            return;
        }
        if (ym2 != null) {
            try {
                if (ym2.sP() != null) {
                    imageView.setImageBitmap(ym2.sP());
                    return;
                }
            } catch (Throwable unused) {
                imageView.setVisibility(8);
                return;
            }
        }
        imageView.setVisibility(8);
    }

    @Override
    public void Sj(int i10, String str, @Nullable Throwable th2) {
        ImageView imageView = this.Sj.get();
        if (imageView == null) {
            return;
        }
        imageView.setVisibility(8);
    }
}
