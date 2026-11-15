.class public final Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter$b;
.super Lg3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;-><init>(Ljava/util/List;Lcom/yandex/div/core/view2/a;Lrg2;Landroid/util/SparseArray;Lcom/yandex/div/core/view2/DivViewCreator;Lcom/yandex/div/core/state/DivStatePath;ZLcom/yandex/div/core/view2/divs/widgets/DivPagerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter$b;->b:Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;

    invoke-direct {p0}, Lg3;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lzl2;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Lzl2;

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter$b;->f(Lzl2;)Z

    move-result p0

    return p0
.end method

.method public bridge f(Lzl2;)Z
    .locals 0

    invoke-super {p0, p1}, Lr2;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter$b;->k(I)Lzl2;

    move-result-object p0

    return-object p0
.end method

.method public getSize()I
    .locals 1

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter$b;->b:Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;

    invoke-virtual {v0}, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter$b;->b:Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->C()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 1

    instance-of v0, p1, Lzl2;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    check-cast p1, Lzl2;

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter$b;->l(Lzl2;)I

    move-result p0

    return p0
.end method

.method public k(I)Lzl2;
    .locals 3

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter$b;->b:Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;

    invoke-virtual {v0}, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->C()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter$b;->b:Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;->j()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzl2;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter$b;->b:Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;

    invoke-virtual {v0}, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x2

    iget-object p1, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter$b;->b:Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;->j()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    rem-int/2addr v0, p1

    xor-int v1, v0, p1

    neg-int v2, v0

    or-int/2addr v2, v0

    and-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x1f

    and-int/2addr p1, v1

    add-int/2addr v0, p1

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter$b;->b:Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;->j()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzl2;

    return-object p0
.end method

.method public bridge l(Lzl2;)I
    .locals 0

    invoke-super {p0, p1}, Lg3;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    instance-of v0, p1, Lzl2;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    check-cast p1, Lzl2;

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter$b;->m(Lzl2;)I

    move-result p0

    return p0
.end method

.method public bridge m(Lzl2;)I
    .locals 0

    invoke-super {p0, p1}, Lg3;->lastIndexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
