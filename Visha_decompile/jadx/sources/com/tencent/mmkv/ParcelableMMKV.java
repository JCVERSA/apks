package com.tencent.mmkv;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.IOException;

public final class ParcelableMMKV implements Parcelable {
    public static final Parcelable.Creator<ParcelableMMKV> CREATOR = new a();
    private int ashmemFD;
    private int ashmemMetaFD;
    private String cryptKey;
    private final String mmapID;

    public class a implements Parcelable.Creator {
        @Override
        public ParcelableMMKV createFromParcel(Parcel parcel) {
            String string = parcel.readString();
            Parcelable.Creator creator = ParcelFileDescriptor.CREATOR;
            ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) creator.createFromParcel(parcel);
            ParcelFileDescriptor parcelFileDescriptor2 = (ParcelFileDescriptor) creator.createFromParcel(parcel);
            String string2 = parcel.readString();
            if (parcelFileDescriptor == null || parcelFileDescriptor2 == null) {
                return null;
            }
            return new ParcelableMMKV(string, parcelFileDescriptor.detachFd(), parcelFileDescriptor2.detachFd(), string2, null);
        }

        @Override
        public ParcelableMMKV[] newArray(int i) {
            return new ParcelableMMKV[i];
        }
    }

    public ParcelableMMKV(String str, int i, int i2, String str2, a aVar) {
        this(str, i, i2, str2);
    }

    @Override
    public int describeContents() {
        return 1;
    }

    @Nullable
    public MMKV toMMKV() {
        int i;
        int i2 = this.ashmemFD;
        if (i2 < 0 || (i = this.ashmemMetaFD) < 0) {
            return null;
        }
        return MMKV.F(this.mmapID, i2, i, this.cryptKey);
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        try {
            parcel.writeString(this.mmapID);
            ParcelFileDescriptor parcelFileDescriptorFromFd = ParcelFileDescriptor.fromFd(this.ashmemFD);
            ParcelFileDescriptor parcelFileDescriptorFromFd2 = ParcelFileDescriptor.fromFd(this.ashmemMetaFD);
            int i2 = i | 1;
            parcelFileDescriptorFromFd.writeToParcel(parcel, i2);
            parcelFileDescriptorFromFd2.writeToParcel(parcel, i2);
            String str = this.cryptKey;
            if (str != null) {
                parcel.writeString(str);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public ParcelableMMKV(@NonNull MMKV mmkv) {
        this.ashmemFD = -1;
        this.ashmemMetaFD = -1;
        this.cryptKey = null;
        this.mmapID = mmkv.mmapID();
        this.ashmemFD = mmkv.ashmemFD();
        this.ashmemMetaFD = mmkv.ashmemMetaFD();
        this.cryptKey = mmkv.cryptKey();
    }

    private ParcelableMMKV(String str, int i, int i2, String str2) {
        this.mmapID = str;
        this.ashmemFD = i;
        this.ashmemMetaFD = i2;
        this.cryptKey = str2;
    }
}
