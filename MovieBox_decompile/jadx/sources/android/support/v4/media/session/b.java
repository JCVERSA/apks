package android.support.v4.media.session;

import android.app.PendingIntent;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.RatingCompat;
import android.text.TextUtils;
import android.view.KeyEvent;
import java.util.List;

public interface b extends IInterface {

    public static abstract class a extends Binder implements b {

        private static class C0008a implements b {

            private IBinder f523a;

            C0008a(IBinder iBinder) {
                this.f523a = iBinder;
            }

            @Override
            public boolean E(KeyEvent keyEvent) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    C0009b.f(parcelObtain, keyEvent, 0);
                    this.f523a.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public IBinder asBinder() {
                return this.f523a;
            }

            @Override
            public void e0(android.support.v4.media.session.a aVar) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    parcelObtain.writeStrongInterface(aVar);
                    this.f523a.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public void f(String str, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    parcelObtain.writeString(str);
                    C0009b.f(parcelObtain, bundle, 0);
                    this.f523a.transact(26, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public void next() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    this.f523a.transact(20, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public void previous() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    this.f523a.transact(21, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public a() {
            attachInterface(this, "android.support.v4.media.session.IMediaSession");
        }

        public static b X0(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("android.support.v4.media.session.IMediaSession");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof b)) ? new C0008a(iBinder) : (b) iInterfaceQueryLocalInterface;
        }

        @Override
        public IBinder asBinder() {
            return this;
        }

        @Override
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) {
            if (i10 >= 1 && i10 <= 16777215) {
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
            }
            if (i10 == 1598968902) {
                parcel2.writeString("android.support.v4.media.session.IMediaSession");
                return true;
            }
            switch (i10) {
                case 1:
                    S(parcel.readString(), (Bundle) C0009b.d(parcel, Bundle.CREATOR), (MediaSessionCompat.ResultReceiverWrapper) C0009b.d(parcel, MediaSessionCompat.ResultReceiverWrapper.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 2:
                    boolean zE = E((KeyEvent) C0009b.d(parcel, KeyEvent.CREATOR));
                    parcel2.writeNoException();
                    parcel2.writeInt(zE ? 1 : 0);
                    return true;
                case 3:
                    e0(android.support.v4.media.session.a.AbstractBinderC0006a.X0(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 4:
                    t0(android.support.v4.media.session.a.AbstractBinderC0006a.X0(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 5:
                    boolean zI0 = i0();
                    parcel2.writeNoException();
                    parcel2.writeInt(zI0 ? 1 : 0);
                    return true;
                case 6:
                    String packageName = getPackageName();
                    parcel2.writeNoException();
                    parcel2.writeString(packageName);
                    return true;
                case 7:
                    String tag = getTag();
                    parcel2.writeNoException();
                    parcel2.writeString(tag);
                    return true;
                case 8:
                    PendingIntent pendingIntentL = l();
                    parcel2.writeNoException();
                    C0009b.f(parcel2, pendingIntentL, 1);
                    return true;
                case 9:
                    long flags = getFlags();
                    parcel2.writeNoException();
                    parcel2.writeLong(flags);
                    return true;
                case 10:
                    ParcelableVolumeInfo parcelableVolumeInfoN0 = N0();
                    parcel2.writeNoException();
                    C0009b.f(parcel2, parcelableVolumeInfoN0, 1);
                    return true;
                case 11:
                    A0(parcel.readInt(), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 12:
                    g0(parcel.readInt(), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 13:
                    play();
                    parcel2.writeNoException();
                    return true;
                case 14:
                    x(parcel.readString(), (Bundle) C0009b.d(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 15:
                    y(parcel.readString(), (Bundle) C0009b.d(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 16:
                    A((Uri) C0009b.d(parcel, Uri.CREATOR), (Bundle) C0009b.d(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 17:
                    X(parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                case 18:
                    pause();
                    parcel2.writeNoException();
                    return true;
                case 19:
                    stop();
                    parcel2.writeNoException();
                    return true;
                case 20:
                    next();
                    parcel2.writeNoException();
                    return true;
                case 21:
                    previous();
                    parcel2.writeNoException();
                    return true;
                case 22:
                    u0();
                    parcel2.writeNoException();
                    return true;
                case 23:
                    b();
                    parcel2.writeNoException();
                    return true;
                case 24:
                    seekTo(parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                case 25:
                    f0((RatingCompat) C0009b.d(parcel, RatingCompat.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 26:
                    f(parcel.readString(), (Bundle) C0009b.d(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 27:
                    MediaMetadataCompat metadata = getMetadata();
                    parcel2.writeNoException();
                    C0009b.f(parcel2, metadata, 1);
                    return true;
                case 28:
                    PlaybackStateCompat playbackState = getPlaybackState();
                    parcel2.writeNoException();
                    C0009b.f(parcel2, playbackState, 1);
                    return true;
                case NOTIFICATION_REDIRECT_VALUE:
                    List listL0 = L0();
                    parcel2.writeNoException();
                    C0009b.e(parcel2, listL0, 1);
                    return true;
                case 30:
                    CharSequence charSequenceS0 = s0();
                    parcel2.writeNoException();
                    if (charSequenceS0 != null) {
                        parcel2.writeInt(1);
                        TextUtils.writeToParcel(charSequenceS0, parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case TEMPLATE_HTML_SIZE_VALUE:
                    Bundle extras = getExtras();
                    parcel2.writeNoException();
                    C0009b.f(parcel2, extras, 1);
                    return true;
                case 32:
                    int iM = m();
                    parcel2.writeNoException();
                    parcel2.writeInt(iM);
                    return true;
                case 33:
                    prepare();
                    parcel2.writeNoException();
                    return true;
                case 34:
                    t(parcel.readString(), (Bundle) C0009b.d(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 35:
                    m0(parcel.readString(), (Bundle) C0009b.d(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 36:
                    k((Uri) C0009b.d(parcel, Uri.CREATOR), (Bundle) C0009b.d(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 37:
                    int repeatMode = getRepeatMode();
                    parcel2.writeNoException();
                    parcel2.writeInt(repeatMode);
                    return true;
                case 38:
                    boolean zH = h();
                    parcel2.writeNoException();
                    parcel2.writeInt(zH ? 1 : 0);
                    return true;
                case 39:
                    setRepeatMode(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 40:
                    Y(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 41:
                    j0((MediaDescriptionCompat) C0009b.d(parcel, MediaDescriptionCompat.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 42:
                    I((MediaDescriptionCompat) C0009b.d(parcel, MediaDescriptionCompat.CREATOR), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 43:
                    h0((MediaDescriptionCompat) C0009b.d(parcel, MediaDescriptionCompat.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 44:
                    N(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 45:
                    boolean zO = O();
                    parcel2.writeNoException();
                    parcel2.writeInt(zO ? 1 : 0);
                    return true;
                case 46:
                    F0(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 47:
                    int iM2 = M();
                    parcel2.writeNoException();
                    parcel2.writeInt(iM2);
                    return true;
                case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                    a0(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                    a(parcel.readFloat());
                    parcel2.writeNoException();
                    return true;
                case 50:
                    Bundle bundleV = v();
                    parcel2.writeNoException();
                    C0009b.f(parcel2, bundleV, 1);
                    return true;
                case AD_REWARD_USER_VALUE:
                    F((RatingCompat) C0009b.d(parcel, RatingCompat.CREATOR), (Bundle) C0009b.d(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i10, parcel, parcel2, i11);
            }
        }
    }

    public static class C0009b {
        public static Object d(Parcel parcel, Parcelable.Creator creator) {
            if (parcel.readInt() != 0) {
                return creator.createFromParcel(parcel);
            }
            return null;
        }

        public static void e(Parcel parcel, List list, int i10) {
            if (list == null) {
                parcel.writeInt(-1);
                return;
            }
            int size = list.size();
            parcel.writeInt(size);
            for (int i11 = 0; i11 < size; i11++) {
                f(parcel, (Parcelable) list.get(i11), i10);
            }
        }

        public static void f(Parcel parcel, Parcelable parcelable, int i10) {
            if (parcelable == null) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(1);
                parcelable.writeToParcel(parcel, i10);
            }
        }
    }

    void A(Uri uri, Bundle bundle);

    void A0(int i10, int i11, String str);

    boolean E(KeyEvent keyEvent);

    void F(RatingCompat ratingCompat, Bundle bundle);

    void F0(boolean z10);

    void I(MediaDescriptionCompat mediaDescriptionCompat, int i10);

    List L0();

    int M();

    void N(int i10);

    ParcelableVolumeInfo N0();

    boolean O();

    void S(String str, Bundle bundle, MediaSessionCompat.ResultReceiverWrapper resultReceiverWrapper);

    void X(long j10);

    void Y(boolean z10);

    void a(float f10);

    void a0(int i10);

    void b();

    void e0(android.support.v4.media.session.a aVar);

    void f(String str, Bundle bundle);

    void f0(RatingCompat ratingCompat);

    void g0(int i10, int i11, String str);

    Bundle getExtras();

    long getFlags();

    MediaMetadataCompat getMetadata();

    String getPackageName();

    PlaybackStateCompat getPlaybackState();

    int getRepeatMode();

    String getTag();

    boolean h();

    void h0(MediaDescriptionCompat mediaDescriptionCompat);

    boolean i0();

    void j0(MediaDescriptionCompat mediaDescriptionCompat);

    void k(Uri uri, Bundle bundle);

    PendingIntent l();

    int m();

    void m0(String str, Bundle bundle);

    void next();

    void pause();

    void play();

    void prepare();

    void previous();

    CharSequence s0();

    void seekTo(long j10);

    void setRepeatMode(int i10);

    void stop();

    void t(String str, Bundle bundle);

    void t0(android.support.v4.media.session.a aVar);

    void u0();

    Bundle v();

    void x(String str, Bundle bundle);

    void y(String str, Bundle bundle);
}
