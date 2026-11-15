.class public final Lio/appmetrica/analytics/billingv6/impl/n;
.super Lio/appmetrica/analytics/coreutils/internal/executors/SafeRunnable;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/billingv6/impl/p;

.field public final synthetic b:Lio/appmetrica/analytics/billingv6/impl/k;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/billingv6/impl/p;Lio/appmetrica/analytics/billingv6/impl/k;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/billingv6/impl/n;->a:Lio/appmetrica/analytics/billingv6/impl/p;

    iput-object p2, p0, Lio/appmetrica/analytics/billingv6/impl/n;->b:Lio/appmetrica/analytics/billingv6/impl/k;

    invoke-direct {p0}, Lio/appmetrica/analytics/coreutils/internal/executors/SafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public final runSafety()V
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/billingv6/impl/n;->a:Lio/appmetrica/analytics/billingv6/impl/p;

    iget-object v0, v0, Lio/appmetrica/analytics/billingv6/impl/p;->e:Lio/appmetrica/analytics/billingv6/impl/g;

    iget-object p0, p0, Lio/appmetrica/analytics/billingv6/impl/n;->b:Lio/appmetrica/analytics/billingv6/impl/k;

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/billingv6/impl/g;->a(Ljava/lang/Object;)V

    return-void
.end method
