package com.yandex.mobile.ads.nativeads.template.appearance;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.mobile.ads.impl.ga1;
import com.yandex.mobile.ads.nativeads.template.HorizontalOffset;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u0007\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001(J\u001a\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0096\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u000b\u001a\u00020\bHÖ\u0001¢\u0006\u0004\b\u000b\u0010\nJ \u0010\u0010\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\bHÖ\u0001¢\u0006\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u00128\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u00128\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0018\u0010\u0014\u001a\u0004\b\u0019\u0010\u0016R\u001a\u0010\u001e\u001a\u00020\b8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\nR\u001a\u0010!\u001a\u00020\b8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u001f\u0010\u001c\u001a\u0004\b \u0010\nR\u001a\u0010'\u001a\u00020\"8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&¨\u0006)"}, d2 = {"Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;", "Landroid/os/Parcelable;", "Lcom/yandex/mobile/ads/impl/ga1;", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "describeContents", "Landroid/os/Parcel;", "parcel", "flags", "Lzfb;", "writeToParcel", "(Landroid/os/Parcel;I)V", "Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;", "b", "Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;", "getContentPadding", "()Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;", "contentPadding", "c", "getImageMargins", "imageMargins", "d", "I", "getBackgroundColor", TtmlNode.ATTR_TTS_BACKGROUND_COLOR, "e", "getBorderColor", "borderColor", "", "f", "F", "getBorderWidth", "()F", "borderWidth", "Builder", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0})
public final class BannerAppearance implements Parcelable, ga1 {
    public static final Parcelable.Creator<BannerAppearance> CREATOR = new a();

    private final HorizontalOffset contentPadding;

    private final HorizontalOffset imageMargins;

    private final int backgroundColor;

    private final int borderColor;

    private final float borderWidth;

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0015\u0010\u0016J\r\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0015\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u0015\u0010\n\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005¢\u0006\u0004\b\n\u0010\bJ\u0015\u0010\r\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\u00002\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0014\u001a\u00020\u00002\b\u0010\u0013\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u0014\u0010\u0012¨\u0006\u0017"}, d2 = {"Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance$Builder;", "", "Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;", "build", "()Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance;", "", TtmlNode.ATTR_TTS_BACKGROUND_COLOR, "setBackgroundColor", "(I)Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance$Builder;", "borderColor", "setBorderColor", "", "borderWidth", "setBorderWidth", "(F)Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance$Builder;", "Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;", "contentPadding", "setContentPadding", "(Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;)Lcom/yandex/mobile/ads/nativeads/template/appearance/BannerAppearance$Builder;", "imageMargins", "setImageMargins", MethodDecl.initName, "()V", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0})
    public static final class Builder {
        private int a;
        private int b;
        private float c;
        private HorizontalOffset d;
        private HorizontalOffset e;

        public final BannerAppearance build() {
            return new BannerAppearance(this.d, this.e, this.a, this.b, this.c, null);
        }

        public final Builder setBackgroundColor(int backgroundColor) {
            this.a = backgroundColor;
            return this;
        }

        public final Builder setBorderColor(int borderColor) {
            this.b = borderColor;
            return this;
        }

        public final Builder setBorderWidth(float borderWidth) {
            this.c = borderWidth;
            return this;
        }

        public final Builder setContentPadding(HorizontalOffset contentPadding) {
            this.d = contentPadding;
            return this;
        }

        public final Builder setImageMargins(HorizontalOffset imageMargins) {
            this.e = imageMargins;
            return this;
        }
    }

    public static final class a implements Parcelable.Creator<BannerAppearance> {
        @Override
        public final BannerAppearance createFromParcel(Parcel parcel) {
            y45.j(parcel, "parcel");
            return new BannerAppearance(parcel.readInt() == 0 ? null : HorizontalOffset.CREATOR.createFromParcel(parcel), parcel.readInt() != 0 ? HorizontalOffset.CREATOR.createFromParcel(parcel) : null, parcel.readInt(), parcel.readInt(), parcel.readFloat(), null);
        }

        @Override
        public final BannerAppearance[] newArray(int i) {
            return new BannerAppearance[i];
        }
    }

    public BannerAppearance(HorizontalOffset horizontalOffset, HorizontalOffset horizontalOffset2, int i, int i2, float f, DefaultConstructorMarker defaultConstructorMarker) {
        this(horizontalOffset, horizontalOffset2, i, i2, f);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!y45.e(BannerAppearance.class, other != null ? other.getClass() : null)) {
            return false;
        }
        y45.h(other, "null cannot be cast to non-null type com.yandex.mobile.ads.nativeads.template.appearance.BannerAppearance");
        BannerAppearance bannerAppearance = (BannerAppearance) other;
        return y45.e(getContentPadding(), bannerAppearance.getContentPadding()) && y45.e(getImageMargins(), bannerAppearance.getImageMargins()) && getBackgroundColor() == bannerAppearance.getBackgroundColor() && getBorderColor() == bannerAppearance.getBorderColor() && getBorderWidth() == bannerAppearance.getBorderWidth();
    }

    @Override
    public int getBackgroundColor() {
        return this.backgroundColor;
    }

    @Override
    public int getBorderColor() {
        return this.borderColor;
    }

    @Override
    public float getBorderWidth() {
        return this.borderWidth;
    }

    public int hashCode() {
        HorizontalOffset contentPadding = getContentPadding();
        int iHashCode = (contentPadding != null ? contentPadding.hashCode() : 0) * 31;
        HorizontalOffset imageMargins = getImageMargins();
        return Float.hashCode(getBorderWidth()) + ((getBorderColor() + ((getBackgroundColor() + ((iHashCode + (imageMargins != null ? imageMargins.hashCode() : 0)) * 31)) * 31)) * 31);
    }

    @Override
    public void writeToParcel(Parcel parcel, int flags) {
        y45.j(parcel, "out");
        HorizontalOffset horizontalOffset = this.contentPadding;
        if (horizontalOffset == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            horizontalOffset.writeToParcel(parcel, flags);
        }
        HorizontalOffset horizontalOffset2 = this.imageMargins;
        if (horizontalOffset2 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            horizontalOffset2.writeToParcel(parcel, flags);
        }
        parcel.writeInt(this.backgroundColor);
        parcel.writeInt(this.borderColor);
        parcel.writeFloat(this.borderWidth);
    }

    private BannerAppearance(HorizontalOffset horizontalOffset, HorizontalOffset horizontalOffset2, int i, int i2, float f) {
        this.contentPadding = horizontalOffset;
        this.imageMargins = horizontalOffset2;
        this.backgroundColor = i;
        this.borderColor = i2;
        this.borderWidth = f;
    }

    @Override
    public HorizontalOffset getContentPadding() {
        return this.contentPadding;
    }

    @Override
    public HorizontalOffset getImageMargins() {
        return this.imageMargins;
    }
}
