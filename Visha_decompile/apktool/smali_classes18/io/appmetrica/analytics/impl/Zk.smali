.class public final Lio/appmetrica/analytics/impl/Zk;
.super Lio/appmetrica/analytics/impl/eg;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Zf;)V
    .locals 2
    .param p1    # Lio/appmetrica/analytics/impl/Zf;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lio/appmetrica/analytics/impl/Xk;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Xk;-><init>()V

    new-instance v1, Lio/appmetrica/analytics/impl/Yk;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/Yk;-><init>()V

    invoke-direct {p0, v0, p1, v1}, Lio/appmetrica/analytics/impl/eg;-><init>(Lio/appmetrica/analytics/impl/Ua;Lio/appmetrica/analytics/impl/Zf;Lio/appmetrica/analytics/impl/Sa;)V

    return-void
.end method
