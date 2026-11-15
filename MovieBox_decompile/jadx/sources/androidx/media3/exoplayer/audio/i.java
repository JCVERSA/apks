package androidx.media3.exoplayer.audio;

import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.media.AudioDeviceCallback;
import android.media.AudioDeviceInfo;
import android.net.Uri;
import android.os.Handler;
import java.util.Objects;

public final class i {

    private final Context f10869a;

    private final f f10870b;

    private final Handler f10871c;

    private final c f10872d;

    private final BroadcastReceiver f10873e;

    private final d f10874f;

    private androidx.media3.exoplayer.audio.e f10875g;

    private j f10876h;

    private androidx.media3.common.c f10877i;

    private boolean f10878j;

    private static final class b {
        public static void a(Context context, AudioDeviceCallback audioDeviceCallback, Handler handler) {
            t1.m.c(context).registerAudioDeviceCallback(audioDeviceCallback, handler);
        }

        public static void b(Context context, AudioDeviceCallback audioDeviceCallback) {
            t1.m.c(context).unregisterAudioDeviceCallback(audioDeviceCallback);
        }
    }

    private final class c extends AudioDeviceCallback {
        private c() {
        }

        @Override
        public void onAudioDevicesAdded(AudioDeviceInfo[] audioDeviceInfoArr) {
            i iVar = i.this;
            iVar.f(androidx.media3.exoplayer.audio.e.f(iVar.f10869a, i.this.f10877i, i.this.f10876h));
        }

        @Override
        public void onAudioDevicesRemoved(AudioDeviceInfo[] audioDeviceInfoArr) {
            if (androidx.media3.common.util.a1.s(audioDeviceInfoArr, i.this.f10876h)) {
                i.this.f10876h = null;
            }
            i iVar = i.this;
            iVar.f(androidx.media3.exoplayer.audio.e.f(iVar.f10869a, i.this.f10877i, i.this.f10876h));
        }
    }

    private final class d extends ContentObserver {

        private final ContentResolver f10880a;

        private final Uri f10881b;

        public d(Handler handler, ContentResolver contentResolver, Uri uri) {
            super(handler);
            this.f10880a = contentResolver;
            this.f10881b = uri;
        }

        public void a() {
            this.f10880a.registerContentObserver(this.f10881b, false, this);
        }

        public void b() {
            this.f10880a.unregisterContentObserver(this);
        }

        @Override
        public void onChange(boolean z10) {
            i iVar = i.this;
            iVar.f(androidx.media3.exoplayer.audio.e.f(iVar.f10869a, i.this.f10877i, i.this.f10876h));
        }
    }

    private final class e extends BroadcastReceiver {
        private e() {
        }

        @Override
        public void onReceive(Context context, Intent intent) {
            if (isInitialStickyBroadcast()) {
                return;
            }
            i iVar = i.this;
            iVar.f(androidx.media3.exoplayer.audio.e.e(context, intent, iVar.f10877i, i.this.f10876h));
        }
    }

    public interface f {
        void a(androidx.media3.exoplayer.audio.e eVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    i(Context context, f fVar, androidx.media3.common.c cVar, j jVar) {
        Context applicationContext = context.getApplicationContext();
        this.f10869a = applicationContext;
        this.f10870b = (f) androidx.media3.common.util.a.e(fVar);
        this.f10877i = cVar;
        this.f10876h = jVar;
        Handler handlerC = androidx.media3.common.util.a1.C();
        this.f10871c = handlerC;
        Object[] objArr = 0;
        this.f10872d = androidx.media3.common.util.a1.f10038a >= 23 ? new c() : null;
        this.f10873e = new e();
        Uri uriI = androidx.media3.exoplayer.audio.e.i();
        this.f10874f = uriI != null ? new d(handlerC, applicationContext.getContentResolver(), uriI) : null;
    }

    public void f(androidx.media3.exoplayer.audio.e eVar) {
        if (!this.f10878j || eVar.equals(this.f10875g)) {
            return;
        }
        this.f10875g = eVar;
        this.f10870b.a(eVar);
    }

    public androidx.media3.exoplayer.audio.e g() {
        c cVar;
        if (this.f10878j) {
            return (androidx.media3.exoplayer.audio.e) androidx.media3.common.util.a.e(this.f10875g);
        }
        this.f10878j = true;
        d dVar = this.f10874f;
        if (dVar != null) {
            dVar.a();
        }
        if (androidx.media3.common.util.a1.f10038a >= 23 && (cVar = this.f10872d) != null) {
            b.a(this.f10869a, cVar, this.f10871c);
        }
        androidx.media3.exoplayer.audio.e eVarE = androidx.media3.exoplayer.audio.e.e(this.f10869a, this.f10869a.registerReceiver(this.f10873e, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG"), null, this.f10871c), this.f10877i, this.f10876h);
        this.f10875g = eVarE;
        return eVarE;
    }

    public void h(androidx.media3.common.c cVar) {
        this.f10877i = cVar;
        f(androidx.media3.exoplayer.audio.e.f(this.f10869a, cVar, this.f10876h));
    }

    public void i(AudioDeviceInfo audioDeviceInfo) {
        j jVar = this.f10876h;
        if (Objects.equals(audioDeviceInfo, jVar == null ? null : jVar.f10884a)) {
            return;
        }
        j jVar2 = audioDeviceInfo != null ? new j(audioDeviceInfo) : null;
        this.f10876h = jVar2;
        f(androidx.media3.exoplayer.audio.e.f(this.f10869a, this.f10877i, jVar2));
    }

    public void j() {
        c cVar;
        if (this.f10878j) {
            this.f10875g = null;
            if (androidx.media3.common.util.a1.f10038a >= 23 && (cVar = this.f10872d) != null) {
                b.b(this.f10869a, cVar);
            }
            this.f10869a.unregisterReceiver(this.f10873e);
            d dVar = this.f10874f;
            if (dVar != null) {
                dVar.b();
            }
            this.f10878j = false;
        }
    }
}
