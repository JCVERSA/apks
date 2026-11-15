package com.yandex.mobile.ads.nativeads.template.appearance;

import android.os.Parcel;
import android.os.Parcelable;
import com.yandex.mobile.ads.impl.ka1;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u0019J\u001a\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0096\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u000b\u001a\u00020\bHÖ\u0001¢\u0006\u0004\b\u000b\u0010\nJ \u0010\u0010\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\bHÖ\u0001¢\u0006\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0015\u001a\u00020\b8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\nR\u001a\u0010\u0018\u001a\u00020\b8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0016\u0010\u0013\u001a\u0004\b\u0017\u0010\n¨\u0006\u001a"}, d2 = {"Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance;", "Landroid/os/Parcelable;", "Lcom/yandex/mobile/ads/impl/ka1;", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "describeContents", "Landroid/os/Parcel;", "parcel", "flags", "Lzfb;", "writeToParcel", "(Landroid/os/Parcel;I)V", "b", "I", "getBackgroundStarColor", "backgroundStarColor", "c", "getProgressStarColor", "progressStarColor", "Builder", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0})
public final class RatingAppearance implements Parcelable, ka1 {
    public static final Parcelable.Creator<RatingAppearance> CREATOR = new a();

    private final int backgroundStarColor;

    private final int progressStarColor;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u000b\u0010\fJ\r\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0015\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u0015\u0010\n\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005¢\u0006\u0004\b\n\u0010\b¨\u0006\r"}, d2 = {"Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance$Builder;", "", "Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance;", "build", "()Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance;", "", "backgroundStarColor", "setBackgroundStarColor", "(I)Lcom/yandex/mobile/ads/nativeads/template/appearance/RatingAppearance$Builder;", "progressStarColor", "setProgressStarColor", MethodDecl.initName, "()V", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0})
    public static final class Builder {
        private int a;
        private int b;

        public final RatingAppearance build() {
            return new RatingAppearance(this.a, this.b, null);
        }

        public final Builder setBackgroundStarColor(int backgroundStarColor) {
            this.a = backgroundStarColor;
            return this;
        }

        public final Builder setProgressStarColor(int progressStarColor) {
            this.b = progressStarColor;
            return this;
        }
    }

    public static final class a implements Parcelable.Creator<RatingAppearance> {
        @Override
        public final RatingAppearance createFromParcel(Parcel parcel) {
            y45.j(parcel, "parcel");
            return new RatingAppearance(parcel.readInt(), parcel.readInt(), null);
        }

        @Override
        public final RatingAppearance[] newArray(int i) {
            return new RatingAppearance[i];
        }
    }

    public RatingAppearance(int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, i2);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!y45.e(RatingAppearance.class, other != null ? other.getClass() : null)) {
            return false;
        }
        y45.h(other, "null cannot be cast to non-null type com.yandex.mobile.ads.nativeads.template.appearance.RatingAppearance");
        RatingAppearance ratingAppearance = (RatingAppearance) other;
        return getBackgroundStarColor() == ratingAppearance.getBackgroundStarColor() && getProgressStarColor() == ratingAppearance.getProgressStarColor();
    }

    @Override
    public int getBackgroundStarColor() {
        return this.backgroundStarColor;
    }

    @Override
    public int getProgressStarColor() {
        return this.progressStarColor;
    }

    public int hashCode() {
        return getProgressStarColor() + (getBackgroundStarColor() * 31);
    }

    @Override
    public void writeToParcel(Parcel parcel, int flags) {
        y45.j(parcel, "out");
        parcel.writeInt(this.backgroundStarColor);
        parcel.writeInt(this.progressStarColor);
    }

    private RatingAppearance(int i, int i2) {
        this.backgroundStarColor = i;
        this.progressStarColor = i2;
    }
}
