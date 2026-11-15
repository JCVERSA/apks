package com.transsion.dbdata.beans.mimedia;

import android.os.Parcel;
import android.os.Parcelable;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.audiotagger.tag.id3.AbstractID3v1Tag;
import com.transsion.dbdata.beans.media.PlayAudioData;
import defpackage.f1a;
import defpackage.j1a;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u0000\n\u0002\b\f\b\u0087\b\u0018\u0000 ,2\u00020\u0001:\u0001,B3\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\b\u0010\tJ\r\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u000b\u0010\fJ\r\u0010\r\u001a\u00020\n¢\u0006\u0004\b\r\u0010\fJ\u000f\u0010\u000e\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u001d\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u0015\u0010\u0016J\r\u0010\u0017\u001a\u00020\u0012¢\u0006\u0004\b\u0017\u0010\u0018J\u0012\u0010\u0019\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0019\u0010\u000fJ\u0010\u0010\u001a\u001a\u00020\u0004HÆ\u0003¢\u0006\u0004\b\u001a\u0010\u001bJ\u0010\u0010\u001c\u001a\u00020\u0004HÆ\u0003¢\u0006\u0004\b\u001c\u0010\u001bJ\u0012\u0010\u001d\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u001d\u0010\u000fJ<\u0010\u001e\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002HÆ\u0001¢\u0006\u0004\b\u001e\u0010\u001fJ\u0010\u0010 \u001a\u00020\u0012HÖ\u0001¢\u0006\u0004\b \u0010\u0018J\u001a\u0010#\u001a\u00020\n2\b\u0010\"\u001a\u0004\u0018\u00010!HÖ\u0003¢\u0006\u0004\b#\u0010$R\u0019\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010%\u001a\u0004\b&\u0010\u000fR\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010'\u001a\u0004\b(\u0010\u001bR\u0017\u0010\u0006\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0006\u0010'\u001a\u0004\b)\u0010\u001bR\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0007\u0010%\u001a\u0004\b*\u0010\u000fR\u0014\u0010+\u001a\u00020\u00028\u0002X\u0082D¢\u0006\u0006\n\u0004\b+\u0010%¨\u0006-"}, d2 = {"Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;", "Landroid/os/Parcelable;", "", "videoUrl", "", PlayAudioData.TAG_SIZE, "duration", "resolution", MethodDecl.initName, "(Ljava/lang/String;JJLjava/lang/String;)V", "", "isUrlValid", "()Z", "isUrlExpired", "toString", "()Ljava/lang/String;", "Landroid/os/Parcel;", "dest", "", "flags", "Lzfb;", "writeToParcel", "(Landroid/os/Parcel;I)V", "describeContents", "()I", "component1", "component2", "()J", "component3", "component4", "copy", "(Ljava/lang/String;JJLjava/lang/String;)Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;", "hashCode", "", "other", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getVideoUrl", "J", "getSize", "getDuration", "getResolution", AbstractID3v1Tag.TAG, "Companion", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MIMediaVideoPlayItemInfo implements Parcelable {
    public static final int URL_EXPIRED_STATUS_CODE = 403;
    private final String TAG;
    private final long duration;
    private final String resolution;
    private final long size;
    private final String videoUrl;
    public static final Parcelable.Creator<MIMediaVideoPlayItemInfo> CREATOR = new Creator();

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<MIMediaVideoPlayItemInfo> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public final MIMediaVideoPlayItemInfo createFromParcel(Parcel parcel) {
            y45.j(parcel, "parcel");
            return new MIMediaVideoPlayItemInfo(parcel.readString(), parcel.readLong(), parcel.readLong(), parcel.readString());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public final MIMediaVideoPlayItemInfo[] newArray(int i) {
            return new MIMediaVideoPlayItemInfo[i];
        }
    }

    public MIMediaVideoPlayItemInfo() {
        this(null, 0L, 0L, null, 15, null);
    }

    public static MIMediaVideoPlayItemInfo copy$default(MIMediaVideoPlayItemInfo mIMediaVideoPlayItemInfo, String str, long j, long j2, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = mIMediaVideoPlayItemInfo.videoUrl;
        }
        if ((i & 2) != 0) {
            j = mIMediaVideoPlayItemInfo.size;
        }
        long j3 = j;
        if ((i & 4) != 0) {
            j2 = mIMediaVideoPlayItemInfo.duration;
        }
        long j4 = j2;
        if ((i & 8) != 0) {
            str2 = mIMediaVideoPlayItemInfo.resolution;
        }
        return mIMediaVideoPlayItemInfo.copy(str, j3, j4, str2);
    }

    public final String getVideoUrl() {
        return this.videoUrl;
    }

    public final long getSize() {
        return this.size;
    }

    public final long getDuration() {
        return this.duration;
    }

    public final String getResolution() {
        return this.resolution;
    }

    public final MIMediaVideoPlayItemInfo copy(String videoUrl, long size, long duration, String resolution) {
        return new MIMediaVideoPlayItemInfo(videoUrl, size, duration, resolution);
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MIMediaVideoPlayItemInfo)) {
            return false;
        }
        MIMediaVideoPlayItemInfo mIMediaVideoPlayItemInfo = (MIMediaVideoPlayItemInfo) other;
        return y45.e(this.videoUrl, mIMediaVideoPlayItemInfo.videoUrl) && this.size == mIMediaVideoPlayItemInfo.size && this.duration == mIMediaVideoPlayItemInfo.duration && y45.e(this.resolution, mIMediaVideoPlayItemInfo.resolution);
    }

    public final long getDuration() {
        return this.duration;
    }

    public final String getResolution() {
        return this.resolution;
    }

    public final long getSize() {
        return this.size;
    }

    public final String getVideoUrl() {
        return this.videoUrl;
    }

    public int hashCode() {
        String str = this.videoUrl;
        int iHashCode = (((((str == null ? 0 : str.hashCode()) * 31) + Long.hashCode(this.size)) * 31) + Long.hashCode(this.duration)) * 31;
        String str2 = this.resolution;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public final boolean isUrlExpired() {
        try {
            String str = this.videoUrl;
            if (str != null) {
                if (!j1a.X(str, "expires=", false, 2, null)) {
                    return false;
                }
                Long lT = f1a.t(j1a.e1(j1a.X0(str, "expires=", null, 2, null), "&", null, 2, null));
                if ((lT != null ? lT.longValue() : 0L) >= System.currentTimeMillis() / ((long) 1000)) {
                    return false;
                }
            }
            return true;
        } catch (Exception e) {
            LogUtils.l(this.TAG, "Failed to check URL expiration: " + e.getMessage());
            return false;
        }
    }

    public final boolean isUrlValid() {
        String str = this.videoUrl;
        return !(str == null || str.length() == 0);
    }

    public String toString() {
        return "MIMediaVideoPlayItemInfo(videoUrl=" + this.videoUrl + ", size=" + this.size + ", duration=" + this.duration + ", resolution=" + this.resolution;
    }

    @Override
    public final void writeToParcel(Parcel dest, int flags) {
        y45.j(dest, "dest");
        dest.writeString(this.videoUrl);
        dest.writeLong(this.size);
        dest.writeLong(this.duration);
        dest.writeString(this.resolution);
    }

    public MIMediaVideoPlayItemInfo(String str, long j, long j2, String str2) {
        this.videoUrl = str;
        this.size = j;
        this.duration = j2;
        this.resolution = str2;
        this.TAG = "MIMediaVideoPlayItemInfo";
    }

    public MIMediaVideoPlayItemInfo(String str, long j, long j2, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? 0L : j, (i & 4) != 0 ? 0L : j2, (i & 8) != 0 ? null : str2);
    }
}
