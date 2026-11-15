.class public final Lio/appmetrica/analytics/impl/ri;
.super Lio/appmetrica/analytics/impl/zd;
.source "SourceFile"


# direct methods
.method public constructor <init>(ILjava/lang/String;Lio/appmetrica/analytics/impl/Pn;Lio/appmetrica/analytics/impl/n2;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/appmetrica/analytics/impl/Pn;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lio/appmetrica/analytics/impl/n2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lio/appmetrica/analytics/impl/Pn;",
            "Lio/appmetrica/analytics/impl/n2;",
            ")V"
        }
    .end annotation

    new-instance v0, Lio/appmetrica/analytics/impl/qi;

    invoke-direct {v0, p4}, Lio/appmetrica/analytics/impl/qi;-><init>(Lio/appmetrica/analytics/impl/n2;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lio/appmetrica/analytics/impl/zd;-><init>(ILjava/lang/String;Lio/appmetrica/analytics/impl/Pn;Lio/appmetrica/analytics/impl/U2;)V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/An;)V
    .locals 2
    .param p1    # Lio/appmetrica/analytics/impl/An;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/zd;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/appmetrica/analytics/impl/zd;->d:Lio/appmetrica/analytics/impl/U2;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p0}, Lio/appmetrica/analytics/impl/U2;->a(Lio/appmetrica/analytics/impl/An;Lio/appmetrica/analytics/impl/Cn;Lio/appmetrica/analytics/impl/m2;)Lio/appmetrica/analytics/impl/Cn;

    :cond_0
    return-void
.end method
