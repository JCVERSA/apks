package com.transsion.push.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Keep
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u001f\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B[\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\f\u0010\rJ\u000b\u0010\"\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010'\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010(\u001a\u0004\u0018\u00010\u000bHÆ\u0003J]\u0010)\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000bHÆ\u0001J\u0006\u0010*\u001a\u00020+J\u0013\u0010,\u001a\u00020-2\b\u0010.\u001a\u0004\u0018\u00010/HÖ\u0003J\t\u00100\u001a\u00020+HÖ\u0001J\t\u00101\u001a\u00020\u0003HÖ\u0001J\u0016\u00102\u001a\u0002032\u0006\u00104\u001a\u0002052\u0006\u00106\u001a\u00020+R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u000f\"\u0004\b\u0013\u0010\u0011R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u000f\"\u0004\b\u0015\u0010\u0011R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001c\u0010\b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u000f\"\u0004\b\u001b\u0010\u0011R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u000f\"\u0004\b\u001d\u0010\u0011R\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!¨\u00067"}, d2 = {"Lcom/transsion/push/bean/PlaySourceMatchMatch;", "Landroid/os/Parcelable;", CampaignEx.JSON_KEY_TITLE, "", "path", "id", "cover", "Lcom/transsion/push/bean/CoverInfoMatch;", "duration", "createTime", "stat", "Lcom/transsion/push/bean/StatInfoMatch;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/push/bean/CoverInfoMatch;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/push/bean/StatInfoMatch;)V", "getTitle", "()Ljava/lang/String;", "setTitle", "(Ljava/lang/String;)V", "getPath", "setPath", "getId", "setId", "getCover", "()Lcom/transsion/push/bean/CoverInfoMatch;", "setCover", "(Lcom/transsion/push/bean/CoverInfoMatch;)V", "getDuration", "setDuration", "getCreateTime", "setCreateTime", "getStat", "()Lcom/transsion/push/bean/StatInfoMatch;", "setStat", "(Lcom/transsion/push/bean/StatInfoMatch;)V", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "push_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class PlaySourceMatchMatch implements Parcelable {
    public static final Parcelable.Creator<PlaySourceMatchMatch> CREATOR = new Creator();
    private CoverInfoMatch cover;
    private String createTime;
    private String duration;
    private String id;
    private String path;
    private StatInfoMatch stat;
    private String title;

    @Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Creator implements Parcelable.Creator<PlaySourceMatchMatch> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public final PlaySourceMatchMatch createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new PlaySourceMatchMatch(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() == 0 ? null : CoverInfoMatch.CREATOR.createFromParcel(parcel), parcel.readString(), parcel.readString(), parcel.readInt() != 0 ? StatInfoMatch.CREATOR.createFromParcel(parcel) : null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public final PlaySourceMatchMatch[] newArray(int i10) {
            return new PlaySourceMatchMatch[i10];
        }
    }

    public PlaySourceMatchMatch() {
        this(null, null, null, null, null, null, null, 127, null);
    }

    public static PlaySourceMatchMatch copy$default(PlaySourceMatchMatch playSourceMatchMatch, String str, String str2, String str3, CoverInfoMatch coverInfoMatch, String str4, String str5, StatInfoMatch statInfoMatch, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = playSourceMatchMatch.title;
        }
        if ((i10 & 2) != 0) {
            str2 = playSourceMatchMatch.path;
        }
        String str6 = str2;
        if ((i10 & 4) != 0) {
            str3 = playSourceMatchMatch.id;
        }
        String str7 = str3;
        if ((i10 & 8) != 0) {
            coverInfoMatch = playSourceMatchMatch.cover;
        }
        CoverInfoMatch coverInfoMatch2 = coverInfoMatch;
        if ((i10 & 16) != 0) {
            str4 = playSourceMatchMatch.duration;
        }
        String str8 = str4;
        if ((i10 & 32) != 0) {
            str5 = playSourceMatchMatch.createTime;
        }
        String str9 = str5;
        if ((i10 & 64) != 0) {
            statInfoMatch = playSourceMatchMatch.stat;
        }
        return playSourceMatchMatch.copy(str, str6, str7, coverInfoMatch2, str8, str9, statInfoMatch);
    }

    public final String getTitle() {
        return this.title;
    }

    public final String getPath() {
        return this.path;
    }

    public final String getId() {
        return this.id;
    }

    public final CoverInfoMatch getCover() {
        return this.cover;
    }

    public final String getDuration() {
        return this.duration;
    }

    public final String getCreateTime() {
        return this.createTime;
    }

    public final StatInfoMatch getStat() {
        return this.stat;
    }

    public final PlaySourceMatchMatch copy(String title, String path, String id2, CoverInfoMatch cover, String duration, String createTime, StatInfoMatch stat) {
        return new PlaySourceMatchMatch(title, path, id2, cover, duration, createTime, stat);
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PlaySourceMatchMatch)) {
            return false;
        }
        PlaySourceMatchMatch playSourceMatchMatch = (PlaySourceMatchMatch) other;
        return Intrinsics.c(this.title, playSourceMatchMatch.title) && Intrinsics.c(this.path, playSourceMatchMatch.path) && Intrinsics.c(this.id, playSourceMatchMatch.id) && Intrinsics.c(this.cover, playSourceMatchMatch.cover) && Intrinsics.c(this.duration, playSourceMatchMatch.duration) && Intrinsics.c(this.createTime, playSourceMatchMatch.createTime) && Intrinsics.c(this.stat, playSourceMatchMatch.stat);
    }

    public final CoverInfoMatch getCover() {
        return this.cover;
    }

    public final String getCreateTime() {
        return this.createTime;
    }

    public final String getDuration() {
        return this.duration;
    }

    public final String getId() {
        return this.id;
    }

    public final String getPath() {
        return this.path;
    }

    public final StatInfoMatch getStat() {
        return this.stat;
    }

    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        String str = this.title;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.path;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.id;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        CoverInfoMatch coverInfoMatch = this.cover;
        int iHashCode4 = (iHashCode3 + (coverInfoMatch == null ? 0 : coverInfoMatch.hashCode())) * 31;
        String str4 = this.duration;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.createTime;
        int iHashCode6 = (iHashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
        StatInfoMatch statInfoMatch = this.stat;
        return iHashCode6 + (statInfoMatch != null ? statInfoMatch.hashCode() : 0);
    }

    public final void setCover(CoverInfoMatch coverInfoMatch) {
        this.cover = coverInfoMatch;
    }

    public final void setCreateTime(String str) {
        this.createTime = str;
    }

    public final void setDuration(String str) {
        this.duration = str;
    }

    public final void setId(String str) {
        this.id = str;
    }

    public final void setPath(String str) {
        this.path = str;
    }

    public final void setStat(StatInfoMatch statInfoMatch) {
        this.stat = statInfoMatch;
    }

    public final void setTitle(String str) {
        this.title = str;
    }

    public String toString() {
        return "PlaySourceMatchMatch(title=" + this.title + ", path=" + this.path + ", id=" + this.id + ", cover=" + this.cover + ", duration=" + this.duration + ", createTime=" + this.createTime + ", stat=" + this.stat + ")";
    }

    @Override
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.title);
        dest.writeString(this.path);
        dest.writeString(this.id);
        CoverInfoMatch coverInfoMatch = this.cover;
        if (coverInfoMatch == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            coverInfoMatch.writeToParcel(dest, flags);
        }
        dest.writeString(this.duration);
        dest.writeString(this.createTime);
        StatInfoMatch statInfoMatch = this.stat;
        if (statInfoMatch == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            statInfoMatch.writeToParcel(dest, flags);
        }
    }

    public PlaySourceMatchMatch(String str, String str2, String str3, CoverInfoMatch coverInfoMatch, String str4, String str5, StatInfoMatch statInfoMatch) {
        this.title = str;
        this.path = str2;
        this.id = str3;
        this.cover = coverInfoMatch;
        this.duration = str4;
        this.createTime = str5;
        this.stat = statInfoMatch;
    }

    public PlaySourceMatchMatch(String str, String str2, String str3, CoverInfoMatch coverInfoMatch, String str4, String str5, StatInfoMatch statInfoMatch, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : str, (i10 & 2) != 0 ? null : str2, (i10 & 4) != 0 ? null : str3, (i10 & 8) != 0 ? null : coverInfoMatch, (i10 & 16) != 0 ? null : str4, (i10 & 32) != 0 ? null : str5, (i10 & 64) != 0 ? null : statInfoMatch);
    }
}
