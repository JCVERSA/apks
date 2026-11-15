package com.transsion.dbdata.beans.mimedia;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.audiotagger.tag.id3.AbstractID3v1Tag;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.media.PlayVideoData;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0013\u0018\u0000 *2\u00020\u0001:\u0002*+B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003B\u0011\b\u0012\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0002\u0010\u0006J\r\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\r\u0010\fJ\u000f\u0010\u000e\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u000e\u0010\fJ\u000f\u0010\u000f\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u000f\u0010\fJ\u000f\u0010\u0010\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0010\u0010\fJ\u000f\u0010\u0012\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0016\u001a\u00020\u00152\b\u0010\u0014\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b\u0016\u0010\u0017J\u001f\u0010\u001b\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\nH\u0016¢\u0006\u0004\b\u001f\u0010\fR\u0016\u0010 \u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!R\u0018\u0010\"\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R\u0018\u0010$\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010#R\u0018\u0010%\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010#R\u0018\u0010&\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010#R\u0018\u0010'\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010#R\u0018\u0010(\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)¨\u0006,"}, d2 = {"Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;", "Landroid/os/Parcelable;", MethodDecl.initName, "()V", "Landroid/os/Parcel;", "source", "(Landroid/os/Parcel;)V", "", "isMediaNeedRecordPlayInfo", "()Z", "", "getMediaLibraryId", "()Ljava/lang/String;", "geMediaLibraryTitle", "getVideoId", "getCoverUri", "getVideoTitle", "Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;", "getMIMediaVideoPlayItemInfo", "()Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;", "itemInfo", "Lzfb;", "setMIMediaVideoPlayItemInfo", "(Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;)V", "dest", "", "flags", "writeToParcel", "(Landroid/os/Parcel;I)V", "describeContents", "()I", "toString", "mediaNeedRecordPlayInfo", "Z", "mediaLibraryId", "Ljava/lang/String;", "mediaLibraryTitle", "videoId", "coverUri", "videoTitle", "miMediaVideoPlayItemInfo", "Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayItemInfo;", "Companion", "Builder", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MIMediaInfo implements Parcelable {
    private static final String TAG = "MIMediaInfo";
    private String coverUri;
    private String mediaLibraryId;
    private String mediaLibraryTitle;
    private boolean mediaNeedRecordPlayInfo;
    private MIMediaVideoPlayItemInfo miMediaVideoPlayItemInfo;
    private String videoId;
    private String videoTitle;

    public static final Companion INSTANCE = new Companion(null);
    public static final Parcelable.Creator<MIMediaInfo> CREATOR = new Parcelable.Creator<MIMediaInfo>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public MIMediaInfo createFromParcel(Parcel source) {
            y45.j(source, "source");
            return new MIMediaInfo(source, null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public MIMediaInfo[] newArray(int size) {
            return new MIMediaInfo[size];
        }
    };

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\bJ\u0010\u0010\t\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\f\u001a\u00020\u00002\b\u0010\r\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u000e\u001a\u00020\u00002\b\u0010\u000f\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u0010\u001a\u00020\u00002\b\u0010\u0011\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u0012\u001a\u00020\u00002\b\u0010\u0013\u001a\u0004\u0018\u00010\u000bJ\u0006\u0010\u0014\u001a\u00020\u0005R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;", "", MethodDecl.initName, "()V", "mediaInfo", "Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;", "setNeedRecordPlayInfo", "collectFlag", "", "setMediaLibraryId", "mediaLibraryId", "", "setMediaLibraryTitle", "mediaLibraryTitle", "setVideoId", "videoId", "setCoverUri", "coverUri", "setVideoTitle", "videoTitle", "build", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Builder {
        private final MIMediaInfo mediaInfo = new MIMediaInfo((DefaultConstructorMarker) null);

        public final MIMediaInfo getMediaInfo() {
            return this.mediaInfo;
        }

        public final Builder setCoverUri(String coverUri) {
            this.mediaInfo.coverUri = coverUri;
            return this;
        }

        public final Builder setMediaLibraryId(String mediaLibraryId) {
            this.mediaInfo.mediaLibraryId = mediaLibraryId;
            return this;
        }

        public final Builder setMediaLibraryTitle(String mediaLibraryTitle) {
            this.mediaInfo.mediaLibraryTitle = mediaLibraryTitle;
            return this;
        }

        public final Builder setNeedRecordPlayInfo(boolean collectFlag) {
            this.mediaInfo.mediaNeedRecordPlayInfo = collectFlag;
            return this;
        }

        public final Builder setVideoId(String videoId) {
            this.mediaInfo.videoId = videoId;
            return this;
        }

        public final Builder setVideoTitle(String videoTitle) {
            this.mediaInfo.videoTitle = videoTitle;
            return this;
        }
    }

    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0007J\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0007J\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u00072\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u0016\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00070\u00128\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Companion;", "", MethodDecl.initName, "()V", AbstractID3v1Tag.TAG, "", "fromMediaItem", "Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;", "mediaItem", "Lcom/transsion/dbdata/beans/media/MediaItem;", "fromPlayVideoData", "Landroid/os/Parcelable;", "playVideoData", "Lcom/transsion/dbdata/beans/media/PlayVideoData;", "fromIntent", "intent", "Landroid/content/Intent;", "CREATOR", "Landroid/os/Parcelable$Creator;", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final MIMediaInfo fromIntent(Intent intent) {
            if (intent == null) {
                return null;
            }
            try {
                return (MIMediaInfo) intent.getParcelableExtra("mi_media_info");
            } catch (Exception e) {
                LogUtils.l(MIMediaInfo.TAG, "Failed to get MIMediaInfo from intent: " + e.getMessage());
                return null;
            }
        }

        public final MIMediaInfo fromMediaItem(MediaItem mediaItem) {
            if (mediaItem == null) {
                return null;
            }
            MIMediaInfo miMediaInfo = mediaItem.getMiMediaInfo();
            return miMediaInfo != null ? miMediaInfo : new Builder().setVideoTitle(mediaItem.getDisplayName()).setVideoId(mediaItem.data).getMediaInfo();
        }

        public final Parcelable fromPlayVideoData(PlayVideoData playVideoData) {
            if (playVideoData == null) {
                return null;
            }
            MIMediaInfo miMediaInfo = playVideoData.getMiMediaInfo();
            return miMediaInfo != null ? miMediaInfo : new Builder().setVideoTitle(playVideoData.mDisplayName).setVideoId(playVideoData.path).setVideoTitle(playVideoData.playTitle).getMediaInfo();
        }

        private Companion() {
        }
    }

    public MIMediaInfo(Parcel parcel, DefaultConstructorMarker defaultConstructorMarker) {
        this(parcel);
    }

    public static final MIMediaInfo fromIntent(Intent intent) {
        return INSTANCE.fromIntent(intent);
    }

    public static final MIMediaInfo fromMediaItem(MediaItem mediaItem) {
        return INSTANCE.fromMediaItem(mediaItem);
    }

    public static final Parcelable fromPlayVideoData(PlayVideoData playVideoData) {
        return INSTANCE.fromPlayVideoData(playVideoData);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public final String getMediaLibraryTitle() {
        return this.mediaLibraryTitle;
    }

    public final String getCoverUri() {
        return this.coverUri;
    }

    public final MIMediaVideoPlayItemInfo getMiMediaVideoPlayItemInfo() {
        return this.miMediaVideoPlayItemInfo;
    }

    public final String getMediaLibraryId() {
        return this.mediaLibraryId;
    }

    public final String getVideoId() {
        return this.videoId;
    }

    public final String getVideoTitle() {
        return this.videoTitle;
    }

    public final boolean getMediaNeedRecordPlayInfo() {
        return this.mediaNeedRecordPlayInfo;
    }

    public final void setMIMediaVideoPlayItemInfo(MIMediaVideoPlayItemInfo itemInfo) {
        this.miMediaVideoPlayItemInfo = itemInfo;
    }

    public String toString() {
        return "MIMediaInfo(mediaNeedRecordPlayInfo=" + this.mediaNeedRecordPlayInfo + ", mediaLibraryId='" + this.mediaLibraryId + "', mediaLibraryTitle='" + this.mediaLibraryTitle + "', videoId='" + this.videoId + "', coverUri='" + this.coverUri + "', videoTitle='" + this.videoTitle + "',  " + this.miMediaVideoPlayItemInfo + "')";
    }

    @Override
    public void writeToParcel(Parcel dest, int flags) {
        y45.j(dest, "dest");
        dest.writeByte(this.mediaNeedRecordPlayInfo ? (byte) 1 : (byte) 0);
        dest.writeString(this.mediaLibraryId);
        dest.writeString(this.mediaLibraryTitle);
        dest.writeString(this.videoId);
        dest.writeString(this.coverUri);
        dest.writeString(this.videoTitle);
        dest.writeParcelable(this.miMediaVideoPlayItemInfo, flags);
    }

    public MIMediaInfo(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private MIMediaInfo() {
    }

    private MIMediaInfo(Parcel parcel) {
        this();
        this.mediaNeedRecordPlayInfo = parcel.readByte() != 0;
        this.mediaLibraryId = parcel.readString();
        this.mediaLibraryTitle = parcel.readString();
        this.videoId = parcel.readString();
        this.coverUri = parcel.readString();
        this.videoTitle = parcel.readString();
        this.miMediaVideoPlayItemInfo = (MIMediaVideoPlayItemInfo) parcel.readParcelable(MIMediaVideoPlayItemInfo.class.getClassLoader());
    }
}
