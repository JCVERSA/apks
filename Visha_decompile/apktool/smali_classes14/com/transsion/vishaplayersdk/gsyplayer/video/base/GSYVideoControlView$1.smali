.class Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;


# direct methods
.method public constructor <init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;

    iget-object v0, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/NetworkUtils;->getNetSpeed(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x417

    invoke-virtual {v2, v1, v0}, Lh27;->e(I[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;

    iget-boolean v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mPostNetSpeed:Z

    if-eqz v1, :cond_1

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
