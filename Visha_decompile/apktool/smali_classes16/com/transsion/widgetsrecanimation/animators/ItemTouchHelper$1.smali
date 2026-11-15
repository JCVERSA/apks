.class Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$1;->this$0:Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$1;->this$0:Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;

    iget-object v1, v0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->d:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->scrollIfNecessary()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$1;->this$0:Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;

    iget-object v1, v0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->d:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->moveIfNecessary(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$1;->this$0:Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;

    iget-object v1, v0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->l:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->n:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$1;->this$0:Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;

    iget-object v0, v0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;->l:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
