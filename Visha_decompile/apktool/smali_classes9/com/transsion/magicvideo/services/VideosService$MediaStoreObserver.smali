.class Lcom/transsion/magicvideo/services/VideosService$MediaStoreObserver;
.super Landroid/database/ContentObserver;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/magicvideo/services/VideosService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MediaStoreObserver"
.end annotation


# static fields
.field private static final REFRESH_DELAY:J = 0x1f4L


# instance fields
.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/transsion/magicvideo/services/VideosService;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/services/VideosService;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/services/VideosService$MediaStoreObserver;->this$0:Lcom/transsion/magicvideo/services/VideosService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/transsion/magicvideo/services/VideosService$MediaStoreObserver;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object p1, p0, Lcom/transsion/magicvideo/services/VideosService$MediaStoreObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/services/VideosService$MediaStoreObserver;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/services/VideosService$MediaStoreObserver;->this$0:Lcom/transsion/magicvideo/services/VideosService;

    invoke-static {p0}, Lcom/transsion/magicvideo/services/VideosService;->j(Lcom/transsion/magicvideo/services/VideosService;)Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->d1()V

    return-void
.end method
