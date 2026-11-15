package com.transsion.visha.ai;

import android.os.Parcel;
import android.os.Parcelable;
import com.transsion.dbdata.beans.media.PlayAudioData;

public class AudioData implements Parcelable {
    public static final Parcelable.Creator<AudioData> CREATOR = new a();
    public PlayAudioData data;

    public class a implements Parcelable.Creator {
        @Override
        public AudioData createFromParcel(Parcel parcel) {
            return new AudioData(parcel);
        }

        @Override
        public AudioData[] newArray(int i) {
            return new AudioData[i];
        }
    }

    public AudioData(PlayAudioData playAudioData) {
        this.data = playAudioData;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public PlayAudioData getData() {
        return this.data;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.data, i);
    }

    public AudioData() {
    }

    public AudioData(Parcel parcel) {
        this.data = (PlayAudioData) parcel.readParcelable(PlayAudioData.class.getClassLoader());
    }
}
