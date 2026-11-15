.class public final Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$h;
.super Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->g(Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;

.field public final synthetic c:Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;

.field public final synthetic d:Landroid/view/ViewPropertyAnimator;

.field public final synthetic e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$h;->b:Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;

    iput-object p2, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$h;->c:Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;

    iput-object p3, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$h;->d:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$h;->e:Landroid/view/View;

    invoke-direct {p0}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const-string v0, "animator"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$h;->d:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$h;->e:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$h;->e:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$h;->e:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$h;->b:Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;

    iget-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$h;->c:Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;

    invoke-virtual {v0}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;->c()Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchChangeFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    iget-object p1, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$h;->c:Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;

    invoke-virtual {p1}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;->c()Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$h;->b:Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;

    invoke-static {p1}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->e(Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$h;->c:Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;

    invoke-virtual {v0}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;->c()Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$h;->b:Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;

    invoke-static {p0}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->d(Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animator"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$h;->b:Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;

    iget-object p0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$h;->c:Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;

    invoke-virtual {p0}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;->c()Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchChangeStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    return-void
.end method
