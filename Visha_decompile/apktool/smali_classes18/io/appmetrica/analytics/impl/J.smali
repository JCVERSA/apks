.class public final Lio/appmetrica/analytics/impl/J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/backport/Provider;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lio/appmetrica/analytics/impl/wi;

.field public final synthetic c:Lio/appmetrica/analytics/impl/K;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/K;Landroid/content/Context;Lio/appmetrica/analytics/impl/wi;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/J;->c:Lio/appmetrica/analytics/impl/K;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/J;->a:Landroid/content/Context;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/J;->b:Lio/appmetrica/analytics/impl/wi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/J;->c:Lio/appmetrica/analytics/impl/K;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/K;->a:Lio/appmetrica/analytics/impl/H;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/J;->a:Landroid/content/Context;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/J;->b:Lio/appmetrica/analytics/impl/wi;

    invoke-interface {v0, v1, p0}, Lio/appmetrica/analytics/impl/H;->a(Landroid/content/Context;Lio/appmetrica/analytics/impl/wi;)Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    move-result-object p0

    return-object p0
.end method
