.class Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView$7;
.super Lcom/transsion/vishaplayersdk/gsyplayer/video/base/CustomClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->initPre()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;


# direct methods
.method public constructor <init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;Landroid/content/Context;Z)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView$7;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;

    invoke-direct {p0, p2, p3}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/CustomClickableSpan;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView$7;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->o(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView$7;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mIfCurrentIsFullscreen:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const v0, 0x900001

    invoke-virtual {p1, v0, p0}, Lh27;->e(I[Ljava/lang/Object;)V

    return-void
.end method
