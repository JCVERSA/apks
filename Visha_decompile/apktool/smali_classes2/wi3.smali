.class public final synthetic Lwi3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic a:Landroidx/media3/transformer/ExperimentalFrameExtractor;

.field public final synthetic b:Lim5;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Landroidx/media3/common/MediaItem;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/transformer/ExperimentalFrameExtractor;Lim5;Ljava/util/List;Landroidx/media3/common/MediaItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwi3;->a:Landroidx/media3/transformer/ExperimentalFrameExtractor;

    iput-object p2, p0, Lwi3;->b:Lim5;

    iput-object p3, p0, Lwi3;->c:Ljava/util/List;

    iput-object p4, p0, Lwi3;->d:Landroidx/media3/common/MediaItem;

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lwi3;->a:Landroidx/media3/transformer/ExperimentalFrameExtractor;

    iget-object v1, p0, Lwi3;->b:Lim5;

    iget-object v2, p0, Lwi3;->c:Ljava/util/List;

    iget-object p0, p0, Lwi3;->d:Landroidx/media3/common/MediaItem;

    invoke-static {v0, v1, v2, p0, p1}, Landroidx/media3/transformer/ExperimentalFrameExtractor;->e(Landroidx/media3/transformer/ExperimentalFrameExtractor;Lim5;Ljava/util/List;Landroidx/media3/common/MediaItem;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
