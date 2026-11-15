package org.proninyaroslav.libretorrent.core.model.data.entity;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.room.Entity;
import androidx.room.Ignore;
import androidx.room.PrimaryKey;

@Entity
public class TagInfo implements Parcelable {
    public static final Parcelable.Creator<TagInfo> CREATOR = new Parcelable.Creator<TagInfo>() {
        @Override
        public TagInfo createFromParcel(Parcel parcel) {
            return new TagInfo(parcel);
        }

        @Override
        public TagInfo[] newArray(int i) {
            return new TagInfo[i];
        }
    };
    public final int color;

    @PrimaryKey(autoGenerate = true)
    public long id;

    @NonNull
    public final String name;

    public TagInfo(long j, @NonNull String str, int i) {
        this.id = j;
        this.name = str;
        this.color = i;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        TagInfo tagInfo = (TagInfo) obj;
        if (this.id == tagInfo.id && this.color == tagInfo.color) {
            return this.name.equals(tagInfo.name);
        }
        return false;
    }

    public int hashCode() {
        long j = this.id;
        return (((((int) (j ^ (j >>> 32))) * 31) + this.name.hashCode()) * 31) + this.color;
    }

    @NonNull
    public String toString() {
        return "TagInfo{id=" + this.id + ", name='" + this.name + "', color=" + this.color + '}';
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.id);
        parcel.writeString(this.name);
        parcel.writeInt(this.color);
    }

    @Ignore
    public TagInfo(@NonNull String str, int i) {
        this.name = str;
        this.color = i;
    }

    @Ignore
    public TagInfo(Parcel parcel) {
        this.id = parcel.readLong();
        this.name = parcel.readString();
        this.color = parcel.readInt();
    }
}
