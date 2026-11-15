.class public final Lio/appmetrica/analytics/impl/C1;
.super Lio/appmetrica/analytics/coreutils/internal/executors/SafeRunnable;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/os/Bundle;

.field public final synthetic c:Lio/appmetrica/analytics/impl/F1;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/F1;ILandroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/C1;->c:Lio/appmetrica/analytics/impl/F1;

    iput p2, p0, Lio/appmetrica/analytics/impl/C1;->a:I

    iput-object p3, p0, Lio/appmetrica/analytics/impl/C1;->b:Landroid/os/Bundle;

    invoke-direct {p0}, Lio/appmetrica/analytics/coreutils/internal/executors/SafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public final runSafety()V
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/C1;->c:Lio/appmetrica/analytics/impl/F1;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/F1;->b:Lio/appmetrica/analytics/impl/u1;

    iget v1, p0, Lio/appmetrica/analytics/impl/C1;->a:I

    iget-object p0, p0, Lio/appmetrica/analytics/impl/C1;->b:Landroid/os/Bundle;

    invoke-interface {v0, v1, p0}, Lio/appmetrica/analytics/impl/u1;->reportData(ILandroid/os/Bundle;)V

    return-void
.end method
