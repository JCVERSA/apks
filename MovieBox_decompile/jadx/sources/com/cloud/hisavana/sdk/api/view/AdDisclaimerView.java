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
import com.cloud.hisavana.sdk.R$dimen;
import com.cloud.hisavana.sdk.R$drawable;
import com.cloud.hisavana.sdk.R$string;
import com.cloud.hisavana.sdk.b4;
import com.cloud.hisavana.sdk.common.constant.Constants;
import com.cloud.sdk.commonutil.util.h;

@SuppressLint({"AppCompatCustomView"})
public class AdDisclaimerView extends TextView {

    private b f21020a;

    static class a {

        static final int[] f21021a;

        static {
            int[] iArr = new int[Constants.AdDisplayRule.values().length];
            f21021a = iArr;
            try {
                iArr[Constants.AdDisplayRule.UNIVERSAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f21021a[Constants.AdDisplayRule.RU.ordinal()] = 2;
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

    private void b() {
        setBackground(androidx.core.content.b.getDrawable(getContext(), R$drawable.ad_disclaimer_gradient_drawable));
        setAlpha(0.4f);
        setTextColor(Color.parseColor("#DDDDDD"));
        setTextSize(11.0f);
        setLines(1);
        setEllipsize(TextUtils.TruncateAt.END);
        setGravity(17);
        setPadding(h.a(4.0f), 0, 0, 0);
        setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.f59458a.c(view);
            }
        });
    }

    public void c(View view) {
        b bVar = this.f21020a;
        if (bVar != null) {
            bVar.a(getContext().getString(R$string.disclaimer), getText().toString(), getContext().getString(R$string.f20924ok));
        }
    }

    public void setDisplayStyle(Constants.AdDisplayRule adDisplayRule, String str) {
        int i10 = a.f21021a[adDisplayRule.ordinal()];
        if (i10 == 1) {
            setVisibility(8);
            setText("");
        } else {
            if (i10 != 2) {
                return;
            }
            setVisibility(TextUtils.isEmpty(str) ? 8 : 0);
            setText(str);
        }
    }

    public void setListener(b bVar) {
        this.f21020a = bVar;
    }

    public void updateHeightWith(String str, int i10) {
        int i11;
        if (getVisibility() == 8) {
            return;
        }
        try {
            i11 = Integer.parseInt(str);
        } catch (NumberFormatException e10) {
            b4.b().e(e10.getLocalizedMessage());
            i11 = 0;
        }
        if (i11 == 0) {
            setVisibility(8);
            return;
        }
        int dimensionPixelOffset = getResources().getDimensionPixelOffset(R$dimen.ad_disclaimer_height);
        int iMax = Math.max((int) (i10 * (Math.min(i11, 15) / 100.0f)), dimensionPixelOffset);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        layoutParams.height = iMax;
        setLayoutParams(layoutParams);
        setTextSize(iMax * (11.0f / dimensionPixelOffset));
    }

    public AdDisclaimerView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        b();
    }

    public AdDisclaimerView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        b();
    }

    public void setDisplayStyle(Constants.AdDisplayRule adDisplayRule, String str, String str2, int i10) {
        setDisplayStyle(adDisplayRule, str);
        updateHeightWith(str2, i10);
    }
}
