.class public Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->showVipGuide(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$g;->c:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    iput-boolean p2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$g;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$g;->c:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    iget-object p1, p1, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVipOpenView:Landroid/view/View;

    iget-boolean p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$g;->b:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$g;->c:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mVipOpenView:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
