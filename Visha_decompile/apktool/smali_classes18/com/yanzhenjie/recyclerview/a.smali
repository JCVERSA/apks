.class public abstract Lcom/yanzhenjie/recyclerview/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yanzhenjie/recyclerview/a$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:Landroid/view/View;

.field public c:Lcom/yanzhenjie/recyclerview/a$a;


# direct methods
.method public constructor <init>(ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/yanzhenjie/recyclerview/a;->a:I

    iput-object p2, p0, Lcom/yanzhenjie/recyclerview/a;->b:Landroid/view/View;

    new-instance p1, Lcom/yanzhenjie/recyclerview/a$a;

    invoke-direct {p1}, Lcom/yanzhenjie/recyclerview/a$a;-><init>()V

    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/a;->c:Lcom/yanzhenjie/recyclerview/a$a;

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/widget/OverScroller;II)V
.end method

.method public abstract b(Landroid/widget/OverScroller;II)V
.end method

.method public c()Z
    .locals 2

    iget-object p0, p0, Lcom/yanzhenjie/recyclerview/a;->b:Landroid/view/View;

    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    if-lez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public abstract d(II)Lcom/yanzhenjie/recyclerview/a$a;
.end method

.method public e()I
    .locals 0

    iget p0, p0, Lcom/yanzhenjie/recyclerview/a;->a:I

    return p0
.end method

.method public f()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/yanzhenjie/recyclerview/a;->b:Landroid/view/View;

    return-object p0
.end method

.method public g()I
    .locals 0

    iget-object p0, p0, Lcom/yanzhenjie/recyclerview/a;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    return p0
.end method

.method public abstract h(IF)Z
.end method

.method public i(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/a;->f()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/a;->e()I

    move-result p0

    mul-int/2addr v0, p0

    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
