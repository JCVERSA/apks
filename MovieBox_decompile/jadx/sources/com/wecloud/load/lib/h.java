package com.wecloud.load.lib;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.BiConsumer;
import java.util.function.IntConsumer;
import java.util.stream.IntStream;

public interface h extends IInterface {

    public static abstract class a extends Binder implements h {

        static class C0692a implements h {

            private IBinder f58608a;

            C0692a(IBinder iBinder) {
                this.f58608a = iBinder;
            }

            public static void Y0(Parcel parcel, String str, String str2) {
                parcel.writeString(str);
                parcel.writeString(str2);
            }

            @Override
            public void R(String str, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.wecloud.load.lib.ISoLoadCallback");
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.f58608a.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public IBinder asBinder() {
                return this.f58608a;
            }

            @Override
            public void e(String str, int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.wecloud.load.lib.ISoLoadCallback");
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i10);
                    this.f58608a.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public void n0(int i10, int i11, int i12) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.wecloud.load.lib.ISoLoadCallback");
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    parcelObtain.writeInt(i12);
                    this.f58608a.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public void onError(int i10, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.wecloud.load.lib.ISoLoadCallback");
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeString(str);
                    this.f58608a.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public void q0(int i10, int i11, int i12, List list, Map map) {
                final Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.wecloud.load.lib.ISoLoadCallback");
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    parcelObtain.writeInt(i12);
                    parcelObtain.writeStringList(list);
                    if (map == null) {
                        parcelObtain.writeInt(-1);
                    } else {
                        parcelObtain.writeInt(map.size());
                        map.forEach(new BiConsumer() {
                            @Override
                            public final void accept(Object obj, Object obj2) {
                                h.a.C0692a.Y0(parcelObtain, (String) obj, (String) obj2);
                            }
                        });
                    }
                    this.f58608a.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public a() {
            attachInterface(this, "com.wecloud.load.lib.ISoLoadCallback");
        }

        public static h Y0(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.wecloud.load.lib.ISoLoadCallback");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof h)) ? new C0692a(iBinder) : (h) iInterfaceQueryLocalInterface;
        }

        public static void Z0(Parcel parcel, Map map, int i10) {
            map.put(parcel.readString(), parcel.readString());
        }

        @Override
        public IBinder asBinder() {
            return this;
        }

        @Override
        public boolean onTransact(int i10, final Parcel parcel, Parcel parcel2, int i11) {
            if (i10 >= 1 && i10 <= 16777215) {
                parcel.enforceInterface("com.wecloud.load.lib.ISoLoadCallback");
            }
            if (i10 == 1598968902) {
                parcel2.writeString("com.wecloud.load.lib.ISoLoadCallback");
                return true;
            }
            if (i10 == 1) {
                int i12 = parcel.readInt();
                int i13 = parcel.readInt();
                int i14 = parcel.readInt();
                ArrayList<String> arrayListCreateStringArrayList = parcel.createStringArrayList();
                int i15 = parcel.readInt();
                final HashMap map = i15 < 0 ? null : new HashMap();
                IntStream.range(0, i15).forEach(new IntConsumer() {
                    @Override
                    public final void accept(int i16) {
                        h.a.Z0(parcel, map, i16);
                    }
                });
                q0(i12, i13, i14, arrayListCreateStringArrayList, map);
                parcel2.writeNoException();
            } else if (i10 == 2) {
                n0(parcel.readInt(), parcel.readInt(), parcel.readInt());
                parcel2.writeNoException();
            } else if (i10 == 3) {
                onError(parcel.readInt(), parcel.readString());
                parcel2.writeNoException();
            } else if (i10 == 4) {
                e(parcel.readString(), parcel.readInt());
                parcel2.writeNoException();
            } else {
                if (i10 != 5) {
                    return super.onTransact(i10, parcel, parcel2, i11);
                }
                R(parcel.readString(), parcel.readString());
                parcel2.writeNoException();
            }
            return true;
        }
    }

    void R(String str, String str2);

    void e(String str, int i10);

    void n0(int i10, int i11, int i12);

    void onError(int i10, String str);

    void q0(int i10, int i11, int i12, List list, Map map);
}
