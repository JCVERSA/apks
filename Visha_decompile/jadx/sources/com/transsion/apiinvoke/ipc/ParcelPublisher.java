package com.transsion.apiinvoke.ipc;

import android.os.Parcel;
import android.os.Parcelable;
import com.transsion.apiinvoke.subscribe.Publisher;
import io.appmetrica.analytics.coreutils.internal.StringUtils;

public class ParcelPublisher implements Parcelable {
    public static final Parcelable.Creator<ParcelPublisher> CREATOR = new Parcelable.Creator<ParcelPublisher>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public ParcelPublisher createFromParcel(Parcel parcel) {
            return new ParcelPublisher(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public ParcelPublisher[] newArray(int i) {
            return new ParcelPublisher[i];
        }
    };
    private static final int VERSION = 1;
    private Publisher publisher;
    public int version;

    public ParcelPublisher(Publisher publisher) {
        this.version = 0;
        this.publisher = publisher;
    }

    @Override
    public int describeContents() {
        return 1;
    }

    public Publisher getPublisher() {
        return this.publisher;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString("version:1");
        parcel.writeSerializable(this.publisher);
    }

    public ParcelPublisher(Parcel parcel) {
        this.version = 0;
        this.publisher = new Publisher();
        String string = parcel.readString();
        if (string.contains(StringUtils.PROCESS_POSTFIX_DELIMITER)) {
            this.version = Integer.parseInt(string.split(StringUtils.PROCESS_POSTFIX_DELIMITER)[1]);
            this.publisher = (Publisher) parcel.readSerializable();
        } else {
            this.publisher.host = new Publisher.Host(string, parcel.readString());
            this.publisher.matcher = parcel.readString();
        }
    }
}
