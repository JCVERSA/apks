.class public final synthetic Landroidx/media3/exoplayer/g1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/exoplayer/MediaPeriodQueue;

.field public final synthetic c:Lcom/google/common/collect/ImmutableList$a;

.field public final synthetic d:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/MediaPeriodQueue;Lcom/google/common/collect/ImmutableList$a;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/g1;->b:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iput-object p2, p0, Landroidx/media3/exoplayer/g1;->c:Lcom/google/common/collect/ImmutableList$a;

    iput-object p3, p0, Landroidx/media3/exoplayer/g1;->d:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/g1;->b:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v1, p0, Landroidx/media3/exoplayer/g1;->c:Lcom/google/common/collect/ImmutableList$a;

    iget-object p0, p0, Landroidx/media3/exoplayer/g1;->d:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-static {v0, v1, p0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->a(Landroidx/media3/exoplayer/MediaPeriodQueue;Lcom/google/common/collect/ImmutableList$a;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    return-void
.end method
