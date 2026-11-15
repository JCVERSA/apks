.class public final Lio/appmetrica/analytics/impl/zm;
.super Lio/appmetrica/analytics/impl/K4;
.source "SourceFile"


# instance fields
.field public final g:Lio/appmetrica/analytics/impl/in;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/impl/in;Lio/appmetrica/analytics/impl/Pn;Lio/appmetrica/analytics/impl/U2;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/appmetrica/analytics/impl/in;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lio/appmetrica/analytics/impl/Pn;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lio/appmetrica/analytics/impl/U2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/appmetrica/analytics/impl/in;",
            "Lio/appmetrica/analytics/impl/Pn;",
            "Lio/appmetrica/analytics/impl/U2;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lio/appmetrica/analytics/impl/K4;-><init>(ILjava/lang/String;Ljava/lang/Object;Lio/appmetrica/analytics/impl/Pn;Lio/appmetrica/analytics/impl/U2;)V

    iput-object p3, p0, Lio/appmetrica/analytics/impl/zm;->g:Lio/appmetrica/analytics/impl/in;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/Cn;)V
    .locals 1
    .param p1    # Lio/appmetrica/analytics/impl/Cn;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lio/appmetrica/analytics/impl/zm;->g:Lio/appmetrica/analytics/impl/in;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/K4;->f:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-interface {v0, p0}, Lio/appmetrica/analytics/impl/in;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/Cn;->d:Lio/appmetrica/analytics/impl/En;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [B

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    :goto_0
    iput-object p0, p1, Lio/appmetrica/analytics/impl/En;->a:[B

    return-void
.end method

.method public final h()Lio/appmetrica/analytics/impl/in;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/appmetrica/analytics/impl/in;"
        }
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/zm;->g:Lio/appmetrica/analytics/impl/in;

    return-object p0
.end method
