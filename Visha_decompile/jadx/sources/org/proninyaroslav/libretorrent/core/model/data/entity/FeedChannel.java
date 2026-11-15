package org.proninyaroslav.libretorrent.core.model.data.entity;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.room.Entity;
import androidx.room.Ignore;
import androidx.room.PrimaryKey;
import java.text.DateFormat;
import java.util.Date;

@Entity
public class FeedChannel implements Parcelable {
    public static final Parcelable.Creator<FeedChannel> CREATOR = new Parcelable.Creator<FeedChannel>() {
        @Override
        public FeedChannel createFromParcel(Parcel parcel) {
            return new FeedChannel(parcel);
        }

        @Override
        public FeedChannel[] newArray(int i) {
            return new FeedChannel[i];
        }
    };
    public boolean autoDownload;
    public String fetchError;
    public String filter;

    @PrimaryKey(autoGenerate = true)
    public long id;
    public boolean isRegexFilter;
    public long lastUpdate;
    public String name;

    @NonNull
    public String url;

    public FeedChannel(@NonNull String str, String str2, long j, boolean z, String str3, boolean z2, String str4) {
        this.url = str;
        this.name = str2;
        this.lastUpdate = j;
        this.autoDownload = z;
        this.filter = str3;
        this.isRegexFilter = z2;
        this.fetchError = str4;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        return (obj instanceof FeedChannel) && (obj == this || this.id == ((FeedChannel) obj).id);
    }

    public int hashCode() {
        long j = this.id;
        return (int) (j ^ (j >>> 32));
    }

    @NonNull
    public String toString() {
        return "FeedChannel{id='" + this.id + "', name='" + this.name + "', url='" + this.url + "', lastUpdate=" + DateFormat.getDateTimeInstance().format(new Date(this.lastUpdate)) + ", autoDownload=" + this.autoDownload + ", filter='" + this.filter + "', isRegexFilter=" + this.isRegexFilter + ", fetchError='" + this.fetchError + "'}";
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.id);
        parcel.writeString(this.url);
        parcel.writeString(this.name);
        parcel.writeLong(this.lastUpdate);
        parcel.writeByte(this.autoDownload ? (byte) 1 : (byte) 0);
        parcel.writeString(this.filter);
        parcel.writeByte(this.isRegexFilter ? (byte) 1 : (byte) 0);
        parcel.writeString(this.fetchError);
    }

    @Ignore
    public FeedChannel(@NonNull String str) {
        this.autoDownload = false;
        this.isRegexFilter = false;
        this.url = str;
    }

    @Ignore
    public FeedChannel(Parcel parcel) {
        this.autoDownload = false;
        this.isRegexFilter = false;
        this.id = parcel.readLong();
        this.url = parcel.readString();
        this.name = parcel.readString();
        this.lastUpdate = parcel.readLong();
        this.autoDownload = parcel.readByte() != 0;
        this.filter = parcel.readString();
        this.isRegexFilter = parcel.readByte() != 0;
        this.fetchError = parcel.readString();
    }
}
