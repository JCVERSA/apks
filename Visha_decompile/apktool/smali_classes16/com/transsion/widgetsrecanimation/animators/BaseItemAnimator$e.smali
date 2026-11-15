.class public final Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$e;
.super Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation


# instance fields
.field public b:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field public final synthetic c:Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    const-string v0, "viewHolder"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$e;->c:Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;

    invoke-direct {p0}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$a;-><init>()V

    iput-object p2, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$e;->b:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animator"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$e;->b:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p1, "viewHolder.itemView"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Llcc;->a(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animator"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$e;->b:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v0, -0x80000000

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationZ(F)V

    iget-object p1, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$e;->b:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v0, "viewHolder.itemView"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Llcc;->a(Landroid/view/View;)V

    iget-object p1, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$e;->c:Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;

    iget-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$e;->b:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchRemoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    iget-object p1, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$e;->c:Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;

    invoke-virtual {p1}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->n()Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$e;->b:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$e;->c:Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;

    invoke-static {p0}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->d(Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animator"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$e;->c:Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;

    iget-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$e;->b:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchRemoveStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    iget-object p0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$e;->b:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 p1, -0x40800000    # -1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationZ(F)V

    return-void
.end method
