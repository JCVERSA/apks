package com.hoffnung.a;

import android.content.ComponentName;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public interface b extends IInterface {

    public static abstract class a extends Binder implements b {

        public static class C0124a implements b {
            public static b a;
            private IBinder b;

            public C0124a(IBinder iBinder) {
                this.b = iBinder;
            }

            @Override
            public final int a(int i, String str, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.hoffnung.external.ITpmsProxy");
                    parcelObtain.writeInt(i);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    if (!this.b.transact(5, parcelObtain, parcelObtain2, 0) && a.a() != null) {
                        return a.a().a(i, str, str2);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public final IBinder asBinder() {
                return this.b;
            }

            @Override
            public final int b(String str, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.hoffnung.external.ITpmsProxy");
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    if (!this.b.transact(2, parcelObtain, parcelObtain2, 0) && a.a() != null) {
                        return a.a().b(str, str2);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public final int a(ComponentName componentName) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.hoffnung.external.ITpmsProxy");
                    if (componentName != null) {
                        parcelObtain.writeInt(1);
                        componentName.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.b.transact(4, parcelObtain, parcelObtain2, 0) && a.a() != null) {
                        return a.a().a(componentName);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public final int a(ComponentName componentName, int i) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.hoffnung.external.ITpmsProxy");
                    if (componentName != null) {
                        parcelObtain.writeInt(1);
                        componentName.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i);
                    if (!this.b.transact(3, parcelObtain, parcelObtain2, 0) && a.a() != null) {
                        return a.a().a(componentName, i);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public final int a(String str, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.hoffnung.external.ITpmsProxy");
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    if (!this.b.transact(1, parcelObtain, parcelObtain2, 0) && a.a() != null) {
                        return a.a().a(str, str2);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public final int a(String str, String str2, String str3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.hoffnung.external.ITpmsProxy");
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeString(str3);
                    if (!this.b.transact(8, parcelObtain, parcelObtain2, 0) && a.a() != null) {
                        return a.a().a(str, str2, str3);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public final void a(int i, String str, String str2, com.hoffnung.a.a aVar) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.hoffnung.external.ITpmsProxy");
                    parcelObtain.writeInt(i);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeStrongBinder(aVar != null ? aVar.asBinder() : null);
                    if (this.b.transact(6, parcelObtain, parcelObtain2, 0) || a.a() == null) {
                        parcelObtain2.readException();
                    } else {
                        a.a().a(i, str, str2, aVar);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public final void a(String str, int i, com.hoffnung.a.a aVar) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.hoffnung.external.ITpmsProxy");
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeStrongBinder(aVar != null ? aVar.asBinder() : null);
                    if (this.b.transact(7, parcelObtain, parcelObtain2, 0) || a.a() == null) {
                        parcelObtain2.readException();
                    } else {
                        a.a().a(str, i, aVar);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static b a() {
            return C0124a.a;
        }

        @Override
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i == 1598968902) {
                parcel2.writeString("com.hoffnung.external.ITpmsProxy");
                return true;
            }
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.hoffnung.external.ITpmsProxy");
                    int iA = a(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(iA);
                    return true;
                case 2:
                    parcel.enforceInterface("com.hoffnung.external.ITpmsProxy");
                    int iB = b(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(iB);
                    return true;
                case 3:
                    parcel.enforceInterface("com.hoffnung.external.ITpmsProxy");
                    int iA2 = a(parcel.readInt() != 0 ? (ComponentName) ComponentName.CREATOR.createFromParcel(parcel) : null, parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iA2);
                    return true;
                case 4:
                    parcel.enforceInterface("com.hoffnung.external.ITpmsProxy");
                    int iA3 = a(parcel.readInt() != 0 ? (ComponentName) ComponentName.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(iA3);
                    return true;
                case 5:
                    parcel.enforceInterface("com.hoffnung.external.ITpmsProxy");
                    int iA4 = a(parcel.readInt(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(iA4);
                    return true;
                case 6:
                    parcel.enforceInterface("com.hoffnung.external.ITpmsProxy");
                    a(parcel.readInt(), parcel.readString(), parcel.readString(), com.hoffnung.a.a.AbstractBinderC0122a.a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface("com.hoffnung.external.ITpmsProxy");
                    a(parcel.readString(), parcel.readInt(), com.hoffnung.a.a.AbstractBinderC0122a.a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface("com.hoffnung.external.ITpmsProxy");
                    int iA5 = a(parcel.readString(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(iA5);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        public static b a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.hoffnung.external.ITpmsProxy");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof b)) ? new C0124a(iBinder) : (b) iInterfaceQueryLocalInterface;
        }
    }

    int a(int i, String str, String str2);

    int a(ComponentName componentName);

    int a(ComponentName componentName, int i);

    int a(String str, String str2);

    int a(String str, String str2, String str3);

    void a(int i, String str, String str2, com.hoffnung.a.a aVar);

    void a(String str, int i, com.hoffnung.a.a aVar);

    int b(String str, String str2);
}
