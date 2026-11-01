package ru.zdevs.zarchiver.service;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import h0.h;
import java.util.ArrayList;
import java.util.List;

public interface c extends IInterface {

    public static abstract class a extends Binder implements c {

        public static class C0035a implements c {

            public final IBinder f1733a;

            public C0035a(IBinder iBinder) {
                this.f1733a = iBinder;
            }

            @Override
            public final void ArchiveAddFiles(String str, h hVar, String str2, String str3, h hVar2, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("ru.zdevs.zarchiver.service.ZArchiverServiceConnect");
                    parcelObtain.writeString(str);
                    b.c(parcelObtain, hVar);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeString(str3);
                    b.c(parcelObtain, hVar2);
                    parcelObtain.writeInt(i2);
                    this.f1733a.transact(8, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public final void ArchiveAddFilesMulti(String str, h hVar, String str2, List<String> list, List<h> list2, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("ru.zdevs.zarchiver.service.ZArchiverServiceConnect");
                    parcelObtain.writeString(str);
                    b.c(parcelObtain, hVar);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeStringList(list);
                    b.b(parcelObtain, (ArrayList) list2);
                    parcelObtain.writeInt(i2);
                    this.f1733a.transact(9, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public final void ArchiveCompress(String str, h hVar, String str2, List<String> list, h hVar2, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("ru.zdevs.zarchiver.service.ZArchiverServiceConnect");
                    parcelObtain.writeString(str);
                    b.c(parcelObtain, hVar);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeStringList(list);
                    b.c(parcelObtain, hVar2);
                    parcelObtain.writeInt(i2);
                    this.f1733a.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public final void ArchiveCompressMulti(List<h> list, String str, List<String> list2, h hVar, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("ru.zdevs.zarchiver.service.ZArchiverServiceConnect");
                    b.b(parcelObtain, (ArrayList) list);
                    parcelObtain.writeString(str);
                    parcelObtain.writeStringList(list2);
                    b.c(parcelObtain, hVar);
                    parcelObtain.writeInt(i2);
                    this.f1733a.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public final void ArchiveCreateFile(String str, h hVar, String str2, String str3, boolean z2, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("ru.zdevs.zarchiver.service.ZArchiverServiceConnect");
                    parcelObtain.writeString(str);
                    b.c(parcelObtain, hVar);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeString(str3);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    parcelObtain.writeInt(i2);
                    this.f1733a.transact(12, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public final void ArchiveDelFiles(String str, h hVar, String str2, String str3, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("ru.zdevs.zarchiver.service.ZArchiverServiceConnect");
                    parcelObtain.writeString(str);
                    b.c(parcelObtain, hVar);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeString(str3);
                    parcelObtain.writeInt(i2);
                    this.f1733a.transact(10, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public final void ArchiveExtract(String str, h hVar, String str2, String str3, h hVar2, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("ru.zdevs.zarchiver.service.ZArchiverServiceConnect");
                    parcelObtain.writeString(str);
                    b.c(parcelObtain, hVar);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeString(str3);
                    b.c(parcelObtain, hVar2);
                    parcelObtain.writeInt(i2);
                    this.f1733a.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public final void ArchiveExtractMulti(List<String> list, List<h> list2, List<String> list3, List<String> list4, List<h> list5, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("ru.zdevs.zarchiver.service.ZArchiverServiceConnect");
                    parcelObtain.writeStringList(list);
                    b.b(parcelObtain, (ArrayList) list2);
                    parcelObtain.writeStringList(list3);
                    parcelObtain.writeStringList(list4);
                    b.b(parcelObtain, (ArrayList) list5);
                    parcelObtain.writeInt(i2);
                    this.f1733a.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public final void ArchiveOpenFile(String str, h hVar, String str2, String str3, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("ru.zdevs.zarchiver.service.ZArchiverServiceConnect");
                    parcelObtain.writeString(str);
                    b.c(parcelObtain, hVar);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeString(str3);
                    parcelObtain.writeInt(i2);
                    this.f1733a.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public final void ArchiveRenFile(String str, h hVar, String str2, String str3, String str4, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("ru.zdevs.zarchiver.service.ZArchiverServiceConnect");
                    parcelObtain.writeString(str);
                    b.c(parcelObtain, hVar);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeString(str3);
                    parcelObtain.writeString(str4);
                    parcelObtain.writeInt(i2);
                    this.f1733a.transact(11, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public final void ArchiveTest(String str, h hVar, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("ru.zdevs.zarchiver.service.ZArchiverServiceConnect");
                    parcelObtain.writeString(str);
                    b.c(parcelObtain, hVar);
                    parcelObtain.writeString(str2);
                    this.f1733a.transact(6, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public final void ArchiveTestMulti(List<String> list, List<h> list2, List<String> list3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("ru.zdevs.zarchiver.service.ZArchiverServiceConnect");
                    parcelObtain.writeStringList(list);
                    b.b(parcelObtain, (ArrayList) list2);
                    parcelObtain.writeStringList(list3);
                    this.f1733a.transact(7, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public final void Copy(h hVar, h hVar2, List<String> list, boolean z2, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("ru.zdevs.zarchiver.service.ZArchiverServiceConnect");
                    b.c(parcelObtain, hVar);
                    b.c(parcelObtain, hVar2);
                    parcelObtain.writeStringList(list);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    parcelObtain.writeInt(i2);
                    this.f1733a.transact(14, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public final void CopyList(List<h> list, h hVar, boolean z2, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("ru.zdevs.zarchiver.service.ZArchiverServiceConnect");
                    b.b(parcelObtain, (ArrayList) list);
                    b.c(parcelObtain, hVar);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    parcelObtain.writeInt(i2);
                    this.f1733a.transact(15, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public final void GUIStatus(boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("ru.zdevs.zarchiver.service.ZArchiverServiceConnect");
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.f1733a.transact(20, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public final int GetProgPercent(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("ru.zdevs.zarchiver.service.ZArchiverServiceConnect");
                    parcelObtain.writeInt(i2);
                    this.f1733a.transact(25, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public final String GetProgText(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("ru.zdevs.zarchiver.service.ZArchiverServiceConnect");
                    parcelObtain.writeInt(i2);
                    this.f1733a.transact(24, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public final int GetStatusTask(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("ru.zdevs.zarchiver.service.ZArchiverServiceConnect");
                    parcelObtain.writeInt(i2);
                    this.f1733a.transact(26, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public final void HideNotification(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("ru.zdevs.zarchiver.service.ZArchiverServiceConnect");
                    parcelObtain.writeInt(i2);
                    this.f1733a.transact(21, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public final boolean IsLock(h hVar, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("ru.zdevs.zarchiver.service.ZArchiverServiceConnect");
                    b.c(parcelObtain, hVar);
                    parcelObtain.writeInt(i2);
                    this.f1733a.transact(13, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public final void PluginOpenFile(h hVar, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("ru.zdevs.zarchiver.service.ZArchiverServiceConnect");
                    b.c(parcelObtain, hVar);
                    parcelObtain.writeInt(i2);
                    this.f1733a.transact(18, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public final void Remove(h hVar, List<String> list, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("ru.zdevs.zarchiver.service.ZArchiverServiceConnect");
                    b.c(parcelObtain, hVar);
                    parcelObtain.writeStringList(list);
                    parcelObtain.writeInt(i2);
                    this.f1733a.transact(16, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public final void RemoveList(List<h> list, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("ru.zdevs.zarchiver.service.ZArchiverServiceConnect");
                    b.b(parcelObtain, (ArrayList) list);
                    parcelObtain.writeInt(i2);
                    this.f1733a.transact(17, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public final void SetOverwrite(int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("ru.zdevs.zarchiver.service.ZArchiverServiceConnect");
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.f1733a.transact(23, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public final void SetPassword(int i2, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("ru.zdevs.zarchiver.service.ZArchiverServiceConnect");
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    this.f1733a.transact(22, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public final void SetSettings(int i2, int i3, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("ru.zdevs.zarchiver.service.ZArchiverServiceConnect");
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeString(str);
                    this.f1733a.transact(19, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public final void SetStatusTask(int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("ru.zdevs.zarchiver.service.ZArchiverServiceConnect");
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.f1733a.transact(27, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public final IBinder asBinder() {
                return this.f1733a;
            }
        }

        public a() {
            attachInterface(this, "ru.zdevs.zarchiver.service.ZArchiverServiceConnect");
        }

        public static c asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("ru.zdevs.zarchiver.service.ZArchiverServiceConnect");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof c)) ? new C0035a(iBinder) : (c) iInterfaceQueryLocalInterface;
        }

        @Override
        public IBinder asBinder() {
            return this;
        }

        @Override
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            if (i2 >= 1 && i2 <= 16777215) {
                parcel.enforceInterface("ru.zdevs.zarchiver.service.ZArchiverServiceConnect");
            }
            if (i2 == 1598968902) {
                parcel2.writeString("ru.zdevs.zarchiver.service.ZArchiverServiceConnect");
                return true;
            }
            switch (i2) {
                case 1:
                    String string = parcel.readString();
                    Parcelable.Creator<h> creator = h.CREATOR;
                    ArchiveCompress(string, (h) b.a(parcel, creator), parcel.readString(), parcel.createStringArrayList(), (h) b.a(parcel, creator), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 2:
                    Parcelable.Creator<h> creator2 = h.CREATOR;
                    ArchiveCompressMulti(parcel.createTypedArrayList(creator2), parcel.readString(), parcel.createStringArrayList(), (h) b.a(parcel, creator2), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 3:
                    String string2 = parcel.readString();
                    Parcelable.Creator<h> creator3 = h.CREATOR;
                    ArchiveExtract(string2, (h) b.a(parcel, creator3), parcel.readString(), parcel.readString(), (h) b.a(parcel, creator3), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 4:
                    ArrayList<String> arrayListCreateStringArrayList = parcel.createStringArrayList();
                    Parcelable.Creator<h> creator4 = h.CREATOR;
                    ArchiveExtractMulti(arrayListCreateStringArrayList, parcel.createTypedArrayList(creator4), parcel.createStringArrayList(), parcel.createStringArrayList(), parcel.createTypedArrayList(creator4), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 5:
                    ArchiveOpenFile(parcel.readString(), (h) b.a(parcel, h.CREATOR), parcel.readString(), parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 6:
                    ArchiveTest(parcel.readString(), (h) b.a(parcel, h.CREATOR), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 7:
                    ArchiveTestMulti(parcel.createStringArrayList(), parcel.createTypedArrayList(h.CREATOR), parcel.createStringArrayList());
                    parcel2.writeNoException();
                    return true;
                case 8:
                    String string3 = parcel.readString();
                    Parcelable.Creator<h> creator5 = h.CREATOR;
                    ArchiveAddFiles(string3, (h) b.a(parcel, creator5), parcel.readString(), parcel.readString(), (h) b.a(parcel, creator5), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 9:
                    String string4 = parcel.readString();
                    Parcelable.Creator<h> creator6 = h.CREATOR;
                    ArchiveAddFilesMulti(string4, (h) b.a(parcel, creator6), parcel.readString(), parcel.createStringArrayList(), parcel.createTypedArrayList(creator6), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 10:
                    ArchiveDelFiles(parcel.readString(), (h) b.a(parcel, h.CREATOR), parcel.readString(), parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 11:
                    ArchiveRenFile(parcel.readString(), (h) b.a(parcel, h.CREATOR), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 12:
                    ArchiveCreateFile(parcel.readString(), (h) b.a(parcel, h.CREATOR), parcel.readString(), parcel.readString(), parcel.readInt() != 0, parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 13:
                    boolean zIsLock = IsLock((h) b.a(parcel, h.CREATOR), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsLock ? 1 : 0);
                    return true;
                case 14:
                    Parcelable.Creator<h> creator7 = h.CREATOR;
                    Copy((h) b.a(parcel, creator7), (h) b.a(parcel, creator7), parcel.createStringArrayList(), parcel.readInt() != 0, parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 15:
                    Parcelable.Creator<h> creator8 = h.CREATOR;
                    CopyList(parcel.createTypedArrayList(creator8), (h) b.a(parcel, creator8), parcel.readInt() != 0, parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 16:
                    Remove((h) b.a(parcel, h.CREATOR), parcel.createStringArrayList(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 17:
                    RemoveList(parcel.createTypedArrayList(h.CREATOR), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 18:
                    PluginOpenFile((h) b.a(parcel, h.CREATOR), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 19:
                    SetSettings(parcel.readInt(), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 20:
                    GUIStatus(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 21:
                    HideNotification(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 22:
                    SetPassword(parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 23:
                    SetOverwrite(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 24:
                    String strGetProgText = GetProgText(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeString(strGetProgText);
                    return true;
                case 25:
                    int iGetProgPercent = GetProgPercent(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iGetProgPercent);
                    return true;
                case 26:
                    int iGetStatusTask = GetStatusTask(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iGetStatusTask);
                    return true;
                case 27:
                    SetStatusTask(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }
    }

    public static class b {
        public static Object a(Parcel parcel, Parcelable.Creator creator) {
            if (parcel.readInt() != 0) {
                return creator.createFromParcel(parcel);
            }
            return null;
        }

        public static void b(Parcel parcel, ArrayList arrayList) {
            if (arrayList == null) {
                parcel.writeInt(-1);
                return;
            }
            int size = arrayList.size();
            parcel.writeInt(size);
            for (int i2 = 0; i2 < size; i2++) {
                c(parcel, (Parcelable) arrayList.get(i2));
            }
        }

        public static void c(Parcel parcel, Parcelable parcelable) {
            if (parcelable == null) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(1);
                parcelable.writeToParcel(parcel, 0);
            }
        }
    }

    void ArchiveAddFiles(String str, h hVar, String str2, String str3, h hVar2, int i2);

    void ArchiveAddFilesMulti(String str, h hVar, String str2, List<String> list, List<h> list2, int i2);

    void ArchiveCompress(String str, h hVar, String str2, List<String> list, h hVar2, int i2);

    void ArchiveCompressMulti(List<h> list, String str, List<String> list2, h hVar, int i2);

    void ArchiveCreateFile(String str, h hVar, String str2, String str3, boolean z2, int i2);

    void ArchiveDelFiles(String str, h hVar, String str2, String str3, int i2);

    void ArchiveExtract(String str, h hVar, String str2, String str3, h hVar2, int i2);

    void ArchiveExtractMulti(List<String> list, List<h> list2, List<String> list3, List<String> list4, List<h> list5, int i2);

    void ArchiveOpenFile(String str, h hVar, String str2, String str3, int i2);

    void ArchiveRenFile(String str, h hVar, String str2, String str3, String str4, int i2);

    void ArchiveTest(String str, h hVar, String str2);

    void ArchiveTestMulti(List<String> list, List<h> list2, List<String> list3);

    void Copy(h hVar, h hVar2, List<String> list, boolean z2, int i2);

    void CopyList(List<h> list, h hVar, boolean z2, int i2);

    void GUIStatus(boolean z2);

    int GetProgPercent(int i2);

    String GetProgText(int i2);

    int GetStatusTask(int i2);

    void HideNotification(int i2);

    boolean IsLock(h hVar, int i2);

    void PluginOpenFile(h hVar, int i2);

    void Remove(h hVar, List<String> list, int i2);

    void RemoveList(List<h> list, int i2);

    void SetOverwrite(int i2, int i3);

    void SetPassword(int i2, String str);

    void SetSettings(int i2, int i3, String str);

    void SetStatusTask(int i2, int i3);
}
