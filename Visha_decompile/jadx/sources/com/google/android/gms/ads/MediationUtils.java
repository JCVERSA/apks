package com.google.android.gms.ads;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.client.zzbd;
import defpackage.cye;
import java.util.List;

public class MediationUtils {
    /* JADX WARN: Code duplicated, block: B:38:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:50:0x00c7 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    @Nullable
    public static AdSize findClosestSize(@NonNull Context context, @NonNull AdSize adSize, @NonNull List<AdSize> list) {
        AdSize adSize2 = null;
        if (list != null && adSize != null) {
            if (!adSize.h() && !adSize.i()) {
                float f = context.getResources().getDisplayMetrics().density;
                adSize = new AdSize(Math.round(adSize.getWidthInPixels(context) / f), Math.round(adSize.getHeightInPixels(context) / f));
            }
            for (AdSize adSize3 : list) {
                if (adSize3 != null) {
                    int width = adSize.getWidth();
                    int width2 = adSize3.getWidth();
                    int height = adSize.getHeight();
                    double d = ((double) width) * 0.5d;
                    double d2 = width2;
                    int height2 = adSize3.getHeight();
                    if (d <= d2 && width >= width2) {
                        if (adSize.i()) {
                            int iA = adSize.a();
                            if (((Integer) zzbd.zzc().b(cye.W7)).intValue() <= width2) {
                                if (((Integer) zzbd.zzc().b(cye.X7)).intValue() <= height2 && iA >= height2) {
                                    if (adSize2 != null || adSize2.getWidth() * adSize2.getHeight() <= adSize3.getWidth() * adSize3.getHeight()) {
                                        adSize2 = adSize3;
                                    }
                                }
                            }
                        } else if (adSize.h()) {
                            if (adSize.b() >= height2) {
                                if (adSize2 != null) {
                                }
                                adSize2 = adSize3;
                            }
                        } else if (((double) height) * 0.7d <= height2 && height >= height2) {
                            if (adSize2 != null) {
                            }
                            adSize2 = adSize3;
                        }
                    }
                }
            }
        }
        return adSize2;
    }
}
