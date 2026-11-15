.class Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;


# direct methods
.method public constructor <init>(Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;

    iget-object v0, v0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->mListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    const-string v0, "time out for error listener"

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfError(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->listener()Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;

    move-result-object p0

    const/16 v0, -0xc0

    invoke-interface {p0, v0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;->onError(II)V

    :cond_0
    return-void
.end method
