.class Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;

.field final synthetic val$anim:Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$c;

.field final synthetic val$swipeDir:I


# direct methods
.method public constructor <init>(Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$c;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$4;->this$0:Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;

    iput-object p2, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$4;->val$anim:Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$c;

    iput p3, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$4;->val$swipeDir:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$4;->this$0:Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;

    iget-object v0, v0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->l:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$4;->val$anim:Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$c;

    iget-boolean v1, v0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$c;->j:Z

    if-nez v1, :cond_3

    iget-object v0, v0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$c;->f:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$4;->this$0:Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;

    iget-object v0, v0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->l:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->isRunning(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$4;->this$0:Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;

    invoke-virtual {v0}, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->hasRunningRecoverAnim()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$4;->this$0:Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;

    iget-object v0, v0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->l:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$4;->this$0:Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$4;->val$anim:Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$c;

    iget-object p0, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$c;->f:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    throw v1

    :cond_3
    :goto_0
    return-void
.end method
