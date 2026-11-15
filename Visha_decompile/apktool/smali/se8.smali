.class public final synthetic Lse8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;

.field public final synthetic c:Landroidx/media3/common/Timeline;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;Landroidx/media3/common/Timeline;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lse8;->b:Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;

    iput-object p2, p0, Lse8;->c:Landroidx/media3/common/Timeline;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lse8;->b:Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;

    iget-object p0, p0, Lse8;->c:Landroidx/media3/common/Timeline;

    invoke-static {v0, p0}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->f(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;Landroidx/media3/common/Timeline;)V

    return-void
.end method
