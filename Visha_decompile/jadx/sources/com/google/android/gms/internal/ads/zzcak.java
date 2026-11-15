package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.media.MediaFormat;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzv;
import defpackage.bhf;
import defpackage.chf;
import defpackage.cye;
import defpackage.dhf;
import defpackage.qgf;
import defpackage.rmg;
import defpackage.smg;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

public final class zzcak extends zzcam implements TextureView.SurfaceTextureListener, MediaPlayer.OnBufferingUpdateListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnInfoListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnVideoSizeChangedListener {
    public static final Map u;
    public final chf d;
    public final dhf e;
    public final boolean f;
    public final smg g;
    public int h;
    public int i;
    public MediaPlayer j;
    public Uri k;
    public int l;
    public int m;
    public int n;
    public zzcbe o;
    public final boolean p;
    public int q;
    public qgf r;
    public boolean s;
    public Integer t;

    static {
        HashMap map = new HashMap();
        u = map;
        map.put(-1004, "MEDIA_ERROR_IO");
        map.put(-1007, "MEDIA_ERROR_MALFORMED");
        map.put(-1010, "MEDIA_ERROR_UNSUPPORTED");
        map.put(-110, "MEDIA_ERROR_TIMED_OUT");
        map.put(3, "MEDIA_INFO_VIDEO_RENDERING_START");
        map.put(100, "MEDIA_ERROR_SERVER_DIED");
        map.put(1, "MEDIA_ERROR_UNKNOWN");
        map.put(1, "MEDIA_INFO_UNKNOWN");
        map.put(700, "MEDIA_INFO_VIDEO_TRACK_LAGGING");
        map.put(701, "MEDIA_INFO_BUFFERING_START");
        map.put(702, "MEDIA_INFO_BUFFERING_END");
        map.put(800, "MEDIA_INFO_BAD_INTERLEAVING");
        map.put(801, "MEDIA_INFO_NOT_SEEKABLE");
        map.put(802, "MEDIA_INFO_METADATA_UPDATE");
        map.put(901, "MEDIA_INFO_UNSUPPORTED_SUBTITLE");
        map.put(902, "MEDIA_INFO_SUBTITLE_TIMED_OUT");
    }

    public zzcak(Context context, chf chfVar, boolean z, boolean z2, bhf bhfVar, dhf dhfVar, @Nullable smg smgVar) {
        super(context);
        this.h = 0;
        this.i = 0;
        this.s = false;
        this.t = null;
        this.d = chfVar;
        this.e = dhfVar;
        this.p = z;
        this.f = z2;
        dhfVar.a(this);
        this.g = smgVar;
    }

    public static void h(zzcak zzcakVar, MediaPlayer mediaPlayer) {
        MediaFormat format;
        if (!((Boolean) zzbd.zzc().b(cye.c2)).booleanValue() || zzcakVar.d == null || mediaPlayer == null) {
            return;
        }
        try {
            MediaPlayer.TrackInfo[] trackInfo = mediaPlayer.getTrackInfo();
            if (trackInfo != null) {
                HashMap map = new HashMap();
                for (MediaPlayer.TrackInfo trackInfo2 : trackInfo) {
                    if (trackInfo2 != null) {
                        int trackType = trackInfo2.getTrackType();
                        if (trackType == 1) {
                            MediaFormat format2 = trackInfo2.getFormat();
                            if (format2 != null) {
                                if (format2.containsKey(com.hunantv.media.player.subtitle.MediaFormat.KEY_FRAME_RATE)) {
                                    try {
                                        map.put("frameRate", String.valueOf(format2.getFloat(com.hunantv.media.player.subtitle.MediaFormat.KEY_FRAME_RATE)));
                                    } catch (ClassCastException unused) {
                                        map.put("frameRate", String.valueOf(format2.getInteger(com.hunantv.media.player.subtitle.MediaFormat.KEY_FRAME_RATE)));
                                    }
                                }
                                if (format2.containsKey("bitrate")) {
                                    Integer numValueOf = Integer.valueOf(format2.getInteger("bitrate"));
                                    zzcakVar.t = numValueOf;
                                    map.put("bitRate", String.valueOf(numValueOf));
                                }
                                if (format2.containsKey("width") && format2.containsKey("height")) {
                                    map.put("resolution", format2.getInteger("width") + "x" + format2.getInteger("height"));
                                }
                                if (format2.containsKey("mime")) {
                                    map.put("videoMime", format2.getString("mime"));
                                }
                                if (Build.VERSION.SDK_INT >= 30 && format2.containsKey("codecs-string")) {
                                    map.put("videoCodec", format2.getString("codecs-string"));
                                }
                            }
                        } else if (trackType == 2 && (format = trackInfo2.getFormat()) != null) {
                            if (format.containsKey("mime")) {
                                map.put("audioMime", format.getString("mime"));
                            }
                            if (Build.VERSION.SDK_INT >= 30 && format.containsKey("codecs-string")) {
                                map.put("audioCodec", format.getString("codecs-string"));
                            }
                        }
                    }
                }
                if (map.isEmpty()) {
                    return;
                }
                zzcakVar.d.zzd("onMetadataEvent", map);
            }
        } catch (RuntimeException e) {
            zzv.zzp().x(e, "AdMediaPlayerView.reportMetadata");
        }
    }

    public static void zzk(zzcak zzcakVar, int i) {
        qgf qgfVar = zzcakVar.r;
        if (qgfVar != null) {
            qgfVar.onWindowVisibilityChanged(i);
        }
    }

    public final void a() {
        smg smgVar;
        zze.zza("AdMediaPlayerView init MediaPlayer");
        SurfaceTexture surfaceTexture = getSurfaceTexture();
        if (this.k == null || surfaceTexture == null) {
            return;
        }
        b(false);
        try {
            zzv.zzl();
            MediaPlayer mediaPlayer = new MediaPlayer();
            this.j = mediaPlayer;
            mediaPlayer.setOnBufferingUpdateListener(this);
            this.j.setOnCompletionListener(this);
            this.j.setOnErrorListener(this);
            this.j.setOnInfoListener(this);
            this.j.setOnPreparedListener(this);
            this.j.setOnVideoSizeChangedListener(this);
            this.n = 0;
            if (this.p) {
                if (((Boolean) zzbd.zzc().b(cye.nd)).booleanValue() && (smgVar = this.g) != null) {
                    rmg rmgVarA = smgVar.a();
                    rmgVarA.b("action", "svp_ampv");
                    rmgVarA.j();
                }
                zzcbe zzcbeVar = new zzcbe(getContext());
                this.o = zzcbeVar;
                zzcbeVar.zzd(surfaceTexture, getWidth(), getHeight());
                zzcbe zzcbeVar2 = this.o;
                zzcbeVar2.start();
                SurfaceTexture surfaceTextureZzb = zzcbeVar2.zzb();
                if (surfaceTextureZzb != null) {
                    surfaceTexture = surfaceTextureZzb;
                } else {
                    this.o.zze();
                    this.o = null;
                }
            }
            this.j.setDataSource(getContext(), this.k);
            zzv.zzm();
            this.j.setSurface(new Surface(surfaceTexture));
            this.j.setAudioStreamType(3);
            this.j.setScreenOnWhilePlaying(true);
            this.j.prepareAsync();
            c(1);
        } catch (IOException | IllegalArgumentException | IllegalStateException e) {
            zzo.zzk("Failed to initialize MediaPlayer at ".concat(String.valueOf(this.k)), e);
            onError(this.j, 1, 0);
        }
    }

    public final void b(boolean z) {
        zze.zza("AdMediaPlayerView release");
        zzcbe zzcbeVar = this.o;
        if (zzcbeVar != null) {
            zzcbeVar.zze();
            this.o = null;
        }
        MediaPlayer mediaPlayer = this.j;
        if (mediaPlayer != null) {
            mediaPlayer.reset();
            this.j.release();
            this.j = null;
            c(0);
            if (z) {
                this.i = 0;
            }
        }
    }

    public final void c(int i) {
        if (i == 3) {
            this.e.c();
            this.c.b();
        } else if (this.h == 3) {
            this.e.e();
            this.c.c();
        }
        this.h = i;
    }

    public final void d(float f) {
        MediaPlayer mediaPlayer = this.j;
        if (mediaPlayer != null) {
            try {
                mediaPlayer.setVolume(f, f);
            } catch (IllegalStateException unused) {
            }
        } else {
            int i = zze.zza;
            zzo.zzj("AdMediaPlayerView setMediaPlayerVolume() called before onPrepared().");
        }
    }

    public final boolean e() {
        int i;
        return (this.j == null || (i = this.h) == -1 || i == 0 || i == 1) ? false : true;
    }

    @Override
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        setSurfaceTextureListener(this);
    }

    @Override
    public final void onBufferingUpdate(MediaPlayer mediaPlayer, int i) {
        this.n = i;
    }

    @Override
    public final void onCompletion(MediaPlayer mediaPlayer) {
        zze.zza("AdMediaPlayerView completion");
        c(5);
        this.i = 5;
        com.google.android.gms.ads.internal.util.zzs.zza.post(new zzcad(this));
    }

    @Override
    public final boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        Map map = u;
        String str = (String) map.get(Integer.valueOf(i));
        String str2 = (String) map.get(Integer.valueOf(i2));
        String str3 = "AdMediaPlayerView MediaPlayer error: " + str + StringUtils.PROCESS_POSTFIX_DELIMITER + str2;
        int i3 = zze.zza;
        zzo.zzj(str3);
        c(-1);
        this.i = -1;
        com.google.android.gms.ads.internal.util.zzs.zza.post(new zzcae(this, str, str2));
        return true;
    }

    @Override
    public final boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
        Map map = u;
        zze.zza("AdMediaPlayerView MediaPlayer info: " + ((String) map.get(Integer.valueOf(i))) + StringUtils.PROCESS_POSTFIX_DELIMITER + ((String) map.get(Integer.valueOf(i2))));
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0047  */
    /* JADX WARN: Code duplicated, block: B:26:0x0054 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:27:0x0056  */
    /* JADX WARN: Code duplicated, block: B:32:0x0064  */
    /* JADX WARN: Code duplicated, block: B:36:0x0070  */
    @Override
    public final void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int defaultSize = View.getDefaultSize(this.l, i);
        int defaultSize2 = View.getDefaultSize(this.m, i2);
        if (this.l > 0 && this.m > 0 && this.o == null) {
            int mode = View.MeasureSpec.getMode(i);
            int size = View.MeasureSpec.getSize(i);
            int mode2 = View.MeasureSpec.getMode(i2);
            int size2 = View.MeasureSpec.getSize(i2);
            if (mode != 1073741824) {
                if (mode == 1073741824) {
                    i6 = (this.m * size) / this.l;
                    if (mode2 == Integer.MIN_VALUE || i6 <= size2) {
                        defaultSize2 = i6;
                        defaultSize = size;
                    }
                    defaultSize = size;
                    defaultSize2 = size2;
                } else {
                    if (mode2 == 1073741824) {
                        i5 = (this.l * size2) / this.m;
                        if (mode != Integer.MIN_VALUE && i5 > size) {
                            defaultSize = size;
                        }
                        defaultSize2 = size2;
                    } else {
                        i3 = this.l;
                        i4 = this.m;
                        if (mode2 == Integer.MIN_VALUE || i4 <= size2) {
                            i5 = i3;
                            size2 = i4;
                        } else {
                            i5 = (size2 * i3) / i4;
                        }
                        if (mode == Integer.MIN_VALUE && i5 > size) {
                            defaultSize2 = (i4 * size) / i3;
                            defaultSize = size;
                        }
                    }
                    defaultSize = i5;
                    defaultSize2 = size2;
                }
            } else if (mode2 == 1073741824) {
                int i7 = this.l;
                int i8 = i7 * size2;
                int i9 = this.m;
                int i10 = size * i9;
                if (i8 < i10) {
                    defaultSize = i8 / i9;
                } else {
                    if (i8 > i10) {
                        defaultSize2 = i10 / i7;
                        defaultSize = size;
                    }
                    defaultSize = size;
                }
                defaultSize2 = size2;
            } else {
                mode = 1073741824;
                if (mode == 1073741824) {
                    i6 = (this.m * size) / this.l;
                    if (mode2 == Integer.MIN_VALUE) {
                    }
                    defaultSize2 = i6;
                    defaultSize = size;
                } else {
                    if (mode2 == 1073741824) {
                        i5 = (this.l * size2) / this.m;
                        if (mode != Integer.MIN_VALUE) {
                        }
                    } else {
                        i3 = this.l;
                        i4 = this.m;
                        if (mode2 == Integer.MIN_VALUE) {
                            i5 = i3;
                            size2 = i4;
                        } else {
                            i5 = i3;
                            size2 = i4;
                        }
                        if (mode == Integer.MIN_VALUE) {
                            defaultSize2 = (i4 * size) / i3;
                            defaultSize = size;
                        }
                    }
                    defaultSize = i5;
                    defaultSize2 = size2;
                }
            }
        }
        setMeasuredDimension(defaultSize, defaultSize2);
        zzcbe zzcbeVar = this.o;
        if (zzcbeVar != null) {
            zzcbeVar.zzc(defaultSize, defaultSize2);
        }
    }

    @Override
    public final void onPrepared(MediaPlayer mediaPlayer) {
        zze.zza("AdMediaPlayerView prepared");
        c(2);
        this.e.b();
        com.google.android.gms.ads.internal.util.zzs.zza.post(new zzcac(this, mediaPlayer));
        this.l = mediaPlayer.getVideoWidth();
        this.m = mediaPlayer.getVideoHeight();
        int i = this.q;
        if (i != 0) {
            zzq(i);
        }
        if (this.f && e() && this.j.getCurrentPosition() > 0 && this.i != 3) {
            zze.zza("AdMediaPlayerView nudging MediaPlayer");
            d(0.0f);
            this.j.start();
            int currentPosition = this.j.getCurrentPosition();
            long jCurrentTimeMillis = zzv.zzC().currentTimeMillis();
            while (e() && this.j.getCurrentPosition() == currentPosition && zzv.zzC().currentTimeMillis() - jCurrentTimeMillis <= 250) {
            }
            this.j.pause();
            zzn();
        }
        zzo.zzi("AdMediaPlayerView stream dimensions: " + this.l + " x " + this.m);
        if (this.i == 3) {
            zzp();
        }
        zzn();
    }

    @Override
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        zze.zza("AdMediaPlayerView surface created");
        a();
        com.google.android.gms.ads.internal.util.zzs.zza.post(new zzcaf(this));
    }

    @Override
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        zze.zza("AdMediaPlayerView surface destroyed");
        MediaPlayer mediaPlayer = this.j;
        if (mediaPlayer != null && this.q == 0) {
            this.q = mediaPlayer.getCurrentPosition();
        }
        zzcbe zzcbeVar = this.o;
        if (zzcbeVar != null) {
            zzcbeVar.zze();
        }
        com.google.android.gms.ads.internal.util.zzs.zza.post(new zzcah(this));
        b(true);
        return true;
    }

    @Override
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        zze.zza("AdMediaPlayerView surface changed");
        int i3 = this.i;
        boolean z = false;
        if (this.l == i && this.m == i2) {
            z = true;
        }
        if (this.j != null && i3 == 3 && z) {
            int i4 = this.q;
            if (i4 != 0) {
                zzq(i4);
            }
            zzp();
        }
        zzcbe zzcbeVar = this.o;
        if (zzcbeVar != null) {
            zzcbeVar.zzc(i, i2);
        }
        com.google.android.gms.ads.internal.util.zzs.zza.post(new zzcag(this, i, i2));
    }

    @Override
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        this.e.f(this);
        this.b.a(surfaceTexture, this.r);
    }

    @Override
    public final void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
        zze.zza("AdMediaPlayerView size changed: " + i + " x " + i2);
        this.l = mediaPlayer.getVideoWidth();
        int videoHeight = mediaPlayer.getVideoHeight();
        this.m = videoHeight;
        if (this.l == 0 || videoHeight == 0) {
            return;
        }
        requestLayout();
    }

    @Override
    public final void onWindowVisibilityChanged(final int i) {
        zze.zza("AdMediaPlayerView window visibility changed to " + i);
        com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() {
            @Override
            public final void run() {
                zzcak.zzk(this.zza, i);
            }
        });
        super.onWindowVisibilityChanged(i);
    }

    @Override
    public final String toString() {
        return zzcak.class.getName() + "@" + Integer.toHexString(hashCode());
    }

    @Override
    public final int zza() {
        if (e()) {
            return this.j.getCurrentPosition();
        }
        return 0;
    }

    @Override
    public final int zzb() {
        if (e()) {
            return this.j.getMetrics().getInt("android.media.mediaplayer.dropped");
        }
        return -1;
    }

    @Override
    public final int zzc() {
        if (e()) {
            return this.j.getDuration();
        }
        return -1;
    }

    @Override
    public final int zzd() {
        MediaPlayer mediaPlayer = this.j;
        if (mediaPlayer != null) {
            return mediaPlayer.getVideoHeight();
        }
        return 0;
    }

    @Override
    public final int zze() {
        MediaPlayer mediaPlayer = this.j;
        if (mediaPlayer != null) {
            return mediaPlayer.getVideoWidth();
        }
        return 0;
    }

    @Override
    public final long zzf() {
        return 0L;
    }

    @Override
    public final long zzg() {
        if (this.t != null) {
            return (zzh() * ((long) this.n)) / 100;
        }
        return -1L;
    }

    @Override
    public final long zzh() {
        if (this.t != null) {
            return ((long) zzc()) * ((long) this.t.intValue());
        }
        return -1L;
    }

    @Override
    public final String zzj() {
        return "MediaPlayer".concat(true != this.p ? "" : " spherical");
    }

    @Override
    public final void zzn() {
        d(this.c.a());
    }

    @Override
    public final void zzo() {
        zze.zza("AdMediaPlayerView pause");
        if (e() && this.j.isPlaying()) {
            this.j.pause();
            c(4);
            com.google.android.gms.ads.internal.util.zzs.zza.post(new zzcaj(this));
        }
        this.i = 4;
    }

    @Override
    public final void zzp() {
        zze.zza("AdMediaPlayerView play");
        if (e()) {
            this.j.start();
            c(3);
            this.b.b();
            com.google.android.gms.ads.internal.util.zzs.zza.post(new zzcai(this));
        }
        this.i = 3;
    }

    @Override
    public final void zzq(int i) {
        zze.zza("AdMediaPlayerView seek " + i);
        if (!e()) {
            this.q = i;
        } else {
            this.j.seekTo(i);
            this.q = 0;
        }
    }

    @Override
    public final void zzr(qgf qgfVar) {
        this.r = qgfVar;
    }

    @Override
    public final void zzs(@Nullable String str) {
        Uri uri = Uri.parse(str);
        zzbas zzbasVarZza = zzbas.zza(uri);
        if (zzbasVarZza == null || zzbasVarZza.zza != null) {
            if (zzbasVarZza != null) {
                uri = Uri.parse(zzbasVarZza.zza);
            }
            this.k = uri;
            this.q = 0;
            a();
            requestLayout();
            invalidate();
        }
    }

    @Override
    public final void zzt() {
        zze.zza("AdMediaPlayerView stop");
        MediaPlayer mediaPlayer = this.j;
        if (mediaPlayer != null) {
            mediaPlayer.stop();
            this.j.release();
            this.j = null;
            c(0);
            this.i = 0;
        }
        this.e.d();
    }

    @Override
    public final void zzu(float f, float f2) {
        zzcbe zzcbeVar = this.o;
        if (zzcbeVar != null) {
            zzcbeVar.zzf(f, f2);
        }
    }
}
