package com.google.android.libraries.places.internal;

import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;

public final class zzkx {
    public static int zza(int i10, int i11, int i12) {
        return zzc(i10, i11, i12) ? i12 : i11;
    }

    public static void zzb(ImageView imageView, int i10) {
        Drawable drawable = imageView.getDrawable();
        int iRgb = Color.rgb(Color.red(i10), Color.green(i10), Color.blue(i10));
        Drawable drawableMutate = drawable.mutate();
        drawableMutate.setColorFilter(iRgb, PorterDuff.Mode.SRC_ATOP);
        drawableMutate.setAlpha(Color.alpha(i10));
    }

    public static boolean zzc(int i10, int i11, int i12) {
        double dZzf = zzf(i10);
        double dZze = zze(zzf(i11), dZzf);
        return dZze <= 3.0d && dZze <= zze(zzf(i12), dZzf);
    }

    private static double zzd(double d10) {
        return d10 <= 0.03928d ? d10 / 12.92d : Math.pow((d10 + 0.055d) / 1.055d, 2.4d);
    }

    private static double zze(double d10, double d11) {
        return Math.round(((Math.max(d10, d11) + 0.05d) / (Math.min(d10, d11) + 0.05d)) * 100.0d) / 100.0d;
    }

    private static double zzf(int i10) {
        return (zzd(((double) Color.red(i10)) / 255.0d) * 0.2126d) + (zzd(((double) Color.green(i10)) / 255.0d) * 0.7152d) + (zzd(((double) Color.blue(i10)) / 255.0d) * 0.0722d);
    }
}
