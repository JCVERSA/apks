.class public final Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor$updateBilling$1;
.super Lio/appmetrica/analytics/coreutils/internal/executors/SafeRunnable;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "io/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor$updateBilling$1",
        "Lio/appmetrica/analytics/coreutils/internal/executors/SafeRunnable;",
        "Lzfb;",
        "runSafety",
        "()V",
        "billing-v6_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor;

.field final synthetic b:Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor;Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor$updateBilling$1;->a:Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor;

    iput-object p2, p0, Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor$updateBilling$1;->b:Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;

    invoke-direct {p0}, Lio/appmetrica/analytics/coreutils/internal/executors/SafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public runSafety()V
    .locals 4

    iget-object v0, p0, Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor$updateBilling$1;->a:Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor;

    invoke-static {v0}, Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor;->access$getContext$p(Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v0

    new-instance v1, Lio/appmetrica/analytics/billingv6/impl/s;

    invoke-direct {v1}, Lio/appmetrica/analytics/billingv6/impl/s;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases()Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;

    move-result-object v0

    new-instance v1, Lio/appmetrica/analytics/billingv6/impl/d;

    iget-object v2, p0, Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor$updateBilling$1;->b:Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;

    new-instance v3, Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor$updateBilling$1$runSafety$1;

    iget-object p0, p0, Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor$updateBilling$1;->a:Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor;

    invoke-direct {v3, p0}, Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor$updateBilling$1$runSafety$1;-><init>(Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor;)V

    new-instance p0, Lio/appmetrica/analytics/billingv6/impl/g;

    invoke-direct {p0, v0, v3}, Lio/appmetrica/analytics/billingv6/impl/g;-><init>(Lcom/android/billingclient/api/BillingClient;Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor$updateBilling$1$runSafety$1;)V

    invoke-direct {v1, v2, v0, v3, p0}, Lio/appmetrica/analytics/billingv6/impl/d;-><init>(Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;Lcom/android/billingclient/api/BillingClient;Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor$updateBilling$1$runSafety$1;Lio/appmetrica/analytics/billingv6/impl/g;)V

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    return-void
.end method
