.class final Landroidx/media3/transformer/MediaProjectionAssetLoader$ComponentListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/transformer/SurfaceAssetLoader$Callback;
.implements Landroidx/media3/transformer/AssetLoader$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/MediaProjectionAssetLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ComponentListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/transformer/MediaProjectionAssetLoader;


# direct methods
.method private constructor <init>(Landroidx/media3/transformer/MediaProjectionAssetLoader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/transformer/MediaProjectionAssetLoader$ComponentListener;->this$0:Landroidx/media3/transformer/MediaProjectionAssetLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/transformer/MediaProjectionAssetLoader;Landroidx/media3/transformer/MediaProjectionAssetLoader$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroidx/media3/transformer/MediaProjectionAssetLoader$ComponentListener;-><init>(Landroidx/media3/transformer/MediaProjectionAssetLoader;)V

    return-void
.end method

.method public static synthetic a(Landroidx/media3/transformer/MediaProjectionAssetLoader$ComponentListener;Landroid/view/Surface;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/transformer/MediaProjectionAssetLoader$ComponentListener;->lambda$onSurfaceReady$0(Landroid/view/Surface;)V

    return-void
.end method

.method private synthetic lambda$onSurfaceReady$0(Landroid/view/Surface;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/transformer/MediaProjectionAssetLoader$ComponentListener;->this$0:Landroidx/media3/transformer/MediaProjectionAssetLoader;

    invoke-static {p0, p1}, Landroidx/media3/transformer/MediaProjectionAssetLoader;->access$700(Landroidx/media3/transformer/MediaProjectionAssetLoader;Landroid/view/Surface;)V

    return-void
.end method


# virtual methods
.method public onDurationUs(J)V
    .locals 0

    return-void
.end method

.method public onError(Landroidx/media3/transformer/ExportException;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/transformer/MediaProjectionAssetLoader$ComponentListener;->this$0:Landroidx/media3/transformer/MediaProjectionAssetLoader;

    invoke-static {p0}, Landroidx/media3/transformer/MediaProjectionAssetLoader;->access$600(Landroidx/media3/transformer/MediaProjectionAssetLoader;)Landroidx/media3/transformer/AssetLoader$Listener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroidx/media3/transformer/AssetLoader$Listener;->onError(Landroidx/media3/transformer/ExportException;)V

    return-void
.end method

.method public onOutputFormat(Landroidx/media3/common/Format;)Landroidx/media3/transformer/SampleConsumer;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/ExportException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/transformer/MediaProjectionAssetLoader$ComponentListener;->this$0:Landroidx/media3/transformer/MediaProjectionAssetLoader;

    invoke-static {v0}, Landroidx/media3/transformer/MediaProjectionAssetLoader;->access$500(Landroidx/media3/transformer/MediaProjectionAssetLoader;)Landroidx/media3/common/Format;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/media3/transformer/MediaProjectionAssetLoader$ComponentListener;->this$0:Landroidx/media3/transformer/MediaProjectionAssetLoader;

    invoke-static {p0}, Landroidx/media3/transformer/MediaProjectionAssetLoader;->access$600(Landroidx/media3/transformer/MediaProjectionAssetLoader;)Landroidx/media3/transformer/AssetLoader$Listener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroidx/media3/transformer/AssetLoader$Listener;->onOutputFormat(Landroidx/media3/common/Format;)Landroidx/media3/transformer/SampleConsumer;

    move-result-object p0

    return-object p0
.end method

.method public onSurfaceAssetLoaderCreated(Landroidx/media3/transformer/SurfaceAssetLoader;)V
    .locals 0

    return-void
.end method

.method public onSurfaceReady(Landroid/view/Surface;Landroidx/media3/transformer/EditedMediaItem;)V
    .locals 1

    iget-object p2, p0, Landroidx/media3/transformer/MediaProjectionAssetLoader$ComponentListener;->this$0:Landroidx/media3/transformer/MediaProjectionAssetLoader;

    invoke-static {p2}, Landroidx/media3/transformer/MediaProjectionAssetLoader;->access$400(Landroidx/media3/transformer/MediaProjectionAssetLoader;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Landroidx/media3/transformer/e0;

    invoke-direct {v0, p0, p1}, Landroidx/media3/transformer/e0;-><init>(Landroidx/media3/transformer/MediaProjectionAssetLoader$ComponentListener;Landroid/view/Surface;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTrackAdded(Landroidx/media3/common/Format;I)Z
    .locals 3

    iget-object p2, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {p2}, Landroidx/media3/common/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroidx/media3/transformer/MediaProjectionAssetLoader$ComponentListener;->this$0:Landroidx/media3/transformer/MediaProjectionAssetLoader;

    invoke-static {p2, p1}, Landroidx/media3/transformer/MediaProjectionAssetLoader;->access$502(Landroidx/media3/transformer/MediaProjectionAssetLoader;Landroidx/media3/common/Format;)Landroidx/media3/common/Format;

    iget-object p2, p0, Landroidx/media3/transformer/MediaProjectionAssetLoader$ComponentListener;->this$0:Landroidx/media3/transformer/MediaProjectionAssetLoader;

    invoke-static {p2}, Landroidx/media3/transformer/MediaProjectionAssetLoader;->access$600(Landroidx/media3/transformer/MediaProjectionAssetLoader;)Landroidx/media3/transformer/AssetLoader$Listener;

    move-result-object p2

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-interface {p2, v1, v2}, Landroidx/media3/transformer/AssetLoader$Listener;->onDurationUs(J)V

    iget-object p2, p0, Landroidx/media3/transformer/MediaProjectionAssetLoader$ComponentListener;->this$0:Landroidx/media3/transformer/MediaProjectionAssetLoader;

    invoke-static {p2}, Landroidx/media3/transformer/MediaProjectionAssetLoader;->access$600(Landroidx/media3/transformer/MediaProjectionAssetLoader;)Landroidx/media3/transformer/AssetLoader$Listener;

    move-result-object p2

    invoke-interface {p2, v0}, Landroidx/media3/transformer/AssetLoader$Listener;->onTrackCount(I)V

    iget-object p0, p0, Landroidx/media3/transformer/MediaProjectionAssetLoader$ComponentListener;->this$0:Landroidx/media3/transformer/MediaProjectionAssetLoader;

    invoke-static {p0}, Landroidx/media3/transformer/MediaProjectionAssetLoader;->access$600(Landroidx/media3/transformer/MediaProjectionAssetLoader;)Landroidx/media3/transformer/AssetLoader$Listener;

    move-result-object p0

    const/4 p2, 0x2

    invoke-interface {p0, p1, p2}, Landroidx/media3/transformer/AssetLoader$Listener;->onTrackAdded(Landroidx/media3/common/Format;I)Z

    :cond_0
    return v0
.end method

.method public onTrackCount(I)V
    .locals 0

    return-void
.end method
