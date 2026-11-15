.class public final Lio/appmetrica/analytics/coreutils/internal/services/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/coreutils/internal/services/WaitForActivationDelayBarrier$ActivationBarrierHelper;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/coreutils/internal/services/WaitForActivationDelayBarrier$ActivationBarrierHelper;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/coreutils/internal/services/b;->a:Lio/appmetrica/analytics/coreutils/internal/services/WaitForActivationDelayBarrier$ActivationBarrierHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lio/appmetrica/analytics/coreutils/internal/services/b;->a:Lio/appmetrica/analytics/coreutils/internal/services/WaitForActivationDelayBarrier$ActivationBarrierHelper;

    invoke-static {p0}, Lio/appmetrica/analytics/coreutils/internal/services/WaitForActivationDelayBarrier$ActivationBarrierHelper;->b(Lio/appmetrica/analytics/coreutils/internal/services/WaitForActivationDelayBarrier$ActivationBarrierHelper;)Lio/appmetrica/analytics/coreutils/internal/services/a;

    move-result-object p0

    iget-object v0, p0, Lio/appmetrica/analytics/coreutils/internal/services/a;->b:Lio/appmetrica/analytics/coreutils/internal/services/WaitForActivationDelayBarrier$ActivationBarrierHelper;

    invoke-static {v0}, Lio/appmetrica/analytics/coreutils/internal/services/WaitForActivationDelayBarrier$ActivationBarrierHelper;->a(Lio/appmetrica/analytics/coreutils/internal/services/WaitForActivationDelayBarrier$ActivationBarrierHelper;)V

    iget-object p0, p0, Lio/appmetrica/analytics/coreutils/internal/services/a;->a:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
