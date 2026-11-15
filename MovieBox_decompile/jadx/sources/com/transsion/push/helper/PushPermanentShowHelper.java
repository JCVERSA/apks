package com.transsion.push.helper;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.widget.RemoteViews;
import androidx.core.app.NotificationCompat;
import com.blankj.utilcode.util.Utils;
import com.transsion.baselib.db.notification.MsgBean;
import com.transsion.lib.push.R$dimen;
import com.transsion.lib.push.R$id;
import com.transsion.lib.push.R$layout;
import com.transsion.push.bean.MsgShowStatus;
import com.transsion.push.bean.MsgStyle;
import com.transsion.push.bean.MsgType;
import com.transsion.push.bean.PermanentItemBean;
import com.transsion.push.utils.NotificationUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.t1;
import kotlinx.coroutines.y0;

public final class PushPermanentShowHelper {

    private static volatile long f48757d;

    private static t1 f48762i;

    public static final PushPermanentShowHelper f48754a = new PushPermanentShowHelper();

    private static String f48755b = "";

    private static int f48756c = 600000;

    private static final Lazy f48758e = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return Integer.valueOf(PushPermanentShowHelper.n());
        }
    });

    private static final Lazy f48759f = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return Integer.valueOf(PushPermanentShowHelper.m());
        }
    });

    private static final Integer[] f48760g = {Integer.valueOf(R$id.imageIv1), Integer.valueOf(R$id.imageIv2), Integer.valueOf(R$id.imageIv3), Integer.valueOf(R$id.imageIv4), Integer.valueOf(R$id.imageIv5), Integer.valueOf(R$id.imageIv6), Integer.valueOf(R$id.imageIv7), Integer.valueOf(R$id.imageIv8), Integer.valueOf(R$id.imageIv9), Integer.valueOf(R$id.imageIv10)};

    private static final Integer[] f48761h = {Integer.valueOf(R$id.title1), Integer.valueOf(R$id.title2), Integer.valueOf(R$id.title3), Integer.valueOf(R$id.title4)};

    private PushPermanentShowHelper() {
    }

    private final NotificationCompat.m d(Context context, int i10, List list, List list2, com.transsion.push.notification.d dVar) {
        Object objM453constructorimpl;
        Unit unit;
        RemoteViews remoteViewsI;
        int i11 = 0;
        com.transsion.push.notification.i.a aVar = new com.transsion.push.notification.i.a(context, i10, R$layout.push_notification_permanent_small_a, R$layout.push_notification_permanent_big_a);
        try {
            Result.Companion companion = Result.INSTANCE;
            PermanentItemBean permanentItemBean = (PermanentItemBean) CollectionsKt.i0(list);
            String strS = PushPermanentManager.f48745a.s();
            if (strS.length() == 0) {
                String title = permanentItemBean.getTitle();
                if (title == null) {
                    title = "";
                }
                strS = title;
            }
            aVar.F(dVar.c());
            aVar.V(R$id.notification_title_tv, StringsKt.t1(strS, '\n'));
            aVar.T(R$id.notification_title_tv, StringsKt.t1(strS, '\n'));
            aVar.O(System.currentTimeMillis());
            PushPermanentShowHelper pushPermanentShowHelper = f48754a;
            aVar.z(pushPermanentShowHelper.k(context, dVar.d(), i10, 1, null, pushPermanentShowHelper.i()));
            aVar.K(true);
            aVar.y(NotificationUtil.f48898a.I());
            RemoteViews remoteViewsJ = aVar.j();
            if (remoteViewsJ != null) {
                for (Object obj : list2) {
                    int i12 = i11 + 1;
                    if (i11 < 0) {
                        CollectionsKt.u();
                    }
                    Bitmap bitmapE = (Bitmap) obj;
                    if (i11 < 10) {
                        if (bitmapE == null) {
                            bitmapE = e.f48766a.e();
                        }
                        Bitmap bitmap = bitmapE;
                        String strI = i11 == 9 ? f48754a.i() : null;
                        PushPermanentShowHelper pushPermanentShowHelper2 = f48754a;
                        PendingIntent pendingIntentK = pushPermanentShowHelper2.k(context, dVar.d(), i10, 1, (PermanentItemBean) list.get(i11), strI);
                        Bitmap bitmapQ = pushPermanentShowHelper2.q(context, bitmap);
                        if (bitmapQ == null) {
                            bitmapQ = bitmap;
                        }
                        Integer[] numArr = f48760g;
                        aVar.S(numArr[i11].intValue(), bitmapQ);
                        aVar.U(numArr[i11].intValue(), pendingIntentK);
                        if (i11 < 3) {
                            remoteViewsJ.setImageViewBitmap(numArr[i11].intValue(), bitmapQ);
                            aVar.Y(numArr[i11].intValue(), pendingIntentK);
                        }
                    }
                    i11 = i12;
                }
                if (list2.size() < 10 && (remoteViewsI = aVar.i()) != null) {
                    remoteViewsI.setViewVisibility(R$id.content_layout_2, 8);
                }
                unit = Unit.f64096a;
            } else {
                unit = null;
            }
            objM453constructorimpl = Result.m453constructorimpl(unit);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl != null) {
            String message = thM456exceptionOrNullimpl.getMessage();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("buildTypeABuilder-error:");
            sb2.append(message);
        }
        if (NotificationUtil.f48898a.N()) {
            return aVar.P().a(context);
        }
        aVar.R(System.currentTimeMillis());
        aVar.N(true);
        return aVar.P().a(context);
    }

    private final NotificationCompat.m e(Context context, int i10, List list, List list2, com.transsion.push.notification.d dVar) {
        Object objM453constructorimpl;
        Integer numValueOf;
        com.transsion.push.notification.i.a aVar = new com.transsion.push.notification.i.a(context, i10, R$layout.push_notification_permanent_small_b, R$layout.push_notification_permanent_big_b);
        try {
            Result.Companion companion = Result.INSTANCE;
            PermanentItemBean permanentItemBean = (PermanentItemBean) CollectionsKt.i0(list);
            String strS = PushPermanentManager.f48745a.s();
            if (strS.length() == 0) {
                String title = permanentItemBean.getTitle();
                if (title == null) {
                    title = "";
                }
                strS = title;
            }
            aVar.F(dVar.c());
            aVar.V(R$id.notification_title_tv, StringsKt.t1(strS, '\n'));
            aVar.T(R$id.notification_title_tv, StringsKt.t1(strS, '\n'));
            RemoteViews remoteViewsJ = aVar.j();
            if (remoteViewsJ != null) {
                int i11 = 0;
                for (Object obj : list2) {
                    int i12 = i11 + 1;
                    if (i11 < 0) {
                        CollectionsKt.u();
                    }
                    Bitmap bitmapE = (Bitmap) obj;
                    if (bitmapE == null) {
                        bitmapE = e.f48766a.e();
                    }
                    Bitmap bitmap = bitmapE;
                    PushPermanentShowHelper pushPermanentShowHelper = f48754a;
                    int i13 = i11;
                    PendingIntent pendingIntentL = l(pushPermanentShowHelper, context, dVar.d(), i10, 2, (PermanentItemBean) list.get(i11), null, 32, null);
                    Bitmap bitmapQ = pushPermanentShowHelper.q(context, bitmap);
                    if (bitmapQ == null) {
                    }
                    if (bitmap != null) {
                        bitmapQ = bitmap;
                        numValueOf = Integer.valueOf(bitmap.getByteCount());
                    } else {
                        bitmapQ = bitmap;
                        numValueOf = null;
                    }
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("bitmap i:");
                    sb2.append(i13);
                    sb2.append(", bitmap:");
                    sb2.append(numValueOf);
                    Integer[] numArr = f48760g;
                    aVar.S(numArr[i13].intValue(), bitmapQ);
                    if (i13 < 4) {
                        aVar.T(f48761h[i13].intValue(), ((PermanentItemBean) list.get(i13)).getTitle());
                        if (i13 == 0) {
                            aVar.z(pendingIntentL);
                        }
                    }
                    remoteViewsJ.setImageViewBitmap(numArr[i13].intValue(), bitmapQ);
                    aVar.U(numArr[i13].intValue(), pendingIntentL);
                    i11 = i12;
                }
            }
            aVar.O(System.currentTimeMillis());
            aVar.K(true);
            aVar.y(NotificationUtil.f48898a.I());
            objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl != null) {
            String message = thM456exceptionOrNullimpl.getMessage();
            StringBuilder sb3 = new StringBuilder();
            sb3.append("error:");
            sb3.append(message);
        }
        if (NotificationUtil.f48898a.N()) {
            return aVar.P().a(context);
        }
        aVar.R(System.currentTimeMillis());
        aVar.N(true);
        return aVar.P().a(context);
    }

    private final int g() {
        return ((Number) f48759f.getValue()).intValue();
    }

    private final int h() {
        return ((Number) f48758e.getValue()).intValue();
    }

    public static PendingIntent l(PushPermanentShowHelper pushPermanentShowHelper, Context context, String str, int i10, int i11, PermanentItemBean permanentItemBean, String str2, int i12, Object obj) {
        if ((i12 & 32) != 0) {
            str2 = null;
        }
        return pushPermanentShowHelper.k(context, str, i10, i11, permanentItemBean, str2);
    }

    public static final int m() {
        return (int) Utils.a().getResources().getDimension(R$dimen.push_permanent_image_height);
    }

    public static final int n() {
        return (int) Utils.a().getResources().getDimension(R$dimen.push_permanent_image_width);
    }

    private final Bitmap q(Context context, Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        return com.transsion.push.utils.a.f48922a.e(context, bitmap, h(), g(), false, lj.a.b(4));
    }

    public final void f() {
        NotificationShowHelper notificationShowHelper = NotificationShowHelper.f48744a;
        notificationShowHelper.g(notificationShowHelper.o());
    }

    public final String i() {
        return "oneroom://com.community.oneroom?type=/main/tab&channel=permanent_push&msgId=111&msg_type=11";
    }

    public final String j(List msgList) {
        Intrinsics.h(msgList, "msgList");
        StringBuilder sb2 = new StringBuilder();
        int i10 = 0;
        for (Object obj : msgList) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                CollectionsKt.u();
            }
            PermanentItemBean permanentItemBean = (PermanentItemBean) obj;
            if (i10 <= 9 && permanentItemBean != null) {
                sb2.append(permanentItemBean.getSubjectId());
            }
            i10 = i11;
        }
        b bVar = b.f48765a;
        String string = sb2.toString();
        Intrinsics.g(string, "toString(...)");
        return bVar.a(string);
    }

    public final PendingIntent k(Context context, String str, int i10, int i11, PermanentItemBean permanentItemBean, String str2) {
        String strValueOf;
        Intrinsics.h(context, "context");
        NotificationUtil notificationUtil = NotificationUtil.f48898a;
        String type = MsgType.PERMANENT.getType();
        String strValueOf2 = String.valueOf(i11);
        if (permanentItemBean == null || (strValueOf = permanentItemBean.getSubjectId()) == null) {
            strValueOf = String.valueOf(i10);
        }
        String deeplink = null;
        Intent intentC = notificationUtil.C(context, str, i10, MsgStyle.SOURCE_PUSH, type, strValueOf2, strValueOf, permanentItemBean != null ? permanentItemBean.getDeeplink() : null);
        if (intentC == null) {
            return null;
        }
        if (str2 != null) {
            deeplink = str2;
        } else if (permanentItemBean != null) {
            deeplink = permanentItemBean.getDeeplink();
        }
        intentC.setData(Uri.parse(deeplink));
        return PendingIntent.getActivity(context, i10, intentC, 201326592);
    }

    public final void o(Context context, List msgList, List bitmapList, int i10) {
        Intrinsics.h(context, "context");
        Intrinsics.h(msgList, "msgList");
        Intrinsics.h(bitmapList, "bitmapList");
        List list = msgList;
        ArrayList arrayList = new ArrayList(CollectionsKt.v(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((PermanentItemBean) it.next()).getSubjectId());
        }
        wf.a.f74274a.c("PUSH_SHOW", "常驻 showPermanent msgList:" + msgList.size() + ",abType:" + i10 + " ids:" + arrayList, true);
        if (msgList.isEmpty() || bitmapList.isEmpty()) {
            return;
        }
        List listU0 = CollectionsKt.U0(msgList);
        com.transsion.push.notification.d dVarC = com.transsion.push.notification.d.f48812d.c(MsgType.PERMANENT.getType());
        NotificationShowHelper notificationShowHelper = NotificationShowHelper.f48744a;
        int iO = notificationShowHelper.o();
        NotificationCompat.m mVarD = i10 == 1 ? d(context, iO, listU0, bitmapList, dVarC) : e(context, iO, listU0, bitmapList, dVarC);
        try {
            Result.Companion companion = Result.INSTANCE;
            Result.m453constructorimpl(notificationShowHelper.p(context, mVarD, iO, dVarC, true));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
        String strJ = j(listU0);
        if (Intrinsics.c(strJ, f48755b)) {
            return;
        }
        f48755b = strJ;
        a aVar = a.f48764a;
        MsgBean msgBean = new MsgBean(0, null, null, null, null, MsgStyle.SOURCE_PUSH, String.valueOf(i10), null, MsgType.PERMANENT.getType(), null, 0, null, false, false, false, 0, 65183, null);
        msgBean.setPermanent(true);
        aVar.c(msgBean, NotificationUtil.f48898a.I(), !aVar.e() ? MsgShowStatus.STATUS_NOTIFY_CLOSE : MsgShowStatus.STATUS_OK);
    }

    public final void p(Context context, List msgList) {
        Intrinsics.h(context, "context");
        Intrinsics.h(msgList, "msgList");
        String strJ = j(msgList);
        wf.a.f74274a.c("PUSH_SHOW", "常驻push show lastMsgId:" + f48755b + ", time:" + (System.currentTimeMillis() - f48757d), true);
        if (!Intrinsics.c(strJ, f48755b) || System.currentTimeMillis() - f48757d >= f48756c) {
            f48757d = System.currentTimeMillis();
            t1 t1Var = f48762i;
            if (t1Var != null) {
                t1.a.b(t1Var, null, 1, null);
            }
            f48762i = k.d(o0.a(y0.b()), null, null, new PushPermanentShowHelper$showPermanentPush$1(msgList, context, null), 3, null);
        }
    }
}
