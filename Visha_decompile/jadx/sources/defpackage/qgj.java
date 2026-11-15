package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.media.AudioDeviceInfo;
import android.net.Uri;
import android.os.Handler;
import java.util.Objects;

public final class qgj {
    public final Context a;
    public final Handler b;
    public final igj c;
    public final BroadcastReceiver d;
    public final kgj e;
    public ggj f;
    public sgj g;
    public hvg h;
    public boolean i;
    public final whj j;

    /* JADX WARN: Multi-variable type inference failed */
    public qgj(Context context, whj whjVar, hvg hvgVar, sgj sgjVar) {
        Context applicationContext = context.getApplicationContext();
        this.a = applicationContext;
        this.j = whjVar;
        this.h = hvgVar;
        this.g = sgjVar;
        Handler handler = new Handler(kfh.U(), null);
        this.b = handler;
        this.c = new igj(this, 0 == true ? 1 : 0);
        this.d = new mgj(this, 0 == true ? 1 : 0);
        Uri uriA = ggj.a();
        this.e = uriA != null ? new kgj(this, handler, applicationContext.getContentResolver(), uriA) : null;
    }

    public final ggj c() {
        if (this.i) {
            ggj ggjVar = this.f;
            ggjVar.getClass();
            return ggjVar;
        }
        this.i = true;
        kgj kgjVar = this.e;
        if (kgjVar != null) {
            kgjVar.a();
        }
        int i = kfh.a;
        igj igjVar = this.c;
        if (igjVar != null) {
            Context context = this.a;
            fnf.c(context).registerAudioDeviceCallback(igjVar, this.b);
        }
        Context context2 = this.a;
        ggj ggjVarD = ggj.d(context2, context2.registerReceiver(this.d, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG"), null, this.b), this.h, this.g);
        this.f = ggjVarD;
        return ggjVarD;
    }

    public final void g(hvg hvgVar) {
        this.h = hvgVar;
        j(ggj.c(this.a, hvgVar, this.g));
    }

    public final void h(AudioDeviceInfo audioDeviceInfo) {
        sgj sgjVar = this.g;
        if (Objects.equals(audioDeviceInfo, sgjVar == null ? null : sgjVar.a)) {
            return;
        }
        sgj sgjVar2 = audioDeviceInfo != null ? new sgj(audioDeviceInfo) : null;
        this.g = sgjVar2;
        j(ggj.c(this.a, this.h, sgjVar2));
    }

    public final void i() {
        if (this.i) {
            this.f = null;
            int i = kfh.a;
            igj igjVar = this.c;
            if (igjVar != null) {
                fnf.c(this.a).unregisterAudioDeviceCallback(igjVar);
            }
            this.a.unregisterReceiver(this.d);
            kgj kgjVar = this.e;
            if (kgjVar != null) {
                kgjVar.b();
            }
            this.i = false;
        }
    }

    public final void j(ggj ggjVar) {
        if (!this.i || ggjVar.equals(this.f)) {
            return;
        }
        this.f = ggjVar;
        this.j.a.y(ggjVar);
    }
}
