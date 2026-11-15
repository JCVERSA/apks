.class public final Lio/appmetrica/analytics/impl/fh;
.super Lio/appmetrica/analytics/impl/Gg;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/m5;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/Gg;-><init>(Lio/appmetrica/analytics/impl/m5;)V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/a6;)Z
    .locals 3
    .param p1    # Lio/appmetrica/analytics/impl/a6;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Gg;->a:Lio/appmetrica/analytics/impl/m5;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/m5;->n:Lio/appmetrica/analytics/impl/q9;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/q9;->c:Lio/appmetrica/analytics/impl/vk;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/vk;->b(Lio/appmetrica/analytics/impl/a6;)Lio/appmetrica/analytics/impl/hk;

    move-result-object v0

    iget-wide v1, p1, Lio/appmetrica/analytics/impl/a6;->i:J

    invoke-static {v0, v1, v2}, Lio/appmetrica/analytics/impl/vk;->a(Lio/appmetrica/analytics/impl/hk;J)Lio/appmetrica/analytics/impl/xk;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/appmetrica/analytics/impl/q9;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/xk;)V

    const/4 p0, 0x0

    return p0
.end method
