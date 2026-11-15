package com.cloud.hisavana.sdk.api.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.core.content.b;
import com.cloud.hisavana.sdk.R$color;
import com.cloud.hisavana.sdk.R$string;
import com.cloud.hisavana.sdk.common.constant.Constants;
import com.cloud.sdk.commonutil.util.h;

@SuppressLint({"AppCompatCustomView"})
public class AdBadgeView extends TextView {

    static class a {

        static final int[] f21016a;

        static {
            int[] iArr = new int[Constants.AdDisplayRule.values().length];
            f21016a = iArr;
            try {
                iArr[Constants.AdDisplayRule.UNIVERSAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f21016a[Constants.AdDisplayRule.RU.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public AdBadgeView(Context context) {
        super(context);
        b();
    }

    private String a(int i10) {
        String string = getResources().getText(R$string.ad_icon).toString();
        if (i10 <= 0) {
            return string;
        }
        return string + " " + i10 + "+";
    }

    private void b() {
        setGravity(17);
        setMaxWidth(h.a(80.0f));
        setTextSize(9.0f);
        setTypeface(Typeface.create("sans-serif-regular", 0));
        setLines(1);
        int iA = h.a(2.2f);
        setPadding(iA, 0, iA, 0);
        setTextColor(b.getColor(getContext(), R$color.ad_badge_text));
        setBackgroundColor(b.getColor(getContext(), R$color.ad_badge_bg));
        setDisplayStyle(Constants.AdDisplayRule.UNIVERSAL, 0);
    }

    public void setDisplayStyle(Constants.AdDisplayRule adDisplayRule, int i10) {
        int i11 = a.f21016a[adDisplayRule.ordinal()];
        if (i11 == 1) {
            setText(R$string.ad_icon);
        } else {
            if (i11 != 2) {
                return;
            }
            setText(a(i10));
        }
    }

    public AdBadgeView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        b();
    }

    public AdBadgeView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        b();
    }
}
