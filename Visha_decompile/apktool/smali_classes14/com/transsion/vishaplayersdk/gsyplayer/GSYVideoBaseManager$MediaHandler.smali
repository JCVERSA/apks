.class Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager$MediaHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MediaHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;


# direct methods
.method public constructor <init>(Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager$MediaHandler;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager$MediaHandler;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;

    invoke-static {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->t(Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;Landroid/os/Message;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager$MediaHandler;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;

    iget-object p1, p1, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mPlayerManager:Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;->release()V

    :cond_2
    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager$MediaHandler;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;

    iget-object p1, p1, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mCacheManager:Lcom/transsion/vishaplayersdk/gsyplayer/base/cache/ICacheManager;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/cache/ICacheManager;->release()V

    :cond_3
    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager$MediaHandler;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;

    const/4 v0, 0x0

    iput v0, p1, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mBufferPoint:I

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->resetMuteState()V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager$MediaHandler;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->cancelTimeOutBuffer()V

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager$MediaHandler;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;

    invoke-static {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->s(Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;Landroid/os/Message;)V

    :goto_0
    return-void
.end method
