package com.transsion.audio.appwidgt;

import android.app.PendingIntent;
import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.util.Log;
import android.widget.RemoteViews;
import com.blankj.utilcode.util.ThreadUtils;
import com.bumptech.glide.load.resource.bitmap.CircleCrop;
import com.bumptech.glide.request.RequestOptions;
import com.tencent.mmkv.MMKV;
import com.transsion.audio.R;
import com.transsion.audio.appwidgt.BaseAppMusicProvider;
import com.transsion.audio.player.MusicPlayManager;
import com.transsion.audio.service.MusicService;
import com.transsion.audio.widgets.MusicHelper;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.PlayAudioListData;
import com.transsion.dbdata.beans.onlinevideo.RouterBean;
import com.transsion.playercommon.router.RouterUtils;
import com.transsion.utils.a;
import defpackage.ao;
import defpackage.h27;
import defpackage.iia;
import defpackage.oc2;
import defpackage.p06;
import defpackage.r0a;
import defpackage.ry5;
import defpackage.se;
import defpackage.t08;
import defpackage.tn;
import defpackage.vf;
import defpackage.ydc;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import org.mozilla.javascript.ES6Iterator;

public abstract class BaseAppMusicProvider extends AppWidgetProvider {
    public static boolean h;
    public static boolean i;
    public static boolean j;
    public static boolean k;
    public static final Map l = new HashMap();
    public static final Map m = new HashMap();
    public static final Map n = new HashMap();
    public static final Map o = new HashMap();
    public static final Map p = new HashMap();
    public static final Map q = new HashMap();
    public String a;
    public boolean b;
    public String c;
    public AudioItem d;
    public boolean e;
    public MusicService f;
    public Context g;

    public static void t(RemoteViews remoteViews, AppWidgetManager appWidgetManager, int i2, Bitmap bitmap) {
        if (bitmap != null) {
            remoteViews.setImageViewBitmap(R.id.cover, bitmap);
        } else {
            remoteViews.setImageViewResource(R.id.cover, ydc.e() ? R.drawable.ic_music_widget_cover_def_os : R.drawable.ic_music_widget_cover_def);
        }
        appWidgetManager.updateAppWidget(i2, remoteViews);
    }

    public static void u(RemoteViews remoteViews, AppWidgetManager appWidgetManager, int i2, Bitmap bitmap) {
        if (bitmap != null) {
            remoteViews.setImageViewBitmap(R.id.cover_bg, bitmap);
        }
        appWidgetManager.updateAppWidget(i2, remoteViews);
    }

    public final void A(final Context context) {
        if (PlayAudioListData.getInstance().init) {
            return;
        }
        ThreadUtils.l().execute(new Runnable() {
            @Override
            public void run() {
                List<AudioItem> list = (List) ao.U().x(null).getSecond();
                if (list != null) {
                    PlayAudioListData.getInstance().restore(list);
                    ThreadUtils.s(new Runnable() {
                        @Override
                        public void run() {
                            vf.f(context);
                        }
                    });
                }
            }
        });
    }

    public final void B(Intent intent) {
        if (MusicPlayManager.S().U() != null) {
            MusicService musicServiceU = MusicPlayManager.S().U();
            this.f = musicServiceU;
            if (h) {
                if (!musicServiceU.v()) {
                    x(intent);
                }
                h = false;
            }
            if (i && !PlayAudioListData.getInstance().isCurrentListEmpty()) {
                y();
                i = false;
            }
            if (j && !PlayAudioListData.getInstance().isCurrentListEmpty()) {
                w();
                j = false;
            }
            if (!k || PlayAudioListData.getInstance().isCurrentListEmpty()) {
                return;
            }
            e();
            k = false;
        }
    }

    public void C(RemoteViews remoteViews, int i2, AppWidgetManager appWidgetManager) {
    }

    public void D(Context context, AppWidgetManager appWidgetManager, int i2) {
        E(context, appWidgetManager, i2, false);
    }

    public void E(Context context, final AppWidgetManager appWidgetManager, final int i2, boolean z) {
        this.g = context;
        AudioItem audioItemPlayMediaItem = PlayAudioListData.getInstance().playMediaItem();
        this.d = audioItemPlayMediaItem;
        boolean z2 = audioItemPlayMediaItem != null;
        this.a = z2 ? audioItemPlayMediaItem.getDisplayName() : context.getString(R.string.audio_no_music);
        this.c = z2 ? this.d.artistName : "";
        this.b = MusicPlayManager.S().s0();
        if (z2) {
            this.e = ao.U().c0(false, this.d);
        } else {
            A(context);
        }
        if (z || v(i2)) {
            final RemoteViews remoteViewsG = g(context);
            C(remoteViewsG, i2, appWidgetManager);
            appWidgetManager.updateAppWidget(i2, remoteViewsG);
            if (this.d != null) {
                int[] iArrZ = z(appWidgetManager, i2);
                MusicHelper.loadPlayBackground(context, this.d, new tn.b() {
                    @Override
                    public final void a(Bitmap bitmap) {
                        BaseAppMusicProvider.t(remoteViewsG, appWidgetManager, i2, bitmap);
                    }
                }, RequestOptions.bitmapTransform(new CircleCrop()), false);
                MusicHelper.loadPlayBackground2(context, this.d, iArrZ[0], iArrZ[1], k(), new tn.b() {
                    @Override
                    public final void a(Bitmap bitmap) {
                        BaseAppMusicProvider.u(remoteViewsG, appWidgetManager, i2, bitmap);
                    }
                }, false, l());
            }
        }
    }

    public final void e() {
        iia.a(new Runnable() {
            @Override
            public final void run() {
                this.b.r();
            }
        });
    }

    public final void f(Context context, String str) {
        Intent intent = new Intent(str);
        intent.setClass(context, MusicService.class);
        intent.putExtra("fromwidget", true);
        intent.putExtra("fromwidgetType", l());
        MusicPlayManager.S().B(context.getApplicationContext(), intent);
    }

    public RemoteViews g(Context context) {
        Log.i("BaseAppMusicProvider", "createRemoteViews: " + MusicPlayManager.S().s0());
        RemoteViews remoteViews = new RemoteViews(context.getPackageName(), j());
        remoteViews.setTextViewText(R.id.name, this.a);
        remoteViews.setImageViewResource(R.id.cover, ydc.e() ? R.drawable.ic_music_widget_cover_def_os : R.drawable.ic_music_widget_cover_def);
        int i2 = R.id.iv_play;
        remoteViews.setImageViewResource(i2, this.b ? R.drawable.ic_music_widget_play : R.drawable.ic_music_widget_pause);
        MusicService musicServiceU = MusicPlayManager.S().U();
        this.f = musicServiceU;
        if (musicServiceU == null) {
            MusicPlayManager.S().C(context.getApplicationContext());
        }
        Intent intent = new Intent("com.transsion.magicshow.PLAY_PAUSE");
        intent.setClass(context, h());
        intent.putExtra("fromwidget", true);
        intent.putExtra("fromwidgetType", l());
        remoteViews.setOnClickPendingIntent(i2, PendingIntent.getBroadcast(context, 10000, intent, 201326592));
        Intent intent2 = new Intent("com.transsion.magicshow.widget.next");
        intent2.setClass(context, h());
        intent2.putExtra("fromwidget", true);
        intent2.putExtra("fromwidgetType", l());
        remoteViews.setOnClickPendingIntent(R.id.iv_next, PendingIntent.getBroadcast(context, 10002, intent2, 201326592));
        Intent intent3 = new Intent("com.transsion.magicshow.widget.previous");
        intent3.setClass(context, h());
        intent3.putExtra("fromwidget", true);
        intent3.putExtra("fromwidgetType", l());
        remoteViews.setOnClickPendingIntent(R.id.iv_pre, PendingIntent.getBroadcast(context, 10001, intent3, 201326592));
        Intent intent4 = new Intent("com.transsion.magicshow.farvorite");
        intent4.setClass(context, h());
        intent4.putExtra("fromwidget", true);
        intent4.putExtra("fromwidgetType", l());
        remoteViews.setOnClickPendingIntent(R.id.iv_far, PendingIntent.getBroadcast(context, 10003, intent4, 201326592));
        return remoteViews;
    }

    public abstract Class h();

    public abstract int i();

    public abstract int j();

    public abstract int k();

    public abstract int l();

    public abstract int m();

    public final void n(Context context) {
        Intent intent = new Intent("com.transsion.magicmovie.video_player_main_activity");
        RouterBean.RouterData routerData = new RouterBean.RouterData(1, 0);
        intent.putExtra(RouterUtils.FROM_ROUTER, true);
        Bundle bundle = new Bundle();
        bundle.putParcelable(RouterUtils.ROUTER_DATA, routerData);
        intent.putExtra(RouterUtils.ROUTER_DATA, bundle);
        intent.putExtra("com.transsion.magicshow.OPEN_AUDIO", true);
        intent.setFlags(268435456);
        intent.setPackage(se.a().getPackageName());
        context.startActivity(intent);
    }

    public boolean o() {
        return oc2.b(se.a(), (float) a.m(se.a())) > 550;
    }

    @Override
    public void onAppWidgetOptionsChanged(Context context, AppWidgetManager appWidgetManager, int i2, Bundle bundle) {
        this.g = context;
        super.onAppWidgetOptionsChanged(context, appWidgetManager, i2, bundle);
        E(context, appWidgetManager, i2, true);
    }

    @Override
    public void onDeleted(Context context, int[] iArr) {
        super.onDeleted(context, iArr);
        ry5.l(l());
    }

    @Override
    public void onDisabled(Context context) {
        super.onDisabled(context);
    }

    @Override
    public void onEnabled(Context context) {
        super.onEnabled(context);
        ry5.i(l());
        MMKV.p().e("music_widget_added", true);
    }

    @Override
    public void onReceive(final Context context, final Intent intent) {
        ThreadUtils.o().post(new Runnable() {
            @Override
            public final void run() {
                this.b.s(context, intent);
            }
        });
    }

    @Override
    public void onRestored(Context context, int[] iArr, int[] iArr2) {
        super.onRestored(context, iArr, iArr2);
    }

    @Override
    public void onUpdate(Context context, AppWidgetManager appWidgetManager, int[] iArr) {
        this.g = context;
        if (iArr == null || iArr.length == 0) {
            Log.w("BaseAppMusicProvider", "skip onUpdate: appWidgetIds is empty");
            return;
        }
        for (int i2 : iArr) {
            D(this.g, appWidgetManager, i2);
            if (v(i2)) {
                l.put(Integer.valueOf(i2), Boolean.valueOf(this.b));
                o.put(Integer.valueOf(i2), this.c);
                n.put(Integer.valueOf(i2), this.a);
                Map map = p;
                Integer numValueOf = Integer.valueOf(i2);
                AudioItem audioItem = this.d;
                map.put(numValueOf, Integer.valueOf(audioItem != null ? audioItem.id : -1));
                m.put(Integer.valueOf(i2), Boolean.valueOf(this.e));
                q.put(Integer.valueOf(i2), Boolean.valueOf(q()));
            }
        }
    }

    public boolean p() {
        return oc2.b(se.a(), (float) a.m(se.a())) < 550;
    }

    public boolean q() {
        return a.m(se.a()) > a.l(se.a());
    }

    public final void r() {
        if (PlayAudioListData.getInstance().playMediaItem() != null) {
            boolean zC0 = ao.U().c0(false, PlayAudioListData.getInstance().playMediaItem());
            ao.U().l0(!zC0, PlayAudioListData.getInstance().playMediaItem());
            p06.u0(!zC0 ? 1 : 0, PlayAudioListData.getInstance().playMediaItem().isMusicVideo ? "mv" : "audio", "widget");
            ry5.j(!zC0 ? 1 : 0);
            h27.c().e(1055, new Object[0]);
            vf.f(this.g);
        }
    }

    public final void s(Context context, Intent intent) {
        this.g = context;
        super.onReceive(context, intent);
        String action = intent.getAction();
        if (r0a.g(action)) {
            return;
        }
        B(intent);
        if ("android.appwidget.action.APPWIDGET_UPDATE".equals(action) || "android.intent.action.BOOT_COMPLETED".equals(action)) {
            onUpdate(context, AppWidgetManager.getInstance(context), intent.getIntArrayExtra("appWidgetIds"));
            return;
        }
        if (intent.hasCategory("android.intent.category.ALTERNATIVE")) {
            onUpdate(context, AppWidgetManager.getInstance(context), intent.getIntArrayExtra("appWidgetIds"));
            return;
        }
        if (action.equals("com.transsion.magicshow.PLAY_PAUSE")) {
            this.f = MusicPlayManager.S().U();
            if (!t08.b(context) && !t08.c(context)) {
                n(context);
                return;
            } else if (this.f != null) {
                x(intent);
                return;
            } else {
                f(context, "com.transsion.magicshow.play.pause");
                h = true;
                return;
            }
        }
        if ("com.transsion.magicshow.farvorite".equals(action)) {
            if (this.f != null) {
                e();
                return;
            } else {
                f(context, action);
                k = true;
                return;
            }
        }
        if ("com.transsion.magicshow.widget.previous".equals(action)) {
            if (this.f != null) {
                y();
                return;
            } else {
                f(context, action);
                i = true;
                return;
            }
        }
        if ("com.transsion.magicshow.widget.next".equals(action)) {
            if (this.f != null) {
                w();
            } else {
                f(context, action);
                j = true;
            }
        }
    }

    public final boolean v(int i2) {
        AudioItem audioItem = this.d;
        int i3 = audioItem != null ? audioItem.id : -1;
        Integer num = (Integer) p.getOrDefault(Integer.valueOf(i2), -1);
        boolean zQ = q();
        boolean zBooleanValue = ((Boolean) q.getOrDefault(Integer.valueOf(i2), Boolean.valueOf(!zQ))).booleanValue();
        Boolean bool = Boolean.TRUE;
        Map map = l;
        Integer numValueOf = Integer.valueOf(i2);
        Boolean bool2 = Boolean.FALSE;
        return (bool.equals(map.getOrDefault(numValueOf, bool2)) == MusicPlayManager.S().s0() && Objects.equals(o.getOrDefault(Integer.valueOf(i2), ""), this.c) && Objects.equals(m.getOrDefault(Integer.valueOf(i2), bool2), Boolean.valueOf(this.e)) && Objects.equals(n.getOrDefault(Integer.valueOf(i2), ""), this.a) && Objects.equals(num, Integer.valueOf(i3)) && zQ == zBooleanValue) ? false : true;
    }

    public final void w() {
        Log.i("BaseAppMusicProvider", "playNext");
        MusicPlayManager.S().U0();
        ry5.o(ES6Iterator.NEXT_METHOD);
    }

    public final void x(Intent intent) {
        Log.i("BaseAppMusicProvider", "playOrPause");
        this.f.D(true, intent.getIntExtra("fromwidgetType", 1));
    }

    public final void y() {
        Log.i("BaseAppMusicProvider", "playPre");
        MusicPlayManager.S().Y0();
        ry5.o("previous");
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0042 A[PHI: r0
      0x0042: PHI (r0v6 int) = (r0v2 int), (r0v8 int) binds: [B:26:0x0052, B:16:0x0040] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:19:0x0046 A[PHI: r0
      0x0046: PHI (r0v4 int) = (r0v2 int), (r0v8 int) binds: [B:24:0x004f, B:18:0x0044] A[DONT_GENERATE, DONT_INLINE]] */
    public final int[] z(AppWidgetManager appWidgetManager, int i2) {
        Bundle appWidgetOptions;
        int iM = m();
        int i3 = i();
        if (appWidgetManager != null && (appWidgetOptions = appWidgetManager.getAppWidgetOptions(i2)) != null) {
            int i4 = appWidgetOptions.getInt("appWidgetMinWidth", 0);
            int i5 = appWidgetOptions.getInt("appWidgetMinHeight", 0);
            int i6 = appWidgetOptions.getInt("appWidgetMaxWidth", 0);
            int i7 = appWidgetOptions.getInt("appWidgetMaxHeight", 0);
            if (q()) {
                if (i6 > 0) {
                    iM = i6;
                } else if (i4 > 0) {
                    iM = i4;
                }
                if (i5 > 0) {
                    i3 = i5;
                } else if (i7 > 0) {
                    i3 = i7;
                }
            } else {
                if (i4 > 0) {
                    iM = i4;
                } else if (i6 > 0) {
                    iM = i6;
                }
                if (i7 > 0) {
                    i3 = i7;
                } else if (i5 > 0) {
                    i3 = i5;
                }
            }
            return new int[]{iM, i3};
        }
        return new int[]{iM, i3};
    }
}
