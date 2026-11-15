.class Lcom/transsion/playercommon/fragments/BaseFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/playercommon/fragments/BaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/playercommon/fragments/BaseFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/fragments/BaseFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment$3;->this$0:Lcom/transsion/playercommon/fragments/BaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment$3;->this$0:Lcom/transsion/playercommon/fragments/BaseFragment;

    invoke-static {v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->G(Lcom/transsion/playercommon/fragments/BaseFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment$3;->this$0:Lcom/transsion/playercommon/fragments/BaseFragment;

    iget-object v0, v0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIvShufflePlayBtn:Lcom/transsion/widgets/RoundImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment$3;->this$0:Lcom/transsion/playercommon/fragments/BaseFragment;

    iget-object v0, v0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIvShufflePlayBtn:Lcom/transsion/widgets/RoundImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment$3;->this$0:Lcom/transsion/playercommon/fragments/BaseFragment;

    iget-object v1, v0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIvShufflePlayBtn:Lcom/transsion/widgets/RoundImageView;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const-string v3, "alpha"

    invoke-static {v1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/playercommon/fragments/BaseFragment;->fadeInt:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment$3;->this$0:Lcom/transsion/playercommon/fragments/BaseFragment;

    iget-object v0, v0, Lcom/transsion/playercommon/fragments/BaseFragment;->fadeInt:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment$3;->this$0:Lcom/transsion/playercommon/fragments/BaseFragment;

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->fadeInt:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
