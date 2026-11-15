package android.support.v4.media.session;

import android.content.Context;
import android.media.MediaMetadata;
import android.media.session.MediaController;
import android.media.session.MediaSession;
import android.media.session.PlaybackState;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.support.v4.media.MediaMetadataCompat;
import android.util.Log;
import android.view.KeyEvent;
import androidx.media.AudioAttributesCompat;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public final class MediaControllerCompat {

    private final b f460a;

    private final MediaSessionCompat.Token f461b;

    private final Set f462c;

    static class MediaControllerImplApi21 implements b {

        protected final MediaController f463a;

        final Object f464b = new Object();

        private final List f465c = new ArrayList();

        private HashMap f466d = new HashMap();

        final MediaSessionCompat.Token f467e;

        private static class ExtraBinderRequestResultReceiver extends ResultReceiver {
            private WeakReference<MediaControllerImplApi21> mMediaControllerImpl;

            ExtraBinderRequestResultReceiver(MediaControllerImplApi21 mediaControllerImplApi21) {
                super(null);
                this.mMediaControllerImpl = new WeakReference<>(mediaControllerImplApi21);
            }

            @Override
            protected void onReceiveResult(int i10, Bundle bundle) {
                MediaControllerImplApi21 mediaControllerImplApi21 = this.mMediaControllerImpl.get();
                if (mediaControllerImplApi21 == null || bundle == null) {
                    return;
                }
                synchronized (mediaControllerImplApi21.f464b) {
                    mediaControllerImplApi21.f467e.setExtraBinder(android.support.v4.media.session.b.a.X0(androidx.core.app.f.a(bundle, "android.support.v4.media.session.EXTRA_BINDER")));
                    mediaControllerImplApi21.f467e.setSession2Token(androidx.versionedparcelable.a.b(bundle, "android.support.v4.media.session.SESSION_TOKEN2"));
                    mediaControllerImplApi21.d();
                }
            }
        }

        private static class a extends a.c {
            a(a aVar) {
                super(aVar);
            }

            @Override
            public void H() {
                throw new AssertionError();
            }

            @Override
            public void J(MediaMetadataCompat mediaMetadataCompat) {
                throw new AssertionError();
            }

            @Override
            public void d0(ParcelableVolumeInfo parcelableVolumeInfo) {
                throw new AssertionError();
            }

            @Override
            public void o0(Bundle bundle) {
                throw new AssertionError();
            }

            @Override
            public void q(List list) {
                throw new AssertionError();
            }

            @Override
            public void z0(CharSequence charSequence) {
                throw new AssertionError();
            }
        }

        MediaControllerImplApi21(Context context, MediaSessionCompat.Token token) {
            this.f467e = token;
            this.f463a = new MediaController(context, (MediaSession.Token) token.getToken());
            if (token.getExtraBinder() == null) {
                e();
            }
        }

        private void e() {
            f("android.support.v4.media.session.command.GET_EXTRA_BINDER", null, new ExtraBinderRequestResultReceiver(this));
        }

        @Override
        public e a() {
            MediaController.TransportControls transportControls = this.f463a.getTransportControls();
            int i10 = Build.VERSION.SDK_INT;
            if (i10 >= 29) {
                return new i(transportControls);
            }
            return i10 >= 24 ? new h(transportControls) : new g(transportControls);
        }

        @Override
        public boolean b(KeyEvent keyEvent) {
            return this.f463a.dispatchMediaButtonEvent(keyEvent);
        }

        @Override
        public final void c(a aVar, Handler handler) {
            this.f463a.registerCallback(aVar.f468a, handler);
            synchronized (this.f464b) {
                if (this.f467e.getExtraBinder() != null) {
                    a aVar2 = new a(aVar);
                    this.f466d.put(aVar, aVar2);
                    aVar.f470c = aVar2;
                    try {
                        this.f467e.getExtraBinder().e0(aVar2);
                        aVar.m(13, null, null);
                    } catch (RemoteException e10) {
                        Log.e("MediaControllerCompat", "Dead object in registerCallback.", e10);
                    }
                } else {
                    aVar.f470c = null;
                    this.f465c.add(aVar);
                }
            }
        }

        void d() {
            if (this.f467e.getExtraBinder() == null) {
                return;
            }
            for (a aVar : this.f465c) {
                a aVar2 = new a(aVar);
                this.f466d.put(aVar, aVar2);
                aVar.f470c = aVar2;
                try {
                    this.f467e.getExtraBinder().e0(aVar2);
                    aVar.m(13, null, null);
                } catch (RemoteException e10) {
                    Log.e("MediaControllerCompat", "Dead object in registerCallback.", e10);
                }
            }
            this.f465c.clear();
        }

        public void f(String str, Bundle bundle, ResultReceiver resultReceiver) {
            this.f463a.sendCommand(str, bundle, resultReceiver);
        }
    }

    public static abstract class a implements IBinder.DeathRecipient {

        final MediaController.Callback f468a = new C0004a(this);

        b f469b;

        android.support.v4.media.session.a f470c;

        private static class C0004a extends MediaController.Callback {

            private final WeakReference f471a;

            C0004a(a aVar) {
                this.f471a = new WeakReference(aVar);
            }

            @Override
            public void onAudioInfoChanged(MediaController.PlaybackInfo playbackInfo) {
                a aVar = (a) this.f471a.get();
                if (aVar != null) {
                    aVar.a(new d(playbackInfo.getPlaybackType(), AudioAttributesCompat.c(playbackInfo.getAudioAttributes()), playbackInfo.getVolumeControl(), playbackInfo.getMaxVolume(), playbackInfo.getCurrentVolume()));
                }
            }

            @Override
            public void onExtrasChanged(Bundle bundle) {
                MediaSessionCompat.a(bundle);
                a aVar = (a) this.f471a.get();
                if (aVar != null) {
                    aVar.c(bundle);
                }
            }

            @Override
            public void onMetadataChanged(MediaMetadata mediaMetadata) {
                a aVar = (a) this.f471a.get();
                if (aVar != null) {
                    aVar.d(MediaMetadataCompat.fromMediaMetadata(mediaMetadata));
                }
            }

            @Override
            public void onPlaybackStateChanged(PlaybackState playbackState) {
                a aVar = (a) this.f471a.get();
                if (aVar == null || aVar.f470c != null) {
                    return;
                }
                aVar.e(PlaybackStateCompat.fromPlaybackState(playbackState));
            }

            @Override
            public void onQueueChanged(List list) {
                a aVar = (a) this.f471a.get();
                if (aVar != null) {
                    aVar.f(MediaSessionCompat.QueueItem.fromQueueItemList(list));
                }
            }

            @Override
            public void onQueueTitleChanged(CharSequence charSequence) {
                a aVar = (a) this.f471a.get();
                if (aVar != null) {
                    aVar.g(charSequence);
                }
            }

            @Override
            public void onSessionDestroyed() {
                a aVar = (a) this.f471a.get();
                if (aVar != null) {
                    aVar.i();
                }
            }

            @Override
            public void onSessionEvent(String str, Bundle bundle) {
                MediaSessionCompat.a(bundle);
                a aVar = (a) this.f471a.get();
                if (aVar != null) {
                    aVar.j(str, bundle);
                }
            }
        }

        private class b extends Handler {

            boolean f472a;

            b(Looper looper) {
                super(looper);
                this.f472a = false;
            }

            @Override
            public void handleMessage(Message message) {
                if (this.f472a) {
                    switch (message.what) {
                        case 1:
                            Bundle data = message.getData();
                            MediaSessionCompat.a(data);
                            a.this.j((String) message.obj, data);
                            break;
                        case 2:
                            a.this.e((PlaybackStateCompat) message.obj);
                            break;
                        case 3:
                            a.this.d((MediaMetadataCompat) message.obj);
                            break;
                        case 4:
                            a.this.a((d) message.obj);
                            break;
                        case 5:
                            a.this.f((List) message.obj);
                            break;
                        case 6:
                            a.this.g((CharSequence) message.obj);
                            break;
                        case 7:
                            Bundle bundle = (Bundle) message.obj;
                            MediaSessionCompat.a(bundle);
                            a.this.c(bundle);
                            break;
                        case 8:
                            a.this.i();
                            break;
                        case 9:
                            a.this.h(((Integer) message.obj).intValue());
                            break;
                        case 11:
                            a.this.b(((Boolean) message.obj).booleanValue());
                            break;
                        case 12:
                            a.this.l(((Integer) message.obj).intValue());
                            break;
                        case 13:
                            a.this.k();
                            break;
                    }
                }
            }
        }

        private static class c extends android.support.v4.media.session.a.AbstractBinderC0006a {

            private final WeakReference f474a;

            c(a aVar) {
                this.f474a = new WeakReference(aVar);
            }

            @Override
            public void Q(int i10) {
                a aVar = (a) this.f474a.get();
                if (aVar != null) {
                    aVar.m(12, Integer.valueOf(i10), null);
                }
            }

            @Override
            public void W0(PlaybackStateCompat playbackStateCompat) {
                a aVar = (a) this.f474a.get();
                if (aVar != null) {
                    aVar.m(2, playbackStateCompat, null);
                }
            }

            @Override
            public void c(String str, Bundle bundle) {
                a aVar = (a) this.f474a.get();
                if (aVar != null) {
                    aVar.m(1, str, bundle);
                }
            }

            @Override
            public void onRepeatModeChanged(int i10) {
                a aVar = (a) this.f474a.get();
                if (aVar != null) {
                    aVar.m(9, Integer.valueOf(i10), null);
                }
            }

            @Override
            public void p() {
                a aVar = (a) this.f474a.get();
                if (aVar != null) {
                    aVar.m(13, null, null);
                }
            }

            @Override
            public void v0(boolean z10) {
                a aVar = (a) this.f474a.get();
                if (aVar != null) {
                    aVar.m(11, Boolean.valueOf(z10), null);
                }
            }

            @Override
            public void y0(boolean z10) {
            }
        }

        public void a(d dVar) {
        }

        public void b(boolean z10) {
        }

        @Override
        public void binderDied() {
            m(8, null, null);
        }

        public void c(Bundle bundle) {
        }

        public void d(MediaMetadataCompat mediaMetadataCompat) {
        }

        public void e(PlaybackStateCompat playbackStateCompat) {
        }

        public void f(List list) {
        }

        public void g(CharSequence charSequence) {
        }

        public void h(int i10) {
        }

        public void i() {
        }

        public void j(String str, Bundle bundle) {
        }

        public void k() {
        }

        public void l(int i10) {
        }

        void m(int i10, Object obj, Bundle bundle) {
            b bVar = this.f469b;
            if (bVar != null) {
                Message messageObtainMessage = bVar.obtainMessage(i10, obj);
                messageObtainMessage.setData(bundle);
                messageObtainMessage.sendToTarget();
            }
        }

        void n(Handler handler) {
            if (handler != null) {
                b bVar = new b(handler.getLooper());
                this.f469b = bVar;
                bVar.f472a = true;
            } else {
                b bVar2 = this.f469b;
                if (bVar2 != null) {
                    bVar2.f472a = false;
                    bVar2.removeCallbacksAndMessages(null);
                    this.f469b = null;
                }
            }
        }
    }

    interface b {
        e a();

        boolean b(KeyEvent keyEvent);

        void c(a aVar, Handler handler);
    }

    static class c extends MediaControllerImplApi21 {
        c(Context context, MediaSessionCompat.Token token) {
            super(context, token);
        }
    }

    public static final class d {

        private final int f475a;

        private final AudioAttributesCompat f476b;

        private final int f477c;

        private final int f478d;

        private final int f479e;

        d(int i10, AudioAttributesCompat audioAttributesCompat, int i11, int i12, int i13) {
            this.f475a = i10;
            this.f476b = audioAttributesCompat;
            this.f477c = i11;
            this.f478d = i12;
            this.f479e = i13;
        }
    }

    public static abstract class e {
        e() {
        }

        public abstract void a(String str, Bundle bundle);

        public abstract void b();

        public abstract void c();
    }

    static class f extends e {

        protected final MediaController.TransportControls f480a;

        f(MediaController.TransportControls transportControls) {
            this.f480a = transportControls;
        }

        @Override
        public void a(String str, Bundle bundle) {
            MediaControllerCompat.e(str, bundle);
            this.f480a.sendCustomAction(str, bundle);
        }

        @Override
        public void b() {
            this.f480a.skipToNext();
        }

        @Override
        public void c() {
            this.f480a.skipToPrevious();
        }
    }

    static class g extends f {
        g(MediaController.TransportControls transportControls) {
            super(transportControls);
        }
    }

    static class h extends g {
        h(MediaController.TransportControls transportControls) {
            super(transportControls);
        }
    }

    static class i extends h {
        i(MediaController.TransportControls transportControls) {
            super(transportControls);
        }
    }

    public MediaControllerCompat(Context context, MediaSessionCompat mediaSessionCompat) {
        this(context, mediaSessionCompat.b());
    }

    static void e(String str, Bundle bundle) {
        if (str == null) {
            return;
        }
        if (str.equals("android.support.v4.media.session.action.FOLLOW") || str.equals("android.support.v4.media.session.action.UNFOLLOW")) {
            if (bundle == null || !bundle.containsKey("android.support.v4.media.session.ARGUMENT_MEDIA_ATTRIBUTE")) {
                throw new IllegalArgumentException("An extra field android.support.v4.media.session.ARGUMENT_MEDIA_ATTRIBUTE is required for this action " + str + ".");
            }
        }
    }

    public boolean a(KeyEvent keyEvent) {
        if (keyEvent != null) {
            return this.f460a.b(keyEvent);
        }
        throw new IllegalArgumentException("KeyEvent may not be null");
    }

    public e b() {
        return this.f460a.a();
    }

    public void c(a aVar) {
        d(aVar, null);
    }

    public void d(a aVar, Handler handler) {
        if (aVar == null) {
            throw new IllegalArgumentException("callback must not be null");
        }
        if (!this.f462c.add(aVar)) {
            Log.w("MediaControllerCompat", "the callback has already been registered");
            return;
        }
        if (handler == null) {
            handler = new Handler();
        }
        aVar.n(handler);
        this.f460a.c(aVar, handler);
    }

    public MediaControllerCompat(Context context, MediaSessionCompat.Token token) {
        if (token == null) {
            throw new IllegalArgumentException("sessionToken must not be null");
        }
        this.f462c = Collections.synchronizedSet(new HashSet());
        this.f461b = token;
        if (Build.VERSION.SDK_INT >= 29) {
            this.f460a = new c(context, token);
        } else {
            this.f460a = new MediaControllerImplApi21(context, token);
        }
    }
}
