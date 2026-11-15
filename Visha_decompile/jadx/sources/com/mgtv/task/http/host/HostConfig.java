package com.mgtv.task.http.host;

import android.os.Parcel;
import android.os.Parcelable;
import com.mgtv.json.JsonInterface;
import java.util.ArrayList;
import java.util.List;

public class HostConfig implements Parcelable, JsonInterface {
    public static final Parcelable.Creator<HostConfig> CREATOR = new Parcelable.Creator<HostConfig>() {
        @Override
        public HostConfig createFromParcel(Parcel parcel) {
            return new HostConfig(parcel);
        }

        @Override
        public HostConfig[] newArray(int i) {
            return new HostConfig[i];
        }
    };
    private static final long serialVersionUID = 672946727726805596L;
    public int backupHostTimeout;
    public int chemestatus;
    public int mainHostTimeout;
    public int masterStatus;
    public List<Entry> retryHosts;
    public int retryInterval;
    public int retryStatus;

    public HostConfig() {
        this.retryHosts = new ArrayList();
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.retryStatus);
        parcel.writeInt(this.mainHostTimeout);
        parcel.writeInt(this.backupHostTimeout);
        parcel.writeInt(this.retryInterval);
        parcel.writeInt(this.chemestatus);
        parcel.writeInt(this.masterStatus);
        parcel.writeTypedList(this.retryHosts);
    }

    public static class Entry implements Parcelable, JsonInterface {
        public static final Parcelable.Creator<Entry> CREATOR = new Parcelable.Creator<Entry>() {
            @Override
            public Entry createFromParcel(Parcel parcel) {
                return new Entry(parcel);
            }

            @Override
            public Entry[] newArray(int i) {
                return new Entry[i];
            }
        };
        private static final long serialVersionUID = -3815332132623834397L;
        public List<String> backup;
        public String host;
        public String master;

        public Entry() {
            this.backup = new ArrayList();
        }

        @Override
        public int describeContents() {
            return 0;
        }

        @Override
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.host);
            parcel.writeString(this.master);
            parcel.writeStringList(this.backup);
        }

        public Entry(Parcel parcel) {
            this.backup = new ArrayList();
            this.host = parcel.readString();
            this.master = parcel.readString();
            this.backup = parcel.createStringArrayList();
        }
    }

    public HostConfig(Parcel parcel) {
        this.retryHosts = new ArrayList();
        this.retryStatus = parcel.readInt();
        this.mainHostTimeout = parcel.readInt();
        this.backupHostTimeout = parcel.readInt();
        this.retryInterval = parcel.readInt();
        this.chemestatus = parcel.readInt();
        this.masterStatus = parcel.readInt();
        this.retryHosts = parcel.createTypedArrayList(Entry.CREATOR);
    }
}
