.class public Lcom/yanzhenjie/recyclerview/b;
.super Lcom/yanzhenjie/recyclerview/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/yanzhenjie/recyclerview/a;-><init>(ILandroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/OverScroller;II)V
    .locals 6

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p0

    neg-int v1, p0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    return-void
.end method

.method public b(Landroid/widget/OverScroller;II)V
    .locals 6

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/a;->f()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    sub-int v3, p0, p2

    const/4 v4, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    return-void
.end method

.method public d(II)Lcom/yanzhenjie/recyclerview/a$a;
    .locals 2

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/a;->c:Lcom/yanzhenjie/recyclerview/a$a;

    iput p1, v0, Lcom/yanzhenjie/recyclerview/a$a;->a:I

    iput p2, v0, Lcom/yanzhenjie/recyclerview/a$a;->b:I

    const/4 p2, 0x0

    iput-boolean p2, v0, Lcom/yanzhenjie/recyclerview/a$a;->c:Z

    if-nez p1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/yanzhenjie/recyclerview/a$a;->c:Z

    :cond_0
    if-ltz p1, :cond_1

    iput p2, v0, Lcom/yanzhenjie/recyclerview/a$a;->a:I

    :cond_1
    iget p1, v0, Lcom/yanzhenjie/recyclerview/a$a;->a:I

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/a;->f()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    neg-int p2, p2

    if-gt p1, p2, :cond_2

    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/a;->c:Lcom/yanzhenjie/recyclerview/a$a;

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/a;->f()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    neg-int p2, p2

    iput p2, p1, Lcom/yanzhenjie/recyclerview/a$a;->a:I

    :cond_2
    iget-object p0, p0, Lcom/yanzhenjie/recyclerview/a;->c:Lcom/yanzhenjie/recyclerview/a$a;

    return-object p0
.end method

.method public h(IF)Z
    .locals 0

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/a;->f()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    cmpl-float p0, p2, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public j(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/a;->f()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/a;->e()I

    move-result p0

    mul-int/2addr v0, p0

    if-gt p1, v0, :cond_0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public k(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/a;->f()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/a;->e()I

    move-result p0

    mul-int/2addr v0, p0

    if-ge p1, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
