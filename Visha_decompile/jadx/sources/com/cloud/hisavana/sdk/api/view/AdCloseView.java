package com.cloud.hisavana.sdk.api.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.ColorInt;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import com.cloud.hisavana.sdk.R;
import com.cloud.hisavana.sdk.common.constant.Constants;
import defpackage.hm4;
import defpackage.ikd;

@SuppressLint({"AppCompatCustomView"})
public class AdCloseView extends ImageView {

    public enum CloseImageType {
        CLOSE,
        EXPAND
    }

    public static class a {
        public static final int[] a;
        public static final int[] b;

        static {
            int[] iArr = new int[CloseImageType.values().length];
            b = iArr;
            try {
                iArr[CloseImageType.CLOSE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                b[CloseImageType.EXPAND.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[Constants.AdDisplayRule.values().length];
            a = iArr2;
            try {
                iArr2[Constants.AdDisplayRule.UNIVERSAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[Constants.AdDisplayRule.RU.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public AdCloseView(Context context) {
        super(context);
        b();
    }

    public final Drawable a(CloseImageType closeImageType) {
        int i = a.b[closeImageType.ordinal()];
        if (i == 1) {
            return ContextCompat.getDrawable(getContext(), R.drawable.hs_ad_close1);
        }
        if (i != 2) {
            return null;
        }
        return ContextCompat.getDrawable(getContext(), R.drawable.hs_ad_expand);
    }

    public final void b() {
        setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        int iA = hm4.a(2.5f);
        setPadding(iA, iA, iA, iA);
        setBackgroundColor(ContextCompat.getColor(getContext(), R.color.ad_badge_bg));
        setDisplayStyle(Constants.AdDisplayRule.UNIVERSAL, CloseImageType.CLOSE);
    }

    public void setCloseStyle(@Nullable Drawable drawable, @ColorInt int i) {
        if (drawable != null) {
            try {
                setImageDrawable(drawable);
            } catch (Throwable th) {
                ikd.b().e("AdCloseView", "setCloseStyle error", th);
                return;
            }
        }
        if (i != 0) {
            setBackgroundColor(i);
        }
    }

    public void setDisplayStyle(Constants.AdDisplayRule adDisplayRule, CloseImageType closeImageType) {
        int i = a.a[adDisplayRule.ordinal()];
        if (i == 1) {
            setImageDrawable(a(closeImageType));
        } else {
            if (i != 2) {
                return;
            }
            setImageDrawable(a(CloseImageType.EXPAND));
        }
    }

    public void setViewSize(int i, int i2) {
        try {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            if (layoutParams == null) {
                layoutParams = new ViewGroup.LayoutParams(-2, -2);
            }
            if (i >= 0) {
                layoutParams.width = hm4.a(i);
            }
            if (i2 >= 0) {
                layoutParams.height = hm4.a(i2);
            }
            setLayoutParams(layoutParams);
        } catch (Throwable th) {
            ikd.b().e("AdCloseView", "setViewSize error", th);
        }
    }

    public AdCloseView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        b();
    }

    public AdCloseView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        b();
    }
}
