package com.yandex.mobile.ads.nativeads.template;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.mobile.ads.impl.ia1;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u001a\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0096\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010\u0013\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u0013\u0010\u000fJ \u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u0018\u0010\u0019R\u001a\u0010\u0004\u001a\u00020\u00038\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR\u001a\u0010\u0005\u001a\u00020\u00038\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u001e\u0010\u001b\u001a\u0004\b\u001f\u0010\u001d¨\u0006 "}, d2 = {"Lcom/yandex/mobile/ads/nativeads/template/HorizontalOffset;", "Lcom/yandex/mobile/ads/impl/ia1;", "Landroid/os/Parcelable;", "", TtmlNode.LEFT, TtmlNode.RIGHT, MethodDecl.initName, "(FF)V", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "", "toString", "()Ljava/lang/String;", "describeContents", "Landroid/os/Parcel;", "parcel", "flags", "Lzfb;", "writeToParcel", "(Landroid/os/Parcel;I)V", "b", "F", "getLeft", "()F", "c", "getRight", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0})
public final class HorizontalOffset implements ia1, Parcelable {
    public static final Parcelable.Creator<HorizontalOffset> CREATOR = new a();

    private final float left;

    private final float right;

    public static final class a implements Parcelable.Creator<HorizontalOffset> {
        @Override
        public final HorizontalOffset createFromParcel(Parcel parcel) {
            y45.j(parcel, "parcel");
            return new HorizontalOffset(parcel.readFloat(), parcel.readFloat());
        }

        @Override
        public final HorizontalOffset[] newArray(int i) {
            return new HorizontalOffset[i];
        }
    }

    public HorizontalOffset(float f, float f2) {
        this.left = f;
        this.right = f2;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!y45.e(HorizontalOffset.class, other != null ? other.getClass() : null)) {
            return false;
        }
        y45.h(other, "null cannot be cast to non-null type com.yandex.mobile.ads.nativeads.template.HorizontalOffset");
        HorizontalOffset horizontalOffset = (HorizontalOffset) other;
        return getLeft() == horizontalOffset.getLeft() && getRight() == horizontalOffset.getRight();
    }

    @Override
    public float getLeft() {
        return this.left;
    }

    @Override
    public float getRight() {
        return this.right;
    }

    public int hashCode() {
        return Float.hashCode(getRight()) + (Float.hashCode(getLeft()) * 31);
    }

    public String toString() {
        return getLeft() + ", " + getRight();
    }

    @Override
    public void writeToParcel(Parcel parcel, int flags) {
        y45.j(parcel, "out");
        parcel.writeFloat(this.left);
        parcel.writeFloat(this.right);
    }
}
