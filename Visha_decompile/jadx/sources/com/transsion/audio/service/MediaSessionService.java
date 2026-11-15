package com.transsion.audio.service;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.media.MediaBrowserCompat;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.Log;
import android.view.KeyEvent;
import androidx.media.MediaBrowserServiceCompat;
import com.transsion.audio.player.MusicPlayManager;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.dbdata.beans.media.PlayAudioListData;
import defpackage.il6;
import defpackage.p06;
import defpackage.w6c;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;

public class MediaSessionService extends MediaBrowserServiceCompat {
    public Context b;
    public MusicPlayManager c;
    public MediaSessionCompat d;
    public MediaSessionCallback e;
    public PlaybackStateCompat f;
    public MusicPlayManager.d g = new a();

    public class MediaSessionCallback extends MediaSessionCompat.Callback {
        public final List a = new ArrayList();
        public int b = -1;
        public MediaMetadataCompat c;

        public MediaSessionCallback() {
        }

        @Override
        public void onAddQueueItem(MediaDescriptionCompat mediaDescriptionCompat) {
        }

        @Override
        public boolean onMediaButtonEvent(Intent intent) {
            Log.d("AudioSessionService", "onMediaButtonEvent: " + MediaSessionService.this.c.q0() + ", " + intent);
            KeyEvent keyEvent = (KeyEvent) intent.getParcelableExtra("android.intent.extra.KEY_EVENT");
            if (keyEvent == null) {
                Log.d("AudioSessionService", "doMediaButtonEvent  event null");
                return false;
            }
            Log.d("AudioSessionService", "doMediaButtonEvent :" + keyEvent.toString());
            if (keyEvent.getAction() == 1) {
                il6.e();
                il6.d(keyEvent);
            }
            return super.onMediaButtonEvent(intent);
        }

        @Override
        public void onPause() {
            MediaSessionService.this.j(2);
            Log.d("AudioSessionService", "mPlaybackState onPause");
            MediaSessionService.this.c.B1();
        }

        @Override
        public void onPlay() {
            onPrepare();
            if (com.transsion.playercommon.player.a.a().b() || MediaSessionService.this.c.b0() > 0) {
                MediaSessionService.this.c.B1();
                Log.d("AudioSessionService", "onPlayFromMediaId: MediaSession active");
            } else {
                MediaSessionService mediaSessionService = MediaSessionService.this;
                mediaSessionService.k(mediaSessionService.c.a0());
            }
        }

        @Override
        public void onPrepare() {
            if (MediaSessionService.this.c == null || MediaSessionService.this.c.a0() == null) {
                return;
            }
            Log.d("AudioSessionService", "musicPlayManager.getPlayerState(): " + MediaSessionService.this.c.b0());
            int iB0 = MediaSessionService.this.c.b0();
            if (iB0 == 2 || iB0 == 3) {
                MediaSessionService.this.j(3);
            } else if (iB0 == 4) {
                MediaSessionService.this.j(2);
            } else if (iB0 != 5) {
                MediaSessionService.this.j(0);
            } else {
                MediaSessionService.this.j(1);
            }
            Log.d("AudioSessionService", "onPrepare mPlayMediaItem =" + MediaSessionService.this.c.a0());
            Log.d("AudioSessionService", "onPrepare getDuration =" + MediaSessionService.this.c.R());
            MediaSessionService mediaSessionService = MediaSessionService.this;
            this.c = mediaSessionService.l(mediaSessionService.c.a0());
            MediaSessionService.this.d.setMetadata(this.c);
            if (MediaSessionService.this.d.isActive()) {
                return;
            }
            MediaSessionService.this.d.setActive(true);
        }

        @Override
        public void onRemoveQueueItem(MediaDescriptionCompat mediaDescriptionCompat) {
        }

        @Override
        public void onSeekTo(long j) {
            MusicPlayManager.S().m1((int) j);
        }

        @Override
        public void onSkipToNext() {
            MediaSessionService.this.d.setPlaybackState(new PlaybackStateCompat.Builder().setState(6, 0L, 0.0f).setActions(MediaSessionService.this.i(6)).build());
            MusicPlayManager.S().U0();
            onPrepare();
        }

        @Override
        public void onSkipToPrevious() {
            MediaSessionService.this.d.setPlaybackState(new PlaybackStateCompat.Builder().setState(6, 0L, 0.0f).setActions(MediaSessionService.this.i(6)).build());
            MusicPlayManager.S().Y0();
            onPrepare();
        }

        @Override
        public void onStop() {
            MediaSessionService.this.j(1);
            Log.d("AudioSessionService", "mPlaybackState onStop");
        }
    }

    public class a implements MusicPlayManager.d {
        public a() {
        }

        @Override
        public void onPlayItemChanged(AudioItem audioItem) {
            Log.d("AudioSessionService", "onPlayItemChanged mediaItem: " + audioItem);
            if (MediaSessionService.this.c == null || MediaSessionService.this.c.a0() == null) {
                return;
            }
            Log.d("AudioSessionService", "musicPlayManager.getPlayerState(): " + MediaSessionService.this.c.b0());
            int iB0 = MediaSessionService.this.c.b0();
            if (iB0 == 2 || iB0 == 3) {
                MediaSessionService.this.j(3);
            } else if (iB0 == 4) {
                MediaSessionService.this.j(2);
            } else if (iB0 != 5) {
                MediaSessionService.this.j(0);
            } else {
                MediaSessionService.this.j(1);
            }
            Log.d("AudioSessionService", "onPrepare mPlayMediaItem =" + MediaSessionService.this.c.a0());
            Log.d("AudioSessionService", "onPrepare getDuration =" + MediaSessionService.this.c.R());
            MediaSessionService mediaSessionService = MediaSessionService.this;
            MediaSessionService.this.d.setMetadata(mediaSessionService.l(mediaSessionService.c.a0()));
            if (MediaSessionService.this.d.isActive()) {
                return;
            }
            MediaSessionService.this.d.setActive(true);
        }

        @Override
        public void onPlayerStateUpdate(int i) {
            Log.d("AudioSessionService", "onPlayerStateUpdate state: " + i);
            if (i == 2 || i == 3) {
                MediaSessionService.this.j(3);
                return;
            }
            if (i == 4) {
                MediaSessionService.this.j(2);
            } else if (i != 5) {
                MediaSessionService.this.j(0);
            } else {
                MediaSessionService.this.j(1);
            }
        }

        @Override
        public void onUpdateAll(MusicPlayManager musicPlayManager) {
        }

        @Override
        public void seekTo(int i) {
            if (MediaSessionService.this.c == null) {
                return;
            }
            Log.d("AudioSessionService", "musicPlayManager.getPlayerState() seekTo : " + MediaSessionService.this.c.b0() + ", seekTo : " + i + ", getCurrentPosition = " + MediaSessionService.this.c.Q());
            int iB0 = MediaSessionService.this.c.b0();
            if (iB0 == 2 || iB0 == 3) {
                MediaSessionService.this.j(3);
                return;
            }
            if (iB0 == 4) {
                MediaSessionService.this.j(2);
            } else if (iB0 != 5) {
                MediaSessionService.this.j(0);
            } else {
                MediaSessionService.this.j(1);
            }
        }
    }

    private static MediaBrowserCompat.MediaItem h(MediaMetadataCompat mediaMetadataCompat) {
        return new MediaBrowserCompat.MediaItem(mediaMetadataCompat.getDescription(), 2);
    }

    public long i(int i) {
        if (i == 1) {
            return 3126L;
        }
        if (i != 2) {
            return i != 3 ? 3639L : 3379L;
        }
        return 3125L;
    }

    public void j(int i) {
        PlaybackStateCompat playbackStateCompatBuild = new PlaybackStateCompat.Builder().setState(i, this.c.Q(), 1.0f).setActions(i(i)).build();
        this.f = playbackStateCompatBuild;
        this.d.setPlaybackState(playbackStateCompatBuild);
        Log.d("AudioSessionService", "setPlaybackState + state = " + i);
    }

    public void k(AudioItem audioItem) {
        PlayAudioData playAudioDataConvertToPlayAudioData = PlayAudioData.convertToPlayAudioData(audioItem);
        p06.d0("vd_miniplayer_none");
        if (playAudioDataConvertToPlayAudioData != null) {
            playAudioDataConvertToPlayAudioData.listFlag = 21;
            playAudioDataConvertToPlayAudioData.autoPlay = true;
            PlayAudioListData.getInstance().setRepeatMode(w6c.d(this.b, "audio_play_repeat_mode", 1));
            MusicPlayManager.S().N0(playAudioDataConvertToPlayAudioData);
        }
    }

    public MediaMetadataCompat l(AudioItem audioItem) {
        MediaMetadataCompat.Builder builder = new MediaMetadataCompat.Builder();
        if (audioItem != null) {
            MediaMetadataCompat.Builder builderPutString = builder.putString(MediaMetadataCompat.METADATA_KEY_MEDIA_ID, "" + audioItem.id).putString(MediaMetadataCompat.METADATA_KEY_TITLE, audioItem.displayName).putString(MediaMetadataCompat.METADATA_KEY_ARTIST, audioItem.artistName);
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            long jR = audioItem.duration;
            if (jR <= 0) {
                jR = this.c.R();
            }
            builderPutString.putLong(MediaMetadataCompat.METADATA_KEY_DURATION, timeUnit.convert(jR, timeUnit));
        }
        return builder.build();
    }

    @Override
    public void onCreate() {
        super.onCreate();
        this.b = getApplicationContext();
        this.c = MusicPlayManager.S();
        this.f = new PlaybackStateCompat.Builder().setState(0, 0L, 1.0f).setActions(i(0)).build();
        this.d = new MediaSessionCompat(this.b, "MediaSessionService");
        MediaSessionCallback mediaSessionCallback = new MediaSessionCallback();
        this.e = mediaSessionCallback;
        this.d.setCallback(mediaSessionCallback);
        this.d.setFlags(7);
        setSessionToken(this.d.getSessionToken());
        this.c.f1(this.g);
    }

    @Override
    public void onDestroy() {
        this.c.F1(this.g);
        MediaSessionCompat mediaSessionCompat = this.d;
        if (mediaSessionCompat != null) {
            mediaSessionCompat.release();
            this.d = null;
        }
        Log.d("AudioSessionService", "onDestroy: MediaPlayerAdapter stopped, and MediaSession released");
    }

    @Override
    public MediaBrowserServiceCompat.BrowserRoot onGetRoot(String str, int i, Bundle bundle) {
        return new MediaBrowserServiceCompat.BrowserRoot("root", null);
    }

    @Override
    public void onLoadChildren(String str, MediaBrowserServiceCompat.Result result) {
        result.detach();
        ArrayList arrayList = new ArrayList();
        if (this.c.X().size() > 0) {
            AudioItem audioItem = (AudioItem) this.c.X().get(0);
            MediaMetadataCompat.Builder builderPutString = new MediaMetadataCompat.Builder().putString(MediaMetadataCompat.METADATA_KEY_MEDIA_ID, "" + audioItem.id).putString(MediaMetadataCompat.METADATA_KEY_TITLE, audioItem.displayName).putString(MediaMetadataCompat.METADATA_KEY_ARTIST, audioItem.artistName);
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            arrayList.add(h(builderPutString.putLong(MediaMetadataCompat.METADATA_KEY_DURATION, timeUnit.convert(audioItem.duration, timeUnit)).build()));
            Log.d("AudioSessionService", "onLoadChildren mediaId =" + audioItem.id);
        }
        result.sendResult(arrayList);
    }

    @Override
    public void onTaskRemoved(Intent intent) {
        super.onTaskRemoved(intent);
        stopSelf();
    }
}
