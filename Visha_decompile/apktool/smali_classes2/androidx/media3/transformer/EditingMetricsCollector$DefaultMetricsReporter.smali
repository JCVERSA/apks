.class final Landroidx/media3/transformer/EditingMetricsCollector$DefaultMetricsReporter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/transformer/EditingMetricsCollector$MetricsReporter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/EditingMetricsCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultMetricsReporter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/transformer/EditingMetricsCollector$DefaultMetricsReporter$Factory;
    }
.end annotation


# instance fields
.field private editingSession:Landroid/media/metrics/EditingSession;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private metricsReported:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-string v0, "media_metrics"

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lli6;->a(Ljava/lang/Object;)Landroid/media/metrics/MediaMetricsManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    invoke-static {p1}, Ln73;->a(Landroid/media/metrics/MediaMetricsManager;)Landroid/media/metrics/EditingSession;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/transformer/EditingMetricsCollector$DefaultMetricsReporter;->editingSession:Landroid/media/metrics/EditingSession;

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroidx/media3/transformer/EditingMetricsCollector$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/transformer/EditingMetricsCollector$DefaultMetricsReporter;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/transformer/EditingMetricsCollector$DefaultMetricsReporter;->editingSession:Landroid/media/metrics/EditingSession;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lp73;->a(Landroid/media/metrics/EditingSession;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/transformer/EditingMetricsCollector$DefaultMetricsReporter;->editingSession:Landroid/media/metrics/EditingSession;

    :cond_0
    return-void
.end method

.method public getLogSessionId()Landroid/media/metrics/LogSessionId;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Landroidx/media3/transformer/EditingMetricsCollector$DefaultMetricsReporter;->editingSession:Landroid/media/metrics/EditingSession;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lq73;->a(Landroid/media/metrics/EditingSession;)Landroid/media/metrics/LogSessionId;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public reportMetrics(Landroid/media/metrics/EditingEndedEvent;)V
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/transformer/EditingMetricsCollector$DefaultMetricsReporter;->metricsReported:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/transformer/EditingMetricsCollector$DefaultMetricsReporter;->editingSession:Landroid/media/metrics/EditingSession;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lo73;->a(Landroid/media/metrics/EditingSession;Landroid/media/metrics/EditingEndedEvent;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/transformer/EditingMetricsCollector$DefaultMetricsReporter;->metricsReported:Z

    :cond_0
    return-void
.end method
