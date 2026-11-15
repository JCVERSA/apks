.class Landroidx/media3/transformer/ImageAssetLoader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj94;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/transformer/ImageAssetLoader;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj94;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/transformer/ImageAssetLoader;


# direct methods
.method public constructor <init>(Landroidx/media3/transformer/ImageAssetLoader;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/transformer/ImageAssetLoader$1;->this$0:Landroidx/media3/transformer/ImageAssetLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroidx/media3/transformer/ImageAssetLoader$1;Landroid/graphics/Bitmap;Landroidx/media3/common/Format;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/media3/transformer/ImageAssetLoader$1;->lambda$onSuccess$0(Landroid/graphics/Bitmap;Landroidx/media3/common/Format;)V

    return-void
.end method

.method private synthetic lambda$onSuccess$0(Landroid/graphics/Bitmap;Landroidx/media3/common/Format;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/transformer/ImageAssetLoader$1;->this$0:Landroidx/media3/transformer/ImageAssetLoader;

    invoke-static {p0, p1, p2}, Landroidx/media3/transformer/ImageAssetLoader;->access$500(Landroidx/media3/transformer/ImageAssetLoader;Landroid/graphics/Bitmap;Landroidx/media3/common/Format;)V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1

    iget-object p0, p0, Landroidx/media3/transformer/ImageAssetLoader$1;->this$0:Landroidx/media3/transformer/ImageAssetLoader;

    invoke-static {p0}, Landroidx/media3/transformer/ImageAssetLoader;->access$300(Landroidx/media3/transformer/ImageAssetLoader;)Landroidx/media3/transformer/AssetLoader$Listener;

    move-result-object p0

    const/16 v0, 0x7d0

    invoke-static {p1, v0}, Landroidx/media3/transformer/ExportException;->createForAssetLoader(Ljava/lang/Throwable;I)Landroidx/media3/transformer/ExportException;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/media3/transformer/AssetLoader$Listener;->onError(Landroidx/media3/transformer/ExportException;)V

    return-void
.end method

.method public onSuccess(Landroid/graphics/Bitmap;)V
    .locals 4

    .line 2
    iget-object v0, p0, Landroidx/media3/transformer/ImageAssetLoader$1;->this$0:Landroidx/media3/transformer/ImageAssetLoader;

    const/16 v1, 0x32

    invoke-static {v0, v1}, Landroidx/media3/transformer/ImageAssetLoader;->access$102(Landroidx/media3/transformer/ImageAssetLoader;I)I

    .line 3
    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    const-string v1, "image/raw"

    .line 6
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    sget-object v1, Landroidx/media3/common/ColorInfo;->SRGB_BT709_FULL:Landroidx/media3/common/ColorInfo;

    .line 7
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setColorInfo(Landroidx/media3/common/ColorInfo;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v0

    .line 9
    iget-object v1, p0, Landroidx/media3/transformer/ImageAssetLoader$1;->this$0:Landroidx/media3/transformer/ImageAssetLoader;

    invoke-static {v1}, Landroidx/media3/transformer/ImageAssetLoader;->access$200(Landroidx/media3/transformer/ImageAssetLoader;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v2, 0x22

    if-lt v1, v2, :cond_0

    invoke-static {p1}, Lff0;->a(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {v0}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v1

    const-string v2, "image/jpeg_r"

    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 11
    :goto_0
    :try_start_0
    iget-object v2, p0, Landroidx/media3/transformer/ImageAssetLoader$1;->this$0:Landroidx/media3/transformer/ImageAssetLoader;

    invoke-static {v2}, Landroidx/media3/transformer/ImageAssetLoader;->access$300(Landroidx/media3/transformer/ImageAssetLoader;)Landroidx/media3/transformer/AssetLoader$Listener;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v0, v3}, Landroidx/media3/transformer/AssetLoader$Listener;->onTrackAdded(Landroidx/media3/common/Format;I)Z

    .line 12
    iget-object v0, p0, Landroidx/media3/transformer/ImageAssetLoader$1;->this$0:Landroidx/media3/transformer/ImageAssetLoader;

    invoke-static {v0}, Landroidx/media3/transformer/ImageAssetLoader;->access$400(Landroidx/media3/transformer/ImageAssetLoader;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v2, Landroidx/media3/transformer/d0;

    invoke-direct {v2, p0, p1, v1}, Landroidx/media3/transformer/d0;-><init>(Landroidx/media3/transformer/ImageAssetLoader$1;Landroid/graphics/Bitmap;Landroidx/media3/common/Format;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 13
    iget-object p0, p0, Landroidx/media3/transformer/ImageAssetLoader$1;->this$0:Landroidx/media3/transformer/ImageAssetLoader;

    invoke-static {p0}, Landroidx/media3/transformer/ImageAssetLoader;->access$300(Landroidx/media3/transformer/ImageAssetLoader;)Landroidx/media3/transformer/AssetLoader$Listener;

    move-result-object p0

    const/16 v0, 0x3e8

    invoke-static {p1, v0}, Landroidx/media3/transformer/ExportException;->createForAssetLoader(Ljava/lang/Throwable;I)Landroidx/media3/transformer/ExportException;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/media3/transformer/AssetLoader$Listener;->onError(Landroidx/media3/transformer/ExportException;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Landroidx/media3/transformer/ImageAssetLoader$1;->onSuccess(Landroid/graphics/Bitmap;)V

    return-void
.end method
