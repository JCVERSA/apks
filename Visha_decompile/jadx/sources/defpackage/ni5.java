package defpackage;

import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.os.Build;
import android.os.LocaleList;

public class ni5 extends Paint {
    public ni5() {
    }

    @Override
    public void setAlpha(int i) {
        if (Build.VERSION.SDK_INT >= 30) {
            super.setAlpha(xp6.c(i, 0, 255));
        } else {
            setColor((xp6.c(i, 0, 255) << 24) | (getColor() & 16777215));
        }
    }

    @Override
    public void setTextLocales(LocaleList localeList) {
    }

    public ni5(int i) {
        super(i);
    }

    public ni5(PorterDuff.Mode mode) {
        setXfermode(new PorterDuffXfermode(mode));
    }

    public ni5(int i, PorterDuff.Mode mode) {
        super(i);
        setXfermode(new PorterDuffXfermode(mode));
    }
}
