package com.transsion.player.mediasession;

import android.app.Application;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.v4.media.session.MediaSessionCompat;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import androidx.core.app.z;
import androidx.media.session.MediaButtonReceiver;
import androidx.media3.common.util.g0;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.a0;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.request.target.CustomTarget;
import com.bumptech.glide.request.transition.Transition;
import com.transsion.player.R$mipmap;
import com.transsion.player.R$string;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import org.mvel2.ast.ASTNode;

public final class h {

    private static boolean f46424b;

    private static MediaSessionCompat f46425c;

    private static MediaService f46426d;

    private static MediaItem f46427e;

    private static Integer f46428f;

    private static Bitmap f46429g;

    public static final h f46423a = new h();

    private static String f46430h = "";

    private static final a f46431i = new a();

    public static final class a extends CustomTarget {
        a() {
        }

        @Override
        public void onLoadCleared(Drawable drawable) {
            i.f46432a.a(h.f46423a.i() + " --> loadAlbum --> onLoadCleared() ---> 加载失败");
        }

        @Override
        public void onLoadFailed(Drawable drawable) {
            super.onLoadFailed(drawable);
            i iVar = i.f46432a;
            h hVar = h.f46423a;
            iVar.a(hVar.i() + " --> loadAlbum --> onLoadFailed() ---> 加载失败");
            h.f46429g = BitmapFactory.decodeResource(Utils.a().getResources(), R$mipmap.player_ic_notification_icon);
            hVar.o(h.f46426d, h.f46427e, h.f46428f, h.f46425c);
        }

        @Override
        public void onResourceReady(Bitmap resource, Transition transition) {
            Intrinsics.h(resource, "resource");
            String str = h.f46430h;
            MediaItem mediaItem = h.f46427e;
            if (TextUtils.equals(str, mediaItem != null ? mediaItem.getCoverUrl() : null)) {
                h.f46429g = resource;
                h.f46423a.o(h.f46426d, h.f46427e, h.f46428f, h.f46425c);
            }
        }
    }

    private h() {
    }

    private final Bitmap h(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return q(str);
    }

    public final String i() {
        String simpleName = h.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    private final String k(String str) {
        return sn.h.f72360a.b(str, a0.a(48.0f), (120 & 4) != 0 ? true : true, (120 & 8) != 0, (120 & 16) != 0 ? 0 : 0, (120 & 32) != 0 ? false : false, (120 & 64) != 0 ? false : false);
    }

    private final void m(MediaService mediaService, MediaItem mediaItem, Integer num, MediaSessionCompat mediaSessionCompat) {
        String title;
        String subTitle;
        f46426d = mediaService;
        f46427e = mediaItem;
        f46428f = num;
        f46425c = mediaSessionCompat;
        n();
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        NotificationCompat.m mVar = new NotificationCompat.m(applicationA, "MUSIC_NOTIFICATION_ID");
        String str = "VideoPlayer";
        if (mediaItem == null || (title = mediaItem.getTitle()) == null) {
            title = "VideoPlayer";
        }
        NotificationCompat.m mVarR = mVar.r(title);
        if (mediaItem != null && (subTitle = mediaItem.getSubTitle()) != null) {
            str = subTitle;
        }
        NotificationCompat.m mVarQ = mVarR.q(str);
        Intrinsics.g(mVarQ, "setContentText(...)");
        Bitmap bitmap = f46429g;
        if (bitmap == null) {
            mVarQ.A(BitmapFactory.decodeResource(Utils.a().getResources(), R$mipmap.player_ic_push_small_logo));
        } else {
            mVarQ.A(bitmap);
        }
        mVarQ.v(MusicNotificationBroadcastReceiver.INSTANCE.a());
        Object systemService = null;
        if ((mediaItem != null ? mediaItem.getPendingIntent() : null) != null) {
            mVarQ.p(mediaItem.getPendingIntent());
        }
        mVarQ.O(1);
        if (num != null && num.intValue() == 3) {
            mVarQ.b(new NotificationCompat.b.a(R$mipmap.player_pause, "pause", MediaButtonReceiver.a(applicationA, 2L)).a());
        } else {
            mVarQ.b(new NotificationCompat.b.a(R$mipmap.player_play, MediaItem.MUSIC_FLOAT_STATE_PLAY, MediaButtonReceiver.a(applicationA, 4L)).a());
        }
        androidx.media.app.c cVar = new androidx.media.app.c();
        MediaSessionCompat mediaSessionCompat2 = f46425c;
        mVarQ.L(cVar.q(mediaSessionCompat2 != null ? mediaSessionCompat2.b() : null).r(0));
        mVarQ.J(R$mipmap.player_ic_push_small_logo);
        try {
            Notification notificationC = mVarQ.c();
            Intrinsics.e(notificationC);
            notificationC.flags = 224;
            if (f46424b) {
                if (mediaService != null) {
                    try {
                        systemService = mediaService.getSystemService("notification");
                    } catch (Throwable th2) {
                        th2.printStackTrace();
                        return;
                    }
                }
                Intrinsics.f(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
                ((NotificationManager) systemService).notify(89757, notificationC);
                return;
            }
            if (!com.blankj.utilcode.util.c.j()) {
                i.f46432a.b("Service is restricted, cannot start foreground.");
                return;
            }
            if (mediaService != null) {
                try {
                    mediaService.startForeground(89757, notificationC);
                } catch (Throwable th3) {
                    th3.printStackTrace();
                    try {
                        Object systemService2 = mediaService.getSystemService("notification");
                        Intrinsics.f(systemService2, "null cannot be cast to non-null type android.app.NotificationManager");
                        ((NotificationManager) systemService2).notify(89757, notificationC);
                    } catch (Throwable th4) {
                        th4.printStackTrace();
                    }
                }
            }
            f46424b = true;
        } catch (Throwable unused) {
        }
    }

    private final void n() {
        Object objM453constructorimpl;
        String coverUrl;
        MediaItem mediaItem = f46427e;
        String coverUrl2 = mediaItem != null ? mediaItem.getCoverUrl() : null;
        if (TextUtils.isEmpty(coverUrl2) || TextUtils.equals(f46430h, coverUrl2)) {
            return;
        }
        f46430h = coverUrl2;
        if (coverUrl2 != null && StringsKt.c0(coverUrl2, "http", false, 2, null)) {
            f46429g = null;
            RequestBuilder requestBuilderDiskCacheStrategy = Glide.with(Utils.a()).asBitmap().centerInside().diskCacheStrategy(DiskCacheStrategy.DATA);
            MediaItem mediaItem2 = f46427e;
            if (mediaItem2 == null || (coverUrl = mediaItem2.getCoverUrl()) == null) {
                coverUrl = "";
            }
            Intrinsics.e(requestBuilderDiskCacheStrategy.load2(k(coverUrl)).into(f46431i));
            return;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            f46429g = f46423a.h(f46430h);
            objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        if (Result.m456exceptionOrNullimpl(objM453constructorimpl) != null) {
            f46429g = BitmapFactory.decodeResource(Utils.a().getResources(), R$mipmap.player_ic_push_small_logo);
        }
        m(f46426d, f46427e, f46428f, f46425c);
    }

    private final Bitmap q(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        int iA = a0.a(48.0f);
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            int iRound = 1;
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(str, options);
            int i10 = options.outWidth;
            int i11 = options.outHeight;
            if (i10 <= iA && i11 <= iA) {
                options.inJustDecodeBounds = false;
                return BitmapFactory.decodeFile(str, options);
            }
            if (i11 > iA || i10 > iA) {
                float f10 = iA;
                iRound = Math.round(RangesKt.d(i11 / f10, i10 / f10));
            }
            options.inSampleSize = iRound;
            options.inJustDecodeBounds = false;
            return BitmapFactory.decodeFile(str, options);
        } catch (Throwable th2) {
            th2.printStackTrace();
            return null;
        }
    }

    public final int j() {
        if (Build.VERSION.SDK_INT >= 31) {
            return 67108864;
        }
        return ASTNode.NOJIT;
    }

    public final void l() {
        i.f46432a.a(i() + " --> initNotificationChannel() --> 初始化 通知的 渠道");
        Object systemService = Utils.a().getSystemService("notification");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
        NotificationManager notificationManager = (NotificationManager) systemService;
        if (Build.VERSION.SDK_INT >= 26) {
            g0.a();
            NotificationChannel notificationChannelA = m.f.a("MUSIC_NOTIFICATION_ID", Utils.a().getString(R$string.player_notification_name), 3);
            notificationChannelA.setSound(null, null);
            notificationChannelA.setDescription("playing media");
            notificationManager.createNotificationChannel(notificationChannelA);
        }
        MusicNotificationBroadcastReceiver.INSTANCE.b();
    }

    public final void o(MediaService mediaService, MediaItem mediaItem, Integer num, MediaSessionCompat mediaSessionCompat) {
        if (mediaItem != null) {
            m(mediaService, mediaItem, num, mediaSessionCompat);
            return;
        }
        i.f46432a.b(i() + " --> notifyNotification() --> mediaItem == null --> return");
        p();
    }

    public final void p() {
        MediaService mediaService = f46426d;
        if (mediaService != null) {
            z.a(mediaService, 1);
        }
        Object systemService = Utils.a().getSystemService("notification");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
        ((NotificationManager) systemService).cancel(89757);
        f46424b = false;
    }

    public final void r(boolean z10) {
        f46424b = z10;
    }
}
