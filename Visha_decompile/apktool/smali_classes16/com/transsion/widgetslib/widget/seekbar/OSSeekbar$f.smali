.class public final Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->q()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$f;->b:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$f;->b:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$setCenterXAnimation$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$f;->b:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$setCenterXAnimation$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;Z)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$f;->b:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$setCenterXAnimation$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$f;->b:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$setCenterXAnimation$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;Z)V

    return-void
.end method
