.class public Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->v4(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$u;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$u;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->M1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/widgets/VideoSettingsDialogConstraintLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->H3(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$u;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->L1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Landroidx/constraintlayout/motion/widget/MotionLayout;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->H3(Landroid/view/View;I)V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$u;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->M1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/widgets/VideoSettingsDialogConstraintLayout;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoSettingsDialogConstraintLayout;->setHideAnimationState(Z)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
