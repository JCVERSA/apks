package com.monetization.ads.core.identifiers.ad.huawei;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import defpackage.y45;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\b`\u0018\u00002\u00020\u0001:\u0001\nR\u0016\u0010\u0002\u001a\u0004\u0018\u00010\u00038fX¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0006\u001a\u00020\u00078fX¦\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"Lcom/monetization/ads/core/identifiers/ad/huawei/OpenDeviceIdentifierService;", "Landroid/os/IInterface;", CommonUrlParts.HUAWEI_OAID, "", "getOaid", "()Ljava/lang/String;", "oaidTrackLimited", "", "getOaidTrackLimited", "()Z", "Stub", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface OpenDeviceIdentifierService extends IInterface {

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b&\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\bB\u0007¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\t"}, d2 = {"Lcom/monetization/ads/core/identifiers/ad/huawei/OpenDeviceIdentifierService$Stub;", "Landroid/os/Binder;", "Lcom/monetization/ads/core/identifiers/ad/huawei/OpenDeviceIdentifierService;", "Landroid/os/IBinder;", "asBinder", "()Landroid/os/IBinder;", MethodDecl.initName, "()V", "Proxy", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0})
    public static abstract class Stub extends Binder implements OpenDeviceIdentifierService {
        public static final int a = 0;

        @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\r\u001a\u00020\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004R\u0016\u0010\b\u001a\u0004\u0018\u00010\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007R\u0014\u0010\f\u001a\u00020\t8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000b¨\u0006\u0010"}, d2 = {"Lcom/monetization/ads/core/identifiers/ad/huawei/OpenDeviceIdentifierService$Stub$Proxy;", "Lcom/monetization/ads/core/identifiers/ad/huawei/OpenDeviceIdentifierService;", "Landroid/os/IBinder;", "asBinder", "()Landroid/os/IBinder;", "", "getOaid", "()Ljava/lang/String;", CommonUrlParts.HUAWEI_OAID, "", "getOaidTrackLimited", "()Z", "oaidTrackLimited", "remote", MethodDecl.initName, "(Landroid/os/IBinder;)V", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0})
        public static final class Proxy implements OpenDeviceIdentifierService {
            private final IBinder a;

            public Proxy(IBinder iBinder) {
                y45.j(iBinder, "remote");
                this.a = iBinder;
            }

            @Override
            public IBinder asBinder() {
                return this.a;
            }

            @Override
            public String getOaid() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                y45.i(parcelObtain, "obtain(...)");
                Parcel parcelObtain2 = Parcel.obtain();
                y45.i(parcelObtain2, "obtain(...)");
                try {
                    parcelObtain.writeInterfaceToken("com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
                    this.a.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public boolean getOaidTrackLimited() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                y45.i(parcelObtain, "obtain(...)");
                Parcel parcelObtain2 = Parcel.obtain();
                y45.i(parcelObtain2, "obtain(...)");
                try {
                    parcelObtain.writeInterfaceToken("com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
                    this.a.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, "com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
        }

        @Override
        public IBinder asBinder() {
            return this;
        }

        @Override
        public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            y45.j(parcel, "data");
            if (i == 1) {
                parcel.enforceInterface("com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
                String oaid = getOaid();
                if (parcel2 != null) {
                    parcel2.writeNoException();
                }
                if (parcel2 == null) {
                    return true;
                }
                parcel2.writeString(oaid);
                return true;
            }
            if (i != 2) {
                if (i != 1598968902) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                if (parcel2 == null) {
                    return true;
                }
                parcel2.writeString("com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
                return true;
            }
            parcel.enforceInterface("com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
            boolean oaidTrackLimited = getOaidTrackLimited();
            if (parcel2 != null) {
                parcel2.writeNoException();
            }
            if (parcel2 == null) {
                return true;
            }
            parcel2.writeInt(oaidTrackLimited ? 1 : 0);
            return true;
        }
    }

    String getOaid() throws RemoteException;

    boolean getOaidTrackLimited() throws RemoteException;
}
