.class public Lcom/yandex/div/internal/widget/tabs/e;
.super Lcom/yandex/div/internal/widget/tabs/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/yandex/div/internal/widget/tabs/d$b;Lcom/yandex/div/internal/widget/tabs/d$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/div/internal/widget/tabs/a;-><init>(Landroid/view/ViewGroup;Lcom/yandex/div/internal/widget/tabs/d$b;Lcom/yandex/div/internal/widget/tabs/d$a;)V

    return-void
.end method


# virtual methods
.method public c(IF)Z
    .locals 2

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/tabs/a;->g()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    if-eqz p1, :cond_0

    if-ne p1, v1, :cond_1

    const/4 p1, 0x0

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/tabs/e;->j()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public f(Lcom/yandex/div/internal/widget/tabs/f;IF)I
    .locals 0

    if-lez p2, :cond_0

    invoke-virtual {p1}, Lcom/yandex/div/internal/widget/tabs/f;->b()I

    move-result p0

    return p0

    :cond_0
    const p0, 0x3c23d70a    # 0.01f

    cmpg-float p0, p3, p0

    if-gez p0, :cond_1

    invoke-virtual {p1}, Lcom/yandex/div/internal/widget/tabs/f;->a()I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p1}, Lcom/yandex/div/internal/widget/tabs/f;->a()I

    move-result p0

    invoke-virtual {p1}, Lcom/yandex/div/internal/widget/tabs/f;->b()I

    move-result p1

    int-to-float p2, p0

    sub-int/2addr p1, p0

    int-to-float p0, p1

    mul-float/2addr p0, p3

    add-float/2addr p2, p0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public final j()Z
    .locals 3

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lxi;->h(Z)V

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/a;->d:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div/internal/widget/tabs/f;

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/tabs/f;->a()I

    move-result v0

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/tabs/f;->b()I

    move-result p0

    if-eq v0, p0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method
