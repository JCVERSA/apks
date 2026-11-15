package com.transsion.vishaads.views;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.transsion.dbdata.beans.adsbean.AdItemBean;
import com.transsion.playercommon.router.RouterUtils;
import com.transsion.vishaads.R;

public class AdBannerView extends FrameLayout implements View.OnClickListener {
    public AdItemView b;
    public ImageView c;
    public AdBannerClick d;
    public AdItemBean e;

    public interface AdBannerClick {
        default void closeAdBanner() {
        }

        default void jumpLink() {
        }
    }

    public AdBannerView(@NonNull Context context) {
        this(context, null);
    }

    public final void a(Context context) {
        LayoutInflater.from(getContext()).inflate(R.layout.ad_header_layout, (ViewGroup) this, true);
        AdItemView adItemView = (AdItemView) findViewById(R.id.ad_item_view);
        this.b = adItemView;
        adItemView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.onClick(view);
            }
        });
        ImageView imageView = (ImageView) findViewById(R.id.ic_ad_close);
        this.c = imageView;
        imageView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.onClick(view);
            }
        });
    }

    @Override
    public void onClick(View view) {
        Log.e("AdBannerView", "onClick " + view + ", " + this.e);
        if (this.d == null) {
            return;
        }
        if (view.getId() == R.id.ic_ad_close) {
            this.d.closeAdBanner();
        } else if (view.getId() == R.id.ad_item_view) {
            this.d.jumpLink();
            RouterUtils.jumpFromAdViewResult(getContext(), false, this.e);
        }
    }

    public void setAdBannerClick(AdBannerClick adBannerClick) {
        this.d = adBannerClick;
    }

    public void showAd(AdItemBean adItemBean) {
        this.e = adItemBean;
        this.b.showAd(adItemBean, false);
    }

    public AdBannerView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AdBannerView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context);
    }
}
