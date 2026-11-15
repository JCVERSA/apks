.class public abstract Ljp8;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V
    .locals 4

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    iget p1, v1, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x0

    if-lez p1, :cond_0

    iget v3, v1, Landroid/graphics/Rect;->top:I

    if-nez v3, :cond_0

    iget v3, v1, Landroid/graphics/Rect;->right:I

    if-ne v3, v0, :cond_0

    add-int/lit8 p1, p1, 0x32

    neg-int p1, p1

    invoke-virtual {p0, p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget p1, v1, Landroid/graphics/Rect;->top:I

    if-nez p1, :cond_1

    iget p1, v1, Landroid/graphics/Rect;->right:I

    if-ge p1, v0, :cond_1

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x32

    invoke-virtual {p0, v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    :cond_1
    :goto_0
    return-void
.end method
