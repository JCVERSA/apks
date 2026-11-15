package com.bytedance.adsdk.sP.Sj;

import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.os.Build;
import android.os.LocaleList;
import com.bytedance.adsdk.sP.vS.HiB;

public class Sj extends Paint {
    public Sj() {
    }

    @Override
    public void setAlpha(int i10) {
        if (Build.VERSION.SDK_INT >= 29) {
            super.setAlpha(HiB.Sj(i10, 0, 255));
        } else {
            setColor((HiB.Sj(i10, 0, 255) << 24) | (getColor() & 16777215));
        }
    }

    public Sj(int i10) {
        super(i10);
    }

    public Sj(PorterDuff.Mode mode) {
        setXfermode(new PorterDuffXfermode(mode));
    }

    public Sj(int i10, PorterDuff.Mode mode) {
        super(i10);
        setXfermode(new PorterDuffXfermode(mode));
    }

    @Override
    public void setTextLocales(LocaleList localeList) {
    }
}
