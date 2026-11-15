.class public final Lio/appmetrica/analytics/impl/D1;
.super Lio/appmetrica/analytics/coreutils/internal/executors/SafeRunnable;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/os/Bundle;

.field public final synthetic b:Lio/appmetrica/analytics/impl/F1;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/F1;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/D1;->b:Lio/appmetrica/analytics/impl/F1;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/D1;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Lio/appmetrica/analytics/coreutils/internal/executors/SafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public final runSafety()V
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/D1;->b:Lio/appmetrica/analytics/impl/F1;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/F1;->b:Lio/appmetrica/analytics/impl/u1;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/D1;->a:Landroid/os/Bundle;

    invoke-interface {v0, p0}, Lio/appmetrica/analytics/impl/u1;->resumeUserSession(Landroid/os/Bundle;)V

    return-void
.end method
