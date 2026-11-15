.class Landroidx/media3/effect/BitmapOverlay$3;
.super Landroidx/media3/effect/BitmapOverlay;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/effect/BitmapOverlay;->createStaticBitmapOverlay(Landroid/content/Context;Landroid/net/Uri;Landroidx/media3/effect/StaticOverlaySettings;)Landroidx/media3/effect/BitmapOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private lastBitmap:Landroid/graphics/Bitmap;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$overlayBitmapUri:Landroid/net/Uri;

.field final synthetic val$overlaySettings:Landroidx/media3/effect/StaticOverlaySettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroidx/media3/effect/StaticOverlaySettings;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/effect/BitmapOverlay$3;->val$context:Landroid/content/Context;

    iput-object p2, p0, Landroidx/media3/effect/BitmapOverlay$3;->val$overlayBitmapUri:Landroid/net/Uri;

    iput-object p3, p0, Landroidx/media3/effect/BitmapOverlay$3;->val$overlaySettings:Landroidx/media3/effect/StaticOverlaySettings;

    invoke-direct {p0}, Landroidx/media3/effect/BitmapOverlay;-><init>()V

    return-void
.end method


# virtual methods
.method public getBitmap(J)Landroid/graphics/Bitmap;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/VideoFrameProcessingException;
        }
    .end annotation

    iget-object p1, p0, Landroidx/media3/effect/BitmapOverlay$3;->lastBitmap:Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    new-instance p1, Landroidx/media3/datasource/DataSourceBitmapLoader;

    iget-object p2, p0, Landroidx/media3/effect/BitmapOverlay$3;->val$context:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroidx/media3/datasource/DataSourceBitmapLoader;-><init>(Landroid/content/Context;)V

    iget-object p2, p0, Landroidx/media3/effect/BitmapOverlay$3;->val$overlayBitmapUri:Landroid/net/Uri;

    invoke-interface {p1, p2}, Landroidx/media3/common/util/BitmapLoader;->loadBitmap(Landroid/net/Uri;)Lim5;

    move-result-object p1

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    iput-object p1, p0, Landroidx/media3/effect/BitmapOverlay$3;->lastBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    new-instance p1, Landroidx/media3/common/VideoFrameProcessingException;

    invoke-direct {p1, p0}, Landroidx/media3/common/VideoFrameProcessingException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    new-instance p1, Landroidx/media3/common/VideoFrameProcessingException;

    invoke-direct {p1, p0}, Landroidx/media3/common/VideoFrameProcessingException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    :goto_2
    iget-object p0, p0, Landroidx/media3/effect/BitmapOverlay$3;->lastBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getOverlaySettings(J)Landroidx/media3/common/OverlaySettings;
    .locals 0

    iget-object p0, p0, Landroidx/media3/effect/BitmapOverlay$3;->val$overlaySettings:Landroidx/media3/effect/StaticOverlaySettings;

    return-object p0
.end method
