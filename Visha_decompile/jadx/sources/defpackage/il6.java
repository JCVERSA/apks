package defpackage;

import android.content.Context;
import android.content.Intent;
import android.media.session.MediaController;
import android.media.session.MediaSession;
import android.media.session.PlaybackState;
import android.util.Log;
import android.view.KeyEvent;
import com.blankj.utilcode.util.Utils;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

public class il6 {
    public static volatile il6 e;
    public static CopyOnWriteArrayList f = new CopyOnWriteArrayList();
    public final Context a;
    public MediaSession b;
    public MediaController c;
    public final MediaController.Callback d = new a();

    public class a extends MediaController.Callback {
        public a() {
        }

        @Override
        public void onPlaybackStateChanged(PlaybackState playbackState) {
            super.onPlaybackStateChanged(playbackState);
            Log.d("MediaSessionWrapper", "onPlaybackStateChanged: " + playbackState);
        }
    }

    public class b extends MediaSession.Callback {
        public b() {
        }

        @Override
        public boolean onMediaButtonEvent(Intent intent) {
            KeyEvent keyEvent = (KeyEvent) intent.getParcelableExtra("android.intent.extra.KEY_EVENT");
            if (keyEvent == null) {
                Log.d("MediaSessionWrapper", "MediaSessionWrapper mMediaSession event null");
                return false;
            }
            Log.d("MediaSessionWrapper", "MediaSessionWrapper mMediaSession:" + il6.this.b.getSessionToken() + StringUtils.COMMA + keyEvent.toString());
            if (keyEvent.getAction() == 1) {
                Iterator it = il6.f.iterator();
                while (it.hasNext()) {
                    c cVar = (c) ((WeakReference) it.next()).get();
                    if (cVar != null) {
                        cVar.a(keyEvent.getKeyCode(), keyEvent);
                    }
                }
            }
            return super.onMediaButtonEvent(intent);
        }
    }

    public interface c {
        void a(int i, KeyEvent keyEvent);
    }

    public il6(Context context) {
        this.a = context;
        if (this.b != null) {
            f();
        }
        this.b = new MediaSession(context, "com.transsion.magicShow");
        Log.d("MediaSessionWrapper", "MediaSessionWrapper mMediaSession:" + this.b.getSessionToken());
        this.b.setCallback(new b());
        this.b.setFlags(3);
        this.c = new MediaController(context, this.b.getSessionToken());
    }

    public static void c(c cVar) {
        if (cVar == null) {
            return;
        }
        for (int i = 0; i < f.size(); i++) {
            if (((WeakReference) f.get(i)).get() == cVar) {
                return;
            }
        }
        f.add(new WeakReference(cVar));
    }

    public static void d(KeyEvent keyEvent) {
        Iterator it = f.iterator();
        while (it.hasNext()) {
            c cVar = (c) ((WeakReference) it.next()).get();
            if (cVar != null) {
                cVar.a(keyEvent.getKeyCode(), keyEvent);
            }
        }
    }

    public static il6 e() {
        if (e == null) {
            synchronized (il6.class) {
                try {
                    if (e == null) {
                        e = new il6(Utils.a());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return e;
    }

    public static void g(c cVar) {
        if (cVar == null) {
            return;
        }
        for (int size = f.size() - 1; size >= 0; size--) {
            if (((WeakReference) f.get(size)).get() == cVar) {
                f.remove(size);
            }
        }
    }

    public void f() {
        this.b.release();
        this.b = null;
    }
}
