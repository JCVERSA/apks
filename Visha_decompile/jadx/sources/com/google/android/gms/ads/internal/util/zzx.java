package com.google.android.gms.ads.internal.util;

import android.annotation.TargetApi;
import android.app.Activity;
import android.graphics.Rect;
import android.media.AudioManager;
import android.text.TextUtils;
import android.view.DisplayCutout;
import android.view.View;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import defpackage.cye;
import java.util.Locale;

@TargetApi(28)
public class zzx extends zzv {
    public static final void b(boolean z, Activity activity) {
        Window window = activity.getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        int i = attributes.layoutInDisplayCutoutMode;
        int i2 = true != z ? 2 : 1;
        if (i2 != i) {
            attributes.layoutInDisplayCutoutMode = i2;
            window.setAttributes(attributes);
        }
    }

    public static WindowInsets zzk(zzx zzxVar, Activity activity, View view, WindowInsets windowInsets) {
        if (com.google.android.gms.ads.internal.zzv.zzp().j().zzj() == null) {
            DisplayCutout displayCutout = windowInsets.getDisplayCutout();
            String strConcat = "";
            if (displayCutout != null) {
                zzg zzgVarJ = com.google.android.gms.ads.internal.zzv.zzp().j();
                for (Rect rect : displayCutout.getBoundingRects()) {
                    String str = String.format(Locale.US, "%d,%d,%d,%d", Integer.valueOf(rect.left), Integer.valueOf(rect.top), Integer.valueOf(rect.right), Integer.valueOf(rect.bottom));
                    if (!TextUtils.isEmpty(strConcat)) {
                        strConcat = strConcat.concat("|");
                    }
                    strConcat = strConcat.concat(str);
                }
                zzgVarJ.zzy(strConcat);
            } else {
                com.google.android.gms.ads.internal.zzv.zzp().j().zzy("");
            }
        }
        b(false, activity);
        return view.onApplyWindowInsets(windowInsets);
    }

    @Override
    public final int zzj(AudioManager audioManager) {
        return audioManager.getStreamMinVolume(3);
    }

    @Override
    public final void zzl(final Activity activity) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.s1)).booleanValue() && com.google.android.gms.ads.internal.zzv.zzp().j().zzj() == null && !activity.isInMultiWindowMode()) {
            b(true, activity);
            activity.getWindow().getDecorView().setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() {
                @Override
                public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                    return zzx.zzk(this.zza, activity, view, windowInsets);
                }
            });
        }
    }
}
