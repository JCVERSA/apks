.class Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->setMusk(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;

.field final synthetic val$visible:Z


# direct methods
.method public constructor <init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;Z)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer$3;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;

    iput-boolean p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer$3;->val$visible:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;Z)V

    iget-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer$3;->val$visible:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer$3;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;

    invoke-static {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->access$1100(Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;)Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;Z)V

    return-void
.end method
