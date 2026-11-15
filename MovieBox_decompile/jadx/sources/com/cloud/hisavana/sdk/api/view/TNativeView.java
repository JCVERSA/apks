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
import com.cloud.hisavana.sdk.J0;
import com.cloud.hisavana.sdk.ad.template.TemplateRenderEnum;
import com.cloud.hisavana.sdk.b4;
import com.cloud.hisavana.sdk.common.bean.AdImage;
import com.cloud.hisavana.sdk.common.bean.TaNativeInfo;
import com.cloud.hisavana.sdk.common.constant.Constants;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.http.DownLoadRequest;
import com.cloud.hisavana.sdk.common.http.listener.DrawableResponseListener;
import com.cloud.hisavana.sdk.common.util.e0;
import com.cloud.hisavana.sdk.common.util.h0;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.w2;
import com.cloud.sdk.commonutil.R$id;
import com.cloud.sdk.commonutil.util.h;
import com.cloud.sdk.commonutil.util.k;
import com.cloud.sdk.commonutil.widget.TranCircleImageView;
import java.util.List;

public class TNativeView extends FrameLayout {

    private MediaView f21044a;

    private ImageView f21045b;

    private AdChoicesView f21046c;

    private AdCloseView f21047d;

    private ImageView.ScaleType f21048e;

    private StoreMarkView f21049f;

    private boolean f21050g;

    private AdBadgeView f21051h;

    private AdDisclaimerView f21052i;

    private ViewTreeObserver.OnGlobalLayoutListener f21053j;

    private h7.d f21054k;

    class a extends DrawableResponseListener {

        final TaNativeInfo f21055b;

        a(TaNativeInfo taNativeInfo) {
            this.f21055b = taNativeInfo;
        }

        @Override
        public void a(TaErrorCode taErrorCode) {
            b4.b().d("ssp", "download Image failed.");
        }

        @Override
        public void g(int i10, AdImage adImage) {
            TemplateRenderEnum templateRenderEnumFindStrategyByCode;
            if (!this.f21055b.isMaterialStyleValid() || (templateRenderEnumFindStrategyByCode = TemplateRenderEnum.findStrategyByCode(this.f21055b.getMaterialStyle())) == null) {
                return;
            }
            templateRenderEnumFindStrategyByCode.renderRadius(TNativeView.this.f21044a);
        }
    }

    class b extends DrawableResponseListener {

        final TaNativeInfo f21057b;

        final ImageView f21058c;

        b(TaNativeInfo taNativeInfo, ImageView imageView) {
            this.f21057b = taNativeInfo;
            this.f21058c = imageView;
        }

        @Override
        public void a(TaErrorCode taErrorCode) {
            b4.b().d("TNativeView", "download Image failed.");
        }

        @Override
        public void g(int i10, AdImage adImage) {
            if (adImage != null && adImage.getDrawable() != null) {
                b4.b().d("TNativeView", "download Image Success.");
                AdImage iconImage = this.f21057b.getIconImage();
                if (iconImage != null) {
                    iconImage.setDrawable(adImage.getDrawable());
                } else {
                    this.f21057b.setImage(adImage);
                }
            }
            if (this.f21057b.isMaterialStyleValid() && (this.f21058c instanceof TranCircleImageView)) {
                TemplateRenderEnum templateRenderEnumFindStrategyByCode = TemplateRenderEnum.findStrategyByCode(this.f21057b.getMaterialStyle());
                if (templateRenderEnumFindStrategyByCode != null) {
                    templateRenderEnumFindStrategyByCode.scaleWidthOrTextSize(this.f21058c);
                }
                ((TranCircleImageView) this.f21058c).setCircle(true);
                ((TranCircleImageView) this.f21058c).setRadius(h.a(TextUtils.equals(this.f21057b.getMaterialStyle(), "L91601") ? 16.0f : 4.0f));
            }
        }
    }

    class c implements View.OnClickListener {

        final AdsDTO f21060a;

        c(AdsDTO adsDTO) {
            this.f21060a = adsDTO;
        }

        @Override
        public void onClick(View view) {
            J0.k(com.cloud.sdk.commonutil.util.e.a(), this.f21060a);
        }
    }

    class d implements View.OnClickListener {

        final AdsDTO f21062a;

        d(AdsDTO adsDTO) {
            this.f21062a = adsDTO;
        }

        @Override
        public void onClick(View view) {
            J0.k(com.cloud.sdk.commonutil.util.e.a(), this.f21062a);
        }
    }

    class e implements ViewTreeObserver.OnGlobalLayoutListener {

        final TaNativeInfo f21064a;

        e(TaNativeInfo taNativeInfo) {
            this.f21064a = taNativeInfo;
        }

        @Override
        public void onGlobalLayout() {
            if (TNativeView.this.f21044a.getHeight() != 0) {
                TNativeView.this.f21044a.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                TNativeView.this.f21053j = null;
                TNativeView.this.f21052i.updateHeightWith(e0.e(this.f21064a.getAdItem()), TNativeView.this.f21044a.getHeight());
            }
        }
    }

    class f extends DrawableResponseListener {

        final TaNativeInfo f21066b;

        final ImageView.ScaleType f21067c;

        f(TaNativeInfo taNativeInfo, ImageView.ScaleType scaleType) {
            this.f21066b = taNativeInfo;
            this.f21067c = scaleType;
        }

        @Override
        public void a(TaErrorCode taErrorCode) {
            b4.b().d("ssp", "download Image failed.");
        }

        @Override
        public void g(int i10, AdImage adImage) {
            TemplateRenderEnum templateRenderEnumFindStrategyByCode;
            if (adImage == null || adImage.getDrawable() == null) {
                return;
            }
            b4.b().d("ssp", "download Image Success.");
            AdImage image = this.f21066b.getImage();
            if (image != null) {
                image.setDrawable(adImage.getDrawable());
            } else {
                this.f21066b.setImage(adImage);
            }
            TNativeView.this.f21044a.setMediaView(adImage, this.f21067c, this.f21066b.isMaterialStyleValid());
            if (!this.f21066b.isMaterialStyleValid() || (templateRenderEnumFindStrategyByCode = TemplateRenderEnum.findStrategyByCode(this.f21066b.getMaterialStyle())) == null) {
                return;
            }
            templateRenderEnumFindStrategyByCode.renderRadius(TNativeView.this.f21044a);
        }
    }

    public TNativeView(@NonNull Context context) {
        this(context, null);
    }

    private void d(TaNativeInfo taNativeInfo) {
        AdBadgeView adBadgeView;
        if (taNativeInfo == null || (adBadgeView = this.f21051h) == null) {
            return;
        }
        adBadgeView.setDisplayStyle(taNativeInfo.getAdItem().getDisplayRule(), e0.c(taNativeInfo.getAdItem()));
    }

    public void e(String str, String str2, String str3) {
        h7.d dVarI = new h7.d(this).j(str).h(str2).i(str3, null);
        this.f21054k = dVarI;
        dVarI.k();
    }

    private void g(TaNativeInfo taNativeInfo) {
        AdsDTO adsDTOF;
        if (taNativeInfo == null || this.f21046c == null || (adsDTOF = J0.f(taNativeInfo)) == null) {
            return;
        }
        String adChoiceImageUrl = adsDTOF.getAdChoiceImageUrl();
        if (adsDTOF.getSource() == 4) {
            DownLoadRequest.n(adChoiceImageUrl, adsDTOF, null, this.f21046c);
            this.f21046c.setOnClickListener(new c(adsDTOF));
        } else {
            if (adsDTOF.getACReady() == null || !adsDTOF.getACReady().booleanValue()) {
                return;
            }
            DownLoadRequest.o(adChoiceImageUrl, adsDTOF, 3, null, this.f21046c);
            this.f21046c.setOnClickListener(new d(adsDTOF));
        }
    }

    private void h(TaNativeInfo taNativeInfo) {
        AdsDTO adsDTOF;
        if (taNativeInfo == null || (adsDTOF = J0.f(taNativeInfo)) == null || this.f21047d == null) {
            return;
        }
        AdCloseView.CloseImageType closeImageType = AdCloseView.CloseImageType.CLOSE;
        TemplateRenderEnum templateEnum = taNativeInfo.getTemplateEnum();
        if (templateEnum != null) {
            closeImageType = templateEnum.getCloseImageType();
        }
        this.f21047d.setDisplayStyle(adsDTOF.getDisplayRule(), closeImageType);
        this.f21047d.setVisibility(0);
    }

    private void i(TaNativeInfo taNativeInfo) {
        if (taNativeInfo == null || taNativeInfo.getAdItem() == null || this.f21052i == null || this.f21044a == null) {
            return;
        }
        if (taNativeInfo.getAdItem().getDisplayRule() != Constants.AdDisplayRule.RU) {
            if (this.f21052i.getParent() instanceof ViewGroup) {
                ((ViewGroup) this.f21052i.getParent()).removeView(this.f21052i);
                return;
            }
            return;
        }
        this.f21052i.setDisplayStyle(taNativeInfo.getAdItem().getDisplayRule(), e0.f(taNativeInfo.getAdItem()));
        this.f21052i.setListener(new AdDisclaimerView.b() {
            @Override
            public final void a(String str, String str2, String str3) {
                this.f59466a.e(str, str2, str3);
            }
        });
        if (this.f21053j != null) {
            this.f21044a.getViewTreeObserver().removeOnGlobalLayoutListener(this.f21053j);
            this.f21053j = null;
        }
        this.f21053j = new e(taNativeInfo);
        this.f21044a.getViewTreeObserver().addOnGlobalLayoutListener(this.f21053j);
    }

    private void j(TaNativeInfo taNativeInfo) {
        if (this.f21045b == null || taNativeInfo == null) {
            return;
        }
        if (taNativeInfo.getAdItem() != null && taNativeInfo.getAdItem().getSource() == 4) {
            setDefaultLogo(taNativeInfo);
            return;
        }
        ImageView imageView = this.f21045b;
        AdImage iconImage = taNativeInfo.getIconImage();
        if (iconImage != null) {
            if (iconImage.isAdImageRecycled()) {
                if (TextUtils.isEmpty(iconImage.getImgUrl())) {
                    return;
                }
                DownLoadRequest.o(iconImage.getImgUrl(), taNativeInfo.getAdItem(), 1, new b(taNativeInfo, imageView), imageView);
                return;
            }
            imageView.setImageDrawable(n7.c.a(iconImage.getDrawable()));
            if (taNativeInfo.isMaterialStyleValid() && (imageView instanceof TranCircleImageView)) {
                TemplateRenderEnum templateRenderEnumFindStrategyByCode = TemplateRenderEnum.findStrategyByCode(taNativeInfo.getMaterialStyle());
                if (templateRenderEnumFindStrategyByCode != null) {
                    templateRenderEnumFindStrategyByCode.scaleWidthOrTextSize(imageView);
                }
                TranCircleImageView tranCircleImageView = (TranCircleImageView) imageView;
                tranCircleImageView.setCircle(true);
                tranCircleImageView.setRadius(h.a(4.0f));
            }
        }
    }

    private void k(TaNativeInfo taNativeInfo) {
        AdsDTO adItem;
        if (this.f21044a == null || taNativeInfo == null || (adItem = taNativeInfo.getAdItem()) == null) {
            return;
        }
        if (adItem.isInteractiveAd()) {
            setInteractiveMedia(taNativeInfo);
            return;
        }
        int iB = com.cloud.hisavana.sdk.common.util.b.f21563a.b(taNativeInfo.getAdItem());
        if (iB == -1) {
            b4.b().e("TNativeView", "setMediaView（）----> adType = -1");
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

    private void l(TaNativeInfo taNativeInfo) {
        if (taNativeInfo == null || this.f21049f == null) {
            return;
        }
        AdsDTO adItem = taNativeInfo.getAdItem();
        this.f21049f.setVisibility(h0.a(adItem) ? 0 : 8);
        this.f21049f.setTextColor(TextUtils.equals(adItem.getMaterialStyle(), "L91601") ? -1 : -8882056);
        this.f21049f.setTextSize(6.0f);
        this.f21049f.attachInfo(adItem);
    }

    private void setDefaultImgMedia(TaNativeInfo taNativeInfo) {
        AdImage image = taNativeInfo.getImage();
        if (image == null) {
            return;
        }
        this.f21044a.init(image.getMime());
        ImageView.ScaleType scaleType = this.f21048e;
        if (scaleType == null) {
            scaleType = ImageView.ScaleType.FIT_CENTER;
        }
        ImageView imageView = (ImageView) this.f21044a.findViewById(R$id.native_mediaview_iv_id);
        if (imageView == null) {
            return;
        }
        if (taNativeInfo.isMaterialStyleValid()) {
            imageView.setAdjustViewBounds(true);
            imageView.setMaxWidth(k7.c.k());
            imageView.setMaxHeight(k7.c.j());
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
        if (taNativeInfo.isMaterialStyleValid() && (this.f21045b instanceof TranCircleImageView)) {
            TemplateRenderEnum templateRenderEnumFindStrategyByCode = TemplateRenderEnum.findStrategyByCode(taNativeInfo.getMaterialStyle());
            if (templateRenderEnumFindStrategyByCode != null) {
                templateRenderEnumFindStrategyByCode.scaleWidthOrTextSize(this.f21045b);
            }
            ((TranCircleImageView) this.f21045b).setCircle(true);
            ((TranCircleImageView) this.f21045b).setRadius(h.a(TextUtils.equals(taNativeInfo.getMaterialStyle(), "L91601") ? 16.0f : 4.0f));
        }
        DownLoadRequest.n(iconImage.getImgUrl(), taNativeInfo.getAdItem(), null, this.f21045b);
    }

    private void setImgMedia(TaNativeInfo taNativeInfo) {
        TemplateRenderEnum templateRenderEnumFindStrategyByCode;
        b4.b().d("TNativeView", "start to set img media");
        if (taNativeInfo == null) {
            return;
        }
        AdImage image = taNativeInfo.getImage();
        ImageView.ScaleType scaleType = this.f21048e;
        if (scaleType == null) {
            scaleType = ImageView.ScaleType.FIT_CENTER;
        }
        if (scaleType == ImageView.ScaleType.FIT_CENTER) {
            image.setNeedBlurBackground(true);
        }
        if (image != null) {
            this.f21044a.init(image.getMime());
            if (image.isAdImageRecycled()) {
                if (TextUtils.isEmpty(image.getImgUrl())) {
                    return;
                }
                DownLoadRequest.o(image.getImgUrl(), taNativeInfo.getAdItem(), 2, new f(taNativeInfo, scaleType), (ImageView) this.f21044a.findViewById(R$id.native_mediaview_iv_id));
            } else {
                if (taNativeInfo.isMaterialStyleValid() && (templateRenderEnumFindStrategyByCode = TemplateRenderEnum.findStrategyByCode(taNativeInfo.getMaterialStyle())) != null) {
                    templateRenderEnumFindStrategyByCode.renderRadius(this.f21044a);
                }
                this.f21044a.setMediaView(image, scaleType, taNativeInfo.isMaterialStyleValid());
            }
        }
    }

    private void setInteractiveMedia(TaNativeInfo taNativeInfo) {
        AdsDTO adItem;
        b4.b().d("TNativeView", "setVideoMedia() ----> start to set interactive media");
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
        this.f21044a.setInteractiveView(taNativeInfo, indexLocation, scale);
    }

    private void setVideoMedia(TaNativeInfo taNativeInfo) {
        b4.b().d("TNativeView", "setVideoMedia() ----> start to set video media");
        if (taNativeInfo == null) {
            return;
        }
        String strJ = w2.j(taNativeInfo.getAdItem());
        b4.b().d("TNativeView", "setVideoMedia() ----> mainUrl = " + strJ);
        if (TextUtils.isEmpty(strJ)) {
            return;
        }
        this.f21044a.init(3);
        this.f21044a.setVideoView(strJ, taNativeInfo.isMaterialStyleValid(), taNativeInfo.getMaterialStyle(), taNativeInfo.getAdItem(), this.f21050g);
    }

    public void destroy() {
        MediaView mediaView = this.f21044a;
        if (mediaView != null) {
            if (this.f21053j != null) {
                mediaView.getViewTreeObserver().removeOnGlobalLayoutListener(this.f21053j);
                this.f21053j = null;
            }
            this.f21044a.destroy();
        }
        k.a(this.f21045b);
        k.a(this.f21046c);
        h7.d dVar = this.f21054k;
        if (dVar != null) {
            dVar.f();
            this.f21054k = null;
        }
        removeAllViews();
    }

    public View getIconView() {
        return this.f21045b;
    }

    public void getMarkViews(List<View> list) {
        list.add(this.f21046c);
        list.add(this.f21047d);
        list.add(this.f21049f);
        list.add(this.f21051h);
        list.add(this.f21052i);
    }

    public MediaView getMediaView() {
        return this.f21044a;
    }

    public com.cloud.hisavana.sdk.ad.template.a getTemplateStyle() {
        return null;
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

    public void setAdBagdeView(AdBadgeView adBadgeView) {
        this.f21051h = adBadgeView;
    }

    public void setAdChoiceView(AdChoicesView adChoicesView) {
        if (adChoicesView == null) {
            return;
        }
        this.f21046c = adChoicesView;
    }

    public void setAdCloseView(AdCloseView adCloseView) {
        if (adCloseView == null) {
            return;
        }
        this.f21047d = adCloseView;
    }

    public void setAdDisclaimerView(AdDisclaimerView adDisclaimerView) {
        this.f21052i = adDisclaimerView;
    }

    public final void setIconView(ImageView imageView) {
        this.f21045b = imageView;
    }

    public void setMediaView(MediaView mediaView) {
        setMediaView(mediaView, null);
    }

    public void setPsMarkView(StoreMarkView storeMarkView) {
        if (storeMarkView == null) {
            return;
        }
        this.f21049f = storeMarkView;
    }

    public void setUseListMode(boolean z10) {
        this.f21050g = z10;
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
        this.f21044a = mediaView;
        this.f21048e = scaleType;
    }

    public TNativeView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f21048e = null;
        this.f21050g = false;
    }

    public void setTemplateStyle(com.cloud.hisavana.sdk.ad.template.a aVar) {
    }
}
