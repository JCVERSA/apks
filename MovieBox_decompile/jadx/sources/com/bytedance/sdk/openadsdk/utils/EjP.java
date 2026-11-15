package com.bytedance.sdk.openadsdk.utils;

import android.app.Activity;
import android.content.res.Resources;
import android.graphics.BitmapFactory;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Base64;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;

public class EjP {

    private static class Sj implements View.OnLayoutChangeListener {
        private final Drawable Sj;
        private int TKC;
        private int sP;

        public Sj(Drawable drawable) {
            this.Sj = drawable;
        }

        @Override
        public void onLayoutChange(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
            int i18 = i12 - i10;
            int i19 = i13 - i11;
            if (i18 == this.sP && i19 == this.TKC) {
                return;
            }
            this.sP = i18;
            this.TKC = i19;
            this.Sj.setBounds(0, 0, i18, i19);
        }
    }

    public static void Sj(ViewGroup viewGroup, com.bytedance.sdk.openadsdk.core.model.sU sUVar) {
        if (viewGroup == null || sUVar == null || TextUtils.isEmpty(sUVar.roy())) {
            return;
        }
        try {
            int i10 = Zq.UmR;
            if (viewGroup.getTag(i10) != null) {
                return;
            }
            viewGroup.setTag(i10, Integer.valueOf(i10));
            Drawable drawableSj = Sj(viewGroup.getResources(), sUVar);
            if (drawableSj == null) {
                return;
            }
            viewGroup.setForeground(drawableSj);
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.sP("add overlay fail", th2.getMessage());
        }
    }

    public static void Sj(Activity activity, com.bytedance.sdk.openadsdk.core.model.sU sUVar) {
        if (activity == null || sUVar == null || TextUtils.isEmpty(sUVar.roy())) {
            return;
        }
        try {
            View decorView = activity.getWindow().getDecorView();
            int i10 = Zq.UmR;
            if (decorView.getTag(i10) != null) {
                return;
            }
            activity.getWindow().getDecorView().setTag(i10, Integer.valueOf(i10));
            Drawable drawableSj = Sj(activity.getResources(), sUVar);
            if (drawableSj == null) {
                return;
            }
            activity.getWindow().getDecorView().setForeground(drawableSj);
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.sP("add overlay fail", th2.getMessage());
        }
    }

    @Nullable
    private static Drawable Sj(Resources resources, com.bytedance.sdk.openadsdk.core.model.sU sUVar) {
        try {
            String strRoy = sUVar.roy();
            if (TextUtils.isEmpty(strRoy)) {
                return null;
            }
            byte[] bArrDecode = Base64.decode(strRoy, 0);
            BitmapDrawable bitmapDrawable = new BitmapDrawable(resources, BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length));
            Shader.TileMode tileMode = Shader.TileMode.REPEAT;
            bitmapDrawable.setTileModeXY(tileMode, tileMode);
            bitmapDrawable.setTargetDensity(resources.getDisplayMetrics());
            return bitmapDrawable;
        } catch (Throwable unused) {
            return null;
        }
    }
}
