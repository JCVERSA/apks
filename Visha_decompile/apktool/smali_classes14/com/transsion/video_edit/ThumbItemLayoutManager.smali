.class public Lcom/transsion/video_edit/ThumbItemLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SourceFile"


# instance fields
.field public e:I

.field public f:I

.field public g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/transsion/video_edit/ThumbItemLayoutManager;->g:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/video_edit/ThumbItemLayoutManager;-><init>(Landroid/content/Context;)V

    .line 2
    iput p2, p0, Lcom/transsion/video_edit/ThumbItemLayoutManager;->e:I

    .line 3
    iput p3, p0, Lcom/transsion/video_edit/ThumbItemLayoutManager;->f:I

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/transsion/video_edit/ThumbItemLayoutManager;->g:Z

    return-void
.end method


# virtual methods
.method public canScrollHorizontally()Z
    .locals 1

    invoke-super {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/video_edit/ThumbItemLayoutManager;->g:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public computeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public g(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/video_edit/ThumbItemLayoutManager;->g:Z

    return-void
.end method

.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 2

    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget v1, p0, Lcom/transsion/video_edit/ThumbItemLayoutManager;->e:I

    iget p0, p0, Lcom/transsion/video_edit/ThumbItemLayoutManager;->f:I

    invoke-direct {v0, v1, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    return-object v0
.end method
