package com.cloud.hisavana.sdk.api.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import com.cloud.hisavana.sdk.R;
import com.cloud.hisavana.sdk.common.constant.Constants;
import defpackage.hm4;
import defpackage.ikd;

@SuppressLint({"AppCompatCustomView"})
public class AdDisclaimerView extends TextView {
    public b b;

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

    public interface b {
        void a(String str, String str2, String str3);
    }

    public AdDisclaimerView(Context context) {
        super(context);
        b();
    }

    public final void b() {
        setBackground(ContextCompat.getDrawable(getContext(), R.drawable.ad_disclaimer_gradient_drawable));
        setAlpha(0.4f);
        setTextColor(Color.parseColor("#DDDDDD"));
        setTextSize(11.0f);
        setLines(1);
        setEllipsize(TextUtils.TruncateAt.END);
        setGravity(17);
        setPadding(hm4.a(4.0f), 0, 0, 0);
        setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.c(view);
            }
        });
    }

    public final void c(View view) {
        b bVar = this.b;
        if (bVar != null) {
            bVar.a(getContext().getString(R.string.disclaimer), getText().toString(), getContext().getString(R.string.ok));
        }
    }

    public void setDisplayStyle(Constants.AdDisplayRule adDisplayRule, String str) {
        int i = a.a[adDisplayRule.ordinal()];
        if (i == 1) {
            setVisibility(8);
            setText("");
        } else {
            if (i != 2) {
                return;
            }
            setVisibility(TextUtils.isEmpty(str) ? 8 : 0);
            setText(str);
        }
    }

    public void setListener(b bVar) {
        this.b = bVar;
    }

    public void updateHeightWith(String str, int i) {
        int i2;
        if (getVisibility() == 8) {
            return;
        }
        try {
            i2 = Integer.parseInt(str);
        } catch (NumberFormatException e) {
            ikd.b().e(e.getLocalizedMessage());
            i2 = 0;
        }
        if (i2 == 0) {
            setVisibility(8);
            return;
        }
        int dimensionPixelOffset = getResources().getDimensionPixelOffset(R.dimen.ad_disclaimer_height);
        int iMax = Math.max((int) (i * (Math.min(i2, 15) / 100.0f)), dimensionPixelOffset);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        layoutParams.height = iMax;
        setLayoutParams(layoutParams);
        setTextSize(iMax * (11.0f / dimensionPixelOffset));
    }

    public AdDisclaimerView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        b();
    }

    public AdDisclaimerView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        b();
    }

    public void setDisplayStyle(Constants.AdDisplayRule adDisplayRule, String str, String str2, int i) {
        setDisplayStyle(adDisplayRule, str);
        updateHeightWith(str2, i);
    }
}
