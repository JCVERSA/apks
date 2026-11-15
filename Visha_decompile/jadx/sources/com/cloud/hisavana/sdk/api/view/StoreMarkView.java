package com.cloud.hisavana.sdk.api.view;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.cloud.hisavana.sdk.R;
import com.cloud.hisavana.sdk.common.bean.AdImage;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.http.DownLoadRequest;
import com.cloud.hisavana.sdk.common.http.listener.DrawableResponseListener;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import defpackage.ak8;
import defpackage.hm4;
import defpackage.ikd;
import defpackage.qp4;
import defpackage.ul4;

public class StoreMarkView extends LinearLayout {
    public TextView b;
    public ImageView c;

    public class a extends DrawableResponseListener {
        public a() {
        }

        @Override
        public void a(TaErrorCode taErrorCode) {
            StoreMarkView.this.setVisibility(8);
            ikd.b().e("PsMarkView", "attachStoreIcon download store icon error," + taErrorCode);
        }

        @Override
        public void g(int i, AdImage adImage) {
            ikd.b().d("PsMarkView", "attachInfo onRequestSuccess");
            if (adImage != null) {
                StoreMarkView.this.c.setImageDrawable(qp4.a(adImage.getDrawable()));
            }
        }
    }

    public StoreMarkView(Context context) {
        this(context, null);
    }

    public void attachInfo(AdsDTO adsDTO) {
        if (adsDTO == null || this.c == null) {
            ikd.b().e("PsMarkView", "attachInfo,ads or view is null");
            return;
        }
        if (adsDTO.getExt() == null || (adsDTO.getSource() != 4 && TextUtils.isEmpty(adsDTO.getExt().getStoreImageurl()))) {
            ikd.b().e("PsMarkView", "attachInfo,ext or imageUrl is null");
            setVisibility(8);
        } else if (adsDTO.getSource() == 4) {
            setText(b(adsDTO));
            this.c.setImageResource(R.mipmap.hs_ad_ps_icon);
        } else {
            setText(b(adsDTO));
            DownLoadRequest.o(adsDTO.getExt().getStoreImageurl(), adsDTO, 6, new a(), this.c);
        }
    }

    public final String b(AdsDTO adsDTO) {
        try {
            ak8 ak8Var = ak8.a;
            return TextUtils.isEmpty(ak8Var.a()) ? adsDTO.getExt().getStoreTitle() : ul4.a().getString(R.string.hs_ps_download_name, ak8Var.a());
        } catch (Exception unused) {
            return "Download by PalmStore";
        }
    }

    public final void c() {
        setOrientation(0);
        this.c = new ImageView(getContext());
        this.b = new TextView(getContext());
        addView(this.c, new LinearLayout.LayoutParams(hm4.a(10.0f), hm4.a(10.0f)));
        this.b.setTextSize(8.0f);
        this.b.setTextColor(-1);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.setMarginStart(6);
        addView(this.b, layoutParams);
        setGravity(16);
        setVisibility(8);
    }

    public ImageView getLogo() {
        return this.c;
    }

    public void setDrawable(Drawable drawable) {
        ImageView imageView = this.c;
        if (imageView == null || drawable == null) {
            return;
        }
        imageView.setImageDrawable(drawable);
    }

    public void setLogoSize(int i) {
        if (this.c == null || i <= 0) {
            return;
        }
        int iA = hm4.a(i);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.c.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new LinearLayout.LayoutParams(iA, iA);
        } else {
            layoutParams.width = iA;
            layoutParams.height = iA;
        }
        this.c.setLayoutParams(layoutParams);
    }

    public void setText(String str) {
        if (this.b == null || TextUtils.isEmpty(str)) {
            return;
        }
        this.b.setText(str);
    }

    public void setTextColor(int i) {
        TextView textView = this.b;
        if (textView == null) {
            return;
        }
        textView.setTextColor(i);
    }

    public void setTextSize(float f) {
        TextView textView = this.b;
        if (textView == null) {
            return;
        }
        textView.setTextSize(f);
    }

    public StoreMarkView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public StoreMarkView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        if (isInEditMode()) {
            return;
        }
        c();
    }
}
