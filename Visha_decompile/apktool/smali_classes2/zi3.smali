.class public final synthetic Lzi3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/transformer/ExperimentalFrameExtractor;

.field public final synthetic c:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Landroidx/media3/common/MediaItem;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/transformer/ExperimentalFrameExtractor;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Ljava/util/List;Landroidx/media3/common/MediaItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzi3;->b:Landroidx/media3/transformer/ExperimentalFrameExtractor;

    iput-object p2, p0, Lzi3;->c:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iput-object p3, p0, Lzi3;->d:Ljava/util/List;

    iput-object p4, p0, Lzi3;->e:Landroidx/media3/common/MediaItem;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lzi3;->b:Landroidx/media3/transformer/ExperimentalFrameExtractor;

    iget-object v1, p0, Lzi3;->c:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iget-object v2, p0, Lzi3;->d:Ljava/util/List;

    iget-object p0, p0, Lzi3;->e:Landroidx/media3/common/MediaItem;

    invoke-static {v0, v1, v2, p0}, Landroidx/media3/transformer/ExperimentalFrameExtractor;->i(Landroidx/media3/transformer/ExperimentalFrameExtractor;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Ljava/util/List;Landroidx/media3/common/MediaItem;)V

    return-void
.end method
