package android.support.v4.media.session;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.MediaMetadataCompat;
import android.text.TextUtils;
import java.util.List;

public interface a extends IInterface {

    public static abstract class AbstractBinderC0006a extends Binder implements a {

        private static class C0007a implements a {

            private IBinder f522a;

            C0007a(IBinder iBinder) {
                this.f522a = iBinder;
            }

            @Override
            public void H() {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
                    this.f522a.transact(2, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override
            public void J(MediaMetadataCompat mediaMetadataCompat) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
                    b.d(parcelObtain, mediaMetadataCompat, 0);
                    this.f522a.transact(4, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override
            public void W0(PlaybackStateCompat playbackStateCompat) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
                    b.d(parcelObtain, playbackStateCompat, 0);
                    this.f522a.transact(3, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override
            public IBinder asBinder() {
                return this.f522a;
            }
        }

        public AbstractBinderC0006a() {
            attachInterface(this, "android.support.v4.media.session.IMediaControllerCallback");
        }

        public static a X0(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("android.support.v4.media.session.IMediaControllerCallback");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof a)) ? new C0007a(iBinder) : (a) iInterfaceQueryLocalInterface;
        }

        @Override
        public IBinder asBinder() {
            return this;
        }

        @Override
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) {
            if (i10 >= 1 && i10 <= 16777215) {
                parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
            }
            if (i10 == 1598968902) {
                parcel2.writeString("android.support.v4.media.session.IMediaControllerCallback");
                return true;
            }
            switch (i10) {
                case 1:
                    c(parcel.readString(), (Bundle) b.c(parcel, Bundle.CREATOR));
                    return true;
                case 2:
                    H();
                    return true;
                case 3:
                    W0((PlaybackStateCompat) b.c(parcel, PlaybackStateCompat.CREATOR));
                    return true;
                case 4:
                    J((MediaMetadataCompat) b.c(parcel, MediaMetadataCompat.CREATOR));
                    return true;
                case 5:
                    q(parcel.createTypedArrayList(MediaSessionCompat.QueueItem.CREATOR));
                    return true;
                case 6:
                    z0((CharSequence) b.c(parcel, TextUtils.CHAR_SEQUENCE_CREATOR));
                    return true;
                case 7:
                    o0((Bundle) b.c(parcel, Bundle.CREATOR));
                    return true;
                case 8:
                    d0((ParcelableVolumeInfo) b.c(parcel, ParcelableVolumeInfo.CREATOR));
                    return true;
                case 9:
                    onRepeatModeChanged(parcel.readInt());
                    return true;
                case 10:
                    y0(parcel.readInt() != 0);
                    return true;
                case 11:
                    v0(parcel.readInt() != 0);
                    return true;
                case 12:
                    Q(parcel.readInt());
                    return true;
                case 13:
                    p();
                    return true;
                default:
                    return super.onTransact(i10, parcel, parcel2, i11);
            }
        }
    }

    public static class b {
        public static Object c(Parcel parcel, Parcelable.Creator creator) {
            if (parcel.readInt() != 0) {
                return creator.createFromParcel(parcel);
            }
            return null;
        }

        public static void d(Parcel parcel, Parcelable parcelable, int i10) {
            if (parcelable == null) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(1);
                parcelable.writeToParcel(parcel, i10);
            }
        }
    }

    void H();

    void J(MediaMetadataCompat mediaMetadataCompat);

    void Q(int i10);

    void W0(PlaybackStateCompat playbackStateCompat);

    void c(String str, Bundle bundle);

    void d0(ParcelableVolumeInfo parcelableVolumeInfo);

    void o0(Bundle bundle);

    void onRepeatModeChanged(int i10);

    void p();

    void q(List list);

    void v0(boolean z10);

    void y0(boolean z10);

    void z0(CharSequence charSequence);
}
