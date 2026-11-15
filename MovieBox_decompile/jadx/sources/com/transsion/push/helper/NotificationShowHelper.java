package com.transsion.push.helper;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.widget.RemoteViews;
import androidx.core.app.NotificationCompat;
import com.blankj.utilcode.util.Utils;
import com.transsion.baselib.db.notification.MsgBean;
import com.transsion.baselib.report.k;
import com.transsion.lib.push.R$dimen;
import com.transsion.lib.push.R$drawable;
import com.transsion.lib.push.R$id;
import com.transsion.lib.push.R$layout;
import com.transsion.lib.push.R$string;
import com.transsion.lib.push.Receiver.NotificationReceiver;
import com.transsion.push.bean.MsgShowStatus;
import com.transsion.push.bean.MsgStatus;
import com.transsion.push.bean.MsgStyle;
import com.transsion.push.bean.MsgType;
import com.transsion.push.bean.PushConfigHelper;
import com.transsion.push.bean.ServerMatchListItemData;
import com.transsion.push.bean.TeamInfoMatch;
import com.transsion.push.notification.j;
import com.transsion.push.utils.NotificationUtil;
import com.transsion.push.utils.u;
import com.transsion.pushapi.TriggerSource;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import org.mvel2.ast.ASTNode;

public final class NotificationShowHelper {

    public static final NotificationShowHelper f48744a = new NotificationShowHelper();

    private NotificationShowHelper() {
    }

    private final NotificationCompat.m a(Context context, int i10, MsgBean msgBean, com.transsion.push.notification.d dVar, Bitmap bitmap, PendingIntent pendingIntent) {
        boolean z10 = false;
        com.transsion.push.notification.c.a aVar = new com.transsion.push.notification.c.a(context, i10, R$layout.push_notification_normal_small, R$layout.push_notification_big_picture);
        Bitmap bitmapE = bitmap == null ? e.f48766a.e() : bitmap;
        int i11 = R$id.notification_title_tv;
        String title = msgBean.getTitle();
        com.transsion.push.notification.c.a aVarX = aVar.W(i11, title != null ? StringsKt.t1(title, '\n') : null).X(R$id.iv_icon, 8);
        int i12 = R$id.notification_title_tv;
        String title2 = msgBean.getTitle();
        com.transsion.push.notification.c.a aVarU = aVarX.U(i12, title2 != null ? StringsKt.t1(title2, '\n') : null);
        int i13 = R$id.notification_title_tv;
        String title3 = msgBean.getTitle();
        com.transsion.push.notification.c.a aVarT = aVarU.S(i13, title3 != null ? StringsKt.t1(title3, '\n') : null).T(R$id.notification_last, 8).T(R$id.notification_next, 8).T(R$id.page_num, 8);
        NotificationUtil notificationUtil = NotificationUtil.f48898a;
        if (!k.f42210a.q() && !msgBean.getIsFloat()) {
            z10 = true;
        }
        aVarT.x(notificationUtil.x(z10)).L(R$drawable.push_small_logo).F(dVar.c()).z(pendingIntent).O(System.currentTimeMillis());
        if (bitmapE == null || bitmapE.isRecycled()) {
            aVar.V(R$id.notification_content_image, null);
            aVar.R(R$id.notification_content_image, null);
        } else {
            Bitmap bitmapE2 = com.transsion.push.utils.a.f48922a.e(context, bitmapE, e.f48766a.g(), lj.a.b(56), false, lj.a.b(4));
            RemoteViews remoteViewsJ = aVar.j();
            if (remoteViewsJ != null) {
                remoteViewsJ.setImageViewBitmap(R$id.notification_content_image, bitmapE2);
            }
            aVar.R(R$id.notification_content_image, bitmapE);
        }
        return aVar.P().a(context);
    }

    private final NotificationCompat.m b(Context context, int i10, MsgBean msgBean, com.transsion.push.notification.d dVar, Bitmap bitmap, PendingIntent pendingIntent, PendingIntent pendingIntent2) {
        if (NotificationUtil.f48898a.O() || Intrinsics.c(msgBean.getStyle(), "3")) {
            return f(context, i10, msgBean, dVar, bitmap, pendingIntent, pendingIntent2);
        }
        String style = msgBean.getStyle();
        if (Intrinsics.c(style, MsgStyle.STYLE_VERTICAL_TYPE) || Intrinsics.c(style, "101")) {
            return d(context, i10, msgBean, dVar, bitmap, pendingIntent);
        }
        return PushConfigHelper.INSTANCE.isVerticalType() ? d(context, i10, msgBean, dVar, bitmap, pendingIntent) : a(context, i10, msgBean, dVar, bitmap, pendingIntent);
    }

    private final NotificationCompat.m d(Context context, int i10, MsgBean msgBean, com.transsion.push.notification.d dVar, Bitmap bitmap, PendingIntent pendingIntent) {
        boolean z10 = !Intrinsics.c(msgBean.getStyle(), "101");
        Bitmap bitmapE = bitmap == null ? e.f48766a.e() : bitmap;
        com.transsion.push.tpush.g gVar = com.transsion.push.tpush.g.f48874a;
        com.transsion.push.notification.c.a aVarB = gVar.b(context, i10, z10);
        aVarB.G(true);
        String title = msgBean.getTitle();
        String strT1 = title != null ? StringsKt.t1(title, '\n') : null;
        com.transsion.push.notification.c.a aVarS = aVarB.W(R$id.notification_title_tv, strT1).X(R$id.iv_icon, 8).U(R$id.notification_title_tv, strT1).S(R$id.notification_title_tv, strT1);
        int i11 = R$id.notification_content_tv;
        String desc = msgBean.getDesc();
        aVarS.S(i11, desc != null ? StringsKt.t1(desc, '\n') : null).T(R$id.notification_last, 8).T(R$id.notification_next, 8).T(R$id.page_num, 8).x(NotificationUtil.f48898a.x(false)).L(R$drawable.push_small_logo).F(dVar.c()).z(pendingIntent).O(System.currentTimeMillis());
        if (bitmapE == null || bitmapE.isRecycled()) {
            aVarB.V(R$id.notification_content_image, null);
            aVarB.R(R$id.notification_content_image, null);
        } else {
            Bitmap bitmapC = gVar.c(context, bitmapE, z10);
            RemoteViews remoteViewsJ = aVarB.j();
            if (remoteViewsJ != null) {
                remoteViewsJ.setImageViewBitmap(R$id.notification_content_image, bitmapC);
            }
            aVarB.R(R$id.notification_content_image, gVar.a(context, bitmapE, z10));
        }
        return aVarB.P().a(context);
    }

    private final NotificationCompat.m f(Context context, int i10, MsgBean msgBean, com.transsion.push.notification.d dVar, Bitmap bitmap, PendingIntent pendingIntent, PendingIntent pendingIntent2) {
        if (bitmap == null) {
            bitmap = e.f48766a.e();
        }
        Bitmap bitmap2 = bitmap;
        j.a aVar = new j.a(context, i10);
        aVar.x(NotificationUtil.f48898a.x(!k.f42210a.q()));
        aVar.L(R$drawable.push_small_logo);
        aVar.F(dVar.c());
        String title = msgBean.getTitle();
        aVar.B(title != null ? StringsKt.t1(title, '\n') : null);
        String desc = msgBean.getDesc();
        aVar.A(desc != null ? StringsKt.t1(desc, '\n') : null);
        aVar.z(pendingIntent);
        aVar.E(pendingIntent2);
        if (bitmap2 == null || bitmap2.isRecycled()) {
            aVar.H(null);
        } else {
            int dimension = (int) context.getResources().getDimension(R$dimen.push_notification_transition_square_img_width);
            aVar.H(com.transsion.push.utils.a.f48922a.a(context, bitmap2, dimension, dimension, false));
        }
        return aVar.P().a(context);
    }

    private final PendingIntent h(Context context, MsgBean msgBean, int i10, com.transsion.push.notification.d dVar) {
        return n("com.community.oneroom.notification_delete", context, msgBean, i10, dVar);
    }

    private final PendingIntent j(Context context, MsgBean msgBean, int i10, com.transsion.push.notification.d dVar) {
        return n("com.community.oneroom.last_permanent_msg", context, msgBean, i10, dVar);
    }

    private final PendingIntent k(Context context, MsgBean msgBean, int i10, com.transsion.push.notification.d dVar) {
        return n("com.community.oneroom.next_permanent_msg", context, msgBean, i10, dVar);
    }

    private final PendingIntent n(String str, Context context, MsgBean msgBean, int i10, com.transsion.push.notification.d dVar) {
        int i11 = Build.VERSION.SDK_INT;
        int iR = NotificationUtil.f48898a.r(msgBean.getMessageId(), msgBean.getType());
        Intent intent = new Intent(context, (Class<?>) NotificationReceiver.class);
        intent.setPackage(context.getPackageName());
        intent.setAction(str);
        intent.putExtra("extra_notification_id", i10);
        intent.putExtra("extra_notification_group_tag", dVar.d());
        intent.putExtra("extra_message_id", msgBean.getMessageId());
        intent.putExtra("MESSAGE_TYPE", msgBean.getType());
        intent.putExtra("extra_source", msgBean.getSource());
        intent.setData(Uri.parse(msgBean.getDeeplink()));
        if (i11 >= 24) {
            intent.addFlags(ASTNode.DEOP);
        }
        return PendingIntent.getBroadcast(context, iR, intent, 201326592);
    }

    private final void u(Context context, MsgBean msgBean) {
        msgBean.setMsgStatus(MsgStatus.SHOWED.ordinal());
        msgBean.setShowTime(Long.valueOf(System.currentTimeMillis()));
        if (msgBean.getTriggerSource() == TriggerSource.SCREEN_ON.ordinal()) {
            msgBean.setHasScreenOn(true);
        }
        if (msgBean.getTriggerSource() == TriggerSource.UNLOCK.ordinal()) {
            msgBean.setForceShow(true);
        }
        kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new NotificationShowHelper$updateShowTime$1(context, msgBean, null), 3, null);
    }

    public final NotificationCompat.m c(Context context, MsgBean msgBean, int i10, Bitmap bitmap, PendingIntent pendingIntent, com.transsion.push.notification.d messageGroup) {
        Intrinsics.h(context, "context");
        Intrinsics.h(msgBean, "msgBean");
        Intrinsics.h(messageGroup, "messageGroup");
        Bitmap bitmapE = bitmap == null ? e.f48766a.e() : bitmap;
        PendingIntent pendingIntentJ = j(context, msgBean, i10, messageGroup);
        PendingIntent pendingIntentK = k(context, msgBean, i10, messageGroup);
        com.transsion.push.notification.i.a aVar = new com.transsion.push.notification.i.a(context, i10, R$layout.push_notification_normal_small, R$layout.push_notification_big_picture);
        aVar.F(messageGroup.c());
        int i11 = R$id.notification_title_tv;
        String title = msgBean.getTitle();
        aVar.V(i11, title != null ? StringsKt.t1(title, '\n') : null);
        RemoteViews remoteViewsJ = aVar.j();
        if (remoteViewsJ != null) {
            remoteViewsJ.setImageViewBitmap(R$id.notification_content_image, bitmapE);
        }
        int i12 = R$id.notification_title_tv;
        String title2 = msgBean.getTitle();
        aVar.T(i12, title2 != null ? StringsKt.t1(title2, '\n') : null);
        int i13 = R$id.page_num;
        StringCompanionObject stringCompanionObject = StringCompanionObject.f64324a;
        String str = String.format("%d/%d", Arrays.copyOf(new Object[]{Integer.valueOf(msgBean.getPermanentMsgPosition()), Integer.valueOf(msgBean.getPermanentMsgSize())}, 2));
        Intrinsics.g(str, "format(...)");
        aVar.T(i13, str);
        aVar.O(System.currentTimeMillis());
        aVar.z(pendingIntent);
        aVar.I(pendingIntentJ);
        aVar.J(pendingIntentK);
        aVar.K(true);
        NotificationUtil notificationUtil = NotificationUtil.f48898a;
        aVar.y(notificationUtil.I());
        if (bitmapE == null || bitmapE.isRecycled()) {
            aVar.W(R$id.notification_content_image, null);
            aVar.S(R$id.notification_content_image, null);
        } else {
            Bitmap bitmapE2 = com.transsion.push.utils.a.f48922a.e(context, bitmapE, lj.a.b(60), lj.a.b(40), false, lj.a.b(4));
            RemoteViews remoteViewsJ2 = aVar.j();
            if (remoteViewsJ2 != null) {
                remoteViewsJ2.setImageViewBitmap(R$id.notification_content_image, bitmapE2);
            }
            aVar.S(R$id.notification_content_image, bitmapE);
        }
        if (notificationUtil.N()) {
            return aVar.P().a(context);
        }
        aVar.R(System.currentTimeMillis());
        aVar.N(true);
        return aVar.P().a(context);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x00af  */
    public final NotificationCompat.m e(Context context, MsgBean msgBean, int i10, Bitmap bitmap, PendingIntent pendingIntent, com.transsion.push.notification.d messageGroup, ServerMatchListItemData serverMatchListItemData, Map matchMapBitmap) {
        String str;
        char c10;
        String strT1;
        String strT2;
        String strT3;
        String startTime;
        String strE0;
        TeamInfoMatch team2;
        TeamInfoMatch team1;
        TeamInfoMatch team3;
        TeamInfoMatch team4;
        Intrinsics.h(context, "context");
        Intrinsics.h(msgBean, "msgBean");
        Intrinsics.h(messageGroup, "messageGroup");
        Intrinsics.h(matchMapBitmap, "matchMapBitmap");
        Bitmap bitmapE = bitmap == null ? e.f48766a.e() : bitmap;
        PendingIntent pendingIntentJ = j(context, msgBean, i10, messageGroup);
        PendingIntent pendingIntentK = k(context, msgBean, i10, messageGroup);
        com.transsion.push.notification.i.a aVar = new com.transsion.push.notification.i.a(context, i10, R$layout.push_notification_normal_small_match, R$layout.push_notification_match_upcoming);
        String string = context.getString(R$string.match_vs);
        Intrinsics.g(string, "getString(...)");
        String string2 = context.getString(R$string.match_vs_notification1);
        Intrinsics.g(string2, "getString(...)");
        String string3 = context.getString(R$string.match_vs_notification2);
        Intrinsics.g(string3, "getString(...)");
        String name = (serverMatchListItemData == null || (team4 = serverMatchListItemData.getTeam1()) == null) ? null : team4.getName();
        String name2 = (serverMatchListItemData == null || (team3 = serverMatchListItemData.getTeam2()) == null) ? null : team3.getName();
        if (name != null) {
            String str2 = name + " ";
            if (str2 != null) {
                String str3 = str2 + string;
                if (str3 != null) {
                    str = str3 + " ";
                } else {
                    str = null;
                }
            } else {
                str = null;
            }
        } else {
            str = null;
        }
        String str4 = string2 + (str + name2) + string3;
        aVar.F(messageGroup.c());
        aVar.O(System.currentTimeMillis());
        int i11 = R$id.notification_title_tv;
        if (str4 != null) {
            c10 = 0;
            strT1 = StringsKt.t1(str4, '\n');
        } else {
            c10 = 0;
            strT1 = null;
        }
        aVar.V(i11, strT1);
        int i12 = R$id.notification_title_tv;
        if (str4 != null) {
            char[] cArr = new char[1];
            cArr[c10] = '\n';
            strT2 = StringsKt.t1(str4, cArr);
        } else {
            strT2 = null;
        }
        aVar.X(i12, strT2);
        int i13 = R$id.notification_title_tv;
        if (str4 != null) {
            char[] cArr2 = new char[1];
            cArr2[c10] = '\n';
            strT3 = StringsKt.t1(str4, cArr2);
        } else {
            strT3 = null;
        }
        aVar.T(i13, strT3);
        RemoteViews remoteViewsJ = aVar.j();
        if (remoteViewsJ != null) {
            remoteViewsJ.setImageViewBitmap(R$id.notification_content_image, bitmapE);
        }
        aVar.T(R$id.notification_title_tv, str4 != null ? StringsKt.t1(str4, '\n') : null);
        int i14 = R$id.page_num;
        StringCompanionObject stringCompanionObject = StringCompanionObject.f64324a;
        String str5 = String.format("%d/%d", Arrays.copyOf(new Object[]{Integer.valueOf(msgBean.getPermanentMsgPosition()), Integer.valueOf(msgBean.getPermanentMsgSize())}, 2));
        Intrinsics.g(str5, "format(...)");
        aVar.T(i14, str5);
        aVar.O(System.currentTimeMillis());
        float f10 = context.getResources().getDisplayMetrics().density;
        int i15 = (int) (48 * f10);
        NotificationUtil notificationUtil = NotificationUtil.f48898a;
        Object obj = matchMapBitmap.get("team1ImgUrl");
        Intrinsics.e(obj);
        float f11 = 1 * f10;
        Bitmap bitmapS = notificationUtil.s((Bitmap) obj, i15, f11, -1);
        Object obj2 = matchMapBitmap.get("team2ImgUrl");
        Intrinsics.e(obj2);
        Bitmap bitmapS2 = notificationUtil.s((Bitmap) obj2, i15, f11, -1);
        RemoteViews remoteViewsI = aVar.i();
        if (remoteViewsI != null) {
            remoteViewsI.setImageViewBitmap(R$id.iv_team1_logo, bitmapS);
        }
        RemoteViews remoteViewsI2 = aVar.i();
        if (remoteViewsI2 != null) {
            remoteViewsI2.setTextViewTextSize(R$id.score_match, 2, 20.0f);
        }
        if (serverMatchListItemData != null) {
            try {
                startTime = serverMatchListItemData.getStartTime();
            } catch (Exception e10) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("时间转换出错：");
                sb2.append(e10);
                strE0 = "";
            }
        } else {
            startTime = null;
        }
        strE0 = notificationUtil.e0(startTime);
        RemoteViews remoteViewsI3 = aVar.i();
        if (remoteViewsI3 != null) {
            remoteViewsI3.setTextViewText(R$id.tv_top_title, str4);
        }
        RemoteViews remoteViewsI4 = aVar.i();
        if (remoteViewsI4 != null) {
            remoteViewsI4.setTextViewText(R$id.match_round, serverMatchListItemData != null ? serverMatchListItemData.getMatchRound() : null);
        }
        RemoteViews remoteViewsI5 = aVar.i();
        if (remoteViewsI5 != null) {
            remoteViewsI5.setTextViewText(R$id.btn_upcoming, strE0);
        }
        RemoteViews remoteViewsI6 = aVar.i();
        if (remoteViewsI6 != null) {
            remoteViewsI6.setInt(R$id.match_push_ly, "setBackgroundResource", R$drawable.push_layer_match_push_bg);
        }
        RemoteViews remoteViewsI7 = aVar.i();
        if (remoteViewsI7 != null) {
            remoteViewsI7.setTextViewText(R$id.tv_team1_name, (serverMatchListItemData == null || (team1 = serverMatchListItemData.getTeam1()) == null) ? null : team1.getName());
        }
        RemoteViews remoteViewsI8 = aVar.i();
        if (remoteViewsI8 != null) {
            remoteViewsI8.setImageViewBitmap(R$id.iv_team2_logo, bitmapS2);
        }
        RemoteViews remoteViewsI9 = aVar.i();
        if (remoteViewsI9 != null) {
            remoteViewsI9.setTextViewText(R$id.tv_team2_name, (serverMatchListItemData == null || (team2 = serverMatchListItemData.getTeam2()) == null) ? null : team2.getName());
        }
        aVar.z(pendingIntent);
        aVar.I(pendingIntentJ);
        aVar.J(pendingIntentK);
        aVar.K(true);
        NotificationUtil notificationUtil2 = NotificationUtil.f48898a;
        aVar.y(notificationUtil2.I());
        if (bitmapE == null || bitmapE.isRecycled()) {
            aVar.W(R$id.notification_content_image, null);
            aVar.S(R$id.notification_content_image, null);
        } else {
            Bitmap bitmapE2 = com.transsion.push.utils.a.f48922a.e(context, bitmapE, lj.a.b(60), lj.a.b(40), false, lj.a.b(4));
            RemoteViews remoteViewsJ2 = aVar.j();
            if (remoteViewsJ2 != null) {
                remoteViewsJ2.setImageViewBitmap(R$id.notification_content_image, bitmapE2);
            }
            aVar.S(R$id.notification_content_image, bitmapE);
        }
        if (notificationUtil2.N()) {
            return aVar.P().a(context);
        }
        aVar.R(System.currentTimeMillis());
        aVar.N(true);
        return aVar.P().a(context);
    }

    public final void g(int i10) {
        Object systemService = Utils.a().getSystemService("notification");
        NotificationManager notificationManager = systemService instanceof NotificationManager ? (NotificationManager) systemService : null;
        if (notificationManager == null) {
            return;
        }
        notificationManager.cancel(i10);
    }

    public final List i(MsgBean msgBean) {
        Intrinsics.h(msgBean, "msgBean");
        ArrayList arrayList = new ArrayList();
        String imageList = msgBean.getImageList();
        if (imageList != null) {
            arrayList.addAll(StringsKt.S0(imageList, new String[]{","}, false, 0, 6, null));
        }
        return arrayList;
    }

    public final int l(String str) {
        if (TextUtils.isEmpty(str)) {
            return Math.abs((int) System.currentTimeMillis());
        }
        return Math.abs(str != null ? str.hashCode() : 0);
    }

    public final PendingIntent m(Context context, String str, int i10, MsgBean msgBean) {
        Intrinsics.h(context, "context");
        Intrinsics.h(msgBean, "msgBean");
        Intent intentC = NotificationUtil.f48898a.C(context, str, i10, msgBean.getSource(), msgBean.getType(), msgBean.getStyle(), msgBean.getMessageId(), msgBean.getDeeplink());
        if (intentC == null) {
            return null;
        }
        intentC.setData(Uri.parse(msgBean.getDeeplink()));
        return PendingIntent.getActivity(context, f48744a.l(msgBean.getMessageId()), intentC, 201326592);
    }

    public final int o() {
        return 111;
    }

    public final Notification p(Context context, NotificationCompat.m builder, int i10, com.transsion.push.notification.d messageGroup, boolean z10) {
        Intrinsics.h(context, "context");
        Intrinsics.h(builder, "builder");
        Intrinsics.h(messageGroup, "messageGroup");
        Object systemService = context.getSystemService("notification");
        NotificationManager notificationManager = systemService instanceof NotificationManager ? (NotificationManager) systemService : null;
        if (notificationManager == null) {
            return null;
        }
        Notification notificationC = builder.c();
        Intrinsics.g(notificationC, "build(...)");
        if (z10 && Build.VERSION.SDK_INT < 26) {
            notificationC.visibility = 1;
            notificationC.priority = 1;
            notificationC.vibrate = new long[]{0, 300, 100, 300};
            notificationC.defaults = 3;
            notificationC.flags = 17;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            notificationManager.notify(i10, notificationC);
            Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
        return notificationC;
    }

    public final void q(Context context, MsgBean msgBean) {
        Intrinsics.h(context, "context");
        Intrinsics.h(msgBean, "msgBean");
        Intent intent = new Intent(context.getPackageName());
        intent.setAction("ACTION_NEW_MESSAGE");
        intent.putExtra("newMsg", msgBean);
        r1.a.b(context).d(intent);
    }

    public final void r(Context context, MsgBean msgBean, Bitmap bitmap) {
        String str;
        Intrinsics.h(context, "context");
        Intrinsics.h(msgBean, "msgBean");
        com.transsion.push.notification.d dVarC = com.transsion.push.notification.d.f48812d.c(msgBean.getType());
        NotificationUtil notificationUtil = NotificationUtil.f48898a;
        k kVar = k.f42210a;
        String strX = notificationUtil.x(!kVar.q());
        int iL = l(msgBean.getMessageId());
        if (iL < 0) {
            return;
        }
        NotificationCompat.m mVarB = b(context, iL, msgBean, dVarC, bitmap, m(context, strX, iL, msgBean), h(context, msgBean, iL, dVarC));
        boolean z10 = !kVar.q();
        if (Intrinsics.c(msgBean.getType(), MsgType.SUBJECT_SEEKING.getType())) {
            mVarB.E(true);
            u.f48941a.b().putLong("seeking_msg_show_time", System.currentTimeMillis());
        }
        p(context, mVarB, iL, dVarC, z10);
        u(context, msgBean);
        if (msgBean.getIsRefresh()) {
            return;
        }
        wf.a.f74274a.c("PUSH_SHOW", "send local push:" + msgBean.getMessageId() + "-" + msgBean.getTitle(), true);
        a aVar = a.f48764a;
        if (aVar.e()) {
            str = bitmap == null ? MsgShowStatus.STATUS_IMG_ERROR : MsgShowStatus.STATUS_OK;
        } else {
            str = MsgShowStatus.STATUS_NOTIFY_CLOSE;
        }
        if (Intrinsics.c(msgBean.getType(), MsgType.ONLINE_JSON_PUSH.getType())) {
            aVar.g(msgBean.getMessageId(), String.valueOf(msgBean.getDeeplink()), strX, msgBean.getStyle(), str, "2");
        } else {
            aVar.c(msgBean, strX, str);
        }
        q(context, msgBean);
    }

    public final void s(Context context, MsgBean msgBean, Bitmap bitmap) {
        String str;
        Intrinsics.h(context, "context");
        Intrinsics.h(msgBean, "msgBean");
        com.transsion.push.notification.d dVarC = com.transsion.push.notification.d.f48812d.c(msgBean.getType());
        int iO = o();
        String strI = NotificationUtil.f48898a.I();
        p(context, c(context, msgBean, iO, bitmap, m(context, strI, iO, msgBean), dVarC), iO, dVarC, true);
        if (msgBean.getIsRefresh()) {
            return;
        }
        a aVar = a.f48764a;
        if (aVar.e()) {
            str = bitmap == null ? MsgShowStatus.STATUS_IMG_ERROR : MsgShowStatus.STATUS_OK;
        } else {
            str = MsgShowStatus.STATUS_NOTIFY_CLOSE;
        }
        aVar.c(msgBean, strI, str);
        q(context, msgBean);
    }

    public final void t(Context context, MsgBean msgBean, ServerMatchListItemData serverMatchListItemData, Map matchMapBitmap) {
        Intrinsics.h(context, "context");
        Intrinsics.h(msgBean, "msgBean");
        Intrinsics.h(matchMapBitmap, "matchMapBitmap");
        com.transsion.push.notification.d dVarC = com.transsion.push.notification.d.f48812d.c(msgBean.getType());
        int iL = l(msgBean.getMessageId());
        String strI = NotificationUtil.f48898a.I();
        NotificationCompat.m mVarE = e(context, msgBean, iL, null, m(context, strI, iL, msgBean), dVarC, serverMatchListItemData, matchMapBitmap);
        boolean z10 = !k.f42210a.q();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("isAppForeground  is ");
        sb2.append(z10);
        sb2.append(" ");
        mVarE.E(true);
        u.f48941a.b().putLong("seeking_msg_show_time", System.currentTimeMillis());
        p(context, mVarE, iL, dVarC, true);
        u(context, msgBean);
        if (msgBean.getIsRefresh()) {
            return;
        }
        a aVar = a.f48764a;
        aVar.c(msgBean, strI, !aVar.e() ? MsgShowStatus.STATUS_NOTIFY_CLOSE : MsgShowStatus.STATUS_IMG_ERROR);
        q(context, msgBean);
    }
}
