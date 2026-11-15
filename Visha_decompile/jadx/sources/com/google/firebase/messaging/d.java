package com.google.firebase.messaging;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import defpackage.z09;

public class d implements Parcelable.Creator {
    public static void c(RemoteMessage remoteMessage, Parcel parcel, int i) {
        int iA = z09.a(parcel);
        z09.j(parcel, 2, remoteMessage.bundle, false);
        z09.b(parcel, iA);
    }

    @Override
    public RemoteMessage createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        Bundle bundleF = null;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            if (SafeParcelReader.v(iC) != 2) {
                SafeParcelReader.K(parcel, iC);
            } else {
                bundleF = SafeParcelReader.f(parcel, iC);
            }
        }
        SafeParcelReader.u(parcel, iL);
        return new RemoteMessage(bundleF);
    }

    @Override
    public RemoteMessage[] newArray(int i) {
        return new RemoteMessage[i];
    }
}
