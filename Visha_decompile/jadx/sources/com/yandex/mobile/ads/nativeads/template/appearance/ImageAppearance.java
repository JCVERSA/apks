package com.yandex.mobile.ads.nativeads.template.appearance;

import android.os.Parcel;
import android.os.Parcelable;
import com.yandex.mobile.ads.impl.ja1;
import com.yandex.mobile.ads.nativeads.template.SizeConstraint;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u0018J\u001a\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0096\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u000b\u001a\u00020\bHÖ\u0001¢\u0006\u0004\b\u000b\u0010\nJ \u0010\u0010\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\bHÖ\u0001¢\u0006\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u00128\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u0019"}, d2 = {"Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;", "Landroid/os/Parcelable;", "Lcom/yandex/mobile/ads/impl/ja1;", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "describeContents", "Landroid/os/Parcel;", "parcel", "flags", "Lzfb;", "writeToParcel", "(Landroid/os/Parcel;I)V", "Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint;", "b", "Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint;", "getWidthConstraint", "()Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint;", "widthConstraint", "Builder", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0})
public final class ImageAppearance implements Parcelable, ja1 {
    public static final Parcelable.Creator<ImageAppearance> CREATOR = new a();

    private final SizeConstraint widthConstraint;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\t\u0010\nJ\r\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance$Builder;", "", "Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;", "build", "()Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance;", "Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint;", "widthConstraint", "setWidthConstraint", "(Lcom/yandex/mobile/ads/nativeads/template/SizeConstraint;)Lcom/yandex/mobile/ads/nativeads/template/appearance/ImageAppearance$Builder;", MethodDecl.initName, "()V", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0})
    public static final class Builder {
        private SizeConstraint a;

        public final ImageAppearance build() {
            return new ImageAppearance(this.a, null);
        }

        public final Builder setWidthConstraint(SizeConstraint widthConstraint) {
            this.a = widthConstraint;
            return this;
        }
    }

    public static final class a implements Parcelable.Creator<ImageAppearance> {
        @Override
        public final ImageAppearance createFromParcel(Parcel parcel) {
            y45.j(parcel, "parcel");
            return new ImageAppearance(parcel.readInt() == 0 ? null : SizeConstraint.CREATOR.createFromParcel(parcel), null);
        }

        @Override
        public final ImageAppearance[] newArray(int i) {
            return new ImageAppearance[i];
        }
    }

    public ImageAppearance(SizeConstraint sizeConstraint, DefaultConstructorMarker defaultConstructorMarker) {
        this(sizeConstraint);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!y45.e(ImageAppearance.class, other != null ? other.getClass() : null)) {
            return false;
        }
        y45.h(other, "null cannot be cast to non-null type com.yandex.mobile.ads.nativeads.template.appearance.ImageAppearance");
        return y45.e(getWidthConstraint(), ((ImageAppearance) other).getWidthConstraint());
    }

    public int hashCode() {
        SizeConstraint widthConstraint = getWidthConstraint();
        if (widthConstraint != null) {
            return widthConstraint.hashCode();
        }
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int flags) {
        y45.j(parcel, "out");
        SizeConstraint sizeConstraint = this.widthConstraint;
        if (sizeConstraint == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            sizeConstraint.writeToParcel(parcel, flags);
        }
    }

    private ImageAppearance(SizeConstraint sizeConstraint) {
        this.widthConstraint = sizeConstraint;
    }

    @Override
    public SizeConstraint getWidthConstraint() {
        return this.widthConstraint;
    }
}
