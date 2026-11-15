.class Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->setMgtvPlayerListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;


# direct methods
.method public constructor <init>(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl$3;->this$0:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBuffering(I)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl$3;->this$0:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/16 v0, 0x417

    invoke-virtual {p0, v0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->postNotificationMsg(I[Ljava/lang/Object;)V

    return-void
.end method

.method public onVideoLoading(I)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl$3;->this$0:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/16 v0, 0x41b

    invoke-virtual {p0, v0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->postNotificationMsg(I[Ljava/lang/Object;)V

    return-void
.end method
