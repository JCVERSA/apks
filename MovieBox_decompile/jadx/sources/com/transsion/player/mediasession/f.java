package com.transsion.player.mediasession;

import android.os.Bundle;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.PlaybackStateCompat;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import on.e0;

public final class f extends MediaSessionCompat.b {

    public static final a f46419i = new a(null);

    private final MediaSessionCompat f46420f;

    private final MediaService f46421g;

    private MediaItem f46422h;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public f(MediaSessionCompat mediaSessionCompat, MediaService mediaService) {
        Intrinsics.h(mediaService, "mediaService");
        this.f46420f = mediaSessionCompat;
        this.f46421g = mediaService;
    }

    private final void E(PlaybackStateCompat playbackStateCompat) {
        if (playbackStateCompat != null) {
            h.f46423a.o(this.f46421g, this.f46422h, Integer.valueOf(playbackStateCompat.getState()), this.f46420f);
        }
    }

    private final String F() {
        String simpleName = f.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    private final PlaybackStateCompat G(int i10) {
        Long position;
        MediaItem mediaItem = this.f46422h;
        PlaybackStateCompat playbackStateCompatA = new PlaybackStateCompat.d().b(775L).c(i10, (mediaItem == null || (position = mediaItem.getPosition()) == null) ? 0L : position.longValue(), 1.0f).a();
        MediaSessionCompat mediaSessionCompat = this.f46420f;
        if (mediaSessionCompat != null) {
            mediaSessionCompat.i(playbackStateCompatA);
        }
        Intrinsics.e(playbackStateCompatA);
        return playbackStateCompatA;
    }

    @Override
    public void A() {
        super.A();
        i.f46432a.a(F() + " --> mediaSessionCallback --> onSkipToPrevious() -- 暂不处理该事件");
    }

    @Override
    public void C() {
        super.C();
        i.f46432a.a(F() + " --> mediaSessionCallback --> onStop()");
        G(1);
        com.transsion.player.orplayer.f fVarE = e0.f67859a.e();
        if (fVarE != null) {
            fVarE.release();
        }
    }

    @Override
    public void e(String str, Bundle bundle) {
        Long duration;
        super.e(str, bundle);
        PlaybackStateCompat playbackStateCompatG = null;
        this.f46422h = bundle != null ? (MediaItem) bundle.getParcelable("MediaItem") : null;
        if (Intrinsics.c(str, "transsion_play")) {
            MediaSessionCompat mediaSessionCompat = this.f46420f;
            if (mediaSessionCompat != null) {
                MediaMetadataCompat.b bVar = new MediaMetadataCompat.b();
                MediaItem mediaItem = this.f46422h;
                MediaMetadataCompat.b bVarC = bVar.c(MediaMetadataCompat.METADATA_KEY_MEDIA_ID, mediaItem != null ? mediaItem.getMediaId() : null);
                MediaItem mediaItem2 = this.f46422h;
                mediaSessionCompat.h(bVarC.b(MediaMetadataCompat.METADATA_KEY_DURATION, (mediaItem2 == null || (duration = mediaItem2.getDuration()) == null) ? 0L : duration.longValue()).a());
            }
            playbackStateCompatG = G(3);
        } else if (Intrinsics.c(str, "transsion_pause")) {
            playbackStateCompatG = G(2);
        }
        E(playbackStateCompatG);
    }

    @Override
    public void h() {
        super.h();
        i.f46432a.a(F() + " --> mediaSessionCallback --> onPause()");
        E(G(2));
        com.transsion.player.orplayer.f fVarE = e0.f67859a.e();
        if (fVarE != null) {
            fVarE.pause();
        }
    }

    @Override
    public void i() {
        super.i();
        i.f46432a.a(F() + " --> mediaSessionCallback --> onPlay()");
        E(G(3));
        com.transsion.player.orplayer.f fVarE = e0.f67859a.e();
        if (fVarE != null) {
            fVarE.play();
        }
    }

    @Override
    public void s(long j10) {
        super.s(j10);
        MediaItem mediaItem = this.f46422h;
        if (mediaItem != null) {
            mediaItem.setPosition(Long.valueOf(j10));
        }
        i.f46432a.a(F() + " --> mediaSessionCallback --> onSeekTo() --> mediaItem = " + this.f46422h);
        com.transsion.player.orplayer.f fVarE = e0.f67859a.e();
        if (fVarE != null) {
            fVarE.seekTo(j10);
        }
    }

    @Override
    public void z() {
        super.z();
        i.f46432a.a(F() + " --> mediaSessionCallback --> onSkipToNext() -- 暂不处理该事件");
    }
}
