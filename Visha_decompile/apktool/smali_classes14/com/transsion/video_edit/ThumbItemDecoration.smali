.class public Lcom/transsion/video_edit/ThumbItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:Z


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/video_edit/ThumbItemDecoration;->d:Z

    iput p1, p0, Lcom/transsion/video_edit/ThumbItemDecoration;->b:I

    iput p2, p0, Lcom/transsion/video_edit/ThumbItemDecoration;->c:I

    invoke-static {}, Lolb;->l0()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/video_edit/ThumbItemDecoration;->d:Z

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result p2

    const/4 p4, 0x0

    if-nez p2, :cond_0

    iget p2, p0, Lcom/transsion/video_edit/ThumbItemDecoration;->b:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    iput p4, p1, Landroid/graphics/Rect;->right:I

    iget-boolean p0, p0, Lcom/transsion/video_edit/ThumbItemDecoration;->d:Z

    if-eqz p0, :cond_1

    iput p2, p1, Landroid/graphics/Rect;->right:I

    iput p4, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-ne p2, p3, :cond_1

    iget p2, p0, Lcom/transsion/video_edit/ThumbItemDecoration;->c:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    iput p4, p1, Landroid/graphics/Rect;->left:I

    iget-boolean p0, p0, Lcom/transsion/video_edit/ThumbItemDecoration;->d:Z

    if-eqz p0, :cond_1

    iput p4, p1, Landroid/graphics/Rect;->right:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    :cond_1
    :goto_0
    return-void
.end method
