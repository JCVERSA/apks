.class public Lcom/transsion/playercommon/fragments/BaseFragment$c;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/fragments/BaseFragment;->hideShuffleBtn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/fragments/BaseFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/fragments/BaseFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment$c;->b:Lcom/transsion/playercommon/fragments/BaseFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment$c;->b:Lcom/transsion/playercommon/fragments/BaseFragment;

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIvShufflePlayBtn:Lcom/transsion/widgets/RoundImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
