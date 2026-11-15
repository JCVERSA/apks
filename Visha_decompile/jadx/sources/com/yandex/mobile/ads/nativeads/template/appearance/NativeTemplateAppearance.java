package com.yandex.mobile.ads.nativeads.template.appearance;

import android.graphics.Color;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import com.yandex.mobile.ads.impl.fu;
import com.yandex.mobile.ads.impl.wh2;
import com.yandex.mobile.ads.nativeads.template.HorizontalOffset;
import com.yandex.mobile.ads.nativeads.template.SizeConstraint;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001EJ\u001a\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0096\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u000b\u001a\u00020\bHÖ\u0001¢\u0006\u0004\b\u000b\u0010\nJ \u0010\u0010\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\bHÖ\u0001¢\u0006\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0017\u001a\u00020\u00128\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u001a\u0010\u001d\u001a\u00020\u00188\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR\u001a\u0010 \u001a\u00020\u00188\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u001e\u0010\u001a\u001a\u0004\b\u001f\u0010\u001cR\u001a\u0010#\u001a\u00020\u00188\u0016X\u0096\u0004¢\u0006\f\n\u0004\b!\u0010\u001a\u001a\u0004\b\"\u0010\u001cR\u001a\u0010&\u001a\u00020\u00188\u0016X\u0096\u0004¢\u0006\f\n\u0004\b$\u0010\u001a\u001a\u0004\b%\u0010\u001cR\u001a\u0010)\u001a\u00020\u00188\u0016X\u0096\u0004¢\u0006\f\n\u0004\b'\u0010\u001a\u001a\u0004\b(\u0010\u001cR\u001a\u0010,\u001a\u00020\u00188\u0016X\u0096\u0004¢\u0006\f\n\u0004\b*\u0010\u001a\u001a\u0004\b+\u0010\u001cR\u001a\u0010/\u001a\u00020\u00188\u0016X\u0096\u0004¢\u0006\f\n\u0004\b-\u0010\u001a\u001a\u0004\b.\u0010\u001cR\u001a\u00105\u001a\u0002008\u0016X\u0096\u0004¢\u0006\f\n\u0004\b1\u00102\u001a\u0004\b3\u00104R\u001a\u00108\u001a\u0002008\u0016X\u0096\u0004¢\u0006\f\n\u0004\b6\u00102\u001a\u0004\b7\u00104R\u001a\u0010>\u001a\u0002098\u0016X\u0096\u0004¢\u0006\f\n\u0004\b:\u0010;\u001a\u0004\b<\u0010=R\u001a\u0010D\u001a\u00020?8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b@\u0010A\u001a\u0004\bB\u0010C¨\u0006F"}, d2 = {"Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;", "Landroid/os/Parcelable;", "Lcom/yandex/mobile/ads/impl/fu;", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "describeContents", "Landroid/os/Parcel;", "parcel", "flags", "Lzfb;", "writeToParcel", "(Landroid/os/Parcel;I)V", "Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;", "b", "Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;", "getBannerAppearance", "()Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;", "bannerAppearance", "Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;", "c", "Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;", "getAgeAppearance", "()Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;", "ageAppearance", "d", "getBodyAppearance", "bodyAppearance", "e", "getDomainAppearance", "domainAppearance", "f", "getReviewCountAppearance", "reviewCountAppearance", GslbInterceptor.HEADER_KEY_GSLB, "getSponsoredAppearance", "sponsoredAppearance", CmcdData.STREAMING_FORMAT_HLS, "getTitleAppearance", "titleAppearance", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "getWarningAppearance", "warningAppearance", "Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;", "j", "Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;", "getFaviconAppearance", "()Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;", "faviconAppearance", "k", "getImageAppearance", "imageAppearance", "Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;", CmcdData.STREAM_TYPE_LIVE, "Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;", "getCallToActionAppearance", "()Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;", "callToActionAppearance", "Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance;", CmcdData.OBJECT_TYPE_MANIFEST, "Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance;", "getRatingAppearance", "()Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance;", "ratingAppearance", "Builder", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0})
public final class NativeTemplateAppearance implements Parcelable, fu {
    public static final Parcelable.Creator<NativeTemplateAppearance> CREATOR = new a();
    private static final int n = Color.parseColor("#7f7f7f");
    private static final int o = Color.parseColor("#ffd200");
    private static final int p = Color.parseColor("#ffd200");
    private static final int q = Color.parseColor("#f4c900");

    private final BannerAppearance bannerAppearance;

    private final TextAppearance ageAppearance;

    private final TextAppearance bodyAppearance;

    private final TextAppearance domainAppearance;

    private final TextAppearance reviewCountAppearance;

    private final TextAppearance sponsoredAppearance;

    private final TextAppearance titleAppearance;

    private final TextAppearance warningAppearance;

    private final ImageAppearance faviconAppearance;

    private final ImageAppearance imageAppearance;

    private final ButtonAppearance callToActionAppearance;

    private final RatingAppearance ratingAppearance;

    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000e\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b'\u0010(J\r\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0015\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u0015\u0010\u000b\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fJ\u0015\u0010\u000e\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0005¢\u0006\u0004\b\u000e\u0010\bJ\u0015\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012J\u0015\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0005¢\u0006\u0004\b\u0014\u0010\bJ\u0015\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u0015¢\u0006\u0004\b\u0017\u0010\u0018J\u0015\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u0015¢\u0006\u0004\b\u001a\u0010\u0018J\u0015\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u001b¢\u0006\u0004\b\u001d\u0010\u001eJ\u0015\u0010 \u001a\u00020\u00002\u0006\u0010\u001f\u001a\u00020\u0005¢\u0006\u0004\b \u0010\bJ\u0015\u0010\"\u001a\u00020\u00002\u0006\u0010!\u001a\u00020\u0005¢\u0006\u0004\b\"\u0010\bJ\u0015\u0010$\u001a\u00020\u00002\u0006\u0010#\u001a\u00020\u0005¢\u0006\u0004\b$\u0010\bJ\u0015\u0010&\u001a\u00020\u00002\u0006\u0010%\u001a\u00020\u0005¢\u0006\u0004\b&\u0010\b¨\u0006)"}, d2 = {"Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;", "", "Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;", "build", "()Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance;", "Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;", "ageAppearance", "withAgeAppearance", "(Lcom/yandex/mobile/ads/nativeads/template/appearance/TextAppearance;)Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;", "Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;", "bannerAppearance", "withBannerAppearance", "(Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;)Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;", "bodyAppearance", "withBodyAppearance", "Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;", "appearance", "withCallToActionAppearance", "(Lcom/yandex/mobile/ads/nativeads/template/appearance/ButtonAppearance;)Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;", "domainAppearance", "withDomainAppearance", "Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;", "faviconAppearance", "withFaviconAppearance", "(Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;)Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;", "imageAppearance", "withImageAppearance", "Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance;", "ratingAppearance", "withRatingAppearance", "(Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance;)Lcom/yandex/mobile/ads/nativeads/template/appearance/NativeTemplateAppearance$Builder;", "reviewCountAppearance", "withReviewCountAppearance", "sponsoredAppearance", "withSponsoredAppearance", "titleAppearance", "withTitleAppearance", "warningAppearance", "withWarningAppearance", MethodDecl.initName, "()V", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0})
    public static final class Builder {
        private BannerAppearance a = b();
        private ButtonAppearance k = d();
        private ImageAppearance i = g();
        private ImageAppearance j = f();
        private RatingAppearance l = h();
        private TextAppearance b = a();
        private TextAppearance c = c();
        private TextAppearance d = e();
        private TextAppearance e = i();
        private TextAppearance f = j();
        private TextAppearance g = k();
        private TextAppearance h = l();

        private static TextAppearance a() {
            return new TextAppearance.Builder().setTextColor(NativeTemplateAppearance.n).setTextSize(15.0f).setFontFamilyName(null).setFontStyle(0).build();
        }

        private static BannerAppearance b() {
            return new BannerAppearance.Builder().setBackgroundColor(-1).setBorderColor(wh2.a(-16777216, 90.0f)).setBorderWidth(1.0f).setContentPadding(new HorizontalOffset(10.0f, 10.0f)).setImageMargins(new HorizontalOffset(0.0f, 10.0f)).build();
        }

        private static TextAppearance c() {
            return new TextAppearance.Builder().setTextColor(-16777216).setTextSize(13.0f).setFontFamilyName(null).setFontStyle(0).build();
        }

        private static ButtonAppearance d() {
            return new ButtonAppearance.Builder().setBorderColor(NativeTemplateAppearance.o).setBorderWidth(1.0f).setNormalColor(-1).setPressedColor(NativeTemplateAppearance.p).setTextAppearance(new TextAppearance.Builder().setTextColor(-16777216).setTextSize(13.0f).setFontFamilyName(null).setFontStyle(0).build()).build();
        }

        private static TextAppearance e() {
            return new TextAppearance.Builder().setTextColor(NativeTemplateAppearance.n).setTextSize(13.0f).setFontFamilyName(null).setFontStyle(0).build();
        }

        private static ImageAppearance f() {
            return new ImageAppearance.Builder().setWidthConstraint(new SizeConstraint(SizeConstraint.SizeConstraintType.FIXED, 16.0f)).build();
        }

        private static ImageAppearance g() {
            return new ImageAppearance.Builder().setWidthConstraint(new SizeConstraint(SizeConstraint.SizeConstraintType.PREFERRED_RATIO, 0.3f)).build();
        }

        private static RatingAppearance h() {
            return new RatingAppearance.Builder().setBackgroundStarColor(-3355444).setProgressStarColor(NativeTemplateAppearance.q).build();
        }

        private static TextAppearance i() {
            return new TextAppearance.Builder().setTextColor(NativeTemplateAppearance.n).setTextSize(13.0f).setFontFamilyName(null).setFontStyle(0).build();
        }

        private static TextAppearance j() {
            return new TextAppearance.Builder().setTextColor(NativeTemplateAppearance.n).setTextSize(11.0f).setFontFamilyName(null).setFontStyle(0).build();
        }

        private static TextAppearance k() {
            return new TextAppearance.Builder().setTextColor(-16777216).setTextSize(15.0f).setFontFamilyName(null).setFontStyle(1).build();
        }

        private static TextAppearance l() {
            return new TextAppearance.Builder().setTextColor(NativeTemplateAppearance.n).setTextSize(13.0f).setFontFamilyName(null).setFontStyle(0).build();
        }

        public final NativeTemplateAppearance build() {
            return new NativeTemplateAppearance(this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.j, this.i, this.k, this.l, null);
        }

        public final Builder withAgeAppearance(TextAppearance ageAppearance) {
            y45.j(ageAppearance, "ageAppearance");
            TextAppearance textAppearanceBuild = this.b;
            y45.j(textAppearanceBuild, "textAppearance");
            if (ageAppearance != null && !y45.e(textAppearanceBuild, ageAppearance)) {
                int textColor = ageAppearance.getTextColor();
                float textSize = ageAppearance.getTextSize();
                String fontFamilyName = ageAppearance.getFontFamilyName();
                int i = ageAppearance.getAndroidx.media3.extractor.text.ttml.TtmlNode.ATTR_TTS_FONT_STYLE java.lang.String();
                if (fontFamilyName == null || fontFamilyName.length() <= 0) {
                    fontFamilyName = textAppearanceBuild.getFontFamilyName();
                }
                TextAppearance.Builder builder = new TextAppearance.Builder();
                if (textColor == 0) {
                    textColor = textAppearanceBuild.getTextColor();
                }
                TextAppearance.Builder textColor2 = builder.setTextColor(textColor);
                if (textSize < 1.0f) {
                    textSize = textAppearanceBuild.getTextSize();
                }
                textAppearanceBuild = textColor2.setTextSize(textSize).setFontFamilyName(fontFamilyName).setFontStyle(i).build();
            }
            this.b = textAppearanceBuild;
            return this;
        }

        public final Builder withBannerAppearance(BannerAppearance bannerAppearance) {
            y45.j(bannerAppearance, "bannerAppearance");
            BannerAppearance bannerAppearanceBuild = this.a;
            y45.j(bannerAppearanceBuild, "bannerAppearance");
            if (bannerAppearance != null && !y45.e(bannerAppearanceBuild, bannerAppearance)) {
                int i = bannerAppearance.getAndroidx.media3.extractor.text.ttml.TtmlNode.ATTR_TTS_BACKGROUND_COLOR java.lang.String();
                if (i == 0) {
                    i = bannerAppearanceBuild.getAndroidx.media3.extractor.text.ttml.TtmlNode.ATTR_TTS_BACKGROUND_COLOR java.lang.String();
                }
                int borderColor = bannerAppearance.getBorderColor();
                if (borderColor == 0) {
                    borderColor = bannerAppearanceBuild.getBorderColor();
                }
                float borderWidth = bannerAppearance.getBorderWidth();
                if (borderWidth < 0.0f) {
                    borderWidth = bannerAppearanceBuild.getBorderWidth();
                }
                HorizontalOffset contentPadding = bannerAppearanceBuild.getContentPadding();
                if (contentPadding != null) {
                    HorizontalOffset contentPadding2 = bannerAppearance.getContentPadding();
                    if (contentPadding2 != null && !y45.e(contentPadding, contentPadding2)) {
                        contentPadding = new HorizontalOffset(contentPadding2.getAndroidx.media3.extractor.text.ttml.TtmlNode.LEFT java.lang.String() >= 0.0f ? contentPadding2.getAndroidx.media3.extractor.text.ttml.TtmlNode.LEFT java.lang.String() : 0.0f, contentPadding2.getAndroidx.media3.extractor.text.ttml.TtmlNode.RIGHT java.lang.String() >= 0.0f ? contentPadding2.getAndroidx.media3.extractor.text.ttml.TtmlNode.RIGHT java.lang.String() : 0.0f);
                    }
                } else {
                    contentPadding = null;
                }
                HorizontalOffset imageMargins = bannerAppearance.getImageMargins();
                if (imageMargins == null) {
                    imageMargins = bannerAppearanceBuild.getImageMargins();
                }
                BannerAppearance.Builder builder = new BannerAppearance.Builder();
                builder.setBackgroundColor(i);
                builder.setBorderColor(borderColor);
                builder.setBorderWidth(borderWidth);
                if (contentPadding != null) {
                    builder.setContentPadding(contentPadding);
                }
                if (imageMargins != null) {
                    builder.setImageMargins(imageMargins);
                }
                bannerAppearanceBuild = builder.build();
            }
            this.a = bannerAppearanceBuild;
            return this;
        }

        public final Builder withBodyAppearance(TextAppearance bodyAppearance) {
            y45.j(bodyAppearance, "bodyAppearance");
            TextAppearance textAppearanceBuild = this.c;
            y45.j(textAppearanceBuild, "textAppearance");
            if (bodyAppearance != null && !y45.e(textAppearanceBuild, bodyAppearance)) {
                int textColor = bodyAppearance.getTextColor();
                float textSize = bodyAppearance.getTextSize();
                String fontFamilyName = bodyAppearance.getFontFamilyName();
                int i = bodyAppearance.getAndroidx.media3.extractor.text.ttml.TtmlNode.ATTR_TTS_FONT_STYLE java.lang.String();
                if (fontFamilyName == null || fontFamilyName.length() <= 0) {
                    fontFamilyName = textAppearanceBuild.getFontFamilyName();
                }
                TextAppearance.Builder builder = new TextAppearance.Builder();
                if (textColor == 0) {
                    textColor = textAppearanceBuild.getTextColor();
                }
                TextAppearance.Builder textColor2 = builder.setTextColor(textColor);
                if (textSize < 1.0f) {
                    textSize = textAppearanceBuild.getTextSize();
                }
                textAppearanceBuild = textColor2.setTextSize(textSize).setFontFamilyName(fontFamilyName).setFontStyle(i).build();
            }
            this.c = textAppearanceBuild;
            return this;
        }

        public final Builder withCallToActionAppearance(ButtonAppearance appearance) {
            y45.j(appearance, "appearance");
            ButtonAppearance buttonAppearanceBuild = this.k;
            y45.j(buttonAppearanceBuild, "buttonAppearance");
            if (appearance != null && !y45.e(buttonAppearanceBuild, appearance)) {
                TextAppearance textAppearance = buttonAppearanceBuild.getTextAppearance();
                if (textAppearance != null) {
                    TextAppearance textAppearance2 = appearance.getTextAppearance();
                    y45.j(textAppearance, "textAppearance");
                    if (textAppearance2 != null && !y45.e(textAppearance, textAppearance2)) {
                        int textColor = textAppearance2.getTextColor();
                        float textSize = textAppearance2.getTextSize();
                        String fontFamilyName = textAppearance2.getFontFamilyName();
                        int i = textAppearance2.getAndroidx.media3.extractor.text.ttml.TtmlNode.ATTR_TTS_FONT_STYLE java.lang.String();
                        if (fontFamilyName == null || fontFamilyName.length() <= 0) {
                            fontFamilyName = textAppearance.getFontFamilyName();
                        }
                        TextAppearance.Builder builder = new TextAppearance.Builder();
                        if (textColor == 0) {
                            textColor = textAppearance.getTextColor();
                        }
                        TextAppearance.Builder textColor2 = builder.setTextColor(textColor);
                        if (textSize < 1.0f) {
                            textSize = textAppearance.getTextSize();
                        }
                        textAppearance = textColor2.setTextSize(textSize).setFontFamilyName(fontFamilyName).setFontStyle(i).build();
                    }
                } else {
                    textAppearance = null;
                }
                int borderColor = appearance.getBorderColor();
                float borderWidth = appearance.getBorderWidth();
                int normalColor = appearance.getNormalColor();
                int pressedColor = appearance.getPressedColor();
                ButtonAppearance.Builder builder2 = new ButtonAppearance.Builder();
                if (textAppearance != null) {
                    builder2.setTextAppearance(textAppearance);
                }
                if (borderColor == 0) {
                    borderColor = buttonAppearanceBuild.getBorderColor();
                }
                builder2.setBorderColor(borderColor);
                if (borderWidth < 0.0f) {
                    borderWidth = buttonAppearanceBuild.getBorderWidth();
                }
                builder2.setBorderWidth(borderWidth);
                if (normalColor == 0) {
                    normalColor = buttonAppearanceBuild.getNormalColor();
                }
                builder2.setNormalColor(normalColor);
                if (pressedColor == 0) {
                    pressedColor = buttonAppearanceBuild.getPressedColor();
                }
                builder2.setPressedColor(pressedColor);
                buttonAppearanceBuild = builder2.build();
            }
            this.k = buttonAppearanceBuild;
            return this;
        }

        public final Builder withDomainAppearance(TextAppearance domainAppearance) {
            y45.j(domainAppearance, "domainAppearance");
            TextAppearance textAppearanceBuild = this.d;
            y45.j(textAppearanceBuild, "textAppearance");
            if (domainAppearance != null && !y45.e(textAppearanceBuild, domainAppearance)) {
                int textColor = domainAppearance.getTextColor();
                float textSize = domainAppearance.getTextSize();
                String fontFamilyName = domainAppearance.getFontFamilyName();
                int i = domainAppearance.getAndroidx.media3.extractor.text.ttml.TtmlNode.ATTR_TTS_FONT_STYLE java.lang.String();
                if (fontFamilyName == null || fontFamilyName.length() <= 0) {
                    fontFamilyName = textAppearanceBuild.getFontFamilyName();
                }
                TextAppearance.Builder builder = new TextAppearance.Builder();
                if (textColor == 0) {
                    textColor = textAppearanceBuild.getTextColor();
                }
                TextAppearance.Builder textColor2 = builder.setTextColor(textColor);
                if (textSize < 1.0f) {
                    textSize = textAppearanceBuild.getTextSize();
                }
                textAppearanceBuild = textColor2.setTextSize(textSize).setFontFamilyName(fontFamilyName).setFontStyle(i).build();
            }
            this.d = textAppearanceBuild;
            return this;
        }

        public final Builder withFaviconAppearance(ImageAppearance faviconAppearance) {
            y45.j(faviconAppearance, "faviconAppearance");
            ImageAppearance imageAppearanceBuild = this.j;
            y45.j(imageAppearanceBuild, "imageAppearance");
            if (faviconAppearance != null && !y45.e(imageAppearanceBuild, faviconAppearance)) {
                SizeConstraint widthConstraint = faviconAppearance.getWidthConstraint();
                if (widthConstraint == null) {
                    widthConstraint = imageAppearanceBuild.getWidthConstraint();
                }
                ImageAppearance.Builder builder = new ImageAppearance.Builder();
                if (widthConstraint != null) {
                    builder.setWidthConstraint(widthConstraint);
                }
                imageAppearanceBuild = builder.build();
            }
            this.j = imageAppearanceBuild;
            return this;
        }

        public final Builder withImageAppearance(ImageAppearance imageAppearance) {
            y45.j(imageAppearance, "imageAppearance");
            ImageAppearance imageAppearanceBuild = this.i;
            y45.j(imageAppearanceBuild, "imageAppearance");
            if (imageAppearance != null && !y45.e(imageAppearanceBuild, imageAppearance)) {
                SizeConstraint widthConstraint = imageAppearance.getWidthConstraint();
                if (widthConstraint == null) {
                    widthConstraint = imageAppearanceBuild.getWidthConstraint();
                }
                ImageAppearance.Builder builder = new ImageAppearance.Builder();
                if (widthConstraint != null) {
                    builder.setWidthConstraint(widthConstraint);
                }
                imageAppearanceBuild = builder.build();
            }
            this.i = imageAppearanceBuild;
            return this;
        }

        public final Builder withRatingAppearance(RatingAppearance ratingAppearance) {
            y45.j(ratingAppearance, "ratingAppearance");
            RatingAppearance ratingAppearanceBuild = this.l;
            y45.j(ratingAppearanceBuild, "ratingAppearance");
            if (ratingAppearance != null && !y45.e(ratingAppearanceBuild, ratingAppearance)) {
                int backgroundStarColor = ratingAppearance.getBackgroundStarColor();
                int progressStarColor = ratingAppearance.getProgressStarColor();
                if (backgroundStarColor == 0) {
                    backgroundStarColor = ratingAppearanceBuild.getBackgroundStarColor();
                }
                if (progressStarColor == 0) {
                    progressStarColor = ratingAppearanceBuild.getProgressStarColor();
                }
                ratingAppearanceBuild = new RatingAppearance.Builder().setBackgroundStarColor(backgroundStarColor).setProgressStarColor(progressStarColor).build();
            }
            this.l = ratingAppearanceBuild;
            return this;
        }

        public final Builder withReviewCountAppearance(TextAppearance reviewCountAppearance) {
            y45.j(reviewCountAppearance, "reviewCountAppearance");
            TextAppearance textAppearanceBuild = this.e;
            y45.j(textAppearanceBuild, "textAppearance");
            if (reviewCountAppearance != null && !y45.e(textAppearanceBuild, reviewCountAppearance)) {
                int textColor = reviewCountAppearance.getTextColor();
                float textSize = reviewCountAppearance.getTextSize();
                String fontFamilyName = reviewCountAppearance.getFontFamilyName();
                int i = reviewCountAppearance.getAndroidx.media3.extractor.text.ttml.TtmlNode.ATTR_TTS_FONT_STYLE java.lang.String();
                if (fontFamilyName == null || fontFamilyName.length() <= 0) {
                    fontFamilyName = textAppearanceBuild.getFontFamilyName();
                }
                TextAppearance.Builder builder = new TextAppearance.Builder();
                if (textColor == 0) {
                    textColor = textAppearanceBuild.getTextColor();
                }
                TextAppearance.Builder textColor2 = builder.setTextColor(textColor);
                if (textSize < 1.0f) {
                    textSize = textAppearanceBuild.getTextSize();
                }
                textAppearanceBuild = textColor2.setTextSize(textSize).setFontFamilyName(fontFamilyName).setFontStyle(i).build();
            }
            this.e = textAppearanceBuild;
            return this;
        }

        public final Builder withSponsoredAppearance(TextAppearance sponsoredAppearance) {
            y45.j(sponsoredAppearance, "sponsoredAppearance");
            TextAppearance textAppearanceBuild = this.f;
            y45.j(textAppearanceBuild, "textAppearance");
            if (sponsoredAppearance != null && !y45.e(textAppearanceBuild, sponsoredAppearance)) {
                int textColor = sponsoredAppearance.getTextColor();
                float textSize = sponsoredAppearance.getTextSize();
                String fontFamilyName = sponsoredAppearance.getFontFamilyName();
                int i = sponsoredAppearance.getAndroidx.media3.extractor.text.ttml.TtmlNode.ATTR_TTS_FONT_STYLE java.lang.String();
                if (fontFamilyName == null || fontFamilyName.length() <= 0) {
                    fontFamilyName = textAppearanceBuild.getFontFamilyName();
                }
                TextAppearance.Builder builder = new TextAppearance.Builder();
                if (textColor == 0) {
                    textColor = textAppearanceBuild.getTextColor();
                }
                TextAppearance.Builder textColor2 = builder.setTextColor(textColor);
                if (textSize < 1.0f) {
                    textSize = textAppearanceBuild.getTextSize();
                }
                textAppearanceBuild = textColor2.setTextSize(textSize).setFontFamilyName(fontFamilyName).setFontStyle(i).build();
            }
            this.f = textAppearanceBuild;
            return this;
        }

        public final Builder withTitleAppearance(TextAppearance titleAppearance) {
            y45.j(titleAppearance, "titleAppearance");
            TextAppearance textAppearanceBuild = this.g;
            y45.j(textAppearanceBuild, "textAppearance");
            if (titleAppearance != null && !y45.e(textAppearanceBuild, titleAppearance)) {
                int textColor = titleAppearance.getTextColor();
                float textSize = titleAppearance.getTextSize();
                String fontFamilyName = titleAppearance.getFontFamilyName();
                int i = titleAppearance.getAndroidx.media3.extractor.text.ttml.TtmlNode.ATTR_TTS_FONT_STYLE java.lang.String();
                if (fontFamilyName == null || fontFamilyName.length() <= 0) {
                    fontFamilyName = textAppearanceBuild.getFontFamilyName();
                }
                TextAppearance.Builder builder = new TextAppearance.Builder();
                if (textColor == 0) {
                    textColor = textAppearanceBuild.getTextColor();
                }
                TextAppearance.Builder textColor2 = builder.setTextColor(textColor);
                if (textSize < 1.0f) {
                    textSize = textAppearanceBuild.getTextSize();
                }
                textAppearanceBuild = textColor2.setTextSize(textSize).setFontFamilyName(fontFamilyName).setFontStyle(i).build();
            }
            this.g = textAppearanceBuild;
            return this;
        }

        public final Builder withWarningAppearance(TextAppearance warningAppearance) {
            y45.j(warningAppearance, "warningAppearance");
            TextAppearance textAppearanceBuild = this.h;
            y45.j(textAppearanceBuild, "textAppearance");
            if (warningAppearance != null && !y45.e(textAppearanceBuild, warningAppearance)) {
                int textColor = warningAppearance.getTextColor();
                float textSize = warningAppearance.getTextSize();
                String fontFamilyName = warningAppearance.getFontFamilyName();
                int i = warningAppearance.getAndroidx.media3.extractor.text.ttml.TtmlNode.ATTR_TTS_FONT_STYLE java.lang.String();
                if (fontFamilyName == null || fontFamilyName.length() <= 0) {
                    fontFamilyName = textAppearanceBuild.getFontFamilyName();
                }
                TextAppearance.Builder builder = new TextAppearance.Builder();
                if (textColor == 0) {
                    textColor = textAppearanceBuild.getTextColor();
                }
                TextAppearance.Builder textColor2 = builder.setTextColor(textColor);
                if (textSize < 1.0f) {
                    textSize = textAppearanceBuild.getTextSize();
                }
                textAppearanceBuild = textColor2.setTextSize(textSize).setFontFamilyName(fontFamilyName).setFontStyle(i).build();
            }
            this.h = textAppearanceBuild;
            return this;
        }
    }

    public static final class a implements Parcelable.Creator<NativeTemplateAppearance> {
        @Override
        public final NativeTemplateAppearance createFromParcel(Parcel parcel) {
            y45.j(parcel, "parcel");
            BannerAppearance bannerAppearanceCreateFromParcel = BannerAppearance.CREATOR.createFromParcel(parcel);
            Parcelable.Creator<TextAppearance> creator = TextAppearance.CREATOR;
            TextAppearance textAppearanceCreateFromParcel = creator.createFromParcel(parcel);
            TextAppearance textAppearanceCreateFromParcel2 = creator.createFromParcel(parcel);
            TextAppearance textAppearanceCreateFromParcel3 = creator.createFromParcel(parcel);
            TextAppearance textAppearanceCreateFromParcel4 = creator.createFromParcel(parcel);
            TextAppearance textAppearanceCreateFromParcel5 = creator.createFromParcel(parcel);
            TextAppearance textAppearanceCreateFromParcel6 = creator.createFromParcel(parcel);
            TextAppearance textAppearanceCreateFromParcel7 = creator.createFromParcel(parcel);
            Parcelable.Creator<ImageAppearance> creator2 = ImageAppearance.CREATOR;
            return new NativeTemplateAppearance(bannerAppearanceCreateFromParcel, textAppearanceCreateFromParcel, textAppearanceCreateFromParcel2, textAppearanceCreateFromParcel3, textAppearanceCreateFromParcel4, textAppearanceCreateFromParcel5, textAppearanceCreateFromParcel6, textAppearanceCreateFromParcel7, creator2.createFromParcel(parcel), creator2.createFromParcel(parcel), ButtonAppearance.CREATOR.createFromParcel(parcel), RatingAppearance.CREATOR.createFromParcel(parcel), null);
        }

        @Override
        public final NativeTemplateAppearance[] newArray(int i) {
            return new NativeTemplateAppearance[i];
        }
    }

    public NativeTemplateAppearance(BannerAppearance bannerAppearance, TextAppearance textAppearance, TextAppearance textAppearance2, TextAppearance textAppearance3, TextAppearance textAppearance4, TextAppearance textAppearance5, TextAppearance textAppearance6, TextAppearance textAppearance7, ImageAppearance imageAppearance, ImageAppearance imageAppearance2, ButtonAppearance buttonAppearance, RatingAppearance ratingAppearance, DefaultConstructorMarker defaultConstructorMarker) {
        this(bannerAppearance, textAppearance, textAppearance2, textAppearance3, textAppearance4, textAppearance5, textAppearance6, textAppearance7, imageAppearance, imageAppearance2, buttonAppearance, ratingAppearance);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!y45.e(NativeTemplateAppearance.class, other != null ? other.getClass() : null)) {
            return false;
        }
        y45.h(other, "null cannot be cast to non-null type com.yandex.mobile.ads.nativeads.template.appearance.NativeTemplateAppearance");
        NativeTemplateAppearance nativeTemplateAppearance = (NativeTemplateAppearance) other;
        if (y45.e(getBannerAppearance(), nativeTemplateAppearance.getBannerAppearance()) && y45.e(getAgeAppearance(), nativeTemplateAppearance.getAgeAppearance()) && y45.e(getBodyAppearance(), nativeTemplateAppearance.getBodyAppearance()) && y45.e(getDomainAppearance(), nativeTemplateAppearance.getDomainAppearance()) && y45.e(getReviewCountAppearance(), nativeTemplateAppearance.getReviewCountAppearance()) && y45.e(getSponsoredAppearance(), nativeTemplateAppearance.getSponsoredAppearance()) && y45.e(getTitleAppearance(), nativeTemplateAppearance.getTitleAppearance()) && y45.e(getWarningAppearance(), nativeTemplateAppearance.getWarningAppearance()) && y45.e(getFaviconAppearance(), nativeTemplateAppearance.getFaviconAppearance()) && y45.e(getImageAppearance(), nativeTemplateAppearance.getImageAppearance()) && y45.e(getCallToActionAppearance(), nativeTemplateAppearance.getCallToActionAppearance())) {
            return y45.e(getRatingAppearance(), nativeTemplateAppearance.getRatingAppearance());
        }
        return false;
    }

    public int hashCode() {
        return getRatingAppearance().hashCode() + ((getCallToActionAppearance().hashCode() + ((getImageAppearance().hashCode() + ((getFaviconAppearance().hashCode() + ((getWarningAppearance().hashCode() + ((getTitleAppearance().hashCode() + ((getSponsoredAppearance().hashCode() + ((getReviewCountAppearance().hashCode() + ((getDomainAppearance().hashCode() + ((getBodyAppearance().hashCode() + ((getAgeAppearance().hashCode() + (getBannerAppearance().hashCode() * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31);
    }

    @Override
    public void writeToParcel(Parcel parcel, int flags) {
        y45.j(parcel, "out");
        this.bannerAppearance.writeToParcel(parcel, flags);
        this.ageAppearance.writeToParcel(parcel, flags);
        this.bodyAppearance.writeToParcel(parcel, flags);
        this.domainAppearance.writeToParcel(parcel, flags);
        this.reviewCountAppearance.writeToParcel(parcel, flags);
        this.sponsoredAppearance.writeToParcel(parcel, flags);
        this.titleAppearance.writeToParcel(parcel, flags);
        this.warningAppearance.writeToParcel(parcel, flags);
        this.faviconAppearance.writeToParcel(parcel, flags);
        this.imageAppearance.writeToParcel(parcel, flags);
        this.callToActionAppearance.writeToParcel(parcel, flags);
        this.ratingAppearance.writeToParcel(parcel, flags);
    }

    private NativeTemplateAppearance(BannerAppearance bannerAppearance, TextAppearance textAppearance, TextAppearance textAppearance2, TextAppearance textAppearance3, TextAppearance textAppearance4, TextAppearance textAppearance5, TextAppearance textAppearance6, TextAppearance textAppearance7, ImageAppearance imageAppearance, ImageAppearance imageAppearance2, ButtonAppearance buttonAppearance, RatingAppearance ratingAppearance) {
        this.bannerAppearance = bannerAppearance;
        this.ageAppearance = textAppearance;
        this.bodyAppearance = textAppearance2;
        this.domainAppearance = textAppearance3;
        this.reviewCountAppearance = textAppearance4;
        this.sponsoredAppearance = textAppearance5;
        this.titleAppearance = textAppearance6;
        this.warningAppearance = textAppearance7;
        this.faviconAppearance = imageAppearance;
        this.imageAppearance = imageAppearance2;
        this.callToActionAppearance = buttonAppearance;
        this.ratingAppearance = ratingAppearance;
    }

    @Override
    public TextAppearance getAgeAppearance() {
        return this.ageAppearance;
    }

    @Override
    public BannerAppearance getBannerAppearance() {
        return this.bannerAppearance;
    }

    @Override
    public TextAppearance getBodyAppearance() {
        return this.bodyAppearance;
    }

    @Override
    public ButtonAppearance getCallToActionAppearance() {
        return this.callToActionAppearance;
    }

    @Override
    public TextAppearance getDomainAppearance() {
        return this.domainAppearance;
    }

    @Override
    public ImageAppearance getFaviconAppearance() {
        return this.faviconAppearance;
    }

    @Override
    public ImageAppearance getImageAppearance() {
        return this.imageAppearance;
    }

    @Override
    public RatingAppearance getRatingAppearance() {
        return this.ratingAppearance;
    }

    @Override
    public TextAppearance getReviewCountAppearance() {
        return this.reviewCountAppearance;
    }

    @Override
    public TextAppearance getSponsoredAppearance() {
        return this.sponsoredAppearance;
    }

    @Override
    public TextAppearance getTitleAppearance() {
        return this.titleAppearance;
    }

    @Override
    public TextAppearance getWarningAppearance() {
        return this.warningAppearance;
    }
}
