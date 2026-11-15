.class public final Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$i;
.super Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->animateMoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;

.field public final synthetic c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field public final synthetic d:I

.field public final synthetic e:Landroid/view/View;

.field public final synthetic f:I

.field public final synthetic g:Landroid/view/ViewPropertyAnimator;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$i;->b:Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;

    iput-object p2, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$i;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput p3, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$i;->d:I

    iput-object p4, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$i;->e:Landroid/view/View;

    iput p5, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$i;->f:I

    iput-object p6, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$i;->g:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animator"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$i;->d:I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$i;->e:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    :cond_0
    iget p1, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$i;->f:I

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$i;->e:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    iget-object p0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$i;->b:Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->w(Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animator"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$i;->g:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$i;->b:Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;

    iget-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$i;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    iget-object p1, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$i;->b:Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;

    invoke-static {p1}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->f(Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$i;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$i;->b:Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;

    invoke-static {p1}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->d(Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;)V

    iget-object p0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$i;->b:Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->w(Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animator"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$i;->b:Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;

    iget-object p0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$i;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchMoveStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
