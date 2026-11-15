package com.transsion.kolun.oxygenbus.common;

import android.os.Parcel;
import android.os.Parcelable;

public class ServiceEntity implements Parcelable {
    public static final Parcelable.Creator<ServiceEntity> CREATOR = new Parcelable.Creator<ServiceEntity>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public ServiceEntity createFromParcel(Parcel parcel) {
            return new ServiceEntity(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public ServiceEntity[] newArray(int i) {
            return new ServiceEntity[i];
        }
    };
    private String className;
    private String packageName;
    private String serviceName;

    public ServiceEntity(String str, String str2, String str3) {
        this.packageName = str;
        this.className = str2;
        this.serviceName = str3;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public String getClassName() {
        return this.className;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public String getServiceName() {
        return this.serviceName;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.packageName);
        parcel.writeString(this.className);
        parcel.writeString(this.serviceName);
    }

    public ServiceEntity(Parcel parcel) {
        this.packageName = parcel.readString();
        this.className = parcel.readString();
        this.serviceName = parcel.readString();
    }
}
