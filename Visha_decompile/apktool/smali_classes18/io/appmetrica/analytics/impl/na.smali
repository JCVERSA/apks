.class public final Lio/appmetrica/analytics/impl/na;
.super Lio/appmetrica/analytics/impl/R4;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/O4;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/R4;-><init>(Lio/appmetrica/analytics/impl/O4;)V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/L4;)Z
    .locals 0
    .param p1    # Lio/appmetrica/analytics/impl/a6;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/appmetrica/analytics/impl/L4;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p1, Lio/appmetrica/analytics/impl/a6;->m:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    const-string p2, "io.appmetrica.analytics.impl.IdentifiersData"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lio/appmetrica/analytics/impl/eb;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/R4;->a:Lio/appmetrica/analytics/impl/O4;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/O4;->a(Lio/appmetrica/analytics/impl/eb;)V

    const/4 p0, 0x0

    return p0
.end method
