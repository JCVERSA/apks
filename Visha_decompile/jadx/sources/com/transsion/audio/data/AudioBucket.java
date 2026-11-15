package com.transsion.audio.data;

import android.os.Parcel;
import android.os.Parcelable;

public class AudioBucket implements Parcelable {
    public static final Parcelable.Creator<AudioBucket> CREATOR = new Parcelable.Creator<AudioBucket>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public AudioBucket createFromParcel(Parcel parcel) {
            return new AudioBucket(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public AudioBucket[] newArray(int i) {
            return new AudioBucket[i];
        }
    };
    private String album_name;
    private String artist_name;
    private int cnt;
    private String folder_name;
    private String nplaylist_name;

    public AudioBucket() {
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public String getAlbum_name() {
        return this.album_name;
    }

    public String getArtist_name() {
        return this.artist_name;
    }

    public int getCnt() {
        return this.cnt;
    }

    public String getFolder_name() {
        return this.folder_name;
    }

    public String getNplaylist_name() {
        return this.nplaylist_name;
    }

    public void setAlbum_name(String str) {
        this.album_name = str;
    }

    public void setArtist_name(String str) {
        this.artist_name = str;
    }

    public void setCnt(int i) {
        this.cnt = i;
    }

    public void setFolder_name(String str) {
        this.folder_name = str;
    }

    public void setNplaylist_name(String str) {
        this.nplaylist_name = str;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.nplaylist_name);
        parcel.writeString(this.folder_name);
        parcel.writeString(this.album_name);
        parcel.writeString(this.artist_name);
        parcel.writeInt(this.cnt);
    }

    public AudioBucket(Parcel parcel) {
        this.nplaylist_name = parcel.readString();
        this.folder_name = parcel.readString();
        this.album_name = parcel.readString();
        this.artist_name = parcel.readString();
        this.cnt = parcel.readInt();
    }
}
