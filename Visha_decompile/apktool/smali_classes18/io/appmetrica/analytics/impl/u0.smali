.class public abstract Lio/appmetrica/analytics/impl/u0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/os/Handler;Lio/appmetrica/analytics/impl/t0;)Lio/appmetrica/analytics/impl/I6;
    .locals 1

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/I6;

    invoke-direct {v0, p0, p1}, Lio/appmetrica/analytics/impl/I6;-><init>(Landroid/os/Handler;Lio/appmetrica/analytics/impl/H6;)V

    return-object v0
.end method

.method public static a(Lio/appmetrica/analytics/impl/ni;Lio/appmetrica/analytics/impl/Ke;Landroid/os/Handler;)Lio/appmetrica/analytics/impl/Yf;
    .locals 2

    .line 13
    new-instance v0, Lio/appmetrica/analytics/impl/Yf;

    .line 14
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Ke;->s()Z

    move-result v1

    .line 15
    invoke-direct {v0, p0, p1, p2, v1}, Lio/appmetrica/analytics/impl/Yf;-><init>(Lio/appmetrica/analytics/impl/ni;Lio/appmetrica/analytics/impl/Ke;Landroid/os/Handler;Z)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lio/appmetrica/analytics/impl/pf;Lio/appmetrica/analytics/impl/ni;Landroid/os/Handler;Lio/appmetrica/analytics/impl/ql;)Lio/appmetrica/analytics/impl/bi;
    .locals 7

    .line 16
    new-instance v6, Lio/appmetrica/analytics/impl/bi;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/appmetrica/analytics/impl/bi;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/pf;Lio/appmetrica/analytics/impl/ni;Landroid/os/Handler;Lio/appmetrica/analytics/impl/ql;)V

    return-object v6
.end method

.method public static a(Lio/appmetrica/analytics/impl/pf;Landroid/content/Context;Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;)Lio/appmetrica/analytics/impl/ni;
    .locals 3

    .line 3
    new-instance v0, Lio/appmetrica/analytics/impl/ni;

    .line 4
    new-instance v1, Lio/appmetrica/analytics/impl/i0;

    .line 5
    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->i()Lio/appmetrica/analytics/impl/t4;

    move-result-object v2

    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/t4;->d()Lio/appmetrica/analytics/impl/M1;

    move-result-object v2

    .line 6
    invoke-direct {v1, p1, p2, v2}, Lio/appmetrica/analytics/impl/i0;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;Lio/appmetrica/analytics/impl/M1;)V

    .line 7
    new-instance p2, Lio/appmetrica/analytics/impl/pn;

    .line 8
    new-instance v2, Lio/appmetrica/analytics/impl/rb;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/rb;-><init>()V

    invoke-direct {p2, v2}, Lio/appmetrica/analytics/impl/pn;-><init>(Lio/appmetrica/analytics/impl/rb;)V

    .line 9
    new-instance v2, Lio/appmetrica/analytics/impl/W4;

    invoke-direct {v2, p0}, Lio/appmetrica/analytics/impl/W4;-><init>(Lio/appmetrica/analytics/impl/pf;)V

    .line 10
    new-instance p0, Lio/appmetrica/analytics/impl/Lj;

    invoke-direct {p0, p1, v1}, Lio/appmetrica/analytics/impl/Lj;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/i0;)V

    invoke-direct {v0, v1, p2, v2, p0}, Lio/appmetrica/analytics/impl/ni;-><init>(Lio/appmetrica/analytics/impl/i0;Lio/appmetrica/analytics/impl/pn;Lio/appmetrica/analytics/impl/W4;Lio/appmetrica/analytics/impl/Lj;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lio/appmetrica/analytics/impl/I6;)Lio/appmetrica/analytics/impl/pf;
    .locals 1

    .line 2
    new-instance v0, Lio/appmetrica/analytics/impl/pf;

    invoke-direct {v0, p0, p1}, Lio/appmetrica/analytics/impl/pf;-><init>(Landroid/content/Context;Landroid/os/ResultReceiver;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lio/appmetrica/analytics/impl/ni;Lio/appmetrica/analytics/impl/Ke;Landroid/os/Handler;)Lio/appmetrica/analytics/impl/ql;
    .locals 2

    .line 11
    new-instance v0, Lio/appmetrica/analytics/impl/ql;

    .line 12
    new-instance v1, Lio/appmetrica/analytics/impl/yl;

    invoke-direct {v1, p0, p2}, Lio/appmetrica/analytics/impl/yl;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/Ke;)V

    invoke-direct {v0, p1, v1, p3}, Lio/appmetrica/analytics/impl/ql;-><init>(Lio/appmetrica/analytics/impl/ni;Lio/appmetrica/analytics/impl/yl;Landroid/os/Handler;)V

    return-object v0
.end method
