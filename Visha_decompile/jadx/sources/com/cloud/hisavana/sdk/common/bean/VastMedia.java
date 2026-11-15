package com.cloud.hisavana.sdk.common.bean;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u000f\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0011\b\u0087\b\u0018\u00002\u00020\u0001B?\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nJ\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u000b\u0010\fJ\u0012\u0010\r\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\r\u0010\fJ\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u000e\u0010\fJ\u0010\u0010\u000f\u001a\u00020\u0006HÆ\u0003¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0011\u001a\u00020\u0006HÆ\u0003¢\u0006\u0004\b\u0011\u0010\u0010JH\u0010\u0012\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\u0006HÆ\u0001¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010\u0014\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0014\u0010\fJ\u0010\u0010\u0015\u001a\u00020\u0006HÖ\u0001¢\u0006\u0004\b\u0015\u0010\u0010J\u001a\u0010\u0019\u001a\u00020\u00182\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016HÖ\u0003¢\u0006\u0004\b\u0019\u0010\u001aJ\u0010\u0010\u001b\u001a\u00020\u0006HÖ\u0001¢\u0006\u0004\b\u001b\u0010\u0010J \u0010 \u001a\u00020\u001f2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020\u0006HÖ\u0001¢\u0006\u0004\b \u0010!R$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\"\u001a\u0004\b#\u0010\f\"\u0004\b$\u0010%R$\u0010\u0004\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\"\u001a\u0004\b&\u0010\f\"\u0004\b'\u0010%R$\u0010\u0005\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\"\u001a\u0004\b(\u0010\f\"\u0004\b)\u0010%R\"\u0010\u0007\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010*\u001a\u0004\b+\u0010\u0010\"\u0004\b,\u0010-R\"\u0010\b\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u0010*\u001a\u0004\b.\u0010\u0010\"\u0004\b/\u0010-¨\u00060"}, d2 = {"Lcom/cloud/hisavana/sdk/common/bean/VastMedia;", "Landroid/os/Parcelable;", "", "mediaResource", "delivery", "type", "", "width", "height", MethodDecl.initName, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V", "component1", "()Ljava/lang/String;", "component2", "component3", "component4", "()I", "component5", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/cloud/hisavana/sdk/common/bean/VastMedia;", "toString", "hashCode", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "describeContents", "Landroid/os/Parcel;", "parcel", "flags", "Lzfb;", "writeToParcel", "(Landroid/os/Parcel;I)V", "Ljava/lang/String;", "getMediaResource", "setMediaResource", "(Ljava/lang/String;)V", "getDelivery", "setDelivery", "getType", "setType", "I", "getWidth", "setWidth", "(I)V", "getHeight", "setHeight", "api_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class VastMedia implements Parcelable {
    public static final Parcelable.Creator<VastMedia> CREATOR = new Creator();
    private String delivery;
    private int height;
    private String mediaResource;
    private String type;
    private int width;

    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<VastMedia> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public final VastMedia createFromParcel(Parcel parcel) {
            y45.j(parcel, "parcel");
            return new VastMedia(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readInt());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public final VastMedia[] newArray(int i) {
            return new VastMedia[i];
        }
    }

    public VastMedia() {
        this(null, null, null, 0, 0, 31, null);
    }

    public static VastMedia copy$default(VastMedia vastMedia, String str, String str2, String str3, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            str = vastMedia.mediaResource;
        }
        if ((i3 & 2) != 0) {
            str2 = vastMedia.delivery;
        }
        String str4 = str2;
        if ((i3 & 4) != 0) {
            str3 = vastMedia.type;
        }
        String str5 = str3;
        if ((i3 & 8) != 0) {
            i = vastMedia.width;
        }
        int i4 = i;
        if ((i3 & 16) != 0) {
            i2 = vastMedia.height;
        }
        return vastMedia.copy(str, str4, str5, i4, i2);
    }

    public final String getMediaResource() {
        return this.mediaResource;
    }

    public final String getDelivery() {
        return this.delivery;
    }

    public final String getType() {
        return this.type;
    }

    public final int getWidth() {
        return this.width;
    }

    public final int getHeight() {
        return this.height;
    }

    public final VastMedia copy(String mediaResource, String delivery, String type, int width, int height) {
        return new VastMedia(mediaResource, delivery, type, width, height);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof VastMedia)) {
            return false;
        }
        VastMedia vastMedia = (VastMedia) other;
        return y45.e(this.mediaResource, vastMedia.mediaResource) && y45.e(this.delivery, vastMedia.delivery) && y45.e(this.type, vastMedia.type) && this.width == vastMedia.width && this.height == vastMedia.height;
    }

    public final String getDelivery() {
        return this.delivery;
    }

    public final int getHeight() {
        return this.height;
    }

    public final String getMediaResource() {
        return this.mediaResource;
    }

    public final String getType() {
        return this.type;
    }

    public final int getWidth() {
        return this.width;
    }

    public int hashCode() {
        String str = this.mediaResource;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.delivery;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.type;
        return ((((iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31) + Integer.hashCode(this.width)) * 31) + Integer.hashCode(this.height);
    }

    public final void setDelivery(String str) {
        this.delivery = str;
    }

    public final void setHeight(int i) {
        this.height = i;
    }

    public final void setMediaResource(String str) {
        this.mediaResource = str;
    }

    public final void setType(String str) {
        this.type = str;
    }

    public final void setWidth(int i) {
        this.width = i;
    }

    public String toString() {
        return "VastMedia(mediaResource=" + this.mediaResource + ", delivery=" + this.delivery + ", type=" + this.type + ", width=" + this.width + ", height=" + this.height + ')';
    }

    @Override
    public void writeToParcel(Parcel parcel, int flags) {
        y45.j(parcel, "out");
        parcel.writeString(this.mediaResource);
        parcel.writeString(this.delivery);
        parcel.writeString(this.type);
        parcel.writeInt(this.width);
        parcel.writeInt(this.height);
    }

    public VastMedia(String str, String str2, String str3, int i, int i2) {
        this.mediaResource = str;
        this.delivery = str2;
        this.type = str3;
        this.width = i;
        this.height = i2;
    }

    public VastMedia(String str, String str2, String str3, int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? null : str, (i3 & 2) != 0 ? null : str2, (i3 & 4) != 0 ? null : str3, (i3 & 8) != 0 ? -1 : i, (i3 & 16) != 0 ? -1 : i2);
    }
}
