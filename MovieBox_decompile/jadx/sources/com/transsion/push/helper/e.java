package com.transsion.push.helper;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.y;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.request.target.CustomTarget;
import com.bumptech.glide.request.transition.Transition;
import com.transsion.baselib.db.notification.MsgBean;
import com.transsion.lib.push.R$mipmap;
import com.transsion.push.bean.MsgShowStatus;
import com.transsion.push.bean.MsgType;
import com.transsion.push.bean.ServerMatchListItemData;
import com.transsion.push.bean.TeamInfoMatch;
import com.transsion.push.utils.NotificationUtil;
import java.io.InputStream;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class e {

    public static final e f48766a = new e();

    private static final int f48767b = lj.a.b(100);

    private static final Lazy f48768c = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return Integer.valueOf(e.b());
        }
    });

    public static final class a extends CustomTarget {

        final Map f48769a;

        final String f48770b;

        final Context f48771c;

        final MsgBean f48772d;

        final ServerMatchListItemData f48773e;

        a(Map map, String str, Context context, MsgBean msgBean, ServerMatchListItemData serverMatchListItemData) {
            this.f48769a = map;
            this.f48770b = str;
            this.f48771c = context;
            this.f48772d = msgBean;
            this.f48773e = serverMatchListItemData;
        }

        private final void a(Context context, MsgBean msgBean, ServerMatchListItemData serverMatchListItemData, Map map) {
            wf.a.C0922a.f(wf.a.f74274a, "PushImageHelper", "showMatchPush", false, 4, null);
            NotificationShowHelper.f48744a.t(context, msgBean, serverMatchListItemData, map);
        }

        @Override
        public void onLoadCleared(Drawable drawable) {
        }

        @Override
        public void onLoadFailed(Drawable drawable) {
            super.onLoadFailed(drawable);
        }

        @Override
        public void onResourceReady(Bitmap resource, Transition transition) {
            Intrinsics.h(resource, "resource");
            this.f48769a.put(this.f48770b, resource);
            if (this.f48769a.size() == 2) {
                a(this.f48771c, this.f48772d, this.f48773e, this.f48769a);
            }
        }
    }

    public static final class b extends CustomTarget {

        final MsgBean f48774a;

        final Context f48775b;

        b(MsgBean msgBean, Context context) {
            this.f48774a = msgBean;
            this.f48775b = context;
        }

        private final void a(Bitmap bitmap) {
            if (this.f48774a.getIsPermanent()) {
                NotificationShowHelper.f48744a.s(this.f48775b, this.f48774a, bitmap);
            } else {
                NotificationShowHelper.f48744a.r(this.f48775b, this.f48774a, bitmap);
            }
        }

        @Override
        public void onLoadCleared(Drawable drawable) {
            wf.a.C0922a.f(wf.a.f74274a, "PushImageHelper", "onLoadCleared", false, 4, null);
        }

        @Override
        public void onLoadFailed(Drawable drawable) {
            super.onLoadFailed(drawable);
            wf.a.C0922a.f(wf.a.f74274a, "PushImageHelper", "onFailure", false, 4, null);
            a(null);
        }

        @Override
        public void onResourceReady(Bitmap resource, Transition transition) {
            Intrinsics.h(resource, "resource");
            wf.a.C0922a.f(wf.a.f74274a, "PushImageHelper", "onSuccess", false, 4, null);
            a(resource);
        }
    }

    private e() {
    }

    public static final int b() {
        return y.a() - lj.a.b(80);
    }

    private final void c(Context context, Map map, MsgBean msgBean, ServerMatchListItemData serverMatchListItemData, Map map2) {
        for (Map.Entry entry : map.entrySet()) {
            String str = (String) entry.getKey();
            Glide.with(context).asBitmap().diskCacheStrategy(DiskCacheStrategy.DATA).load((String) entry.getValue()).into(new a(map2, str, context, msgBean, serverMatchListItemData));
        }
    }

    private final void k(Context context, MsgBean msgBean) {
        wf.a.C0922a.f(wf.a.f74274a, "PushImageHelper", "handleRequest", false, 4, null);
        NotificationShowHelper notificationShowHelper = NotificationShowHelper.f48744a;
        List listI = notificationShowHelper.i(msgBean);
        if (listI.isEmpty()) {
            return;
        }
        boolean z10 = false;
        try {
            String str = (String) listI.get(0);
            if (msgBean.getBuiltIn()) {
                InputStream inputStreamOpen = context.getAssets().open(str);
                notificationShowHelper.r(context, msgBean, BitmapFactory.decodeStream(inputStreamOpen));
                Intrinsics.e(inputStreamOpen);
            } else {
                if (!msgBean.getIsPermanent() && !Intrinsics.c(msgBean.getStyle(), "101")) {
                    z10 = true;
                }
                Intrinsics.e(Glide.with(context).asBitmap().diskCacheStrategy(DiskCacheStrategy.DATA).load(NotificationUtil.f48898a.J(str, f(z10))).into(new b(msgBean, context)));
            }
        } catch (Exception unused) {
            wf.a.C0922a.f(wf.a.f74274a, "PushImageHelper", "onFailure", false, 4, null);
            if (msgBean.getIsRefresh()) {
                return;
            }
            if (Intrinsics.c(msgBean.getType(), MsgType.ONLINE_JSON_PUSH.getType())) {
                com.transsion.push.helper.a.f48764a.g(msgBean.getMessageId(), String.valueOf(msgBean.getDeeplink()), "", msgBean.getStyle(), MsgShowStatus.STATUS_APP_ERROR, "2");
            } else {
                com.transsion.push.helper.a.f48764a.c(msgBean, "", MsgShowStatus.STATUS_APP_ERROR);
            }
        }
    }

    private final void l(Context context, MsgBean msgBean, ServerMatchListItemData serverMatchListItemData) {
        TeamInfoMatch team2;
        TeamInfoMatch team1;
        String avatar = null;
        String strValueOf = String.valueOf((serverMatchListItemData == null || (team1 = serverMatchListItemData.getTeam1()) == null) ? null : team1.getAvatar());
        if (serverMatchListItemData != null && (team2 = serverMatchListItemData.getTeam2()) != null) {
            avatar = team2.getAvatar();
        }
        c(context, MapsKt.m(TuplesKt.a("team1ImgUrl", strValueOf), TuplesKt.a("team2ImgUrl", String.valueOf(avatar))), msgBean, serverMatchListItemData, new LinkedHashMap());
    }

    public final int d() {
        return ((Number) f48768c.getValue()).intValue();
    }

    public final Bitmap e() {
        Drawable drawable = Utils.a().getResources().getDrawable(R$mipmap.ic_default_push);
        Intrinsics.g(drawable, "getDrawable(...)");
        return a1.b.c(drawable, 0, 0, null, 7, null);
    }

    public final int f(boolean z10) {
        return z10 ? f48767b : d();
    }

    public final int g() {
        return f48767b;
    }

    public final void h(Context context, MsgBean permanentMsgBean, ServerMatchListItemData serverMatchListItemData) {
        Intrinsics.h(context, "context");
        Intrinsics.h(permanentMsgBean, "permanentMsgBean");
        wf.a.C0922a.f(wf.a.f74274a, "PushImageHelper", "handleHigherMatchMsg data :" + serverMatchListItemData, false, 4, null);
        l(context, permanentMsgBean, serverMatchListItemData);
    }

    public final void i(Context context, MsgBean permanentMsgBean) {
        Intrinsics.h(context, "context");
        Intrinsics.h(permanentMsgBean, "permanentMsgBean");
        k(context, permanentMsgBean);
    }

    public final void j(Context context, MsgBean msgBean) {
        Intrinsics.h(context, "context");
        Intrinsics.h(msgBean, "msgBean");
        k(context, msgBean);
    }
}
