package com.cloud.hisavana.sdk.api.view;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.cloud.hisavana.sdk.U0;
import com.cloud.hisavana.sdk.ad.template.TemplateRenderEnum;
import com.cloud.hisavana.sdk.common.bean.AdImage;
import com.cloud.hisavana.sdk.common.bean.TaNativeInfo;
import com.cloud.hisavana.sdk.common.constant.Constants;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.http.DownLoadRequest;
import com.cloud.hisavana.sdk.common.http.listener.DrawableResponseListener;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.w;
import com.cloud.sdk.commonutil.R;
import com.cloud.sdk.commonutil.widget.TranCircleImageView;
import defpackage.cy9;
import defpackage.hm4;
import defpackage.ikd;
import defpackage.io1;
import defpackage.kn8;
import defpackage.md8;
import defpackage.oga;
import defpackage.pp4;
import defpackage.qp4;
import defpackage.t6;
import defpackage.ul4;
import java.util.List;

public class TNativeView extends FrameLayout {
    public MediaView b;
    public ImageView c;
    public AdChoicesView d;
    public AdCloseView e;
    public ImageView.ScaleType f;
    public StoreMarkView g;
    public boolean h;
    public AdBadgeView i;
    public AdDisclaimerView j;
    public ViewTreeObserver.OnGlobalLayoutListener k;
    public io1 l;

    public class a extends DrawableResponseListener {
        public final TaNativeInfo b;

        public a(TaNativeInfo taNativeInfo) {
            this.b = taNativeInfo;
        }

        @Override
        public void a(TaErrorCode taErrorCode) {
            ikd.b().d("ssp", "download Image failed.");
        }

        @Override
        public void g(int i, AdImage adImage) {
            TemplateRenderEnum templateRenderEnumFindStrategyByCode;
            if (!this.b.isMaterialStyleValid() || (templateRenderEnumFindStrategyByCode = TemplateRenderEnum.findStrategyByCode(this.b.getMaterialStyle())) == null) {
                return;
            }
            templateRenderEnumFindStrategyByCode.renderRadius(TNativeView.this.b);
        }
    }

    public class b extends DrawableResponseListener {
        public final TaNativeInfo b;
        public final ImageView c;

        public b(TaNativeInfo taNativeInfo, ImageView imageView) {
            this.b = taNativeInfo;
            this.c = imageView;
        }

        @Override
        public void a(TaErrorCode taErrorCode) {
            ikd.b().d("TNativeView", "download Image failed.");
        }

        @Override
        public void g(int i, AdImage adImage) {
            if (adImage != null && adImage.getDrawable() != null) {
                ikd.b().d("TNativeView", "download Image Success.");
                AdImage iconImage = this.b.getIconImage();
                if (iconImage != null) {
                    iconImage.setDrawable(adImage.getDrawable());
                } else {
                    this.b.setImage(adImage);
                }
            }
            if (this.b.isMaterialStyleValid() && (this.c instanceof TranCircleImageView)) {
                TemplateRenderEnum templateRenderEnumFindStrategyByCode = TemplateRenderEnum.findStrategyByCode(this.b.getMaterialStyle());
                if (templateRenderEnumFindStrategyByCode != null) {
                    templateRenderEnumFindStrategyByCode.scaleWidthOrTextSize(this.c);
                }
                ((TranCircleImageView) this.c).setCircle(true);
                ((TranCircleImageView) this.c).setRadius(hm4.a(TextUtils.equals(this.b.getMaterialStyle(), "L91601") ? 16.0f : 4.0f));
            }
        }
    }

    public class c implements View.OnClickListener {
        public final AdsDTO b;

        public c(AdsDTO adsDTO) {
            this.b = adsDTO;
        }

        @Override
        public void onClick(View view) {
            U0.k(ul4.a(), this.b);
        }
    }

    public class d implements View.OnClickListener {
        public final AdsDTO b;

        public d(AdsDTO adsDTO) {
            this.b = adsDTO;
        }

        @Override
        public void onClick(View view) {
            U0.k(ul4.a(), this.b);
        }
    }

    public class e implements ViewTreeObserver.OnGlobalLayoutListener {
        public final TaNativeInfo b;

        public e(TaNativeInfo taNativeInfo) {
            this.b = taNativeInfo;
        }

        @Override
        public void onGlobalLayout() {
            if (TNativeView.this.b.getHeight() != 0) {
                TNativeView.this.b.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                TNativeView.this.k = null;
                TNativeView.this.j.updateHeightWith(kn8.e(this.b.getAdItem()), TNativeView.this.b.getHeight());
            }
        }
    }

    public class f extends DrawableResponseListener {
        public final ImageView.ScaleType b;
        public final TaNativeInfo c;

        public f(ImageView.ScaleType scaleType, TaNativeInfo taNativeInfo) {
            this.b = scaleType;
            this.c = taNativeInfo;
        }

        @Override
        public void a(TaErrorCode taErrorCode) {
            ikd.b().d("ssp", "download Image failed.");
        }

        @Override
        public void g(int i, AdImage adImage) {
            TemplateRenderEnum templateRenderEnumFindStrategyByCode;
            ikd.b().d("ssp", "download Image Success. ScaleType = " + this.b);
            if (adImage == null || adImage.getDrawable() == null) {
                TNativeView.this.b.setMediaView(adImage, this.b, this.c.isMaterialStyleValid());
                return;
            }
            ikd.b().d("ssp", "download Image Success.");
            AdImage image = this.c.getImage();
            if (image != null) {
                image.setDrawable(adImage.getDrawable());
            } else {
                this.c.setImage(adImage);
            }
            TNativeView.this.b.setMediaView(adImage, this.b, this.c.isMaterialStyleValid());
            if (!this.c.isMaterialStyleValid() || (templateRenderEnumFindStrategyByCode = TemplateRenderEnum.findStrategyByCode(this.c.getMaterialStyle())) == null) {
                return;
            }
            templateRenderEnumFindStrategyByCode.renderRadius(TNativeView.this.b);
        }
    }

    public TNativeView(@NonNull Context context) {
        this(context, null);
    }

    private void setDefaultImgMedia(TaNativeInfo taNativeInfo) {
        AdImage image = taNativeInfo.getImage();
        if (image == null) {
            return;
        }
        this.b.init(image.getMime());
        ImageView.ScaleType scaleType = this.f;
        if (scaleType == null) {
            scaleType = ImageView.ScaleType.FIT_CENTER;
        }
        ImageView imageView = (ImageView) this.b.findViewById(R.id.native_mediaview_iv_id);
        if (imageView == null) {
            return;
        }
        if (taNativeInfo.isMaterialStyleValid()) {
            imageView.setAdjustViewBounds(true);
            imageView.setMaxWidth(md8.k());
            imageView.setMaxHeight(md8.j());
        } else {
            imageView.setAdjustViewBounds(true);
            imageView.setScaleType(scaleType);
        }
        DownLoadRequest.n(image.getImgUrl(), taNativeInfo.getAdItem(), new a(taNativeInfo), imageView);
    }

    private void setDefaultLogo(TaNativeInfo taNativeInfo) {
        AdImage iconImage = taNativeInfo.getIconImage();
        if (iconImage == null) {
            return;
        }
        if (taNativeInfo.isMaterialStyleValid() && (this.c instanceof TranCircleImageView)) {
            TemplateRenderEnum templateRenderEnumFindStrategyByCode = TemplateRenderEnum.findStrategyByCode(taNativeInfo.getMaterialStyle());
            if (templateRenderEnumFindStrategyByCode != null) {
                templateRenderEnumFindStrategyByCode.scaleWidthOrTextSize(this.c);
            }
            ((TranCircleImageView) this.c).setCircle(true);
            ((TranCircleImageView) this.c).setRadius(hm4.a(TextUtils.equals(taNativeInfo.getMaterialStyle(), "L91601") ? 16.0f : 4.0f));
        }
        DownLoadRequest.n(iconImage.getImgUrl(), taNativeInfo.getAdItem(), null, this.c);
    }

    private void setImgMedia(TaNativeInfo taNativeInfo) {
        TemplateRenderEnum templateRenderEnumFindStrategyByCode;
        ikd.b().d("TNativeView", "start to set img media");
        if (taNativeInfo == null) {
            return;
        }
        AdImage image = taNativeInfo.getImage();
        ImageView.ScaleType scaleType = this.f;
        if (scaleType == null) {
            scaleType = ImageView.ScaleType.FIT_CENTER;
        }
        if (scaleType == ImageView.ScaleType.FIT_CENTER) {
            image.setNeedBlurBackground(true);
        }
        if (image != null) {
            this.b.init(image.getMime());
            if (image.isAdImageRecycled()) {
                if (TextUtils.isEmpty(image.getImgUrl())) {
                    return;
                }
                DownLoadRequest.o(image.getImgUrl(), taNativeInfo.getAdItem(), 2, new f(scaleType, taNativeInfo), (ImageView) this.b.findViewById(R.id.native_mediaview_iv_id));
            } else {
                if (taNativeInfo.isMaterialStyleValid() && (templateRenderEnumFindStrategyByCode = TemplateRenderEnum.findStrategyByCode(taNativeInfo.getMaterialStyle())) != null) {
                    templateRenderEnumFindStrategyByCode.renderRadius(this.b);
                }
                this.b.setMediaView(image, scaleType, taNativeInfo.isMaterialStyleValid());
            }
        }
    }

    private void setInteractiveMedia(TaNativeInfo taNativeInfo) {
        AdsDTO adItem;
        ikd.b().d("TNativeView", "setVideoMedia() ----> start to set interactive media");
        if (taNativeInfo == null || (adItem = taNativeInfo.getAdItem()) == null) {
            return;
        }
        String indexLocation = adItem.getIndexLocation();
        if (TextUtils.isEmpty(indexLocation)) {
            return;
        }
        String scale = adItem.getScale();
        if (TextUtils.isEmpty(scale)) {
            scale = (adItem.getScales() == null || adItem.getScales().isEmpty()) ? "" : adItem.getScales().get(0);
        }
        this.b.setInteractiveView(taNativeInfo, indexLocation, scale);
    }

    private void setVideoMedia(TaNativeInfo taNativeInfo) {
        ikd.b().d("TNativeView", "setVideoMedia() ----> start to set video media");
        if (taNativeInfo == null) {
            return;
        }
        String strK = w.k(taNativeInfo.getAdItem());
        ikd.b().d("TNativeView", "setVideoMedia() ----> mainUrl = " + strK);
        if (TextUtils.isEmpty(strK)) {
            return;
        }
        this.b.init(3);
        this.b.setVideoView(strK, taNativeInfo.isMaterialStyleValid(), taNativeInfo.getMaterialStyle(), taNativeInfo.getAdItem(), this.h);
    }

    public final void d(TaNativeInfo taNativeInfo) {
        AdBadgeView adBadgeView;
        if (taNativeInfo == null || (adBadgeView = this.i) == null) {
            return;
        }
        adBadgeView.setDisplayStyle(taNativeInfo.getAdItem().getDisplayRule(), kn8.c(taNativeInfo.getAdItem()));
    }

    public void destroy() {
        MediaView mediaView = this.b;
        if (mediaView != null) {
            if (this.k != null) {
                mediaView.getViewTreeObserver().removeOnGlobalLayoutListener(this.k);
                this.k = null;
            }
            this.b.destroy();
        }
        pp4.a(this.c);
        pp4.a(this.d);
        io1 io1Var = this.l;
        if (io1Var != null) {
            io1Var.f();
            this.l = null;
        }
        removeAllViews();
    }

    public final void e(String str, String str2, String str3) {
        io1 io1VarI = new io1(this).j(str).h(str2).i(str3, null);
        this.l = io1VarI;
        io1VarI.k();
    }

    public final void g(TaNativeInfo taNativeInfo) {
        AdsDTO adsDTOG;
        if (taNativeInfo == null || this.d == null || (adsDTOG = U0.g(taNativeInfo)) == null) {
            return;
        }
        String adChoiceImageUrl = adsDTOG.getAdChoiceImageUrl();
        if (adsDTOG.getSource() == 4) {
            DownLoadRequest.n(adChoiceImageUrl, adsDTOG, null, this.d);
            this.d.setOnClickListener(new c(adsDTOG));
        } else {
            if (adsDTOG.getACReady() == null || !adsDTOG.getACReady().booleanValue()) {
                return;
            }
            DownLoadRequest.o(adChoiceImageUrl, adsDTOG, 3, null, this.d);
            this.d.setOnClickListener(new d(adsDTOG));
        }
    }

    public View getIconView() {
        return this.c;
    }

    public void getMarkViews(List<View> list) {
        list.add(this.d);
        list.add(this.e);
        list.add(this.g);
        list.add(this.i);
        list.add(this.j);
    }

    public MediaView getMediaView() {
        return this.b;
    }

    public oga getTemplateStyle() {
        return null;
    }

    public final void h(TaNativeInfo taNativeInfo) {
        AdsDTO adsDTOG;
        if (taNativeInfo == null || (adsDTOG = U0.g(taNativeInfo)) == null || this.e == null) {
            return;
        }
        AdCloseView.CloseImageType closeImageType = AdCloseView.CloseImageType.CLOSE;
        TemplateRenderEnum templateEnum = taNativeInfo.getTemplateEnum();
        if (templateEnum != null) {
            closeImageType = templateEnum.getCloseImageType();
        }
        this.e.setDisplayStyle(adsDTOG.getDisplayRule(), closeImageType);
        this.e.setVisibility(0);
    }

    public final void i(TaNativeInfo taNativeInfo) {
        if (taNativeInfo == null || taNativeInfo.getAdItem() == null || this.j == null || this.b == null) {
            return;
        }
        if (taNativeInfo.getAdItem().getDisplayRule() != Constants.AdDisplayRule.RU) {
            if (this.j.getParent() instanceof ViewGroup) {
                ((ViewGroup) this.j.getParent()).removeView(this.j);
                return;
            }
            return;
        }
        this.j.setDisplayStyle(taNativeInfo.getAdItem().getDisplayRule(), kn8.f(taNativeInfo.getAdItem()));
        this.j.setListener(new AdDisclaimerView.b() {
            @Override
            public final void a(String str, String str2, String str3) {
                this.a.e(str, str2, str3);
            }
        });
        if (this.k != null) {
            this.b.getViewTreeObserver().removeOnGlobalLayoutListener(this.k);
            this.k = null;
        }
        this.k = new e(taNativeInfo);
        this.b.getViewTreeObserver().addOnGlobalLayoutListener(this.k);
    }

    public void inflateAdChoiceView(TaNativeInfo taNativeInfo) {
        g(taNativeInfo);
    }

    public void inflateIconView(TaNativeInfo taNativeInfo) {
        j(taNativeInfo);
    }

    public void inflateMediaView(TaNativeInfo taNativeInfo) {
        k(taNativeInfo);
    }

    public final void j(TaNativeInfo taNativeInfo) {
        if (this.c == null || taNativeInfo == null) {
            return;
        }
        if (taNativeInfo.getAdItem() != null && taNativeInfo.getAdItem().getSource() == 4) {
            setDefaultLogo(taNativeInfo);
            return;
        }
        ImageView imageView = this.c;
        AdImage iconImage = taNativeInfo.getIconImage();
        if (iconImage != null) {
            if (iconImage.isAdImageRecycled()) {
                if (TextUtils.isEmpty(iconImage.getImgUrl())) {
                    return;
                }
                DownLoadRequest.o(iconImage.getImgUrl(), taNativeInfo.getAdItem(), 1, new b(taNativeInfo, imageView), imageView);
                return;
            }
            imageView.setImageDrawable(qp4.a(iconImage.getDrawable()));
            if (taNativeInfo.isMaterialStyleValid() && (imageView instanceof TranCircleImageView)) {
                TemplateRenderEnum templateRenderEnumFindStrategyByCode = TemplateRenderEnum.findStrategyByCode(taNativeInfo.getMaterialStyle());
                if (templateRenderEnumFindStrategyByCode != null) {
                    templateRenderEnumFindStrategyByCode.scaleWidthOrTextSize(imageView);
                }
                TranCircleImageView tranCircleImageView = (TranCircleImageView) imageView;
                tranCircleImageView.setCircle(true);
                tranCircleImageView.setRadius(hm4.a(4.0f));
            }
        }
    }

    public final void k(TaNativeInfo taNativeInfo) {
        AdsDTO adItem;
        if (this.b == null || taNativeInfo == null || (adItem = taNativeInfo.getAdItem()) == null) {
            return;
        }
        if (adItem.isInteractiveAd()) {
            setInteractiveMedia(taNativeInfo);
            return;
        }
        int iB = t6.a.b(taNativeInfo.getAdItem());
        if (iB == -1) {
            ikd.b().e("TNativeView", "setMediaView（）----> adType = -1");
            return;
        }
        if (iB == 1) {
            setVideoMedia(taNativeInfo);
            return;
        }
        if (taNativeInfo.getAdItem() == null || taNativeInfo.getAdItem().getSource() != 4) {
            setImgMedia(taNativeInfo);
        } else if (taNativeInfo.getAdItem().getDefaultMaterialType() == 1) {
            setDefaultImgMedia(taNativeInfo);
        } else {
            setVideoMedia(taNativeInfo);
        }
    }

    public final void l(TaNativeInfo taNativeInfo) {
        if (taNativeInfo == null || this.g == null) {
            return;
        }
        AdsDTO adItem = taNativeInfo.getAdItem();
        this.g.setVisibility(cy9.a(adItem) ? 0 : 8);
        if (taNativeInfo.getSdkTypeSetStoreMark() == 0) {
            this.g.setTextColor(TextUtils.equals(adItem.getMaterialStyle(), "L91601") ? -1 : -8882056);
            this.g.setTextSize(6.0f);
        } else {
            try {
                this.g.setTextColor(taNativeInfo.getStoreMarkTextColor());
                this.g.setTextSize(taNativeInfo.getStoreMarkTextSize());
            } catch (Exception unused) {
            }
        }
        this.g.attachInfo(adItem);
    }

    public void setAdBagdeView(AdBadgeView adBadgeView) {
        this.i = adBadgeView;
    }

    public void setAdChoiceView(AdChoicesView adChoicesView) {
        if (adChoicesView == null) {
            return;
        }
        this.d = adChoicesView;
    }

    public void setAdCloseView(AdCloseView adCloseView) {
        if (adCloseView == null) {
            return;
        }
        this.e = adCloseView;
    }

    public void setAdDisclaimerView(AdDisclaimerView adDisclaimerView) {
        this.j = adDisclaimerView;
    }

    public final void setIconView(ImageView imageView) {
        this.c = imageView;
    }

    public void setMediaView(MediaView mediaView) {
        setMediaView(mediaView, null);
    }

    public void setPsMarkView(StoreMarkView storeMarkView) {
        if (storeMarkView == null) {
            return;
        }
        this.g = storeMarkView;
    }

    public void setTemplateStyle(oga ogaVar) {
    }

    public void setUseListMode(boolean z) {
        this.h = z;
    }

    public final void setupViews(TaNativeInfo taNativeInfo) {
        k(taNativeInfo);
        j(taNativeInfo);
        g(taNativeInfo);
        h(taNativeInfo);
        l(taNativeInfo);
        d(taNativeInfo);
        i(taNativeInfo);
    }

    public TNativeView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public void setMediaView(MediaView mediaView, ImageView.ScaleType scaleType) {
        this.b = mediaView;
        this.f = scaleType;
    }

    public TNativeView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f = null;
        this.h = false;
    }
}
