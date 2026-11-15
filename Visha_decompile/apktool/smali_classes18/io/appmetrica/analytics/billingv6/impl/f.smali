.class public final Lio/appmetrica/analytics/billingv6/impl/f;
.super Lio/appmetrica/analytics/coreutils/internal/executors/SafeRunnable;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/billingv6/impl/g;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/billingv6/impl/g;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/billingv6/impl/f;->a:Lio/appmetrica/analytics/billingv6/impl/g;

    invoke-direct {p0}, Lio/appmetrica/analytics/coreutils/internal/executors/SafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public final runSafety()V
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/billingv6/impl/f;->a:Lio/appmetrica/analytics/billingv6/impl/g;

    iget-object p0, p0, Lio/appmetrica/analytics/billingv6/impl/g;->a:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClient;->endConnection()V

    return-void
.end method
