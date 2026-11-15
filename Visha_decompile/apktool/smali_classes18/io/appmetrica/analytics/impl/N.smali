.class public final Lio/appmetrica/analytics/impl/N;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/Q;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Q;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/N;->a:Lio/appmetrica/analytics/impl/Q;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lio/appmetrica/analytics/impl/N;->a:Lio/appmetrica/analytics/impl/Q;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Q;->f:Lio/appmetrica/analytics/impl/K;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Q;->a:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lio/appmetrica/analytics/impl/I;

    invoke-direct {v1, v0, p0}, Lio/appmetrica/analytics/impl/I;-><init>(Lio/appmetrica/analytics/impl/K;Landroid/content/Context;)V

    invoke-static {v1}, Lio/appmetrica/analytics/impl/K;->a(Lio/appmetrica/analytics/coreapi/internal/backport/Provider;)Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    move-result-object p0

    return-object p0
.end method
