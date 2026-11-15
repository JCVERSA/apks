package com.transsion.player.orplayer;

import android.media.AudioAttributes;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.os.Build;
import com.blankj.utilcode.util.ThreadUtils;
import com.blankj.utilcode.util.Utils;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public final class c implements AudioManager.OnAudioFocusChangeListener {

    private final d f46445a;

    private final Function1 f46446b;

    private String f46447c;

    private final AudioManager f46448d;

    private boolean f46449e;

    private boolean f46450f;

    private boolean f46451g;

    private AudioFocusRequest f46452h;

    public c(d player, Function1 callback) {
        Intrinsics.h(player, "player");
        Intrinsics.h(callback, "callback");
        this.f46445a = player;
        this.f46446b = callback;
        this.f46447c = "AudioFocusHelper";
        Object systemService = Utils.a().getApplicationContext().getSystemService(MimeTypes.BASE_TYPE_AUDIO);
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.media.AudioManager");
        this.f46448d = (AudioManager) systemService;
        sn.e.b(sn.e.f72355a, this.f46447c, "AudioFocusHelper orPlayer " + this, false, 4, null);
        if (Build.VERSION.SDK_INT >= 26) {
            AudioFocusRequest.Builder builderA = t1.a.a(1);
            AudioAttributes.Builder builder = new AudioAttributes.Builder();
            builder.setUsage(14);
            builder.setContentType(2);
            builderA.setAudioAttributes(builder.build());
            builderA.setAcceptsDelayedFocusGain(true);
            builderA.setOnAudioFocusChangeListener(this);
            this.f46452h = builderA.build();
        }
    }

    private final void c(int i10) {
        sn.e eVar = sn.e.f72355a;
        sn.e.b(eVar, this.f46447c, "handleAudioFocusChange ------------ " + this + ", focusChange = " + i10, false, 4, null);
        if (i10 == -3) {
            if (!this.f46451g || this.f46445a.isMute()) {
                return;
            }
            sn.e.b(eVar, this.f46447c, "handleAudioFocusChange AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK, focusChange = " + i10, false, 4, null);
            this.f46445a.setVolume(1.0f);
            return;
        }
        if (i10 == -2 || i10 == -1) {
            sn.e.i(eVar, this.f46447c, "handleAudioFocusChange LOSS, focusChange = " + i10 + ", isUserPause = " + this.f46450f, false, 4, null);
            this.f46446b.invoke(Boolean.TRUE);
            if (this.f46451g) {
                this.f46445a.pause();
                return;
            }
            return;
        }
        if (i10 == 1 || i10 == 2) {
            sn.e.b(eVar, this.f46447c, "handleAudioFocusChange GAIN, focusChange = " + i10 + "， mStartRequested = " + this.f46449e + ", isUserPause = " + this.f46450f, false, 4, null);
            this.f46446b.invoke(Boolean.FALSE);
            if (this.f46449e && !this.f46450f) {
                this.f46445a.play();
            }
            if (this.f46445a.isMute()) {
                return;
            }
            this.f46445a.setVolume(1.0f);
        }
    }

    public static final void d(c cVar, int i10) {
        cVar.c(i10);
    }

    public final void b() {
        sn.e.b(sn.e.f72355a, this.f46447c, "abandonFocus " + this, false, 4, null);
        if (Build.VERSION.SDK_INT >= 26) {
            AudioFocusRequest audioFocusRequest = this.f46452h;
            if (audioFocusRequest != null) {
                this.f46448d.abandonAudioFocusRequest(audioFocusRequest);
            }
        } else {
            this.f46448d.abandonAudioFocus(this);
        }
        this.f46449e = false;
    }

    public final void e() {
        sn.e eVar = sn.e.f72355a;
        sn.e.b(eVar, this.f46447c, "requestFocus " + this, false, 4, null);
        if (Build.VERSION.SDK_INT >= 26) {
            AudioFocusRequest audioFocusRequest = this.f46452h;
            if (audioFocusRequest != null) {
                int iRequestAudioFocus = this.f46448d.requestAudioFocus(audioFocusRequest);
                sn.e.b(eVar, this.f46447c, "requestFocus, result:" + iRequestAudioFocus, false, 4, null);
            }
        } else {
            int iRequestAudioFocus2 = this.f46448d.requestAudioFocus(this, 3, 1);
            sn.e.b(eVar, this.f46447c, "requestFocus, result:" + iRequestAudioFocus2, false, 4, null);
        }
        this.f46449e = true;
    }

    public final void f(boolean z10) {
        this.f46451g = z10;
    }

    public final void g(boolean z10) {
        this.f46450f = z10;
    }

    @Override
    public void onAudioFocusChange(final int i10) {
        ThreadUtils.j(new Runnable() {
            @Override
            public final void run() {
                c.d(this.f46443a, i10);
            }
        });
    }
}
