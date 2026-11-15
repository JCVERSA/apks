package com.transsion.push.notification;

import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.widget.RemoteViews;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.transsion.lib.push.R$drawable;
import kotlin.jvm.internal.Intrinsics;

public abstract class a {

    private int f48784a;

    public String f48785b;

    private boolean f48786c;

    private boolean f48787d;

    private boolean f48788e;

    private boolean f48789f;

    private boolean f48790g;

    private int f48791h;

    private String f48792i;

    private long f48793j;

    private String f48794k;

    private String f48795l;

    private Bitmap f48796m;

    private Bitmap f48797n;

    private String f48798o;

    private String f48799p;

    private int f48800q;

    private RemoteViews f48801r;

    private RemoteViews f48802s;

    private PendingIntent f48803t;

    private PendingIntent f48804u;

    private PendingIntent f48805v;

    private PendingIntent f48806w;

    private PendingIntent f48807x;

    private boolean f48808y;

    public a(Context context, int i10) {
        Intrinsics.h(context, "context");
        this.f48784a = i10;
        this.f48790g = true;
        this.f48791h = R$drawable.push_small_logo;
        this.f48808y = true;
    }

    public a A(String str) {
        this.f48795l = str;
        return this;
    }

    public a B(String str) {
        this.f48794k = str;
        return this;
    }

    public final void C(RemoteViews remoteViews) {
        this.f48802s = remoteViews;
    }

    public final void D(RemoteViews remoteViews) {
        this.f48801r = remoteViews;
    }

    public a E(PendingIntent pendingIntent) {
        this.f48804u = pendingIntent;
        return this;
    }

    public a F(String str) {
        this.f48799p = str;
        return this;
    }

    public final void G(boolean z10) {
        this.f48789f = z10;
    }

    public a H(Bitmap bitmap) {
        if (bitmap != null && !bitmap.isRecycled()) {
            this.f48796m = bitmap;
        }
        return this;
    }

    public final void I(PendingIntent pendingIntent) {
        this.f48806w = pendingIntent;
    }

    public final void J(PendingIntent pendingIntent) {
        this.f48807x = pendingIntent;
    }

    public final void K(boolean z10) {
        this.f48786c = z10;
    }

    public a L(int i10) {
        this.f48791h = i10;
        return this;
    }

    public final void M(int i10) {
        this.f48791h = i10;
    }

    public final void N(boolean z10) {
        this.f48808y = z10;
    }

    public a O(long j10) {
        this.f48793j = j10;
        return this;
    }

    public final Bitmap a() {
        return this.f48797n;
    }

    public final String b() {
        return this.f48798o;
    }

    public final PendingIntent c() {
        return this.f48805v;
    }

    public final String d() {
        String str = this.f48785b;
        if (str != null) {
            return str;
        }
        Intrinsics.y(TmcStartParams.KEY_CHANNEL_ID);
        return null;
    }

    public final int e() {
        return this.f48800q;
    }

    public final PendingIntent f() {
        return this.f48803t;
    }

    public final String g() {
        return this.f48795l;
    }

    public final String h() {
        return this.f48794k;
    }

    public final RemoteViews i() {
        return this.f48802s;
    }

    public final RemoteViews j() {
        return this.f48801r;
    }

    public final String k() {
        return this.f48799p;
    }

    public final Bitmap l() {
        return this.f48796m;
    }

    public final PendingIntent m() {
        return this.f48806w;
    }

    public final PendingIntent n() {
        return this.f48807x;
    }

    public final int o() {
        return this.f48791h;
    }

    public final boolean p() {
        return this.f48808y;
    }

    public final String q() {
        return this.f48792i;
    }

    public final long r() {
        return this.f48793j;
    }

    public final boolean s() {
        return this.f48790g;
    }

    public final boolean t() {
        return this.f48789f;
    }

    public final boolean u() {
        return this.f48786c;
    }

    public final boolean v() {
        return this.f48787d;
    }

    public final boolean w() {
        return this.f48788e;
    }

    public a x(String channelId) {
        Intrinsics.h(channelId, "channelId");
        y(channelId);
        return this;
    }

    public final void y(String str) {
        Intrinsics.h(str, "<set-?>");
        this.f48785b = str;
    }

    public a z(PendingIntent pendingIntent) {
        this.f48803t = pendingIntent;
        return this;
    }
}
