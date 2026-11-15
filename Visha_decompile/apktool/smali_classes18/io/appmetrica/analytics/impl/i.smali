.class public final Lio/appmetrica/analytics/impl/i;
.super Lio/appmetrica/analytics/impl/bn;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/q0;)V
    .locals 1
    .param p1    # Lio/appmetrica/analytics/impl/q0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lio/appmetrica/analytics/impl/Jk;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/Jk;-><init>(Lio/appmetrica/analytics/impl/q0;)V

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/impl/bn;-><init>(Lio/appmetrica/analytics/impl/Pn;)V

    return-void
.end method


# virtual methods
.method public final b()Lio/appmetrica/analytics/impl/Nn;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/bn;->a(Ljava/lang/Object;)Lio/appmetrica/analytics/impl/Nn;

    move-result-object p0

    return-object p0
.end method
