package com.transsion.push.notification;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.widget.RemoteViews;
import androidx.core.app.NotificationCompat;
import com.transsion.baseui.R$string;
import com.transsion.lib.push.R$drawable;
import com.transsion.lib.push.R$id;
import kotlin.jvm.internal.Intrinsics;

public abstract class b {

    private a f48809a;

    public b(a parentBuilder) {
        Intrinsics.h(parentBuilder, "parentBuilder");
        this.f48809a = parentBuilder;
    }

    public final NotificationCompat.m a(Context context) {
        RemoteViews remoteViewsI;
        RemoteViews remoteViewsI2;
        RemoteViews remoteViewsI3;
        RemoteViews remoteViewsJ;
        Intrinsics.h(context, "context");
        if (this.f48809a.o() <= 0) {
            this.f48809a.M(R$drawable.push_small_logo);
        }
        NotificationCompat.m mVarM = new NotificationCompat.m(context, this.f48809a.d()).P(this.f48809a.r()).I(false).J(this.f48809a.o()).l(this.f48809a.s()).r(this.f48809a.h()).q(this.f48809a.g()).m(1);
        Intrinsics.g(mVarM, "setBadgeIconType(...)");
        if (this.f48809a.e() > 0) {
            mVarM.o(this.f48809a.e());
        }
        if (this.f48809a.j() != null) {
            PendingIntent pendingIntentC = this.f48809a.c();
            if (pendingIntentC != null && (remoteViewsJ = this.f48809a.j()) != null) {
                remoteViewsJ.setOnClickPendingIntent(R$id.ll_download, pendingIntentC);
            }
            Intrinsics.e(mVarM.t(this.f48809a.j()));
        } else if (this.f48809a.l() != null) {
            mVarM.A(this.f48809a.l());
        }
        if (this.f48809a.i() != null) {
            PendingIntent pendingIntentC2 = this.f48809a.c();
            if (pendingIntentC2 != null && (remoteViewsI3 = this.f48809a.i()) != null) {
                remoteViewsI3.setOnClickPendingIntent(R$id.ll_download, pendingIntentC2);
            }
            PendingIntent pendingIntentM = this.f48809a.m();
            if (pendingIntentM != null && (remoteViewsI2 = this.f48809a.i()) != null) {
                remoteViewsI2.setOnClickPendingIntent(R$id.notification_last, pendingIntentM);
            }
            PendingIntent pendingIntentN = this.f48809a.n();
            if (pendingIntentN != null && (remoteViewsI = this.f48809a.i()) != null) {
                remoteViewsI.setOnClickPendingIntent(R$id.notification_next, pendingIntentN);
            }
            mVarM.s(this.f48809a.i());
            if (this.f48809a.p()) {
                mVarM.L(new NotificationCompat.o());
            }
        }
        if (this.f48809a.a() != null) {
            NotificationCompat.j jVarT = new NotificationCompat.j().s(this.f48809a.h()).r(this.f48809a.a()).t(this.f48809a.g());
            Intrinsics.g(jVarT, "setSummaryText(...)");
            mVarM.L(jVarT);
        }
        if (!TextUtils.isEmpty(this.f48809a.b())) {
            NotificationCompat.k kVarS = new NotificationCompat.k().r(this.f48809a.h()).q(this.f48809a.b()).s(context.getString(R$string.base_app_name));
            Intrinsics.g(kVarS, "setSummaryText(...)");
            mVarM.L(kVarS);
        }
        mVarM.p(this.f48809a.f());
        String strQ = this.f48809a.q();
        if (strQ == null) {
            strQ = context.getString(R$string.base_app_name);
            Intrinsics.g(strQ, "getString(...)");
        }
        mVarM.M(strQ);
        mVarM.n(this.f48809a.d());
        mVarM.u(this.f48809a.v() ? 1 : -1);
        if (this.f48809a.w()) {
            mVarM.O(1);
        }
        if (this.f48809a.u()) {
            mVarM.E(true).l(false).F(true);
            if (this.f48809a.t()) {
                mVarM.G(2);
                if (Build.VERSION.SDK_INT >= 26) {
                    mVarM.u(0);
                }
            }
        } else {
            mVarM.E(false).l(this.f48809a.s()).F(true);
            if (this.f48809a.t()) {
                mVarM.G(2);
                Intrinsics.e(mVarM.u(1));
            } else {
                mVarM.G(1);
            }
        }
        if (!TextUtils.isEmpty(this.f48809a.k())) {
            mVarM.z(false);
            mVarM.y(this.f48809a.k());
        }
        return mVarM;
    }
}
