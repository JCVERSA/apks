.class public final Lio/appmetrica/analytics/billingv6/impl/b;
.super Lio/appmetrica/analytics/coreutils/internal/executors/SafeRunnable;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/billingv6/impl/d;

.field public final synthetic b:Lio/appmetrica/analytics/billingv6/impl/p;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/billingv6/impl/d;Lio/appmetrica/analytics/billingv6/impl/p;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/billingv6/impl/b;->a:Lio/appmetrica/analytics/billingv6/impl/d;

    iput-object p2, p0, Lio/appmetrica/analytics/billingv6/impl/b;->b:Lio/appmetrica/analytics/billingv6/impl/p;

    invoke-direct {p0}, Lio/appmetrica/analytics/coreutils/internal/executors/SafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public final runSafety()V
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/billingv6/impl/b;->a:Lio/appmetrica/analytics/billingv6/impl/d;

    iget-object v0, v0, Lio/appmetrica/analytics/billingv6/impl/d;->d:Lio/appmetrica/analytics/billingv6/impl/g;

    iget-object p0, p0, Lio/appmetrica/analytics/billingv6/impl/b;->b:Lio/appmetrica/analytics/billingv6/impl/p;

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/billingv6/impl/g;->a(Ljava/lang/Object;)V

    return-void
.end method
