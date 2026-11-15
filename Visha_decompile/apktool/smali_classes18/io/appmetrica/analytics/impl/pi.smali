.class public final Lio/appmetrica/analytics/impl/pi;
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

    const-string p2, "io.appmetrica.analytics.impl.referrer.common.ReferrerResultReceiver"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/ResultReceiver;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/R4;->a:Lio/appmetrica/analytics/impl/O4;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/O4;->k:Lio/appmetrica/analytics/impl/fg;

    new-instance p2, Lio/appmetrica/analytics/impl/N4;

    invoke-direct {p2, p1}, Lio/appmetrica/analytics/impl/N4;-><init>(Landroid/os/ResultReceiver;)V

    invoke-virtual {p0, p2}, Lio/appmetrica/analytics/impl/fg;->a(Lio/appmetrica/analytics/impl/Sf;)V

    const/4 p0, 0x0

    return p0
.end method
