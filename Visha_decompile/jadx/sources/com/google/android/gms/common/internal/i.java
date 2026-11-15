package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import defpackage.z09;

public final class i implements Parcelable.Creator {
    public static void a(GetServiceRequest getServiceRequest, Parcel parcel, int i) {
        int iA = z09.a(parcel);
        z09.s(parcel, 1, getServiceRequest.zzc);
        z09.s(parcel, 2, getServiceRequest.zzd);
        z09.s(parcel, 3, getServiceRequest.zze);
        z09.D(parcel, 4, getServiceRequest.zzf, false);
        z09.r(parcel, 5, getServiceRequest.zzg, false);
        z09.G(parcel, 6, getServiceRequest.zzh, i, false);
        z09.j(parcel, 7, getServiceRequest.zzi, false);
        z09.B(parcel, 8, getServiceRequest.zzj, i, false);
        z09.G(parcel, 10, getServiceRequest.zzk, i, false);
        z09.G(parcel, 11, getServiceRequest.zzl, i, false);
        z09.g(parcel, 12, getServiceRequest.zzm);
        z09.s(parcel, 13, getServiceRequest.zzn);
        z09.g(parcel, 14, getServiceRequest.zzo);
        z09.D(parcel, 15, getServiceRequest.getAttributionTag(), false);
        z09.b(parcel, iA);
    }

    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iL = SafeParcelReader.L(parcel);
        Scope[] scopeArr = GetServiceRequest.zza;
        Bundle bundle = new Bundle();
        Feature[] featureArr = GetServiceRequest.zzb;
        Feature[] featureArr2 = featureArr;
        String strP = null;
        IBinder iBinderD = null;
        Account account = null;
        String strP2 = null;
        int iE = 0;
        int iE2 = 0;
        int iE3 = 0;
        boolean zW = false;
        int iE4 = 0;
        boolean zW2 = false;
        while (parcel.dataPosition() < iL) {
            int iC = SafeParcelReader.C(parcel);
            switch (SafeParcelReader.v(iC)) {
                case 1:
                    iE = SafeParcelReader.E(parcel, iC);
                    break;
                case 2:
                    iE2 = SafeParcelReader.E(parcel, iC);
                    break;
                case 3:
                    iE3 = SafeParcelReader.E(parcel, iC);
                    break;
                case 4:
                    strP = SafeParcelReader.p(parcel, iC);
                    break;
                case 5:
                    iBinderD = SafeParcelReader.D(parcel, iC);
                    break;
                case 6:
                    scopeArr = (Scope[]) SafeParcelReader.s(parcel, iC, Scope.CREATOR);
                    break;
                case 7:
                    bundle = SafeParcelReader.f(parcel, iC);
                    break;
                case 8:
                    account = (Account) SafeParcelReader.o(parcel, iC, Account.CREATOR);
                    break;
                case 9:
                default:
                    SafeParcelReader.K(parcel, iC);
                    break;
                case 10:
                    featureArr = (Feature[]) SafeParcelReader.s(parcel, iC, Feature.CREATOR);
                    break;
                case 11:
                    featureArr2 = (Feature[]) SafeParcelReader.s(parcel, iC, Feature.CREATOR);
                    break;
                case 12:
                    zW = SafeParcelReader.w(parcel, iC);
                    break;
                case 13:
                    iE4 = SafeParcelReader.E(parcel, iC);
                    break;
                case 14:
                    zW2 = SafeParcelReader.w(parcel, iC);
                    break;
                case 15:
                    strP2 = SafeParcelReader.p(parcel, iC);
                    break;
            }
        }
        SafeParcelReader.u(parcel, iL);
        return new GetServiceRequest(iE, iE2, iE3, strP, iBinderD, scopeArr, bundle, account, featureArr, featureArr2, zW, iE4, zW2, strP2);
    }

    @Override
    public final Object[] newArray(int i) {
        return new GetServiceRequest[i];
    }
}
