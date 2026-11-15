package qo;

import android.content.Context;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Handler;
import android.text.TextUtils;
import java.io.IOException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class d {

    public static final a f69920e = new a(null);

    private MediaPlayer f69921a;

    private Handler f69922b;

    private String f69923c = "";

    private boolean f69924d;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public static final void e(d dVar, MediaPlayer mediaPlayer) {
        MediaPlayer mediaPlayer2 = dVar.f69921a;
        if (mediaPlayer2 != null) {
            mediaPlayer2.start();
        }
    }

    public final boolean b() {
        try {
            MediaPlayer mediaPlayer = this.f69921a;
            return mediaPlayer != null && mediaPlayer.isPlaying();
        } catch (IllegalStateException unused) {
            return false;
        }
    }

    public final void c() {
        try {
            this.f69924d = true;
            MediaPlayer mediaPlayer = this.f69921a;
            if (mediaPlayer != null) {
                mediaPlayer.pause();
            }
        } catch (Exception e10) {
            String message = e10.getMessage();
            if (message != null) {
                wf.a.C0922a.f(wf.a.f74274a, "MediaPlayerHelper", message, false, 4, null);
            }
        }
    }

    public final void d(Context context, String path, boolean z10, MediaPlayer.OnCompletionListener onCompletionListener) {
        MediaPlayer mediaPlayer;
        Intrinsics.h(context, "context");
        Intrinsics.h(path, "path");
        if (TextUtils.isEmpty(path)) {
            return;
        }
        this.f69924d = false;
        if (this.f69921a == null) {
            MediaPlayer mediaPlayer2 = new MediaPlayer();
            this.f69921a = mediaPlayer2;
            mediaPlayer2.setLooping(z10);
        }
        try {
            MediaPlayer mediaPlayer3 = this.f69921a;
            if (mediaPlayer3 != null && mediaPlayer3.isPlaying()) {
                if (TextUtils.equals(this.f69923c, path)) {
                    MediaPlayer mediaPlayer4 = this.f69921a;
                    if (mediaPlayer4 != null) {
                        mediaPlayer4.pause();
                        return;
                    }
                    return;
                }
                MediaPlayer mediaPlayer5 = this.f69921a;
                if (mediaPlayer5 != null) {
                    mediaPlayer5.stop();
                }
                MediaPlayer mediaPlayer6 = this.f69921a;
                if (mediaPlayer6 != null) {
                    mediaPlayer6.reset();
                }
                MediaPlayer mediaPlayer7 = this.f69921a;
                if (mediaPlayer7 != null) {
                    mediaPlayer7.release();
                }
                this.f69921a = null;
                MediaPlayer mediaPlayer8 = new MediaPlayer();
                this.f69921a = mediaPlayer8;
                mediaPlayer8.setLooping(true);
            }
        } catch (IllegalStateException unused) {
            this.f69921a = null;
            this.f69923c = path;
            this.f69921a = MediaPlayer.create(context, Uri.parse(path));
        }
        try {
            MediaPlayer mediaPlayer9 = this.f69921a;
            if (mediaPlayer9 != null) {
                mediaPlayer9.reset();
            }
            this.f69923c = path;
            MediaPlayer mediaPlayer10 = this.f69921a;
            if (mediaPlayer10 != null) {
                mediaPlayer10.setDataSource(context, Uri.parse(path));
            }
            MediaPlayer mediaPlayer11 = this.f69921a;
            if (mediaPlayer11 != null) {
                mediaPlayer11.prepareAsync();
            }
            MediaPlayer mediaPlayer12 = this.f69921a;
            if (mediaPlayer12 != null) {
                mediaPlayer12.setOnPreparedListener(new MediaPlayer.OnPreparedListener() {
                    @Override
                    public final void onPrepared(MediaPlayer mediaPlayer13) {
                        d.e(this.f69919a, mediaPlayer13);
                    }
                });
            }
            if (onCompletionListener == null || (mediaPlayer = this.f69921a) == null) {
                return;
            }
            mediaPlayer.setOnCompletionListener(onCompletionListener);
        } catch (IOException e10) {
            String message = e10.getMessage();
            if (message != null) {
                wf.a.C0922a.f(wf.a.f74274a, "MediaPlayerHelper", message, false, 4, null);
            }
        } catch (IllegalArgumentException e11) {
            String message2 = e11.getMessage();
            if (message2 != null) {
                wf.a.C0922a.f(wf.a.f74274a, "MediaPlayerHelper", message2, false, 4, null);
            }
        } catch (IllegalStateException e12) {
            String message3 = e12.getMessage();
            if (message3 != null) {
                wf.a.C0922a.f(wf.a.f74274a, "MediaPlayerHelper", message3, false, 4, null);
            }
        } catch (SecurityException e13) {
            String message4 = e13.getMessage();
            if (message4 != null) {
                wf.a.C0922a.f(wf.a.f74274a, "MediaPlayerHelper", message4, false, 4, null);
            }
        }
    }

    public final void f() {
        try {
            MediaPlayer mediaPlayer = this.f69921a;
            if (mediaPlayer != null) {
                Intrinsics.e(mediaPlayer);
                if (mediaPlayer.isPlaying()) {
                    MediaPlayer mediaPlayer2 = this.f69921a;
                    Intrinsics.e(mediaPlayer2);
                    mediaPlayer2.stop();
                    MediaPlayer mediaPlayer3 = this.f69921a;
                    Intrinsics.e(mediaPlayer3);
                    mediaPlayer3.release();
                    this.f69922b = null;
                }
            }
        } catch (Exception unused) {
        }
    }
}
