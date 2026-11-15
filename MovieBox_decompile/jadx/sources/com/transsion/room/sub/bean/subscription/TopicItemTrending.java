package com.transsion.room.sub.bean.subscription;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Keep
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B7\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\n\u0010\u000bJ\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\tHÆ\u0003J9\u0010 \u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\tHÆ\u0001J\u0006\u0010!\u001a\u00020\"J\u0013\u0010#\u001a\u00020$2\b\u0010%\u001a\u0004\u0018\u00010&HÖ\u0003J\t\u0010'\u001a\u00020\"HÖ\u0001J\t\u0010(\u001a\u00020\u0003HÖ\u0001J\u0016\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020\"R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001c\u0010\b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001b¨\u0006."}, d2 = {"Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;", "Landroid/os/Parcelable;", "topicType", "", "video", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;", "collection", "Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;", "verticalRank", "Lcom/transsion/room/sub/bean/subscription/VerticalRankItemTrending;", "<init>", "(Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;Lcom/transsion/room/sub/bean/subscription/VerticalRankItemTrending;)V", "getTopicType", "()Ljava/lang/String;", "setTopicType", "(Ljava/lang/String;)V", "getVideo", "()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;", "setVideo", "(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V", "getCollection", "()Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;", "setCollection", "(Lcom/transsion/room/sub/bean/subscription/CollectionItemTrending;)V", "getVerticalRank", "()Lcom/transsion/room/sub/bean/subscription/VerticalRankItemTrending;", "setVerticalRank", "(Lcom/transsion/room/sub/bean/subscription/VerticalRankItemTrending;)V", "component1", "component2", "component3", "component4", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Room_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class TopicItemTrending implements Parcelable {
    public static final Parcelable.Creator<TopicItemTrending> CREATOR = new a();
    private CollectionItemTrending collection;
    private String topicType;
    private VerticalRankItemTrending verticalRank;
    private UGCVideo video;

    public static final class a implements Parcelable.Creator {
        @Override
        public final TopicItemTrending createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new TopicItemTrending(parcel.readString(), (UGCVideo) parcel.readSerializable(), parcel.readInt() == 0 ? null : CollectionItemTrending.CREATOR.createFromParcel(parcel), parcel.readInt() != 0 ? VerticalRankItemTrending.CREATOR.createFromParcel(parcel) : null);
        }

        @Override
        public final TopicItemTrending[] newArray(int i10) {
            return new TopicItemTrending[i10];
        }
    }

    public TopicItemTrending() {
        this(null, null, null, null, 15, null);
    }

    public static TopicItemTrending copy$default(TopicItemTrending topicItemTrending, String str, UGCVideo uGCVideo, CollectionItemTrending collectionItemTrending, VerticalRankItemTrending verticalRankItemTrending, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = topicItemTrending.topicType;
        }
        if ((i10 & 2) != 0) {
            uGCVideo = topicItemTrending.video;
        }
        if ((i10 & 4) != 0) {
            collectionItemTrending = topicItemTrending.collection;
        }
        if ((i10 & 8) != 0) {
            verticalRankItemTrending = topicItemTrending.verticalRank;
        }
        return topicItemTrending.copy(str, uGCVideo, collectionItemTrending, verticalRankItemTrending);
    }

    public final String getTopicType() {
        return this.topicType;
    }

    public final UGCVideo getVideo() {
        return this.video;
    }

    public final CollectionItemTrending getCollection() {
        return this.collection;
    }

    public final VerticalRankItemTrending getVerticalRank() {
        return this.verticalRank;
    }

    public final TopicItemTrending copy(String topicType, UGCVideo video, CollectionItemTrending collection, VerticalRankItemTrending verticalRank) {
        return new TopicItemTrending(topicType, video, collection, verticalRank);
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TopicItemTrending)) {
            return false;
        }
        TopicItemTrending topicItemTrending = (TopicItemTrending) other;
        return Intrinsics.c(this.topicType, topicItemTrending.topicType) && Intrinsics.c(this.video, topicItemTrending.video) && Intrinsics.c(this.collection, topicItemTrending.collection) && Intrinsics.c(this.verticalRank, topicItemTrending.verticalRank);
    }

    public final CollectionItemTrending getCollection() {
        return this.collection;
    }

    public final String getTopicType() {
        return this.topicType;
    }

    public final VerticalRankItemTrending getVerticalRank() {
        return this.verticalRank;
    }

    public final UGCVideo getVideo() {
        return this.video;
    }

    public int hashCode() {
        String str = this.topicType;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        UGCVideo uGCVideo = this.video;
        int iHashCode2 = (iHashCode + (uGCVideo == null ? 0 : uGCVideo.hashCode())) * 31;
        CollectionItemTrending collectionItemTrending = this.collection;
        int iHashCode3 = (iHashCode2 + (collectionItemTrending == null ? 0 : collectionItemTrending.hashCode())) * 31;
        VerticalRankItemTrending verticalRankItemTrending = this.verticalRank;
        return iHashCode3 + (verticalRankItemTrending != null ? verticalRankItemTrending.hashCode() : 0);
    }

    public final void setCollection(CollectionItemTrending collectionItemTrending) {
        this.collection = collectionItemTrending;
    }

    public final void setTopicType(String str) {
        this.topicType = str;
    }

    public final void setVerticalRank(VerticalRankItemTrending verticalRankItemTrending) {
        this.verticalRank = verticalRankItemTrending;
    }

    public final void setVideo(UGCVideo uGCVideo) {
        this.video = uGCVideo;
    }

    public String toString() {
        return "TopicItemTrending(topicType=" + this.topicType + ", video=" + this.video + ", collection=" + this.collection + ", verticalRank=" + this.verticalRank + ")";
    }

    @Override
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.topicType);
        dest.writeSerializable(this.video);
        CollectionItemTrending collectionItemTrending = this.collection;
        if (collectionItemTrending == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            collectionItemTrending.writeToParcel(dest, flags);
        }
        VerticalRankItemTrending verticalRankItemTrending = this.verticalRank;
        if (verticalRankItemTrending == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            verticalRankItemTrending.writeToParcel(dest, flags);
        }
    }

    public TopicItemTrending(String str, UGCVideo uGCVideo, CollectionItemTrending collectionItemTrending, VerticalRankItemTrending verticalRankItemTrending) {
        this.topicType = str;
        this.video = uGCVideo;
        this.collection = collectionItemTrending;
        this.verticalRank = verticalRankItemTrending;
    }

    public TopicItemTrending(String str, UGCVideo uGCVideo, CollectionItemTrending collectionItemTrending, VerticalRankItemTrending verticalRankItemTrending, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : str, (i10 & 2) != 0 ? null : uGCVideo, (i10 & 4) != 0 ? null : collectionItemTrending, (i10 & 8) != 0 ? null : verticalRankItemTrending);
    }
}
