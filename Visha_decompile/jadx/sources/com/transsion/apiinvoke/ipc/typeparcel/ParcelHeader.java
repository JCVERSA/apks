package com.transsion.apiinvoke.ipc.typeparcel;

import android.os.Parcel;
import com.transsion.apiinvoke.common.ApiInvokeLog;
import java.util.HashMap;
import java.util.Map;

public final class ParcelHeader {
    public static final int VERSION = 2;
    private int version = 2;
    private HashMap<String, String> extras = new HashMap<>();

    public static ParcelHeader empty() {
        ParcelHeader parcelHeader = new ParcelHeader();
        parcelHeader.version = 1;
        return parcelHeader;
    }

    public static ParcelHeader readParcelHeader(Parcel parcel) {
        ParcelHeader parcelHeader = new ParcelHeader();
        parcelHeader.version = parcel.readInt();
        int i = parcel.readInt();
        if (i <= 0) {
            return parcelHeader;
        }
        for (int i2 = 0; i2 < i; i2++) {
            parcelHeader.extras.put(parcel.readString(), parcel.readString());
        }
        return parcelHeader;
    }

    public void addHeader(String str, String str2) {
        this.extras.put(str, str2);
        ApiInvokeLog.logInfo("ParcelHeader", "addHeader : key " + str + " header " + str2);
    }

    public HashMap<String, String> extras() {
        return this.extras;
    }

    public String getExtra(String str) {
        return this.extras.get(str);
    }

    public void removeHeader(String str) {
        this.extras.remove(str);
        ApiInvokeLog.logInfo("ParcelHeader", "removeHeader : key " + str);
    }

    public int version() {
        return this.version;
    }

    public void writeParcelHeader(Parcel parcel, ParcelHeader parcelHeader) {
        parcel.writeInt(parcelHeader.version());
        HashMap<String, String> mapExtras = parcelHeader.extras();
        if (mapExtras == null || mapExtras.isEmpty()) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(mapExtras.size());
        for (Map.Entry<String, String> entry : mapExtras.entrySet()) {
            parcel.writeString(entry.getKey());
            parcel.writeString(entry.getValue());
        }
    }
}
