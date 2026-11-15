package com.google.android.finsky.externalreferrer;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.a.a;
import com.google.android.a.b;
import defpackage.p8d;

public interface IGetInstallReferrerService extends IInterface {

    public static abstract class Stub extends b implements IGetInstallReferrerService {

        public static class Proxy extends a implements IGetInstallReferrerService {
            public Proxy(IBinder iBinder) {
                super(iBinder);
            }

            @Override
            public final Bundle c(Bundle bundle) throws RemoteException {
                Parcel parcelA = a();
                p8d.b(parcelA, bundle);
                Parcel parcelB = b(parcelA);
                Bundle bundle2 = (Bundle) p8d.a(parcelB, Bundle.CREATOR);
                parcelB.recycle();
                return bundle2;
            }
        }

        public static IGetInstallReferrerService b(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
            return iInterfaceQueryLocalInterface instanceof IGetInstallReferrerService ? (IGetInstallReferrerService) iInterfaceQueryLocalInterface : new Proxy(iBinder);
        }

        @Override
        public final boolean a(int i, Parcel parcel, Parcel parcel2) throws RemoteException {
            if (i != 1) {
                return false;
            }
            Bundle bundleC = c((Bundle) p8d.a(parcel, Bundle.CREATOR));
            parcel2.writeNoException();
            p8d.c(parcel2, bundleC);
            return true;
        }
    }

    Bundle c(Bundle bundle) throws RemoteException;
}
