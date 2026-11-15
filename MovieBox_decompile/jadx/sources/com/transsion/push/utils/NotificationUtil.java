package com.transsion.push.utils;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.Uri;
import android.os.Build;
import android.os.IBinder;
import android.text.TextUtils;
import androidx.work.ExistingPeriodicWorkPolicy;
import androidx.work.NetworkType;
import androidx.work.WorkManager;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.target.Target;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.therouter.TheRouter;
import com.transsion.baselib.db.notification.MsgBean;
import com.transsion.baselib.db.notification.MsgConfig;
import com.transsion.baselib.db.notification.PullMsgResp;
import com.transsion.lib.push.R$string;
import com.transsion.lib.push.Receiver.NotificationReceiver;
import com.transsion.mb.config.manager.ConfigBean;
import com.transsion.push.PushConstants;
import com.transsion.push.bean.MsgStatus;
import com.transsion.push.bean.MsgType;
import com.transsion.push.bean.PushConfigHelper;
import com.transsion.push.bean.ShowOrder;
import com.transsion.push.helper.NotificationRefreshService;
import com.transsion.push.helper.NotificationShowHelper;
import com.transsion.push.helper.PushPermanentManager;
import com.transsion.push.notification.ToolbarNotificationUtils;
import com.transsion.push.worker.PullWorker;
import com.transsion.push.worker.ReportWorker;
import com.transsion.pushapi.TriggerSource;
import java.net.URLDecoder;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;
import kotlin.text.StringsKt;
import kotlinx.coroutines.y0;

public final class NotificationUtil {

    private static MsgConfig f48899b;

    private static com.transsion.push.worker.a f48900c;

    public static final NotificationUtil f48898a = new NotificationUtil();

    private static final Lazy f48901d = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return NotificationUtil.n();
        }
    });

    private static final Lazy f48902e = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return NotificationUtil.S();
        }
    });

    public class a {

        public static final int[] f48903a;

        static {
            int[] iArr = new int[ShowOrder.values().length];
            try {
                iArr[ShowOrder.LAST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ShowOrder.NEXT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f48903a = iArr;
        }
    }

    public static final class b implements ServiceConnection {
        b() {
        }

        @Override
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        }

        @Override
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    public static final class c implements yg.m {

        final Context f48904a;

        c(Context context) {
            this.f48904a = context;
        }

        @Override
        public void onConnected() {
            yg.m.a.a(this);
        }

        @Override
        public void onDisconnected() {
        }

        @Override
        public void onConnected(Network network, NetworkCapabilities networkCapabilities) {
            Intrinsics.h(network, "network");
            Intrinsics.h(networkCapabilities, "networkCapabilities");
            NotificationUtil.f48898a.P(this.f48904a, TriggerSource.NETWORK_CONNECTED);
        }
    }

    public static final class d implements RequestListener {
        d() {
        }

        @Override
        public boolean onResourceReady(Drawable resource, Object model, Target target, DataSource dataSource, boolean z10) {
            Intrinsics.h(resource, "resource");
            Intrinsics.h(model, "model");
            Intrinsics.h(dataSource, "dataSource");
            wf.a.C0922a.f(wf.a.f74274a, "NotificationUtil", model + " 预加载成功", false, 4, null);
            return true;
        }

        @Override
        public boolean onLoadFailed(GlideException glideException, Object obj, Target target, boolean z10) {
            Intrinsics.h(target, "target");
            wf.a.C0922a.f(wf.a.f74274a, "NotificationUtil", obj + " 预加载失败", false, 4, null);
            return true;
        }
    }

    private NotificationUtil() {
    }

    public static void A(NotificationUtil notificationUtil, Context context, ShowOrder showOrder, String str, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            showOrder = ShowOrder.CURRENT;
        }
        if ((i10 & 4) != 0) {
            str = null;
        }
        if ((i10 & 8) != 0) {
            z10 = false;
        }
        notificationUtil.z(context, showOrder, str, z10);
    }

    private final int B(List list, String str) {
        if (list.size() == 1) {
            return 0;
        }
        int i10 = 0;
        for (Object obj : list) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                CollectionsKt.u();
            }
            MsgBean msgBean = (MsgBean) obj;
            if (msgBean != null && Intrinsics.c(msgBean.getMessageId(), str)) {
                return ((i10 + list.size()) - 1) % list.size();
            }
            i10 = i11;
        }
        return 0;
    }

    public final void D(Context context, TriggerSource triggerSource) {
        wf.a.C0922a.f(wf.a.f74274a, "NotificationUtil", "get local notification begin", false, 4, null);
        kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(y0.c()), null, null, new NotificationUtil$getLocalNotifications$1(context, null), 3, null);
    }

    public final to.b E() {
        return (to.b) f48902e.getValue();
    }

    private final MsgBean F(int i10, List list) {
        String startTime;
        String pushGap;
        if (list.isEmpty()) {
            return null;
        }
        MsgConfig msgConfig = f48899b;
        int i11 = (msgConfig == null || (pushGap = msgConfig.getPushGap()) == null) ? 2 : Integer.parseInt(pushGap);
        MsgConfig msgConfig2 = f48899b;
        int i12 = ((i10 - ((msgConfig2 == null || (startTime = msgConfig2.getStartTime()) == null) ? 7 : Integer.parseInt(startTime))) / i11) % list.size();
        if (i12 < 0 || i12 >= list.size()) {
            return null;
        }
        return (MsgBean) list.get(i12);
    }

    private final int H(List list, String str) {
        if (list.size() == 1) {
            return 0;
        }
        int i10 = 0;
        for (Object obj : list) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                CollectionsKt.u();
            }
            MsgBean msgBean = (MsgBean) obj;
            if (msgBean != null && Intrinsics.c(msgBean.getMessageId(), str)) {
                return ((i10 + list.size()) + 1) % list.size();
            }
            i10 = i11;
        }
        return 0;
    }

    public static String K(NotificationUtil notificationUtil, String str, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = com.transsion.push.helper.e.f48766a.d();
        }
        return notificationUtil.J(str, i10);
    }

    public static void Q(NotificationUtil notificationUtil, Context context, TriggerSource triggerSource, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            triggerSource = TriggerSource.APP_INNER;
        }
        notificationUtil.P(context, triggerSource);
    }

    private final void R(Context context, TriggerSource triggerSource) {
        kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(y0.b()), null, null, new NotificationUtil$loadSeekSubjectMsg$1(context, triggerSource, null), 3, null);
    }

    public static final to.b S() {
        return (to.b) kg.c.f63982e.a().h(to.b.class);
    }

    public final void U(Context context, PullMsgResp pullMsgResp) {
        List<MsgBean> items = pullMsgResp.getItems();
        if (items != null) {
            for (MsgBean msgBean : items) {
                if (msgBean != null && !msgBean.getBuiltIn()) {
                    List listI = NotificationShowHelper.f48744a.i(msgBean);
                    if (!listI.isEmpty()) {
                        f48898a.V(context, (String) listI.get(0));
                    }
                }
            }
        }
    }

    private final void V(Context context, String str) {
        Glide.with(context).load2(K(this, str, 0, 2, null)).diskCacheStrategy(DiskCacheStrategy.DATA).addListener(new d()).preload();
    }

    public static void Z(NotificationUtil notificationUtil, Context context, String str, boolean z10, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z10 = false;
        }
        notificationUtil.Y(context, str, z10);
    }

    public final void a0(Context context, PullMsgResp pullMsgResp, TriggerSource triggerSource) {
        List<MsgBean> items;
        MsgConfig config = pullMsgResp.getConfig();
        if (config != null ? Intrinsics.c(config.getEnable(), Boolean.TRUE) : false) {
            if (triggerSource == TriggerSource.SCREEN_ON) {
                MsgConfig config2 = pullMsgResp.getConfig();
                if (!(config2 != null ? Intrinsics.c(config2.getBrightScreen(), Boolean.TRUE) : false)) {
                    return;
                }
            }
            if (triggerSource == TriggerSource.UNLOCK) {
                MsgConfig config3 = pullMsgResp.getConfig();
                if (!(config3 != null ? Intrinsics.c(config3.getUnlock(), Boolean.TRUE) : false)) {
                    return;
                }
            }
            int i10 = Calendar.getInstance().get(11);
            if (!p(i10) || (items = pullMsgResp.getItems()) == null) {
                return;
            }
            List<MsgBean> list = items;
            ArrayList arrayList = new ArrayList(CollectionsKt.v(list, 10));
            for (MsgBean msgBean : list) {
                arrayList.add(msgBean != null ? msgBean.getMessageId() : null);
            }
            wf.a.f74274a.c("PUSH_SHOW", "local push, list:" + items.size() + "-ids:" + arrayList + ", \n config:" + pullMsgResp.getConfig(), true);
            MsgBean msgBeanF = f48898a.F(i10, items);
            if (msgBeanF != null) {
                if (msgBeanF.getForceShow() && triggerSource == TriggerSource.UNLOCK) {
                    return;
                }
                if ((msgBeanF.getHasScreenOn() && triggerSource == TriggerSource.SCREEN_ON) || msgBeanF.getMsgStatus() == MsgStatus.CLICKED.ordinal()) {
                    return;
                }
                if (triggerSource == TriggerSource.APP_INNER && msgBeanF.getMsgStatus() == MsgStatus.SHOWED.ordinal()) {
                    return;
                }
                if (triggerSource == TriggerSource.NETWORK_CONNECTED && msgBeanF.getMsgStatus() == MsgStatus.SHOWED.ordinal()) {
                    return;
                }
                msgBeanF.setTriggerSource(triggerSource.ordinal());
                com.transsion.push.helper.e.f48766a.j(context, msgBeanF);
            }
        }
    }

    private final void b0(Context context, MsgBean msgBean) {
        if (msgBean == null) {
            return;
        }
        msgBean.setPermanent(true);
        com.transsion.push.helper.e.f48766a.i(context, msgBean);
    }

    public final void c0(Context context, List list, ShowOrder showOrder, String str) {
        if (list == null || CollectionsKt.f0(list).size() <= 3 || PushConfigHelper.INSTANCE.isAbType()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (MsgBean msgBean : CollectionsKt.L0(list, 3)) {
            if (msgBean == null) {
                return;
            }
            if (msgBean.getPermanentMsgStatus() != MsgStatus.CLICKED.ordinal()) {
                arrayList.add(msgBean);
            }
        }
        if (arrayList.isEmpty()) {
            q(context, "oneroom.group.tag.permanent", 111);
            return;
        }
        int i10 = 0;
        for (Object obj : arrayList) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                CollectionsKt.u();
            }
            MsgBean msgBean2 = (MsgBean) obj;
            msgBean2.setType(MsgType.PERMANENT.getType());
            msgBean2.setPermanentMsgPosition(i11);
            msgBean2.setPermanentMsgSize(arrayList.size());
            i10 = i11;
        }
        if (str == null) {
            b0(context, (MsgBean) arrayList.get(0));
            return;
        }
        int i12 = a.f48903a[showOrder.ordinal()];
        if (i12 == 1) {
            int iB = B(arrayList, str);
            if (iB < 0 || iB >= arrayList.size()) {
                return;
            }
            b0(context, (MsgBean) arrayList.get(iB));
            return;
        }
        if (i12 != 2) {
            b0(context, (MsgBean) arrayList.get(0));
            return;
        }
        int iH = H(arrayList, str);
        if (iH < 0 || iH >= arrayList.size()) {
            return;
        }
        b0(context, (MsgBean) arrayList.get(iH));
    }

    static void d0(NotificationUtil notificationUtil, Context context, List list, ShowOrder showOrder, String str, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            showOrder = ShowOrder.CURRENT;
        }
        if ((i10 & 8) != 0) {
            str = null;
        }
        notificationUtil.c0(context, list, showOrder, str);
    }

    private final void l(Context context) {
        String value;
        Boolean boolM1;
        boolean zBooleanValue = false;
        ConfigBean configBeanD = cm.f.d(cm.f.f17019c.a(), "key_report_request_off", false, 2, null);
        if (configBeanD != null && (value = configBeanD.getValue()) != null && (boolM1 = StringsKt.m1(value)) != null) {
            zBooleanValue = boolM1.booleanValue();
        }
        if (zBooleanValue) {
            return;
        }
        androidx.work.m mVar = (androidx.work.m) ((androidx.work.m.a) ((androidx.work.m.a) new androidx.work.m.a(ReportWorker.class, 15L, TimeUnit.MINUTES).i(new androidx.work.b.a().b(NetworkType.CONNECTED).a())).a("report")).b();
        try {
            Result.Companion companion = Result.INSTANCE;
            if (Build.VERSION.SDK_INT >= 24) {
                context = context.createDeviceProtectedStorageContext();
            }
            Result.m453constructorimpl(WorkManager.f(context).e("unique_report", ExistingPeriodicWorkPolicy.REPLACE, mVar));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    private final void m(Context context) {
        if (Build.VERSION.SDK_INT >= 26) {
            ConfigBean configBeanD = cm.f.d(cm.f.f17019c.a(), "sa_notification_refresh", false, 2, null);
            if (Intrinsics.c(configBeanD != null ? configBeanD.getValue() : null, "false")) {
                return;
            }
            context.bindService(new Intent(context, (Class<?>) NotificationRefreshService.class), new b(), 1);
        }
    }

    public static final com.transsion.push.utils.c n() {
        return new com.transsion.push.utils.c();
    }

    public final boolean o() {
        String value;
        Boolean boolM1;
        ConfigBean configBeanD = cm.f.d(cm.f.f17019c.a(), "permanent_notification_switch", false, 2, null);
        return ((configBeanD == null || (value = configBeanD.getValue()) == null || (boolM1 = StringsKt.m1(value)) == null) ? false : boolM1.booleanValue()) && Calendar.getInstance().get(11) >= 8;
    }

    private final boolean p(int i10) {
        String endTime;
        String startTime;
        int i11 = 8;
        int i12 = 22;
        try {
            MsgConfig msgConfig = f48899b;
            if (msgConfig != null && (startTime = msgConfig.getStartTime()) != null) {
                i11 = Integer.parseInt(startTime);
            }
            MsgConfig msgConfig2 = f48899b;
            if (msgConfig2 != null && (endTime = msgConfig2.getEndTime()) != null) {
                i12 = Integer.parseInt(endTime);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return i11 <= i10 && i10 < i12;
    }

    private final void t(ArrayList arrayList, String str, String str2, int i10, boolean z10, boolean z11, boolean z12, boolean z13) {
        androidx.media3.common.util.g0.a();
        NotificationChannel notificationChannelA = m.f.a(str, str2, i10);
        notificationChannelA.setShowBadge(z12);
        if (!z10) {
            notificationChannelA.setSound(null, null);
        }
        notificationChannelA.enableVibration(z11);
        if (z11) {
            notificationChannelA.setVibrationPattern(new long[]{0, 300, 100, 300});
        }
        notificationChannelA.enableLights(z13);
        if (z13) {
            notificationChannelA.setLockscreenVisibility(1);
        }
        arrayList.add(notificationChannelA);
    }

    public final com.transsion.push.utils.c w() {
        return (com.transsion.push.utils.c) f48901d.getValue();
    }

    public final Intent C(Context context, String str, int i10, String str2, String str3, String str4, String str5, String str6) {
        Uri uri;
        String host;
        Intrinsics.h(context, "context");
        to.a aVar = (to.a) TheRouter.d(to.a.class, new Object[0]);
        if (aVar == null) {
            return null;
        }
        Intent intentA = aVar.a(context);
        if (str6 != null && str6.length() != 0 && (uri = Uri.parse(str6)) != null && ((host = uri.getHost()) == null || !host.equals(TmcConstants.PACKAGE_MOVIE_BOX_1))) {
            intentA = new Intent("android.intent.action.VIEW", uri);
        }
        intentA.putExtra("extra_notification_id", i10);
        intentA.putExtra("extra_source", str2);
        intentA.putExtra("MESSAGE_TYPE", str3);
        intentA.putExtra("extra_message_id", str5);
        intentA.putExtra("extra_channel_id", str);
        intentA.putExtra("extra_message_style", str4);
        intentA.putExtra("extra_screen_status", String.valueOf(ij.v.f62124a.a()));
        intentA.addFlags(603979776);
        intentA.setAction("android.intent.action.VIEW");
        return intentA;
    }

    public final MsgConfig G() {
        String string = u.f48941a.b().getString(PushConstants.SP_KEY_CONFIG, "");
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        return (MsgConfig) com.blankj.utilcode.util.o.d(string, MsgConfig.class);
    }

    public final String I() {
        return "oneroom_notice_Permanent";
    }

    public final String J(String url, int i10) {
        Intrinsics.h(url, "url");
        return ni.f.a.e(ni.f.f67269a, url, i10, true, false, 8, null);
    }

    public final void L(Context context) {
        Intrinsics.h(context, "context");
        try {
            androidx.work.m mVar = (androidx.work.m) ((androidx.work.m.a) ((androidx.work.m.a) new androidx.work.m.a(PullWorker.class, Random.INSTANCE.nextLong(15L, 30L), TimeUnit.MINUTES).i(new androidx.work.b.a().b(NetworkType.CONNECTED).a())).a("pull")).b();
            try {
                Result.Companion companion = Result.INSTANCE;
                Result.m453constructorimpl(WorkManager.f(Build.VERSION.SDK_INT >= 24 ? context.createDeviceProtectedStorageContext() : context).e("unique_pull", ExistingPeriodicWorkPolicy.KEEP, mVar));
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m453constructorimpl(ResultKt.a(th2));
            }
            MsgConfig msgConfigG = G();
            if (msgConfigG != null) {
                f48898a.u(context, msgConfigG);
            } else {
                msgConfigG = null;
            }
            f48899b = msgConfigG;
            M(context);
            l(context);
            ToolbarNotificationUtils.f48776a.i();
            m(context);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public final void M(Context context) {
        Intrinsics.h(context, "context");
        wf.a.C0922a.f(wf.a.f74274a, "NotificationUtil", "NotificationUtil initListener ", false, 4, null);
        yg.l.f76264a.l(new c(context));
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.ACTION_POWER_CONNECTED");
        intentFilter.addAction("android.intent.action.ACTION_POWER_DISCONNECTED");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        intentFilter.addAction("com.community.oneroom.notification_delete");
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 24) {
            intentFilter.addAction("android.intent.action.USER_UNLOCKED");
        }
        if (i10 >= 33) {
            context.registerReceiver(new NotificationReceiver(), intentFilter, 2);
        } else {
            context.registerReceiver(new NotificationReceiver(), intentFilter);
        }
        l.f48934a.b();
    }

    public final boolean N() {
        return Build.VERSION.SDK_INT >= 31;
    }

    public final boolean O() {
        return Build.VERSION.SDK_INT <= 24;
    }

    public final void P(Context context, TriggerSource triggerSource) {
        Intrinsics.h(context, "context");
        Intrinsics.h(triggerSource, "triggerSource");
        R(context, triggerSource);
        PushPermanentManager.f48745a.o();
        kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(y0.b()), null, null, new NotificationUtil$loadNotificationMsg$1(triggerSource, context, null), 3, null);
    }

    public final String T(String deeplink, String paramKey) {
        Intrinsics.h(deeplink, "deeplink");
        Intrinsics.h(paramKey, "paramKey");
        try {
            String queryParameter = Uri.parse(StringsKt.Q(deeplink, "%%", "%25%25", false, 4, null)).getQueryParameter(paramKey);
            return queryParameter != null ? URLDecoder.decode(queryParameter, StandardCharsets.UTF_8.name()) : queryParameter;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public final void W(com.transsion.push.worker.a aVar) {
        f48900c = aVar;
    }

    public final void X(Context context, String currentMsgId) {
        Intrinsics.h(context, "context");
        Intrinsics.h(currentMsgId, "currentMsgId");
        A(this, context, ShowOrder.LAST, currentMsgId, false, 8, null);
    }

    public final void Y(Context context, String str, boolean z10) {
        Intrinsics.h(context, "context");
        z(context, ShowOrder.NEXT, str, z10);
    }

    public final String e0(String str) {
        Long lX;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MM/dd HH:mm", Locale.CHINA);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT+8"));
        if (str == null || (lX = StringsKt.x(str)) == null) {
            return "00/00 00:00";
        }
        String str2 = simpleDateFormat.format(new Date(lX.longValue()));
        Intrinsics.e(str2);
        return str2;
    }

    public final void q(Context context, String str, int i10) {
        if (context == null) {
            wf.a.C0922a.f(wf.a.f74274a, "NotificationUtil", "bad parameter.", false, 4, null);
            return;
        }
        Object systemService = context.getSystemService("notification");
        NotificationManager notificationManager = systemService instanceof NotificationManager ? (NotificationManager) systemService : null;
        if (notificationManager == null) {
            wf.a.C0922a.f(wf.a.f74274a, "NotificationUtil", "NotificationManager is not available", false, 4, null);
            return;
        }
        try {
            notificationManager.cancel(i10);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public final int r(String str, String str2) {
        if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) {
            return new java.util.Random().nextInt();
        }
        return ((str != null ? str.hashCode() : 0) * 31) + (str2 != null ? str2.hashCode() : 0);
    }

    public final Bitmap s(Bitmap sourceBitmap, int i10, float f10, int i11) {
        Intrinsics.h(sourceBitmap, "sourceBitmap");
        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(sourceBitmap, i10, i10, true);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i10, i10, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setDither(true);
        paint.setFilterBitmap(true);
        float f11 = i10 - f10;
        RectF rectF = new RectF(f10, f10, f11, f11);
        canvas.drawOval(rectF, paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        int i12 = (int) f10;
        int i13 = (int) f11;
        canvas.drawBitmap(bitmapCreateScaledBitmap, new Rect(i12, i12, i13, i13), rectF, paint);
        if (f10 > 0.0f) {
            Paint paint2 = new Paint();
            paint2.setAntiAlias(true);
            paint2.setColor(i11);
            paint2.setStyle(Paint.Style.STROKE);
            paint2.setStrokeWidth(f10);
            canvas.drawOval(rectF, paint2);
        }
        if (!bitmapCreateScaledBitmap.isRecycled()) {
            bitmapCreateScaledBitmap.recycle();
        }
        return bitmapCreateBitmap;
    }

    public final void u(Context context, MsgConfig msgConfig) {
        Boolean shock;
        Boolean ring;
        Intrinsics.h(context, "context");
        if (Build.VERSION.SDK_INT < 26) {
            return;
        }
        Object systemService = context.getSystemService("notification");
        NotificationManager notificationManager = systemService instanceof NotificationManager ? (NotificationManager) systemService : null;
        ArrayList arrayList = new ArrayList();
        String string = context.getString(R$string.importance_foreground);
        Intrinsics.g(string, "getString(...)");
        t(arrayList, "oneroom_notice_Foreground", string, msgConfig != null ? Intrinsics.c(msgConfig.getFloatingWindow(), Boolean.TRUE) : false ? 4 : 3, false, false, true, true);
        String string2 = context.getString(R$string.importance_background);
        Intrinsics.g(string2, "getString(...)");
        t(arrayList, "oneroom_notice_Background", string2, 4, (msgConfig == null || (ring = msgConfig.getRing()) == null) ? true : ring.booleanValue(), (msgConfig == null || (shock = msgConfig.getShock()) == null) ? true : shock.booleanValue(), true, true);
        String string3 = context.getString(R$string.permanent);
        Intrinsics.g(string3, "getString(...)");
        t(arrayList, "oneroom_notice_Permanent", string3, 4, false, false, false, false);
        if (notificationManager != null) {
            notificationManager.createNotificationChannels(arrayList);
        }
    }

    public final void v() {
        com.transsion.push.worker.a aVar = f48900c;
        if (aVar != null) {
            aVar.a();
        }
    }

    public final String x(boolean z10) {
        return z10 ? "oneroom_notice_Foreground" : "oneroom_notice_Background";
    }

    public final float y() {
        Calendar calendar = Calendar.getInstance();
        return calendar.get(11) + (calendar.get(12) / 60.0f);
    }

    public final void z(Context context, ShowOrder showOrder, String str, boolean z10) {
        Intrinsics.h(context, "context");
        Intrinsics.h(showOrder, "showOrder");
        if (o()) {
            kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(y0.b()), null, null, new NotificationUtil$getLast3MsgForPermanent$1(z10, context, showOrder, str, null), 3, null);
        }
    }
}
