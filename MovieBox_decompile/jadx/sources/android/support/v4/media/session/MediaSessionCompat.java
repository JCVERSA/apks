package android.support.v4.media.session;

import android.annotation.SuppressLint;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.media.MediaDescription;
import android.media.MediaMetadata;
import android.media.Rating;
import android.media.session.MediaSession;
import android.media.session.PlaybackState;
import android.net.Uri;
import android.os.BadParcelableException;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.os.SystemClock;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.RatingCompat;
import android.text.TextUtils;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.ViewConfiguration;
import androidx.media.session.MediaButtonReceiver;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import org.mvel2.ast.ASTNode;

public class MediaSessionCompat {

    static int f481d;

    private final c f482a;

    private final MediaControllerCompat f483b;

    private final ArrayList f484c;

    @SuppressLint({"BanParcelableUsage"})
    public static final class QueueItem implements Parcelable {
        public static final Parcelable.Creator<QueueItem> CREATOR = new a();
        public static final int UNKNOWN_ID = -1;
        private final MediaDescriptionCompat mDescription;
        private final long mId;
        private MediaSession.QueueItem mItemFwk;

        class a implements Parcelable.Creator {
            a() {
            }

            @Override
            public QueueItem createFromParcel(Parcel parcel) {
                return new QueueItem(parcel);
            }

            @Override
            public QueueItem[] newArray(int i10) {
                return new QueueItem[i10];
            }
        }

        private static class b {
            static MediaSession.QueueItem a(MediaDescription mediaDescription, long j10) {
                return new MediaSession.QueueItem(mediaDescription, j10);
            }

            static MediaDescription b(MediaSession.QueueItem queueItem) {
                return queueItem.getDescription();
            }

            static long c(MediaSession.QueueItem queueItem) {
                return queueItem.getQueueId();
            }
        }

        public QueueItem(MediaDescriptionCompat mediaDescriptionCompat, long j10) {
            this(null, mediaDescriptionCompat, j10);
        }

        public static QueueItem fromQueueItem(Object obj) {
            if (obj == null) {
                return null;
            }
            MediaSession.QueueItem queueItem = (MediaSession.QueueItem) obj;
            return new QueueItem(queueItem, MediaDescriptionCompat.fromMediaDescription(b.b(queueItem)), b.c(queueItem));
        }

        public static List<QueueItem> fromQueueItemList(List<?> list) {
            if (list == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList(list.size());
            Iterator<?> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(fromQueueItem(it.next()));
            }
            return arrayList;
        }

        @Override
        public int describeContents() {
            return 0;
        }

        public MediaDescriptionCompat getDescription() {
            return this.mDescription;
        }

        public long getQueueId() {
            return this.mId;
        }

        public Object getQueueItem() {
            MediaSession.QueueItem queueItem = this.mItemFwk;
            if (queueItem != null) {
                return queueItem;
            }
            MediaSession.QueueItem queueItemA = b.a((MediaDescription) this.mDescription.getMediaDescription(), this.mId);
            this.mItemFwk = queueItemA;
            return queueItemA;
        }

        public String toString() {
            return "MediaSession.QueueItem {Description=" + this.mDescription + ", Id=" + this.mId + " }";
        }

        @Override
        public void writeToParcel(Parcel parcel, int i10) {
            this.mDescription.writeToParcel(parcel, i10);
            parcel.writeLong(this.mId);
        }

        private QueueItem(MediaSession.QueueItem queueItem, MediaDescriptionCompat mediaDescriptionCompat, long j10) {
            if (mediaDescriptionCompat == null) {
                throw new IllegalArgumentException("Description cannot be null");
            }
            if (j10 == -1) {
                throw new IllegalArgumentException("Id cannot be QueueItem.UNKNOWN_ID");
            }
            this.mDescription = mediaDescriptionCompat;
            this.mId = j10;
            this.mItemFwk = queueItem;
        }

        QueueItem(Parcel parcel) {
            this.mDescription = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
            this.mId = parcel.readLong();
        }
    }

    @SuppressLint({"BanParcelableUsage"})
    static final class ResultReceiverWrapper implements Parcelable {
        public static final Parcelable.Creator<ResultReceiverWrapper> CREATOR = new a();

        ResultReceiver f485a;

        class a implements Parcelable.Creator {
            a() {
            }

            @Override
            public ResultReceiverWrapper createFromParcel(Parcel parcel) {
                return new ResultReceiverWrapper(parcel);
            }

            @Override
            public ResultReceiverWrapper[] newArray(int i10) {
                return new ResultReceiverWrapper[i10];
            }
        }

        ResultReceiverWrapper(Parcel parcel) {
            this.f485a = (ResultReceiver) ResultReceiver.CREATOR.createFromParcel(parcel);
        }

        @Override
        public int describeContents() {
            return 0;
        }

        @Override
        public void writeToParcel(Parcel parcel, int i10) {
            this.f485a.writeToParcel(parcel, i10);
        }
    }

    @SuppressLint({"BanParcelableUsage"})
    public static final class Token implements Parcelable {
        public static final Parcelable.Creator<Token> CREATOR = new a();
        private android.support.v4.media.session.b mExtraBinder;
        private final Object mInner;
        private final Object mLock;
        private androidx.versionedparcelable.c mSession2Token;

        class a implements Parcelable.Creator {
            a() {
            }

            @Override
            public Token createFromParcel(Parcel parcel) {
                return new Token(parcel.readParcelable(null));
            }

            @Override
            public Token[] newArray(int i10) {
                return new Token[i10];
            }
        }

        Token(Object obj) {
            this(obj, null, null);
        }

        public static Token fromBundle(Bundle bundle) {
            if (bundle == null) {
                return null;
            }
            bundle.setClassLoader(Token.class.getClassLoader());
            android.support.v4.media.session.b bVarX0 = android.support.v4.media.session.b.a.X0(androidx.core.app.f.a(bundle, "android.support.v4.media.session.EXTRA_BINDER"));
            androidx.versionedparcelable.c cVarB = androidx.versionedparcelable.a.b(bundle, "android.support.v4.media.session.SESSION_TOKEN2");
            Token token = (Token) bundle.getParcelable("android.support.v4.media.session.TOKEN");
            if (token == null) {
                return null;
            }
            return new Token(token.mInner, bVarX0, cVarB);
        }

        public static Token fromToken(Object obj) {
            return fromToken(obj, null);
        }

        @Override
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Token)) {
                return false;
            }
            Token token = (Token) obj;
            Object obj2 = this.mInner;
            if (obj2 == null) {
                return token.mInner == null;
            }
            Object obj3 = token.mInner;
            if (obj3 == null) {
                return false;
            }
            return obj2.equals(obj3);
        }

        public android.support.v4.media.session.b getExtraBinder() {
            android.support.v4.media.session.b bVar;
            synchronized (this.mLock) {
                bVar = this.mExtraBinder;
            }
            return bVar;
        }

        public androidx.versionedparcelable.c getSession2Token() {
            androidx.versionedparcelable.c cVar;
            synchronized (this.mLock) {
                cVar = this.mSession2Token;
            }
            return cVar;
        }

        public Object getToken() {
            return this.mInner;
        }

        public int hashCode() {
            Object obj = this.mInner;
            if (obj == null) {
                return 0;
            }
            return obj.hashCode();
        }

        public void setExtraBinder(android.support.v4.media.session.b bVar) {
            synchronized (this.mLock) {
                this.mExtraBinder = bVar;
            }
        }

        public void setSession2Token(androidx.versionedparcelable.c cVar) {
            synchronized (this.mLock) {
                this.mSession2Token = cVar;
            }
        }

        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putParcelable("android.support.v4.media.session.TOKEN", this);
            synchronized (this.mLock) {
                try {
                    android.support.v4.media.session.b bVar = this.mExtraBinder;
                    if (bVar != null) {
                        androidx.core.app.f.b(bundle, "android.support.v4.media.session.EXTRA_BINDER", bVar.asBinder());
                    }
                    androidx.versionedparcelable.c cVar = this.mSession2Token;
                    if (cVar != null) {
                        androidx.versionedparcelable.a.c(bundle, "android.support.v4.media.session.SESSION_TOKEN2", cVar);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return bundle;
        }

        @Override
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeParcelable((Parcelable) this.mInner, i10);
        }

        Token(Object obj, android.support.v4.media.session.b bVar) {
            this(obj, bVar, null);
        }

        public static Token fromToken(Object obj, android.support.v4.media.session.b bVar) {
            if (obj == null) {
                return null;
            }
            if (obj instanceof MediaSession.Token) {
                return new Token(obj, bVar);
            }
            throw new IllegalArgumentException("token is not a valid MediaSession.Token object");
        }

        Token(Object obj, android.support.v4.media.session.b bVar, androidx.versionedparcelable.c cVar) {
            this.mLock = new Object();
            this.mInner = obj;
            this.mExtraBinder = bVar;
            this.mSession2Token = cVar;
        }
    }

    class a extends b {
        a() {
        }
    }

    public static abstract class b {

        private boolean f489c;

        a f491e;

        final Object f487a = new Object();

        final MediaSession.Callback f488b = new C0005b();

        WeakReference f490d = new WeakReference(null);

        private class a extends Handler {
            a(Looper looper) {
                super(looper);
            }

            @Override
            public void handleMessage(Message message) {
                c cVar;
                b bVar;
                a aVar;
                if (message.what == 1) {
                    synchronized (b.this.f487a) {
                        cVar = (c) b.this.f490d.get();
                        bVar = b.this;
                        aVar = bVar.f491e;
                    }
                    if (cVar == null || bVar != cVar.f() || aVar == null) {
                        return;
                    }
                    cVar.i((androidx.media.b) message.obj);
                    b.this.a(cVar, aVar);
                    cVar.i(null);
                }
            }
        }

        private class C0005b extends MediaSession.Callback {
            C0005b() {
            }

            private void a(c cVar) {
                cVar.i(null);
            }

            private d b() {
                d dVar;
                synchronized (b.this.f487a) {
                    dVar = (d) b.this.f490d.get();
                }
                if (dVar == null || b.this != dVar.f()) {
                    return null;
                }
                return dVar;
            }

            private void c(c cVar) {
                if (Build.VERSION.SDK_INT >= 28) {
                    return;
                }
                String strE = cVar.e();
                if (TextUtils.isEmpty(strE)) {
                    strE = "android.media.session.MediaController";
                }
                cVar.i(new androidx.media.b(strE, -1, -1));
            }

            @Override
            public void onCommand(String str, Bundle bundle, ResultReceiver resultReceiver) {
                d dVarB = b();
                if (dVarB == null) {
                    return;
                }
                MediaSessionCompat.a(bundle);
                c(dVarB);
                try {
                    QueueItem queueItem = null;
                    IBinder iBinderAsBinder = null;
                    queueItem = null;
                    if (str.equals("android.support.v4.media.session.command.GET_EXTRA_BINDER")) {
                        Bundle bundle2 = new Bundle();
                        Token tokenA = dVarB.a();
                        android.support.v4.media.session.b extraBinder = tokenA.getExtraBinder();
                        if (extraBinder != null) {
                            iBinderAsBinder = extraBinder.asBinder();
                        }
                        androidx.core.app.f.b(bundle2, "android.support.v4.media.session.EXTRA_BINDER", iBinderAsBinder);
                        androidx.versionedparcelable.a.c(bundle2, "android.support.v4.media.session.SESSION_TOKEN2", tokenA.getSession2Token());
                        resultReceiver.send(0, bundle2);
                    } else if (str.equals("android.support.v4.media.session.command.ADD_QUEUE_ITEM")) {
                        b.this.b((MediaDescriptionCompat) bundle.getParcelable("android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"));
                    } else if (str.equals("android.support.v4.media.session.command.ADD_QUEUE_ITEM_AT")) {
                        b.this.c((MediaDescriptionCompat) bundle.getParcelable("android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"), bundle.getInt("android.support.v4.media.session.command.ARGUMENT_INDEX"));
                    } else if (str.equals("android.support.v4.media.session.command.REMOVE_QUEUE_ITEM")) {
                        b.this.q((MediaDescriptionCompat) bundle.getParcelable("android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"));
                    } else if (!str.equals("android.support.v4.media.session.command.REMOVE_QUEUE_ITEM_AT")) {
                        b.this.d(str, bundle, resultReceiver);
                    } else if (dVarB.f502i != null) {
                        int i10 = bundle.getInt("android.support.v4.media.session.command.ARGUMENT_INDEX", -1);
                        if (i10 >= 0 && i10 < dVarB.f502i.size()) {
                            queueItem = (QueueItem) dVarB.f502i.get(i10);
                        }
                        if (queueItem != null) {
                            b.this.q(queueItem.getDescription());
                        }
                    }
                } catch (BadParcelableException unused) {
                    Log.e("MediaSessionCompat", "Could not unparcel the extra data.");
                }
                a(dVarB);
            }

            @Override
            public void onCustomAction(String str, Bundle bundle) {
                d dVarB = b();
                if (dVarB == null) {
                    return;
                }
                MediaSessionCompat.a(bundle);
                c(dVarB);
                try {
                    if (str.equals("android.support.v4.media.session.action.PLAY_FROM_URI")) {
                        Uri uri = (Uri) bundle.getParcelable("android.support.v4.media.session.action.ARGUMENT_URI");
                        Bundle bundle2 = bundle.getBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS");
                        MediaSessionCompat.a(bundle2);
                        b.this.l(uri, bundle2);
                    } else if (str.equals("android.support.v4.media.session.action.PREPARE")) {
                        b.this.m();
                    } else if (str.equals("android.support.v4.media.session.action.PREPARE_FROM_MEDIA_ID")) {
                        String string = bundle.getString("android.support.v4.media.session.action.ARGUMENT_MEDIA_ID");
                        Bundle bundle3 = bundle.getBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS");
                        MediaSessionCompat.a(bundle3);
                        b.this.n(string, bundle3);
                    } else if (str.equals("android.support.v4.media.session.action.PREPARE_FROM_SEARCH")) {
                        String string2 = bundle.getString("android.support.v4.media.session.action.ARGUMENT_QUERY");
                        Bundle bundle4 = bundle.getBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS");
                        MediaSessionCompat.a(bundle4);
                        b.this.o(string2, bundle4);
                    } else if (str.equals("android.support.v4.media.session.action.PREPARE_FROM_URI")) {
                        Uri uri2 = (Uri) bundle.getParcelable("android.support.v4.media.session.action.ARGUMENT_URI");
                        Bundle bundle5 = bundle.getBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS");
                        MediaSessionCompat.a(bundle5);
                        b.this.p(uri2, bundle5);
                    } else if (str.equals("android.support.v4.media.session.action.SET_CAPTIONING_ENABLED")) {
                        b.this.t(bundle.getBoolean("android.support.v4.media.session.action.ARGUMENT_CAPTIONING_ENABLED"));
                    } else if (str.equals("android.support.v4.media.session.action.SET_REPEAT_MODE")) {
                        b.this.x(bundle.getInt("android.support.v4.media.session.action.ARGUMENT_REPEAT_MODE"));
                    } else if (str.equals("android.support.v4.media.session.action.SET_SHUFFLE_MODE")) {
                        b.this.y(bundle.getInt("android.support.v4.media.session.action.ARGUMENT_SHUFFLE_MODE"));
                    } else if (str.equals("android.support.v4.media.session.action.SET_RATING")) {
                        RatingCompat ratingCompat = (RatingCompat) bundle.getParcelable("android.support.v4.media.session.action.ARGUMENT_RATING");
                        Bundle bundle6 = bundle.getBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS");
                        MediaSessionCompat.a(bundle6);
                        b.this.w(ratingCompat, bundle6);
                    } else if (str.equals("android.support.v4.media.session.action.SET_PLAYBACK_SPEED")) {
                        b.this.u(bundle.getFloat("android.support.v4.media.session.action.ARGUMENT_PLAYBACK_SPEED", 1.0f));
                    } else {
                        b.this.e(str, bundle);
                    }
                } catch (BadParcelableException unused) {
                    Log.e("MediaSessionCompat", "Could not unparcel the data.");
                }
                a(dVarB);
            }

            @Override
            public void onFastForward() {
                d dVarB = b();
                if (dVarB == null) {
                    return;
                }
                c(dVarB);
                b.this.f();
                a(dVarB);
            }

            @Override
            public boolean onMediaButtonEvent(Intent intent) {
                d dVarB = b();
                if (dVarB == null) {
                    return false;
                }
                c(dVarB);
                boolean zG = b.this.g(intent);
                a(dVarB);
                return zG || super.onMediaButtonEvent(intent);
            }

            @Override
            public void onPause() {
                d dVarB = b();
                if (dVarB == null) {
                    return;
                }
                c(dVarB);
                b.this.h();
                a(dVarB);
            }

            @Override
            public void onPlay() {
                d dVarB = b();
                if (dVarB == null) {
                    return;
                }
                c(dVarB);
                b.this.i();
                a(dVarB);
            }

            @Override
            public void onPlayFromMediaId(String str, Bundle bundle) {
                d dVarB = b();
                if (dVarB == null) {
                    return;
                }
                MediaSessionCompat.a(bundle);
                c(dVarB);
                b.this.j(str, bundle);
                a(dVarB);
            }

            @Override
            public void onPlayFromSearch(String str, Bundle bundle) {
                d dVarB = b();
                if (dVarB == null) {
                    return;
                }
                MediaSessionCompat.a(bundle);
                c(dVarB);
                b.this.k(str, bundle);
                a(dVarB);
            }

            @Override
            public void onPlayFromUri(Uri uri, Bundle bundle) {
                d dVarB = b();
                if (dVarB == null) {
                    return;
                }
                MediaSessionCompat.a(bundle);
                c(dVarB);
                b.this.l(uri, bundle);
                a(dVarB);
            }

            @Override
            public void onPrepare() {
                d dVarB = b();
                if (dVarB == null) {
                    return;
                }
                c(dVarB);
                b.this.m();
                a(dVarB);
            }

            @Override
            public void onPrepareFromMediaId(String str, Bundle bundle) {
                d dVarB = b();
                if (dVarB == null) {
                    return;
                }
                MediaSessionCompat.a(bundle);
                c(dVarB);
                b.this.n(str, bundle);
                a(dVarB);
            }

            @Override
            public void onPrepareFromSearch(String str, Bundle bundle) {
                d dVarB = b();
                if (dVarB == null) {
                    return;
                }
                MediaSessionCompat.a(bundle);
                c(dVarB);
                b.this.o(str, bundle);
                a(dVarB);
            }

            @Override
            public void onPrepareFromUri(Uri uri, Bundle bundle) {
                d dVarB = b();
                if (dVarB == null) {
                    return;
                }
                MediaSessionCompat.a(bundle);
                c(dVarB);
                b.this.p(uri, bundle);
                a(dVarB);
            }

            @Override
            public void onRewind() {
                d dVarB = b();
                if (dVarB == null) {
                    return;
                }
                c(dVarB);
                b.this.r();
                a(dVarB);
            }

            @Override
            public void onSeekTo(long j10) {
                d dVarB = b();
                if (dVarB == null) {
                    return;
                }
                c(dVarB);
                b.this.s(j10);
                a(dVarB);
            }

            @Override
            public void onSetPlaybackSpeed(float f10) {
                d dVarB = b();
                if (dVarB == null) {
                    return;
                }
                c(dVarB);
                b.this.u(f10);
                a(dVarB);
            }

            @Override
            public void onSetRating(Rating rating) {
                d dVarB = b();
                if (dVarB == null) {
                    return;
                }
                c(dVarB);
                b.this.v(RatingCompat.fromRating(rating));
                a(dVarB);
            }

            @Override
            public void onSkipToNext() {
                d dVarB = b();
                if (dVarB == null) {
                    return;
                }
                c(dVarB);
                b.this.z();
                a(dVarB);
            }

            @Override
            public void onSkipToPrevious() {
                d dVarB = b();
                if (dVarB == null) {
                    return;
                }
                c(dVarB);
                b.this.A();
                a(dVarB);
            }

            @Override
            public void onSkipToQueueItem(long j10) {
                d dVarB = b();
                if (dVarB == null) {
                    return;
                }
                c(dVarB);
                b.this.B(j10);
                a(dVarB);
            }

            @Override
            public void onStop() {
                d dVarB = b();
                if (dVarB == null) {
                    return;
                }
                c(dVarB);
                b.this.C();
                a(dVarB);
            }
        }

        public void A() {
        }

        public void B(long j10) {
        }

        public void C() {
        }

        void D(c cVar, Handler handler) {
            synchronized (this.f487a) {
                try {
                    this.f490d = new WeakReference(cVar);
                    a aVar = this.f491e;
                    a aVar2 = null;
                    if (aVar != null) {
                        aVar.removeCallbacksAndMessages(null);
                    }
                    if (cVar != null && handler != null) {
                        aVar2 = new a(handler.getLooper());
                    }
                    this.f491e = aVar2;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        void a(c cVar, Handler handler) {
            if (this.f489c) {
                this.f489c = false;
                handler.removeMessages(1);
                PlaybackStateCompat playbackState = cVar.getPlaybackState();
                long actions = playbackState == null ? 0L : playbackState.getActions();
                boolean z10 = playbackState != null && playbackState.getState() == 3;
                boolean z11 = (516 & actions) != 0;
                boolean z12 = (actions & 514) != 0;
                if (z10 && z12) {
                    h();
                } else {
                    if (z10 || !z11) {
                        return;
                    }
                    i();
                }
            }
        }

        public void b(MediaDescriptionCompat mediaDescriptionCompat) {
        }

        public void c(MediaDescriptionCompat mediaDescriptionCompat, int i10) {
        }

        public void d(String str, Bundle bundle, ResultReceiver resultReceiver) {
        }

        public void e(String str, Bundle bundle) {
        }

        public void f() {
        }

        public boolean g(Intent intent) {
            c cVar;
            a aVar;
            KeyEvent keyEvent;
            if (Build.VERSION.SDK_INT >= 27) {
                return false;
            }
            synchronized (this.f487a) {
                cVar = (c) this.f490d.get();
                aVar = this.f491e;
            }
            if (cVar == null || aVar == null || (keyEvent = (KeyEvent) intent.getParcelableExtra("android.intent.extra.KEY_EVENT")) == null || keyEvent.getAction() != 0) {
                return false;
            }
            androidx.media.b bVarJ = cVar.j();
            int keyCode = keyEvent.getKeyCode();
            if (keyCode != 79 && keyCode != 85) {
                a(cVar, aVar);
                return false;
            }
            if (keyEvent.getRepeatCount() != 0) {
                a(cVar, aVar);
            } else if (this.f489c) {
                aVar.removeMessages(1);
                this.f489c = false;
                PlaybackStateCompat playbackState = cVar.getPlaybackState();
                if (((playbackState == null ? 0L : playbackState.getActions()) & 32) != 0) {
                    z();
                }
            } else {
                this.f489c = true;
                aVar.sendMessageDelayed(aVar.obtainMessage(1, bVarJ), ViewConfiguration.getDoubleTapTimeout());
            }
            return true;
        }

        public void h() {
        }

        public void i() {
        }

        public void j(String str, Bundle bundle) {
        }

        public void k(String str, Bundle bundle) {
        }

        public void l(Uri uri, Bundle bundle) {
        }

        public void m() {
        }

        public void n(String str, Bundle bundle) {
        }

        public void o(String str, Bundle bundle) {
        }

        public void p(Uri uri, Bundle bundle) {
        }

        public void q(MediaDescriptionCompat mediaDescriptionCompat) {
        }

        public void r() {
        }

        public void s(long j10) {
        }

        public void t(boolean z10) {
        }

        public void u(float f10) {
        }

        public void v(RatingCompat ratingCompat) {
        }

        public void w(RatingCompat ratingCompat, Bundle bundle) {
        }

        public void x(int i10) {
        }

        public void y(int i10) {
        }

        public void z() {
        }
    }

    interface c {
        Token a();

        void b(b bVar, Handler handler);

        void c(MediaMetadataCompat mediaMetadataCompat);

        void d(PlaybackStateCompat playbackStateCompat);

        String e();

        b f();

        void g(PendingIntent pendingIntent);

        PlaybackStateCompat getPlaybackState();

        void h(boolean z10);

        void i(androidx.media.b bVar);

        androidx.media.b j();
    }

    static class d implements c {

        final MediaSession f494a;

        final a f495b;

        final Token f496c;

        Bundle f498e;

        PlaybackStateCompat f501h;

        List f502i;

        MediaMetadataCompat f503j;

        int f504k;

        boolean f505l;

        int f506m;

        int f507n;

        b f508o;

        androidx.media.b f509p;

        final Object f497d = new Object();

        boolean f499f = false;

        final RemoteCallbackList f500g = new RemoteCallbackList();

        private static class a extends android.support.v4.media.session.b.a {

            private final AtomicReference f510a;

            a(d dVar) {
                this.f510a = new AtomicReference(dVar);
            }

            @Override
            public void A(Uri uri, Bundle bundle) {
                throw new AssertionError();
            }

            @Override
            public void A0(int i10, int i11, String str) {
                throw new AssertionError();
            }

            @Override
            public boolean E(KeyEvent keyEvent) {
                throw new AssertionError();
            }

            @Override
            public void F(RatingCompat ratingCompat, Bundle bundle) {
                throw new AssertionError();
            }

            @Override
            public void F0(boolean z10) {
                throw new AssertionError();
            }

            @Override
            public void I(MediaDescriptionCompat mediaDescriptionCompat, int i10) {
                throw new AssertionError();
            }

            @Override
            public List L0() {
                return null;
            }

            @Override
            public int M() {
                d dVar = (d) this.f510a.get();
                if (dVar != null) {
                    return dVar.f507n;
                }
                return -1;
            }

            @Override
            public void N(int i10) {
                throw new AssertionError();
            }

            @Override
            public ParcelableVolumeInfo N0() {
                throw new AssertionError();
            }

            @Override
            public boolean O() {
                d dVar = (d) this.f510a.get();
                return dVar != null && dVar.f505l;
            }

            @Override
            public void S(String str, Bundle bundle, ResultReceiverWrapper resultReceiverWrapper) {
                throw new AssertionError();
            }

            @Override
            public void X(long j10) {
                throw new AssertionError();
            }

            @Override
            public void Y(boolean z10) {
            }

            @Override
            public void a(float f10) {
                throw new AssertionError();
            }

            @Override
            public void a0(int i10) {
                throw new AssertionError();
            }

            @Override
            public void b() {
                throw new AssertionError();
            }

            @Override
            public void e0(android.support.v4.media.session.a aVar) {
                d dVar = (d) this.f510a.get();
                if (dVar == null) {
                    return;
                }
                dVar.f500g.register(aVar, new androidx.media.b("android.media.session.MediaController", Binder.getCallingPid(), Binder.getCallingUid()));
                synchronized (dVar.f497d) {
                }
            }

            @Override
            public void f(String str, Bundle bundle) {
                throw new AssertionError();
            }

            @Override
            public void f0(RatingCompat ratingCompat) {
                throw new AssertionError();
            }

            @Override
            public void g0(int i10, int i11, String str) {
                throw new AssertionError();
            }

            @Override
            public Bundle getExtras() {
                throw new AssertionError();
            }

            @Override
            public long getFlags() {
                throw new AssertionError();
            }

            @Override
            public MediaMetadataCompat getMetadata() {
                throw new AssertionError();
            }

            @Override
            public String getPackageName() {
                throw new AssertionError();
            }

            @Override
            public PlaybackStateCompat getPlaybackState() {
                d dVar = (d) this.f510a.get();
                if (dVar != null) {
                    return MediaSessionCompat.c(dVar.f501h, dVar.f503j);
                }
                return null;
            }

            @Override
            public int getRepeatMode() {
                d dVar = (d) this.f510a.get();
                if (dVar != null) {
                    return dVar.f506m;
                }
                return -1;
            }

            @Override
            public String getTag() {
                throw new AssertionError();
            }

            @Override
            public boolean h() {
                return false;
            }

            @Override
            public void h0(MediaDescriptionCompat mediaDescriptionCompat) {
                throw new AssertionError();
            }

            @Override
            public boolean i0() {
                throw new AssertionError();
            }

            @Override
            public void j0(MediaDescriptionCompat mediaDescriptionCompat) {
                throw new AssertionError();
            }

            @Override
            public void k(Uri uri, Bundle bundle) {
                throw new AssertionError();
            }

            @Override
            public PendingIntent l() {
                throw new AssertionError();
            }

            @Override
            public int m() {
                d dVar = (d) this.f510a.get();
                if (dVar != null) {
                    return dVar.f504k;
                }
                return 0;
            }

            @Override
            public void m0(String str, Bundle bundle) {
                throw new AssertionError();
            }

            @Override
            public void next() {
                throw new AssertionError();
            }

            @Override
            public void pause() {
                throw new AssertionError();
            }

            @Override
            public void play() {
                throw new AssertionError();
            }

            @Override
            public void prepare() {
                throw new AssertionError();
            }

            @Override
            public void previous() {
                throw new AssertionError();
            }

            @Override
            public CharSequence s0() {
                throw new AssertionError();
            }

            @Override
            public void seekTo(long j10) {
                throw new AssertionError();
            }

            @Override
            public void setRepeatMode(int i10) {
                throw new AssertionError();
            }

            @Override
            public void stop() {
                throw new AssertionError();
            }

            @Override
            public void t(String str, Bundle bundle) {
                throw new AssertionError();
            }

            @Override
            public void t0(android.support.v4.media.session.a aVar) {
                d dVar = (d) this.f510a.get();
                if (dVar == null) {
                    return;
                }
                dVar.f500g.unregister(aVar);
                Binder.getCallingPid();
                Binder.getCallingUid();
                synchronized (dVar.f497d) {
                }
            }

            @Override
            public void u0() {
                throw new AssertionError();
            }

            @Override
            public Bundle v() {
                d dVar = (d) this.f510a.get();
                if (dVar.f498e == null) {
                    return null;
                }
                return new Bundle(dVar.f498e);
            }

            @Override
            public void x(String str, Bundle bundle) {
                throw new AssertionError();
            }

            @Override
            public void y(String str, Bundle bundle) {
                throw new AssertionError();
            }
        }

        d(Context context, String str, androidx.versionedparcelable.c cVar, Bundle bundle) {
            MediaSession mediaSessionK = k(context, str, bundle);
            this.f494a = mediaSessionK;
            a aVar = new a(this);
            this.f495b = aVar;
            this.f496c = new Token(mediaSessionK.getSessionToken(), aVar, cVar);
            this.f498e = bundle;
            l(3);
        }

        @Override
        public Token a() {
            return this.f496c;
        }

        @Override
        public void b(b bVar, Handler handler) {
            synchronized (this.f497d) {
                try {
                    this.f508o = bVar;
                    this.f494a.setCallback(bVar == null ? null : bVar.f488b, handler);
                    if (bVar != null) {
                        bVar.D(this, handler);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override
        public void c(MediaMetadataCompat mediaMetadataCompat) {
            this.f503j = mediaMetadataCompat;
            this.f494a.setMetadata(mediaMetadataCompat == null ? null : (MediaMetadata) mediaMetadataCompat.getMediaMetadata());
        }

        @Override
        public void d(PlaybackStateCompat playbackStateCompat) {
            this.f501h = playbackStateCompat;
            synchronized (this.f497d) {
                for (int iBeginBroadcast = this.f500g.beginBroadcast() - 1; iBeginBroadcast >= 0; iBeginBroadcast--) {
                    try {
                        ((android.support.v4.media.session.a) this.f500g.getBroadcastItem(iBeginBroadcast)).W0(playbackStateCompat);
                    } catch (RemoteException unused) {
                    }
                }
                this.f500g.finishBroadcast();
            }
            this.f494a.setPlaybackState(playbackStateCompat == null ? null : (PlaybackState) playbackStateCompat.getPlaybackState());
        }

        @Override
        public String e() {
            if (Build.VERSION.SDK_INT < 24) {
                return null;
            }
            try {
                return (String) this.f494a.getClass().getMethod("getCallingPackage", null).invoke(this.f494a, null);
            } catch (Exception e10) {
                Log.e("MediaSessionCompat", "Cannot execute MediaSession.getCallingPackage()", e10);
                return null;
            }
        }

        @Override
        public b f() {
            b bVar;
            synchronized (this.f497d) {
                bVar = this.f508o;
            }
            return bVar;
        }

        @Override
        public void g(PendingIntent pendingIntent) {
            this.f494a.setMediaButtonReceiver(pendingIntent);
        }

        @Override
        public PlaybackStateCompat getPlaybackState() {
            return this.f501h;
        }

        @Override
        public void h(boolean z10) {
            this.f494a.setActive(z10);
        }

        @Override
        public void i(androidx.media.b bVar) {
            synchronized (this.f497d) {
                this.f509p = bVar;
            }
        }

        @Override
        public androidx.media.b j() {
            androidx.media.b bVar;
            synchronized (this.f497d) {
                bVar = this.f509p;
            }
            return bVar;
        }

        public MediaSession k(Context context, String str, Bundle bundle) {
            return new MediaSession(context, str);
        }

        public void l(int i10) {
            this.f494a.setFlags(i10 | 3);
        }
    }

    static class e extends d {
        e(Context context, String str, androidx.versionedparcelable.c cVar, Bundle bundle) {
            super(context, str, cVar, bundle);
        }
    }

    static class f extends e {
        f(Context context, String str, androidx.versionedparcelable.c cVar, Bundle bundle) {
            super(context, str, cVar, bundle);
        }

        @Override
        public void i(androidx.media.b bVar) {
        }

        @Override
        public final androidx.media.b j() {
            return new androidx.media.b(this.f494a.getCurrentControllerInfo());
        }
    }

    static class g extends f {
        g(Context context, String str, androidx.versionedparcelable.c cVar, Bundle bundle) {
            super(context, str, cVar, bundle);
        }

        @Override
        public MediaSession k(Context context, String str, Bundle bundle) {
            return android.support.v4.media.session.e.a(context, str, bundle);
        }
    }

    public MediaSessionCompat(Context context, String str) {
        this(context, str, null, null);
    }

    public static void a(Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader(MediaSessionCompat.class.getClassLoader());
        }
    }

    static PlaybackStateCompat c(PlaybackStateCompat playbackStateCompat, MediaMetadataCompat mediaMetadataCompat) {
        long j10;
        if (playbackStateCompat == null) {
            return playbackStateCompat;
        }
        long j11 = -1;
        if (playbackStateCompat.getPosition() == -1) {
            return playbackStateCompat;
        }
        if (playbackStateCompat.getState() != 3 && playbackStateCompat.getState() != 4 && playbackStateCompat.getState() != 5) {
            return playbackStateCompat;
        }
        long lastPositionUpdateTime = playbackStateCompat.getLastPositionUpdateTime();
        if (lastPositionUpdateTime <= 0) {
            return playbackStateCompat;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long playbackSpeed = ((long) (playbackStateCompat.getPlaybackSpeed() * (jElapsedRealtime - lastPositionUpdateTime))) + playbackStateCompat.getPosition();
        if (mediaMetadataCompat != null && mediaMetadataCompat.containsKey(MediaMetadataCompat.METADATA_KEY_DURATION)) {
            j11 = mediaMetadataCompat.getLong(MediaMetadataCompat.METADATA_KEY_DURATION);
        }
        if (j11 < 0 || playbackSpeed <= j11) {
            j10 = playbackSpeed < 0 ? 0L : playbackSpeed;
        } else {
            j10 = j11;
        }
        return new PlaybackStateCompat.d(playbackStateCompat).d(playbackStateCompat.getState(), j10, playbackStateCompat.getPlaybackSpeed(), jElapsedRealtime).a();
    }

    public static Bundle j(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        a(bundle);
        try {
            bundle.isEmpty();
            return bundle;
        } catch (BadParcelableException unused) {
            Log.e("MediaSessionCompat", "Could not unparcel the data.");
            return null;
        }
    }

    public Token b() {
        return this.f482a.a();
    }

    public void d(boolean z10) {
        this.f482a.h(z10);
        Iterator it = this.f484c.iterator();
        if (it.hasNext()) {
            android.support.v4.media.session.c.a(it.next());
            throw null;
        }
    }

    public void e(b bVar) {
        f(bVar, null);
    }

    public void f(b bVar, Handler handler) {
        if (bVar == null) {
            this.f482a.b(null, null);
            return;
        }
        c cVar = this.f482a;
        if (handler == null) {
            handler = new Handler();
        }
        cVar.b(bVar, handler);
    }

    public void g(PendingIntent pendingIntent) {
        this.f482a.g(pendingIntent);
    }

    public void h(MediaMetadataCompat mediaMetadataCompat) {
        this.f482a.c(mediaMetadataCompat);
    }

    public void i(PlaybackStateCompat playbackStateCompat) {
        this.f482a.d(playbackStateCompat);
    }

    public MediaSessionCompat(Context context, String str, ComponentName componentName, PendingIntent pendingIntent) {
        this(context, str, componentName, pendingIntent, null);
    }

    public MediaSessionCompat(Context context, String str, ComponentName componentName, PendingIntent pendingIntent, Bundle bundle) {
        this(context, str, componentName, pendingIntent, bundle, null);
    }

    public MediaSessionCompat(Context context, String str, ComponentName componentName, PendingIntent pendingIntent, Bundle bundle, androidx.versionedparcelable.c cVar) {
        this.f484c = new ArrayList();
        if (context != null) {
            if (!TextUtils.isEmpty(str)) {
                if (componentName == null && (componentName = MediaButtonReceiver.c(context)) == null) {
                    Log.w("MediaSessionCompat", "Couldn't find a unique registered media button receiver in the given context.");
                }
                if (componentName != null && pendingIntent == null) {
                    Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
                    intent.setComponent(componentName);
                    pendingIntent = PendingIntent.getBroadcast(context, 0, intent, Build.VERSION.SDK_INT >= 31 ? ASTNode.PCTX_STORED : 0);
                }
                int i10 = Build.VERSION.SDK_INT;
                if (i10 >= 29) {
                    this.f482a = new g(context, str, cVar, bundle);
                } else if (i10 >= 28) {
                    this.f482a = new f(context, str, cVar, bundle);
                } else {
                    this.f482a = new e(context, str, cVar, bundle);
                }
                f(new a(), new Handler(Looper.myLooper() != null ? Looper.myLooper() : Looper.getMainLooper()));
                this.f482a.g(pendingIntent);
                this.f483b = new MediaControllerCompat(context, this);
                if (f481d == 0) {
                    f481d = (int) (TypedValue.applyDimension(1, 320.0f, context.getResources().getDisplayMetrics()) + 0.5f);
                    return;
                }
                return;
            }
            throw new IllegalArgumentException("tag must not be null or empty");
        }
        throw new IllegalArgumentException("context must not be null");
    }
}
