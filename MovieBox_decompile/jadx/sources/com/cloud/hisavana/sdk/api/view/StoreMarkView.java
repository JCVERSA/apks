package com.cloud.hisavana.sdk.api.view;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.cloud.hisavana.sdk.R$mipmap;
import com.cloud.hisavana.sdk.b4;
import com.cloud.hisavana.sdk.common.bean.AdImage;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.http.DownLoadRequest;
import com.cloud.hisavana.sdk.common.http.listener.DrawableResponseListener;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.sdk.commonutil.util.h;
import n7.c;

public class StoreMarkView extends LinearLayout {

    private TextView f21041a;

    private ImageView f21042b;

    class a extends DrawableResponseListener {
        a() {
        }

        @Override
        public void a(TaErrorCode taErrorCode) {
            StoreMarkView.this.setVisibility(8);
            b4.b().e("PsMarkView", "attachStoreIcon download store icon error," + taErrorCode);
        }

        @Override
        public void g(int i10, AdImage adImage) {
            b4.b().d("PsMarkView", "attachInfo onRequestSuccess");
            if (adImage != null) {
                StoreMarkView.this.f21042b.setImageDrawable(c.a(adImage.getDrawable()));
            }
        }
    }

    public StoreMarkView(Context context) {
        this(context, null);
    }

    private void b() {
        setOrientation(0);
        this.f21042b = new ImageView(getContext());
        this.f21041a = new TextView(getContext());
        addView(this.f21042b, new LinearLayout.LayoutParams(h.a(10.0f), h.a(10.0f)));
        this.f21041a.setTextSize(8.0f);
        this.f21041a.setTextColor(-1);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.setMarginStart(6);
        addView(this.f21041a, layoutParams);
        setGravity(16);
        setVisibility(8);
    }

    public void attachInfo(AdsDTO adsDTO) {
        if (adsDTO == null || this.f21042b == null) {
            b4.b().e("PsMarkView", "attachInfo,ads or view is null");
            return;
        }
        if (adsDTO.getExt() == null || (adsDTO.getSource() != 4 && TextUtils.isEmpty(adsDTO.getExt().getStoreImageurl()))) {
            b4.b().e("PsMarkView", "attachInfo,ext or imageUrl is null");
            setVisibility(8);
            return;
        }
        setText(adsDTO.getExt().getStoreTitle());
        if (adsDTO.getSource() == 4) {
            this.f21042b.setImageResource(R$mipmap.hs_ad_ps_icon);
        } else {
            DownLoadRequest.o(adsDTO.getExt().getStoreImageurl(), adsDTO, 6, new a(), this.f21042b);
        }
    }

    public ImageView getLogo() {
        return this.f21042b;
    }

    public void setDrawable(Drawable drawable) {
        ImageView imageView = this.f21042b;
        if (imageView == null || drawable == null) {
            return;
        }
        imageView.setImageDrawable(drawable);
    }

    public void setText(String str) {
        if (this.f21041a == null || TextUtils.isEmpty(str)) {
            return;
        }
        this.f21041a.setText(str);
    }

    public void setTextColor(int i10) {
        TextView textView = this.f21041a;
        if (textView == null) {
            return;
        }
        textView.setTextColor(i10);
    }

    public void setTextSize(float f10) {
        TextView textView = this.f21041a;
        if (textView == null) {
            return;
        }
        textView.setTextSize(f10);
    }

    public StoreMarkView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public StoreMarkView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        if (isInEditMode()) {
            return;
        }
        b();
    }
}
