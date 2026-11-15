.class Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->checkAutoFullWithSizeAndAdaptation(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

.field final synthetic val$gsyVideoPlayer:Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;


# direct methods
.method public constructor <init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    iput-object p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView$1;->val$gsyVideoPlayer:Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView$1;->val$gsyVideoPlayer:Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getCurrentPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->autoAdaptation()V

    return-void
.end method
