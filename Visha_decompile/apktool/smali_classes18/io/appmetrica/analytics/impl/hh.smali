.class public final Lio/appmetrica/analytics/impl/hh;
.super Lio/appmetrica/analytics/impl/Gg;
.source "SourceFile"


# instance fields
.field public final b:Lio/appmetrica/analytics/impl/ki;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/m5;)V
    .locals 2

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/Gg;-><init>(Lio/appmetrica/analytics/impl/m5;)V

    new-instance v0, Lio/appmetrica/analytics/impl/ki;

    new-instance v1, Lio/appmetrica/analytics/impl/r9;

    invoke-direct {v1, p1}, Lio/appmetrica/analytics/impl/r9;-><init>(Lio/appmetrica/analytics/impl/m5;)V

    invoke-direct {v0, v1, p1}, Lio/appmetrica/analytics/impl/ki;-><init>(Lio/appmetrica/analytics/impl/qf;Lio/appmetrica/analytics/impl/m5;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/hh;->b:Lio/appmetrica/analytics/impl/ki;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/a6;)Z
    .locals 1
    .param p1    # Lio/appmetrica/analytics/impl/a6;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lio/appmetrica/analytics/impl/hh;->b:Lio/appmetrica/analytics/impl/ki;

    new-instance v0, Lio/appmetrica/analytics/impl/ji;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/ji;-><init>()V

    invoke-virtual {p0, p1, v0}, Lio/appmetrica/analytics/impl/Q2;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/P2;)Z

    move-result p0

    return p0
.end method
