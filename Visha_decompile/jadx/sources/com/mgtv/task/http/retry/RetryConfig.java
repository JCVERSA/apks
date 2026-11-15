package com.mgtv.task.http.retry;

import android.os.Parcel;
import android.os.Parcelable;
import com.mgtv.json.JsonInterface;
import java.util.ArrayList;
import java.util.List;

public class RetryConfig implements Parcelable, JsonInterface {
    public static final Parcelable.Creator<RetryConfig> CREATOR = new Parcelable.Creator<RetryConfig>() {
        @Override
        public RetryConfig createFromParcel(Parcel parcel) {
            return new RetryConfig(parcel);
        }

        @Override
        public RetryConfig[] newArray(int i) {
            return new RetryConfig[i];
        }
    };
    public int backupHostTimeout;
    public int mainHostTimeout;
    public List<Entry> retryHosts;
    public int retryInterval;
    public int retryStatus;
    public List<String> specialPath;

    public RetryConfig() {
        this.retryHosts = new ArrayList();
        this.specialPath = new ArrayList();
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
        parcel.writeTypedList(this.retryHosts);
        parcel.writeStringList(this.specialPath);
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
        public List<String> backup;
        public String host;
        public List<String> scheme;

        public Entry() {
            this.backup = new ArrayList();
            this.scheme = new ArrayList();
        }

        @Override
        public int describeContents() {
            return 0;
        }

        @Override
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.host);
            parcel.writeStringList(this.backup);
            parcel.writeStringList(this.scheme);
        }

        public Entry(Parcel parcel) {
            this.backup = new ArrayList();
            this.scheme = new ArrayList();
            this.host = parcel.readString();
            this.backup = parcel.createStringArrayList();
            this.scheme = parcel.createStringArrayList();
        }
    }

    public RetryConfig(Parcel parcel) {
        this.retryHosts = new ArrayList();
        this.specialPath = new ArrayList();
        this.retryStatus = parcel.readInt();
        this.mainHostTimeout = parcel.readInt();
        this.backupHostTimeout = parcel.readInt();
        this.retryInterval = parcel.readInt();
        this.retryHosts = parcel.createTypedArrayList(Entry.CREATOR);
        this.specialPath = parcel.createStringArrayList();
    }
}
