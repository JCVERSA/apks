.class public final Lio/appmetrica/analytics/billingv6/impl/i;
.super Lio/appmetrica/analytics/coreutils/internal/executors/SafeRunnable;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/billingv6/impl/k;

.field public final synthetic b:Lio/appmetrica/analytics/billingv6/impl/r;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/billingv6/impl/k;Lio/appmetrica/analytics/billingv6/impl/r;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/billingv6/impl/i;->a:Lio/appmetrica/analytics/billingv6/impl/k;

    iput-object p2, p0, Lio/appmetrica/analytics/billingv6/impl/i;->b:Lio/appmetrica/analytics/billingv6/impl/r;

    invoke-direct {p0}, Lio/appmetrica/analytics/coreutils/internal/executors/SafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public final runSafety()V
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/billingv6/impl/i;->a:Lio/appmetrica/analytics/billingv6/impl/k;

    iget-object v0, v0, Lio/appmetrica/analytics/billingv6/impl/k;->f:Lio/appmetrica/analytics/billingv6/impl/g;

    iget-object p0, p0, Lio/appmetrica/analytics/billingv6/impl/i;->b:Lio/appmetrica/analytics/billingv6/impl/r;

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/billingv6/impl/g;->a(Ljava/lang/Object;)V

    return-void
.end method
