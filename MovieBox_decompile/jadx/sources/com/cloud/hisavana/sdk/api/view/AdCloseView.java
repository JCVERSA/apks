package com.cloud.hisavana.sdk.api.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import androidx.core.content.b;
import com.cloud.hisavana.sdk.R$color;
import com.cloud.hisavana.sdk.R$drawable;
import com.cloud.hisavana.sdk.common.constant.Constants;
import com.cloud.sdk.commonutil.util.h;

@SuppressLint({"AppCompatCustomView"})
public class AdCloseView extends ImageView {

    public enum CloseImageType {
        CLOSE,
        EXPAND
    }

    static class a {

        static final int[] f21018a;

        static final int[] f21019b;

        static {
            int[] iArr = new int[CloseImageType.values().length];
            f21019b = iArr;
            try {
                iArr[CloseImageType.CLOSE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f21019b[CloseImageType.EXPAND.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[Constants.AdDisplayRule.values().length];
            f21018a = iArr2;
            try {
                iArr2[Constants.AdDisplayRule.UNIVERSAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f21018a[Constants.AdDisplayRule.RU.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public AdCloseView(Context context) {
        super(context);
        b();
    }

    private Drawable a(CloseImageType closeImageType) {
        int i10 = a.f21019b[closeImageType.ordinal()];
        if (i10 == 1) {
            return b.getDrawable(getContext(), R$drawable.hs_ad_close1);
        }
        if (i10 != 2) {
            return null;
        }
        return b.getDrawable(getContext(), R$drawable.hs_ad_expand);
    }

    private void b() {
        setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        int iA = h.a(2.5f);
        setPadding(iA, iA, iA, iA);
        setBackgroundColor(b.getColor(getContext(), R$color.ad_badge_bg));
        setDisplayStyle(Constants.AdDisplayRule.UNIVERSAL, CloseImageType.CLOSE);
    }

    public void setDisplayStyle(Constants.AdDisplayRule adDisplayRule, CloseImageType closeImageType) {
        int i10 = a.f21018a[adDisplayRule.ordinal()];
        if (i10 == 1) {
            setImageDrawable(a(closeImageType));
        } else {
            if (i10 != 2) {
                return;
            }
            setImageDrawable(a(CloseImageType.EXPAND));
        }
    }

    public AdCloseView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        b();
    }

    public AdCloseView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        b();
    }
}
