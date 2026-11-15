package com.cloud.hisavana.sdk.api.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import com.cloud.hisavana.sdk.R;
import com.cloud.hisavana.sdk.common.constant.Constants;
import defpackage.hm4;
import org.slf4j.Marker;

@SuppressLint({"AppCompatCustomView"})
public class AdBadgeView extends TextView {

    public static class a {
        public static final int[] a;

        static {
            int[] iArr = new int[Constants.AdDisplayRule.values().length];
            a = iArr;
            try {
                iArr[Constants.AdDisplayRule.UNIVERSAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[Constants.AdDisplayRule.RU.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public AdBadgeView(Context context) {
        super(context);
        b();
    }

    public final String a(int i) {
        String string = getResources().getText(R.string.ad_icon).toString();
        if (i <= 0) {
            return string;
        }
        return string + " " + i + Marker.ANY_NON_NULL_MARKER;
    }

    public final void b() {
        setGravity(17);
        setMaxWidth(hm4.a(80.0f));
        setTextSize(9.0f);
        setTypeface(Typeface.create("sans-serif-regular", 0));
        setLines(1);
        int iA = hm4.a(2.2f);
        setPadding(iA, 0, iA, 0);
        setTextColor(ContextCompat.getColor(getContext(), R.color.ad_badge_text));
        setBackgroundColor(ContextCompat.getColor(getContext(), R.color.ad_badge_bg));
        setDisplayStyle(Constants.AdDisplayRule.UNIVERSAL, 0);
    }

    public void setDisplayStyle(Constants.AdDisplayRule adDisplayRule, int i) {
        int i2 = a.a[adDisplayRule.ordinal()];
        if (i2 == 1) {
            setText(R.string.ad_icon);
        } else {
            if (i2 != 2) {
                return;
            }
            setText(a(i));
        }
    }

    public AdBadgeView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        b();
    }

    public AdBadgeView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        b();
    }
}
