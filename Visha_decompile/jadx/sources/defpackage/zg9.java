package defpackage;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.text.format.DateUtils;
import android.util.Log;
import android.util.TypedValue;
import androidx.core.content.ContextCompat;
import androidx.core.content.pm.ShortcutInfoCompat;
import androidx.core.content.pm.ShortcutManagerCompat;
import androidx.core.graphics.drawable.IconCompat;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.target.Target;
import com.google.common.collect.Lists;
import com.tencent.mmkv.MMKV;
import com.transsion.dbdata.beans.onlinevideo.CollectItem;
import com.transsion.dbdata.beans.onlinevideo.RouterBean;
import com.transsion.dbdata.beans.onlinevideo.TranVideoDetail;
import com.transsion.magicmovie.activity.VideoPlayerMainActivity;
import com.transsion.magicvideo.R;
import com.transsion.magicvideo.receiver.OttVideoShortCutReceiver;
import com.transsion.magicvideo.receiver.ShortcutReceiver;
import com.transsion.playercommon.router.RouterUtils;
import com.transsion.widgetslib.dialog.d;
import java.util.Iterator;

public abstract class zg9 {
    public static int a = 0;
    public static int b = 0;
    public static long c = 0;
    public static String d = "";

    public class a implements RequestListener {
        public final Context b;
        public final Class c;
        public final TranVideoDetail d;
        public final long e;
        public final int f;

        public a(Context context, Class cls, TranVideoDetail tranVideoDetail, long j, int i) {
            this.b = context;
            this.c = cls;
            this.d = tranVideoDetail;
            this.e = j;
            this.f = i;
        }

        @Override
        public boolean onResourceReady(Bitmap bitmap, Object obj, Target target, DataSource dataSource, boolean z) {
            Context context = this.b;
            int i = this.f;
            zg9.t(context, zg9.r(context, bitmap, i, i), -1, this.c, this.d, this.e, this.f);
            return false;
        }

        @Override
        public boolean onLoadFailed(GlideException glideException, Object obj, Target target, boolean z) {
            Log.e("visha_ShortCutUtils", "ott short cut load failed! Exception:" + glideException.getMessage());
            zg9.t(this.b, null, R.drawable.ott_short_cut_def, this.c, this.d, this.e, this.f);
            return false;
        }
    }

    public class b implements RequestListener {
        public final Context b;
        public final Class c;
        public final CollectItem d;
        public final int e;

        public b(Context context, Class cls, CollectItem collectItem, int i) {
            this.b = context;
            this.c = cls;
            this.d = collectItem;
            this.e = i;
        }

        @Override
        public boolean onResourceReady(Bitmap bitmap, Object obj, Target target, DataSource dataSource, boolean z) {
            Context context = this.b;
            int i = this.e;
            zg9.s(context, zg9.r(context, bitmap, i, i), -1, this.c, this.d, this.e);
            return false;
        }

        @Override
        public boolean onLoadFailed(GlideException glideException, Object obj, Target target, boolean z) {
            Log.e("visha_ShortCutUtils", "ott short cut load failed! Exception:" + glideException.getMessage());
            zg9.s(this.b, null, R.drawable.ott_short_cut_def, this.c, this.d, this.e);
            return false;
        }
    }

    public class c implements DialogInterface.OnClickListener {
        public final Activity b;

        public c(Activity activity) {
            this.b = activity;
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            p06.d0("vd_ott_detail_addtohome_offline_got_cl");
            try {
                Activity activity = this.b;
                int i2 = VideoPlayerMainActivity.NAVIGATION_STATE_MASK;
                Intent intent = new Intent(activity, (Class<?>) VideoPlayerMainActivity.class);
                RouterBean.RouterData routerData = new RouterBean.RouterData();
                routerData.setTop_position(0);
                routerData.setBottom_position(2);
                intent.putExtra(RouterUtils.ROUTER_DATA, routerData);
                this.b.startActivity(intent);
                this.b.overridePendingTransition(0, 0);
                this.b.finish();
            } catch (Exception e) {
                Log.e("visha_ShortCutUtils", e.getMessage());
            }
        }
    }

    public static ShortcutInfoCompat d(Context context) {
        Intent intent = new Intent("android.intent.action.MAIN");
        if (ge.g()) {
            intent = new Intent("com.transsion.magicmovie.START_OPEN");
        }
        intent.setPackage(context.getPackageName());
        intent.putExtra("duplicate", false);
        return new ShortcutInfoCompat.Builder(context.getApplicationContext(), "short_cut_id").setActivity(!pp3.b ? new ComponentName(context.getPackageName(), "com.transsion.magicmovie.activity.TRSplashActivity") : new ComponentName(context.getPackageName(), "com.transsion.magicmovie.activity.ShortcutActivity")).setShortLabel(context.getResources().getString(pp3.c ? R.string.visha_Player_pre : R.string.visha_Player)).setIcon(IconCompat.createWithResource(context, R.drawable.ic_logo)).setIntent(intent).build();
    }

    public static void e(Context context, int i) {
        a = i;
        try {
            ShortcutInfoCompat shortcutInfoCompatD = d(context);
            if (shortcutInfoCompatD == null || !ShortcutManagerCompat.isRequestPinShortcutSupported(context.getApplicationContext())) {
                return;
            }
            ShortcutManagerCompat.requestPinShortcut(context.getApplicationContext(), shortcutInfoCompatD, PendingIntent.getBroadcast(context, 0, new Intent(context, (Class<?>) ShortcutReceiver.class), 201326592).getIntentSender());
            b = MMKV.p().g("shortcut_dialog_show_times", 0) + 1;
            MMKV.p().t("shortcut_dialog_show_times", b);
            b16.b(i, b);
        } catch (Exception e) {
            Log.i("visha_ShortCutUtils", "Exception:" + e.getMessage());
        }
    }

    public static void f(Context context, Intent intent, int i, String str, String str2, String str3) {
        Log.i("visha_ShortCutUtils", "addOttSerialShortCut result:" + ShortcutManagerCompat.requestPinShortcut(context.getApplicationContext(), new ShortcutInfoCompat.Builder(context, str).setShortLabel(str2).setLongLabel(str3).setAlwaysBadged().setIcon(IconCompat.createWithResource(context, i)).setIntent(intent).build(), PendingIntent.getBroadcast(context, 0, new Intent(context, (Class<?>) OttVideoShortCutReceiver.class), 201326592).getIntentSender()) + " " + str);
    }

    public static void g(Context context, Intent intent, Bitmap bitmap, String str, String str2, String str3) {
        if (ShortcutManagerCompat.requestPinShortcut(context.getApplicationContext(), new ShortcutInfoCompat.Builder(context, str).setShortLabel(str2).setLongLabel(str3).setAlwaysBadged().setIcon(IconCompat.createWithBitmap(bitmap)).setIntent(intent).build(), PendingIntent.getBroadcast(context, 0, new Intent(context, (Class<?>) OttVideoShortCutReceiver.class), 201326592).getIntentSender())) {
            hb0.markTrackTwo("vd_ott_detail_addtohome_show", "videoID", Long.valueOf(c), "videoname", d);
        }
    }

    public static void h(Context context, Class cls, TranVideoDetail tranVideoDetail, long j) {
        String coverY = tranVideoDetail.getVideoInfo().getCoverY();
        int iK = k(context);
        Glide.with(context).asBitmap().load(coverY).addListener(new a(context, cls, tranVideoDetail, j, iK)).submit(iK, iK);
    }

    public static String i(long j) {
        return "video_" + j;
    }

    public static void j(Context context, Class cls, CollectItem collectItem) {
        String coverX = collectItem.getCoverX();
        int iK = k(context);
        Glide.with(context).asBitmap().load(coverX).addListener(new b(context, cls, collectItem, iK)).submit(iK, iK);
    }

    public static int k(Context context) {
        try {
            return ((ActivityManager) ContextCompat.getSystemService(context, ActivityManager.class)).getLauncherLargeIconSize();
        } catch (Exception unused) {
            return (int) TypedValue.applyDimension(1, 48.0f, context.getResources().getDisplayMetrics());
        }
    }

    public static Intent l(Context context, Class cls, CollectItem collectItem) {
        Intent intent = new Intent(context, (Class<?>) cls);
        intent.setAction("android.intent.action.VIEW");
        Bundle bundle = new Bundle();
        boolean z = collectItem.isVk() == 1;
        bundle.putInt("is_youtube", collectItem.getIsYoutube());
        bundle.putInt("is_vk", collectItem.isVk());
        bundle.putString("sid", collectItem.getSourceId());
        bundle.putString(z ? "vk_title_name" : "youtube_name", collectItem.getVideoName());
        bundle.putString(z ? "vk_source_image" : "youtube_channel_cover", collectItem.getChannelCover());
        bundle.putString(z ? "vk_cover_image" : "youtube_cover", collectItem.getCoverX());
        bundle.putString(z ? "vk_source_name" : "youtube_channel_name", collectItem.getChannelName());
        if (z) {
            bundle.putString("vk_id", collectItem.getVkId());
            bundle.putString("vk_bean", collectItem.getVkBean());
        }
        bundle.putInt("rel", 0);
        intent.putExtra(RouterUtils.ROUTER_DATA, bundle);
        return intent;
    }

    public static boolean m(Context context, String str) {
        Iterator<ShortcutInfoCompat> it = ShortcutManagerCompat.getShortcuts(context, 4).iterator();
        while (it.hasNext()) {
            if (TextUtils.equals(it.next().getId(), str)) {
                return true;
            }
        }
        return false;
    }

    public static boolean n(Context context) {
        return ShortcutManagerCompat.isRequestPinShortcutSupported(context);
    }

    public static void o(Context context, String str) {
        ShortcutManagerCompat.disableShortcuts(context, Lists.l(str), context.getResources().getString(R.string.short_cut_offline));
    }

    public static void p(Context context) {
        if (pp3.b) {
            return;
        }
        if (System.currentTimeMillis() - MMKV.p().i("launcher_show_time", 0L) > 259200000) {
            int iG = MMKV.p().g("launcher_show_count", 0);
            if (!DateUtils.isToday(MMKV.p().i("launcher_count_day_time", System.currentTimeMillis()))) {
                MMKV.p().t("launcher_show_count", 0);
                MMKV.p().u("launcher_count_day_time", System.currentTimeMillis());
            } else {
                if (iG < 7) {
                    MMKV.p().t("launcher_show_count", iG + 1);
                    return;
                }
                Log.i("visha_ShortCutUtils", "start create launcher icon dialog.");
                e(context, 1);
                MMKV.p().u("launcher_show_time", System.currentTimeMillis());
                MMKV.p().t("launcher_show_count", 0);
            }
        }
    }

    public static void q(Activity activity) {
        p06.d0("vd_ott_detail_addtohome_offline_show");
        new d.a(activity).j(R.string.video_is_offline_notice).m(R.string.got_it, new c(activity)).a().show();
    }

    public static Bitmap r(Context context, Bitmap bitmap, int i, int i2) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap, width > height ? (width - i) / 2 : 0, width <= height ? (height - i2) / 2 : 0, i, i2);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Drawable drawable = context.getDrawable(R.drawable.ic_logo);
        int i3 = (int) (i * 0.3f);
        drawable.setBounds(i - i3, i2 - i3, i, i2);
        drawable.draw(canvas);
        return bitmapCreateBitmap;
    }

    public static void s(Context context, Bitmap bitmap, int i, Class cls, CollectItem collectItem, int i2) {
        String strSubstring;
        String strSubstring2;
        Intent intentL = l(context, cls, collectItem);
        String videoName = collectItem.getVideoName();
        if (videoName.length() > 25) {
            strSubstring = videoName.substring(0, 10);
            strSubstring2 = videoName.substring(0, 25);
        } else if (videoName.length() > 10) {
            strSubstring2 = videoName;
            strSubstring = videoName.substring(0, 10);
        } else {
            strSubstring = videoName;
            strSubstring2 = strSubstring;
        }
        d = videoName;
        if (bitmap == null) {
            f(context, intentL, i, collectItem.getSourceId(), strSubstring, strSubstring2);
        } else {
            g(context, intentL, bitmap, collectItem.getSourceId(), strSubstring, strSubstring2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0072  */
    /* JADX WARN: Code duplicated, block: B:13:0x007e  */
    public static void t(Context context, Bitmap bitmap, int i, Class cls, TranVideoDetail tranVideoDetail, long j, int i2) {
        String str;
        String strSubstring;
        String strSubstring2;
        long videoId;
        Intent intent = new Intent(context, (Class<?>) cls);
        intent.setAction("android.intent.action.VIEW");
        Bundle bundle = new Bundle();
        bundle.putLong("vid", tranVideoDetail.getVideoInfo().getVideoId());
        bundle.putLong("serid", j);
        bundle.putString("sid", tranVideoDetail.getVideoInfo().getSourceId());
        bundle.putInt("rel", 0);
        intent.putExtra(RouterUtils.ROUTER_DATA, bundle);
        String videoTitle = tranVideoDetail.getVideoInfo().getVideoTitle();
        if (videoTitle.length() <= 25) {
            if (videoTitle.length() > 10) {
                strSubstring2 = videoTitle.substring(0, 10);
                strSubstring = videoTitle;
            } else {
                str = videoTitle;
                strSubstring = str;
            }
            videoId = tranVideoDetail.getVideoInfo().getVideoId();
            c = videoId;
            d = videoTitle;
            if (bitmap == null) {
                f(context, intent, i, i(videoId), str, strSubstring);
            } else {
                g(context, intent, bitmap, i(videoId), str, strSubstring);
            }
        }
        strSubstring2 = videoTitle.substring(0, 10);
        strSubstring = videoTitle.substring(0, 25);
        str = strSubstring2;
        videoId = tranVideoDetail.getVideoInfo().getVideoId();
        c = videoId;
        d = videoTitle;
        if (bitmap == null) {
            f(context, intent, i, i(videoId), str, strSubstring);
        } else {
            g(context, intent, bitmap, i(videoId), str, strSubstring);
        }
    }
}
