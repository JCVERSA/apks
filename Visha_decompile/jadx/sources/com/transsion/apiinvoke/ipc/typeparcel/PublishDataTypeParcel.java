package com.transsion.apiinvoke.ipc.typeparcel;

import android.os.Parcel;
import com.transsion.apiinvoke.ipc.ITypeParcel;
import com.transsion.apiinvoke.subscribe.PublishData;
import com.transsion.apiinvoke.subscribe.Publisher;

public class PublishDataTypeParcel implements ITypeParcel<PublishData> {
    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public PublishData readFormParcel(Parcel parcel, Class cls) {
        PublishData publishData = new PublishData();
        if (parcel.readInt() == 0) {
            return publishData;
        }
        Publisher publisher = new Publisher();
        publisher.host = new Publisher.Host(parcel.readString(), parcel.readString());
        publisher.matcher = parcel.readString();
        publishData.setPublisher(publisher);
        if (parcel.readInt() != 0) {
            publishData.setData(parcel.readSerializable());
        }
        return publishData;
    }

    @Override
    public void writeToParcel(Parcel parcel, Class cls, PublishData publishData, int i) {
        Publisher publisher = publishData.getPublisher();
        if (publisher == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        parcel.writeString(publisher.host.channel);
        parcel.writeString(publisher.host.apiName);
        parcel.writeString(publisher.matcher);
        if (publishData.getData() == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeSerializable(publishData.getData());
        }
    }
}
