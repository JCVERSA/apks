.class public final Lio/appmetrica/analytics/impl/Bk;
.super Lio/appmetrica/analytics/impl/U2;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/n2;)V
    .locals 0
    .param p1    # Lio/appmetrica/analytics/impl/n2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/U2;-><init>(Lio/appmetrica/analytics/impl/n2;)V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/An;Lio/appmetrica/analytics/impl/Cn;Lio/appmetrica/analytics/impl/m2;)Lio/appmetrica/analytics/impl/Cn;
    .locals 1
    .param p1    # Lio/appmetrica/analytics/impl/An;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/appmetrica/analytics/impl/Cn;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lio/appmetrica/analytics/impl/m2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p2, :cond_1

    iget-object p2, p2, Lio/appmetrica/analytics/impl/Cn;->c:Lio/appmetrica/analytics/impl/Dn;

    iget-boolean p2, p2, Lio/appmetrica/analytics/impl/Dn;->b:Z

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    :goto_0
    check-cast p3, Lio/appmetrica/analytics/impl/zd;

    invoke-virtual {p3}, Lio/appmetrica/analytics/impl/zd;->a()Lio/appmetrica/analytics/impl/Cn;

    move-result-object p2

    iget-object p3, p2, Lio/appmetrica/analytics/impl/Cn;->c:Lio/appmetrica/analytics/impl/Dn;

    const/4 v0, 0x1

    iput-boolean v0, p3, Lio/appmetrica/analytics/impl/Dn;->a:Z

    iget-object p0, p0, Lio/appmetrica/analytics/impl/U2;->a:Lio/appmetrica/analytics/impl/n2;

    invoke-interface {p0, p1, p2}, Lio/appmetrica/analytics/impl/n2;->a(Lio/appmetrica/analytics/impl/An;Lio/appmetrica/analytics/impl/Cn;)Lio/appmetrica/analytics/impl/Cn;

    move-result-object p0

    return-object p0
.end method
