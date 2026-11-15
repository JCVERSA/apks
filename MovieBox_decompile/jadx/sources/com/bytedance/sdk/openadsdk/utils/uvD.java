package com.bytedance.sdk.openadsdk.utils;

import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import java.util.Objects;

public class uvD {

    public interface Sj {
        void Sj();

        void Sj(com.bytedance.sdk.openadsdk.TzV.Sj.sP sPVar);
    }

    public static void Sj(com.bytedance.sdk.openadsdk.TzV.Sj sj2, int i10, int i11, Sj sj3, String str) {
        Sj(sj2, i10, i11, sj3, str, 0);
    }

    public static void Sj(com.bytedance.sdk.openadsdk.TzV.Sj sj2, int i10, int i11, final Sj sj3, String str, int i12) {
        Objects.toString(sj2);
        com.bytedance.sdk.openadsdk.TzV.sP.Sj().TKC().Sj(sj2, new com.bytedance.sdk.openadsdk.TzV.Sj.Sj.InterfaceC0224Sj() {
            @Override
            public void Sj(String str2, com.bytedance.sdk.openadsdk.TzV.Sj.sP sPVar) {
                Sj sj4;
                if (sPVar.EjP() && (sj4 = sj3) != null) {
                    sj4.Sj(sPVar);
                    return;
                }
                Sj sj5 = sj3;
                if (sj5 != null) {
                    sj5.Sj();
                }
            }

            @Override
            public void Sj(int i13, String str2, Throwable th2) {
                Sj sj4 = sj3;
                if (sj4 != null) {
                    sj4.Sj();
                }
            }
        }, i10, i11, ImageView.ScaleType.CENTER_INSIDE, str, i12, null);
    }

    public static Drawable Sj(byte[] bArr, int i10) {
        if (bArr != null && bArr.length > 0) {
            try {
                return new BitmapDrawable(BitmapFactory.decodeByteArray(bArr, 0, bArr.length));
            } catch (Throwable unused) {
                return new ColorDrawable(0);
            }
        }
        return new ColorDrawable(0);
    }
}
