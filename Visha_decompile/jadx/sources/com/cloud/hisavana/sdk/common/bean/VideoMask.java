package com.cloud.hisavana.sdk.common.bean;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001B\u0013\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u001c\u0010\b\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002HÆ\u0001¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\n\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\n\u0010\u0007J\u0010\u0010\f\u001a\u00020\u000bHÖ\u0001¢\u0006\u0004\b\f\u0010\rJ\u001a\u0010\u0011\u001a\u00020\u00102\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eHÖ\u0003¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010\u0013\u001a\u00020\u000bHÖ\u0001¢\u0006\u0004\b\u0013\u0010\rJ \u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u000bHÖ\u0001¢\u0006\u0004\b\u0018\u0010\u0019R$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u001a\u001a\u0004\b\u001b\u0010\u0007\"\u0004\b\u001c\u0010\u0005¨\u0006\u001d"}, d2 = {"Lcom/cloud/hisavana/sdk/common/bean/VideoMask;", "Landroid/os/Parcelable;", "", "resource", MethodDecl.initName, "(Ljava/lang/String;)V", "component1", "()Ljava/lang/String;", "copy", "(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/common/bean/VideoMask;", "toString", "", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "describeContents", "Landroid/os/Parcel;", "parcel", "flags", "Lzfb;", "writeToParcel", "(Landroid/os/Parcel;I)V", "Ljava/lang/String;", "getResource", "setResource", "api_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class VideoMask implements Parcelable {
    public static final Parcelable.Creator<VideoMask> CREATOR = new Creator();
    private String resource;

    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<VideoMask> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public final VideoMask createFromParcel(Parcel parcel) {
            y45.j(parcel, "parcel");
            return new VideoMask(parcel.readString());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public final VideoMask[] newArray(int i) {
            return new VideoMask[i];
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public VideoMask() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public static VideoMask copy$default(VideoMask videoMask, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = videoMask.resource;
        }
        return videoMask.copy(str);
    }

    public final String getResource() {
        return this.resource;
    }

    public final VideoMask copy(String resource) {
        return new VideoMask(resource);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof VideoMask) && y45.e(this.resource, ((VideoMask) other).resource);
    }

    public final String getResource() {
        return this.resource;
    }

    public int hashCode() {
        String str = this.resource;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }

    public final void setResource(String str) {
        this.resource = str;
    }

    public String toString() {
        return "VideoMask(resource=" + this.resource + ')';
    }

    @Override
    public void writeToParcel(Parcel parcel, int flags) {
        y45.j(parcel, "out");
        parcel.writeString(this.resource);
    }

    public VideoMask(String str) {
        this.resource = str;
    }

    public VideoMask(String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str);
    }
}
