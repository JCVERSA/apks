.class public final Lio/appmetrica/analytics/impl/B1;
.super Lio/appmetrica/analytics/coreutils/internal/executors/SafeRunnable;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/content/Intent;

.field public final synthetic b:Lio/appmetrica/analytics/impl/F1;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/F1;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/B1;->b:Lio/appmetrica/analytics/impl/F1;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/B1;->a:Landroid/content/Intent;

    invoke-direct {p0}, Lio/appmetrica/analytics/coreutils/internal/executors/SafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public final runSafety()V
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/B1;->b:Lio/appmetrica/analytics/impl/F1;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/F1;->b:Lio/appmetrica/analytics/impl/u1;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/B1;->a:Landroid/content/Intent;

    invoke-interface {v0, p0}, Lio/appmetrica/analytics/impl/u1;->b(Landroid/content/Intent;)V

    return-void
.end method
