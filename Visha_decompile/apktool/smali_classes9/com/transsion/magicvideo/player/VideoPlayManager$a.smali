.class public Lcom/transsion/magicvideo/player/VideoPlayManager$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/magicvideo/player/VideoPlayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/player/VideoPlayManager;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/player/VideoPlayManager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$a;->b:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    instance-of v0, p2, Lcom/transsion/magicvideo/services/VideosService$ServiceBinder;

    const-string v1, "VideoPlayManager"

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$a;->b:Lcom/transsion/magicvideo/player/VideoPlayManager;

    check-cast p2, Lcom/transsion/magicvideo/services/VideosService$ServiceBinder;

    invoke-virtual {p2}, Lcom/transsion/magicvideo/services/VideosService$ServiceBinder;->getService()Lcom/transsion/magicvideo/services/VideosService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/magicvideo/player/VideoPlayManager;->x(Lcom/transsion/magicvideo/player/VideoPlayManager;Lcom/transsion/magicvideo/services/VideosService;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onServiceConnected "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$a;->b:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-static {p2}, Lcom/transsion/magicvideo/player/VideoPlayManager;->v(Lcom/transsion/magicvideo/player/VideoPlayManager;)Lcom/transsion/magicvideo/services/VideosService;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$a;->b:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-static {p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->v(Lcom/transsion/magicvideo/player/VideoPlayManager;)Lcom/transsion/magicvideo/services/VideosService;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$a;->b:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-static {p2}, Lcom/transsion/magicvideo/player/VideoPlayManager;->u(Lcom/transsion/magicvideo/player/VideoPlayManager;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/transsion/magicvideo/services/VideosService;->onPlayerStateUpdate(I)V

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$a;->b:Lcom/transsion/magicvideo/player/VideoPlayManager;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->w(Lcom/transsion/magicvideo/player/VideoPlayManager;Z)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected unexpected binder type:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", component:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$a;->b:Lcom/transsion/magicvideo/player/VideoPlayManager;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/transsion/magicvideo/player/VideoPlayManager;->x(Lcom/transsion/magicvideo/player/VideoPlayManager;Lcom/transsion/magicvideo/services/VideosService;)V

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$a;->b:Lcom/transsion/magicvideo/player/VideoPlayManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->w(Lcom/transsion/magicvideo/player/VideoPlayManager;Z)V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "VideoPlayManager"

    const-string v0, "onServiceDisconnected "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$a;->b:Lcom/transsion/magicvideo/player/VideoPlayManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->x(Lcom/transsion/magicvideo/player/VideoPlayManager;Lcom/transsion/magicvideo/services/VideosService;)V

    return-void
.end method
