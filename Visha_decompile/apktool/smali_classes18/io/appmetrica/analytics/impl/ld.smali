.class public final Lio/appmetrica/analytics/impl/ld;
.super Lio/appmetrica/analytics/coreutils/internal/executors/SafeRunnable;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/nd;

.field public final synthetic b:Z


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/nd;Z)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/ld;->a:Lio/appmetrica/analytics/impl/nd;

    iput-boolean p2, p0, Lio/appmetrica/analytics/impl/ld;->b:Z

    invoke-direct {p0}, Lio/appmetrica/analytics/coreutils/internal/executors/SafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public final runSafety()V
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/ld;->a:Lio/appmetrica/analytics/impl/nd;

    invoke-static {v0}, Lio/appmetrica/analytics/impl/nd;->a(Lio/appmetrica/analytics/impl/nd;)Lio/appmetrica/analytics/impl/Pa;

    move-result-object v0

    iget-boolean p0, p0, Lio/appmetrica/analytics/impl/ld;->b:Z

    invoke-interface {v0, p0}, Lio/appmetrica/analytics/impl/Pa;->b(Z)V

    return-void
.end method
