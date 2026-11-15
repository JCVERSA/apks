.class public final Lio/appmetrica/analytics/impl/f3;
.super Lio/appmetrica/analytics/coreutils/internal/executors/SafeRunnable;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/billinginterface/internal/ProductInfo;

.field public final synthetic b:Lio/appmetrica/analytics/impl/g3;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/g3;Lio/appmetrica/analytics/billinginterface/internal/ProductInfo;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/f3;->b:Lio/appmetrica/analytics/impl/g3;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/f3;->a:Lio/appmetrica/analytics/billinginterface/internal/ProductInfo;

    invoke-direct {p0}, Lio/appmetrica/analytics/coreutils/internal/executors/SafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public final runSafety()V
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/f3;->b:Lio/appmetrica/analytics/impl/g3;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/g3;->a:Lio/appmetrica/analytics/impl/Wa;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/f3;->a:Lio/appmetrica/analytics/billinginterface/internal/ProductInfo;

    new-instance v1, Lio/appmetrica/analytics/impl/tf;

    invoke-direct {v1, p0}, Lio/appmetrica/analytics/impl/tf;-><init>(Lio/appmetrica/analytics/billinginterface/internal/ProductInfo;)V

    invoke-static {v1}, Lio/appmetrica/analytics/impl/a6;->a(Lio/appmetrica/analytics/impl/tf;)Lio/appmetrica/analytics/impl/a6;

    move-result-object p0

    check-cast v0, Lio/appmetrica/analytics/impl/m5;

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/impl/m5;->a(Lio/appmetrica/analytics/impl/a6;)V

    return-void
.end method
