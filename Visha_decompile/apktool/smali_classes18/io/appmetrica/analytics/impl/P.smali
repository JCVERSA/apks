.class public final Lio/appmetrica/analytics/impl/P;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/Q;

.field public final synthetic b:Lio/appmetrica/analytics/impl/wi;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Q;Lio/appmetrica/analytics/impl/wi;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/P;->a:Lio/appmetrica/analytics/impl/Q;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/P;->b:Lio/appmetrica/analytics/impl/wi;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lio/appmetrica/analytics/impl/P;->a:Lio/appmetrica/analytics/impl/Q;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/Q;->h:Lio/appmetrica/analytics/impl/K;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/Q;->a:Landroid/content/Context;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/P;->b:Lio/appmetrica/analytics/impl/wi;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lio/appmetrica/analytics/impl/J;

    invoke-direct {v2, v1, v0, p0}, Lio/appmetrica/analytics/impl/J;-><init>(Lio/appmetrica/analytics/impl/K;Landroid/content/Context;Lio/appmetrica/analytics/impl/wi;)V

    invoke-static {v2}, Lio/appmetrica/analytics/impl/K;->a(Lio/appmetrica/analytics/coreapi/internal/backport/Provider;)Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    move-result-object p0

    return-object p0
.end method
