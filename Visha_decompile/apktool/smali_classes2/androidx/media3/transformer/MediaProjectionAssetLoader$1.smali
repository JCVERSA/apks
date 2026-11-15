.class Landroidx/media3/transformer/MediaProjectionAssetLoader$1;
.super Landroid/media/projection/MediaProjection$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/transformer/MediaProjectionAssetLoader;->startCapture(Landroid/view/Surface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/transformer/MediaProjectionAssetLoader;


# direct methods
.method public constructor <init>(Landroidx/media3/transformer/MediaProjectionAssetLoader;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/transformer/MediaProjectionAssetLoader$1;->this$0:Landroidx/media3/transformer/MediaProjectionAssetLoader;

    invoke-direct {p0}, Landroid/media/projection/MediaProjection$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 2

    invoke-super {p0}, Landroid/media/projection/MediaProjection$Callback;->onStop()V

    iget-object v0, p0, Landroidx/media3/transformer/MediaProjectionAssetLoader$1;->this$0:Landroidx/media3/transformer/MediaProjectionAssetLoader;

    invoke-static {v0}, Landroidx/media3/transformer/MediaProjectionAssetLoader;->access$200(Landroidx/media3/transformer/MediaProjectionAssetLoader;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/transformer/MediaProjectionAssetLoader$1;->this$0:Landroidx/media3/transformer/MediaProjectionAssetLoader;

    invoke-static {v0}, Landroidx/media3/transformer/MediaProjectionAssetLoader;->access$200(Landroidx/media3/transformer/MediaProjectionAssetLoader;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/VirtualDisplay;->setSurface(Landroid/view/Surface;)V

    iget-object v0, p0, Landroidx/media3/transformer/MediaProjectionAssetLoader$1;->this$0:Landroidx/media3/transformer/MediaProjectionAssetLoader;

    invoke-static {v0}, Landroidx/media3/transformer/MediaProjectionAssetLoader;->access$200(Landroidx/media3/transformer/MediaProjectionAssetLoader;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    :cond_0
    iget-object p0, p0, Landroidx/media3/transformer/MediaProjectionAssetLoader$1;->this$0:Landroidx/media3/transformer/MediaProjectionAssetLoader;

    invoke-static {p0}, Landroidx/media3/transformer/MediaProjectionAssetLoader;->access$300(Landroidx/media3/transformer/MediaProjectionAssetLoader;)Landroidx/media3/transformer/SurfaceAssetLoader;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/transformer/SurfaceAssetLoader;->signalEndOfInput()V

    return-void
.end method
