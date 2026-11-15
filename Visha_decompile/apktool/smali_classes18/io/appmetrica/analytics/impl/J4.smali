.class public final Lio/appmetrica/analytics/impl/J4;
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

    iget-object v0, p2, Lio/appmetrica/analytics/impl/Cn;->c:Lio/appmetrica/analytics/impl/Dn;

    iget-boolean v0, v0, Lio/appmetrica/analytics/impl/Dn;->b:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lio/appmetrica/analytics/impl/Dn;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/Dn;-><init>()V

    iput-object p0, p2, Lio/appmetrica/analytics/impl/Cn;->c:Lio/appmetrica/analytics/impl/Dn;

    return-object p2

    :cond_1
    :goto_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/U2;->a:Lio/appmetrica/analytics/impl/n2;

    check-cast p3, Lio/appmetrica/analytics/impl/zd;

    invoke-virtual {p3}, Lio/appmetrica/analytics/impl/zd;->a()Lio/appmetrica/analytics/impl/Cn;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lio/appmetrica/analytics/impl/n2;->a(Lio/appmetrica/analytics/impl/An;Lio/appmetrica/analytics/impl/Cn;)Lio/appmetrica/analytics/impl/Cn;

    move-result-object p0

    return-object p0
.end method
