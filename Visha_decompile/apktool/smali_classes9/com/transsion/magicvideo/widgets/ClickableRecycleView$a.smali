.class public Lcom/transsion/magicvideo/widgets/ClickableRecycleView$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/magicvideo/widgets/ClickableRecycleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/widgets/ClickableRecycleView;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/widgets/ClickableRecycleView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ClickableRecycleView$a;->b:Lcom/transsion/magicvideo/widgets/ClickableRecycleView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/ClickableRecycleView$a;->b:Lcom/transsion/magicvideo/widgets/ClickableRecycleView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/ClickableRecycleView$a;->b:Lcom/transsion/magicvideo/widgets/ClickableRecycleView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/ClickableRecycleView;->a(Lcom/transsion/magicvideo/widgets/ClickableRecycleView;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/ClickableRecycleView$a;->b:Lcom/transsion/magicvideo/widgets/ClickableRecycleView;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/ClickableRecycleView$a;->b:Lcom/transsion/magicvideo/widgets/ClickableRecycleView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/ClickableRecycleView$a;->b:Lcom/transsion/magicvideo/widgets/ClickableRecycleView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    if-eqz v0, :cond_3

    instance-of v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;

    if-eqz v1, :cond_3

    check-cast p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClick(Landroid/view/View;I)V

    goto :goto_2

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "canTapOnScrolling:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/ClickableRecycleView$a;->b:Lcom/transsion/magicvideo/widgets/ClickableRecycleView;

    invoke-static {v1}, Lcom/transsion/magicvideo/widgets/ClickableRecycleView;->a(Lcom/transsion/magicvideo/widgets/ClickableRecycleView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " v:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " parent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_1

    :cond_2
    const-string p1, "null"

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " this:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/ClickableRecycleView$a;->b:Lcom/transsion/magicvideo/widgets/ClickableRecycleView;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->O([Ljava/lang/Object;)V

    :cond_3
    :goto_2
    const/4 p0, 0x0

    return p0
.end method
