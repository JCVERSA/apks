package com.google.android.gms.ads.internal.util;

import android.app.Activity;
import android.graphics.Rect;
import android.media.AudioManager;
import android.text.TextUtils;
import android.view.DisplayCutout;
import android.view.View;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import androidx.core.util.HalfKt$$ExternalSyntheticApiModelOutline0;
import app.fast.ssh.ProtectedFastSSH;
import com.android.billingclient.api.zzy$$ExternalSyntheticApiModelOutline0;
import com.google.android.gms.internal.ads.zzbjg;
import java.util.Locale;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
public class zzx extends zzv {
    static final WindowInsets zzj(Activity activity, View view, WindowInsets windowInsets) {
        if (com.google.android.gms.ads.internal.zzt.zzh().zzp().zzu() == null) {
            DisplayCutout displayCutoutM138m = HalfKt$$ExternalSyntheticApiModelOutline0.m138m(windowInsets);
            String strConcat = "";
            if (displayCutoutM138m != null) {
                zzg zzgVarZzp = com.google.android.gms.ads.internal.zzt.zzh().zzp();
                for (Rect rect : zzy$$ExternalSyntheticApiModelOutline0.m508m(displayCutoutM138m)) {
                    String str = String.format(Locale.US, ProtectedFastSSH.s("㭵"), Integer.valueOf(rect.left), Integer.valueOf(rect.top), Integer.valueOf(rect.right), Integer.valueOf(rect.bottom));
                    if (!TextUtils.isEmpty(strConcat)) {
                        strConcat = strConcat.concat(ProtectedFastSSH.s("㭶"));
                    }
                    String.valueOf(str);
                    strConcat = strConcat.concat(String.valueOf(str));
                }
                zzgVarZzp.zzv(strConcat);
            } else {
                com.google.android.gms.ads.internal.zzt.zzh().zzp().zzv("");
            }
        }
        zzl(false, activity);
        return view.onApplyWindowInsets(windowInsets);
    }

    private static final void zzl(boolean z, Activity activity) {
        Window window = activity.getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        int iM = zzy$$ExternalSyntheticApiModelOutline0.m(attributes);
        int i = true != z ? 2 : 1;
        if (i != iM) {
            zzy$$ExternalSyntheticApiModelOutline0.m(attributes, i);
            window.setAttributes(attributes);
        }
    }

    @Override
    public final void zzh(Activity activity) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzbW)).booleanValue() && com.google.android.gms.ads.internal.zzt.zzh().zzp().zzu() == null && !zzy$$ExternalSyntheticApiModelOutline0.m(activity)) {
            zzl(true, activity);
            activity.getWindow().getDecorView().setOnApplyWindowInsetsListener(new zzw(this, activity));
        }
    }

    @Override
    public final int zzi(AudioManager audioManager) {
        return zzy$$ExternalSyntheticApiModelOutline0.m(audioManager, 3);
    }
}
