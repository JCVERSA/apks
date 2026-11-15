.class public final Lio/appmetrica/analytics/billingv6/impl/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/billingclient/api/BillingClient;

.field public final b:Lio/appmetrica/analytics/billinginterface/internal/library/UtilsProvider;

.field public final c:Ljava/util/LinkedHashSet;


# direct methods
.method public constructor <init>(Lcom/android/billingclient/api/BillingClient;Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor$updateBilling$1$runSafety$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/billingv6/impl/g;->a:Lcom/android/billingclient/api/BillingClient;

    iput-object p2, p0, Lio/appmetrica/analytics/billingv6/impl/g;->b:Lio/appmetrica/analytics/billinginterface/internal/library/UtilsProvider;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/billingv6/impl/g;->c:Ljava/util/LinkedHashSet;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/billingv6/impl/g;->c:Ljava/util/LinkedHashSet;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lio/appmetrica/analytics/billingv6/impl/g;->c:Ljava/util/LinkedHashSet;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lio/appmetrica/analytics/billingv6/impl/g;->b:Lio/appmetrica/analytics/billinginterface/internal/library/UtilsProvider;

    invoke-interface {p1}, Lio/appmetrica/analytics/billinginterface/internal/library/UtilsProvider;->getUiExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lio/appmetrica/analytics/billingv6/impl/f;

    invoke-direct {v0, p0}, Lio/appmetrica/analytics/billingv6/impl/f;-><init>(Lio/appmetrica/analytics/billingv6/impl/g;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
