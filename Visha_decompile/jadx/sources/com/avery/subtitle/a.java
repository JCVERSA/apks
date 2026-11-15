package com.avery.subtitle;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import defpackage.f16;
import defpackage.m2a;
import defpackage.n2a;
import defpackage.v4a;
import defpackage.zna;
import java.util.ArrayList;
import java.util.List;
import java.util.TreeMap;

public class a implements com.avery.subtitle.b {
    public HandlerThread b;
    public Handler c;
    public List d;
    public UIRenderTask e;
    public com.transsion.playercommon.player.b f;
    public com.avery.subtitle.b.InterfaceC0029b h;
    public com.avery.subtitle.b.a i;
    public long j;
    public float k = 1.0f;
    public final n2a g = new n2a();

    public class C0028a implements SubtitleLoader.a {
        public final String a;

        public C0028a(String str) {
            this.a = str;
        }

        @Override
        public void a(Exception exc) {
            Log.e("DefaultSubtitleEngine", "onError: " + exc.getMessage());
            f16.d(0, this.a);
        }

        @Override
        public void b(zna znaVar) {
            Log.d("DefaultSubtitleEngine", "onSuccess " + znaVar);
            if (znaVar == null) {
                f16.d(0, this.a);
                Log.d("DefaultSubtitleEngine", "onSuccess: timedTextObject is null.");
                return;
            }
            TreeMap treeMap = znaVar.i;
            if (treeMap == null) {
                f16.d(0, this.a);
                Log.d("DefaultSubtitleEngine", "onSuccess: captions is null.");
                return;
            }
            a.this.d = new ArrayList(treeMap.values());
            a.this.l();
            a.this.g.c(this.a, new ArrayList(treeMap.values()));
            f16.d(1, this.a);
        }
    }

    public class b implements Handler.Callback {
        public b() {
        }

        /* JADX WARN: Code duplicated, block: B:9:0x003f  */
        @Override
        public boolean handleMessage(Message message) {
            long j;
            if (a.this.f == null || a.this.f.a() != 3) {
                j = 100;
            } else {
                long currentPosition = ((long) a.this.f.getCurrentPosition()) - a.this.j;
                m2a m2aVarA = v4a.a(currentPosition, a.this.d);
                a.this.m(m2aVarA);
                if (m2aVarA != null) {
                    j = ((long) m2aVarA.c.a) - currentPosition;
                } else {
                    j = 100;
                }
            }
            long j2 = (long) (j / a.this.k);
            if (a.this.c == null) {
                return true;
            }
            a.this.c.sendEmptyMessageDelayed(2184, j2);
            return true;
        }
    }

    @Override
    public void bindToMediaPlayer(com.transsion.playercommon.player.b bVar) {
        this.f = bVar;
    }

    @Override
    public void destroy() {
        Log.d("DefaultSubtitleEngine", "destroy: ");
        n();
        this.d = null;
        this.e = null;
    }

    public final void j() {
        HandlerThread handlerThread = new HandlerThread("SubtitleFindThread");
        this.b = handlerThread;
        handlerThread.start();
        this.c = new Handler(this.b.getLooper(), new b());
    }

    public final void k() {
        reset();
        j();
    }

    public final void l() {
        com.avery.subtitle.b.InterfaceC0029b interfaceC0029b = this.h;
        if (interfaceC0029b != null) {
            interfaceC0029b.onSubtitlePrepared(this.d);
        }
    }

    public final void m(m2a m2aVar) {
        if (this.e == null) {
            this.e = new UIRenderTask(this.i);
        }
        this.e.execute(m2aVar);
    }

    public final void n() {
        HandlerThread handlerThread = this.b;
        if (handlerThread != null) {
            handlerThread.quit();
            this.b = null;
        }
        Handler handler = this.c;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.c = null;
        }
    }

    @Override
    public void pause() {
        Handler handler = this.c;
        if (handler != null) {
            handler.removeMessages(2184);
        }
    }

    @Override
    public void reset() {
        n();
        this.d = null;
        this.e = null;
    }

    @Override
    public void resume() {
        start();
    }

    @Override
    public void setOnSubtitleChangeListener(com.avery.subtitle.b.a aVar) {
        this.i = aVar;
    }

    @Override
    public void setOnSubtitlePreparedListener(com.avery.subtitle.b.InterfaceC0029b interfaceC0029b) {
        this.h = interfaceC0029b;
    }

    @Override
    public void setSpeed(float f) {
        this.k = f;
        start();
    }

    @Override
    public void setSubtitleDelayMs(long j) {
        this.j = j;
        start();
    }

    @Override
    public void setSubtitlePath(String str) {
        k();
        if (TextUtils.isEmpty(str)) {
            Log.w("DefaultSubtitleEngine", "loadSubtitleFromRemote: path is null.");
            return;
        }
        List listA = this.g.a(str);
        this.d = listA;
        if (listA == null || listA.isEmpty()) {
            SubtitleLoader.h(str, new C0028a(str));
        } else {
            Log.d("DefaultSubtitleEngine", "from cache.");
            l();
        }
    }

    @Override
    public void start() {
        com.transsion.playercommon.player.b bVar = this.f;
        if (bVar == null) {
            Log.w("DefaultSubtitleEngine", "MediaPlayer is not bind, You must bind MediaPlayer to " + com.avery.subtitle.b.class.getSimpleName() + " before start() method be called, you can do this by call bindToMediaPlayer(MediaPlayer mediaPlayer) method.");
            return;
        }
        m(v4a.a(bVar.getCurrentPosition(), this.d));
        Handler handler = this.c;
        if (handler != null) {
            handler.removeMessages(2184);
            this.c.sendEmptyMessageDelayed(2184, 100L);
        }
    }

    @Override
    public void stop() {
        Handler handler = this.c;
        if (handler != null) {
            handler.removeMessages(2184);
        }
    }
}
