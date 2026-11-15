package org.proninyaroslav.libretorrent.core.model.data.entity;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.room.Entity;
import androidx.room.ForeignKey;
import androidx.room.Ignore;
import androidx.room.Index;
import androidx.room.PrimaryKey;
import java.text.DateFormat;
import java.util.Date;

@Entity(foreignKeys = {@ForeignKey(childColumns = {"feedId"}, entity = FeedChannel.class, onDelete = 5, parentColumns = {TtmlNode.ATTR_ID})}, indices = {@Index({"feedId"})})
public class FeedItem implements Parcelable {
    public static final Parcelable.Creator<FeedItem> CREATOR = new Parcelable.Creator<FeedItem>() {
        @Override
        public FeedItem createFromParcel(Parcel parcel) {
            return new FeedItem(parcel);
        }

        @Override
        public FeedItem[] newArray(int i) {
            return new FeedItem[i];
        }
    };
    public String articleUrl;
    public String downloadUrl;
    public long feedId;
    public long fetchDate;

    @NonNull
    @PrimaryKey
    public String id;
    public long pubDate;
    public boolean read;

    @NonNull
    public String title;

    public FeedItem(@NonNull String str, long j, String str2, String str3, @NonNull String str4, long j2) {
        this.read = false;
        this.id = str;
        this.feedId = j;
        this.downloadUrl = str2;
        this.articleUrl = str3;
        this.title = str4;
        this.pubDate = j2;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        return (obj instanceof FeedItem) && (obj == this || this.id.equals(((FeedItem) obj).id));
    }

    public int hashCode() {
        return this.id.hashCode();
    }

    @NonNull
    public String toString() {
        return "FeedItem{id=" + this.id + "feedId='" + this.feedId + "', title='" + this.title + "', downloadUrl='" + this.downloadUrl + "', articleUrl='" + this.articleUrl + "', pubDate=" + DateFormat.getDateTimeInstance().format(new Date(this.pubDate)) + ", fetchDate=" + DateFormat.getDateTimeInstance().format(new Date(this.fetchDate)) + ", read=" + this.read + '}';
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.id);
        parcel.writeLong(this.feedId);
        parcel.writeString(this.downloadUrl);
        parcel.writeString(this.articleUrl);
        parcel.writeString(this.title);
        parcel.writeLong(this.pubDate);
        parcel.writeLong(this.fetchDate);
        parcel.writeInt(this.read ? (byte) 1 : (byte) 0);
    }

    @Ignore
    public FeedItem(long j, String str, String str2, @NonNull String str3, long j2) {
        this(j + "_" + str3, j, str, str2, str3, j2);
    }

    @Ignore
    public FeedItem(Parcel parcel) {
        this.read = false;
        this.id = parcel.readString();
        this.feedId = parcel.readLong();
        this.downloadUrl = parcel.readString();
        this.articleUrl = parcel.readString();
        this.title = parcel.readString();
        this.pubDate = parcel.readLong();
        this.fetchDate = parcel.readLong();
        this.read = parcel.readByte() != 0;
    }
}
