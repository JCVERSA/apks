.class public final Landroidx/media3/transformer/EditingMetricsCollector$DefaultMetricsReporter$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/transformer/EditingMetricsCollector$MetricsReporter$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/EditingMetricsCollector$DefaultMetricsReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/transformer/EditingMetricsCollector$DefaultMetricsReporter$Factory;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public create()Landroidx/media3/transformer/EditingMetricsCollector$MetricsReporter;
    .locals 2

    new-instance v0, Landroidx/media3/transformer/EditingMetricsCollector$DefaultMetricsReporter;

    iget-object p0, p0, Landroidx/media3/transformer/EditingMetricsCollector$DefaultMetricsReporter$Factory;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/transformer/EditingMetricsCollector$DefaultMetricsReporter;-><init>(Landroid/content/Context;Landroidx/media3/transformer/EditingMetricsCollector$1;)V

    return-object v0
.end method
