package com.transsion.dbdata.beans;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

public class PlayerStates implements Parcelable {
    public static final Parcelable.Creator<PlayerStates> CREATOR = new Parcelable.Creator<PlayerStates>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public PlayerStates createFromParcel(Parcel parcel) {
            return new PlayerStates(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public PlayerStates[] newArray(int i) {
            return new PlayerStates[i];
        }
    };
    public int currentPosition;
    public int state;
    public int subtitleIndex;
    public ArrayList subtitles;
    public int targetState;

    public PlayerStates() {
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "PlayStates{currentPosition=" + this.currentPosition + ", state=" + this.state + ", targetState=" + this.targetState + '}';
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.currentPosition);
        parcel.writeInt(this.state);
        parcel.writeInt(this.targetState);
    }

    public PlayerStates(Parcel parcel) {
        this.currentPosition = parcel.readInt();
        this.state = parcel.readInt();
        this.targetState = parcel.readInt();
    }
}
