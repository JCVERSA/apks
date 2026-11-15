package com.transsion.baseui.music;

import androidx.p009lifecycle.u;
import com.transsion.player.mediasession.MediaItem;
import kotlin.jvm.internal.Intrinsics;

public final class a implements androidx.p009lifecycle.f {

    public static final a f42307a = new a();

    private a() {
    }

    @Override
    public void onCreate(u uVar) {
        androidx.p009lifecycle.e.a(this, uVar);
    }

    @Override
    public void onDestroy(u uVar) {
        androidx.p009lifecycle.e.b(this, uVar);
    }

    @Override
    public void onPause(u uVar) {
        androidx.p009lifecycle.e.c(this, uVar);
    }

    @Override
    public void onResume(u uVar) {
        androidx.p009lifecycle.e.d(this, uVar);
    }

    @Override
    public void onStart(u owner) {
        Intrinsics.h(owner, "owner");
        androidx.p009lifecycle.e.e(this, owner);
        MediaItem mediaItemQ = MusicFloatManager.f42282h.b().q();
        if (mediaItemQ != null) {
            mediaItemQ.setInBackground(Boolean.FALSE);
        }
    }

    @Override
    public void onStop(u owner) {
        Intrinsics.h(owner, "owner");
        androidx.p009lifecycle.e.f(this, owner);
        MediaItem mediaItemQ = MusicFloatManager.f42282h.b().q();
        if (mediaItemQ != null) {
            mediaItemQ.setInBackground(Boolean.TRUE);
        }
        MusicReport.f42301a.c();
    }
}
