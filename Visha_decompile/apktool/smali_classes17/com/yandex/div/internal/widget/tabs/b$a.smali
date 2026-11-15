.class public Lcom/yandex/div/internal/widget/tabs/b$a;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/internal/widget/tabs/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public f:Landroid/util/SparseArray;

.field public final synthetic g:Lcom/yandex/div/internal/widget/tabs/b;


# direct methods
.method public constructor <init>(Lcom/yandex/div/internal/widget/tabs/b;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/internal/widget/tabs/b$a;->g:Lcom/yandex/div/internal/widget/tabs/b;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/b$a;->g:Lcom/yandex/div/internal/widget/tabs/b;

    iget-object v0, v0, Lcom/yandex/div/internal/widget/tabs/b;->e:Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;

    invoke-static {v0}, Lpdc;->f(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/tabs/b$a;->getCount()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 p2, v0, -0x1

    :cond_0
    check-cast p3, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/b$a;->g:Lcom/yandex/div/internal/widget/tabs/b;

    invoke-static {v0}, Lcom/yandex/div/internal/widget/tabs/b;->n(Lcom/yandex/div/internal/widget/tabs/b;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div/internal/widget/tabs/b$e;

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/tabs/b$e;->c()V

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/b$a;->g:Lcom/yandex/div/internal/widget/tabs/b;

    invoke-static {p0}, Lcom/yandex/div/internal/widget/tabs/b;->d(Lcom/yandex/div/internal/widget/tabs/b;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "destroyItem pos "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "BaseDivTabbedCardUi"

    invoke-static {p2, p0}, Lpp5;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/b$a;->g:Lcom/yandex/div/internal/widget/tabs/b;

    invoke-static {v0}, Lcom/yandex/div/internal/widget/tabs/b;->c(Lcom/yandex/div/internal/widget/tabs/b;)Lcom/yandex/div/internal/widget/tabs/b$g;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/b$a;->g:Lcom/yandex/div/internal/widget/tabs/b;

    invoke-static {p0}, Lcom/yandex/div/internal/widget/tabs/b;->c(Lcom/yandex/div/internal/widget/tabs/b;)Lcom/yandex/div/internal/widget/tabs/b$g;

    move-result-object p0

    invoke-interface {p0}, Lcom/yandex/div/internal/widget/tabs/b$g;->a()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    const/4 p0, -0x2

    return p0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/b$a;->g:Lcom/yandex/div/internal/widget/tabs/b;

    iget-object v0, v0, Lcom/yandex/div/internal/widget/tabs/b;->e:Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;

    invoke-static {v0}, Lpdc;->f(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/tabs/b$a;->getCount()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 p2, v0, -0x1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "instantiateItem pos "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseDivTabbedCardUi"

    invoke-static {v1, v0}, Lpp5;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/b$a;->g:Lcom/yandex/div/internal/widget/tabs/b;

    invoke-static {v0}, Lcom/yandex/div/internal/widget/tabs/b;->d(Lcom/yandex/div/internal/widget/tabs/b;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div/internal/widget/tabs/b$e;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/yandex/div/internal/widget/tabs/b$e;->a(Lcom/yandex/div/internal/widget/tabs/b$e;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-static {v0}, Lcom/yandex/div/internal/widget/tabs/b$e;->a(Lcom/yandex/div/internal/widget/tabs/b$e;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-static {v2}, Lxi;->d(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/b$a;->g:Lcom/yandex/div/internal/widget/tabs/b;

    invoke-static {v0}, Lcom/yandex/div/internal/widget/tabs/b;->m(Lcom/yandex/div/internal/widget/tabs/b;)Lcdc;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/div/internal/widget/tabs/b$a;->g:Lcom/yandex/div/internal/widget/tabs/b;

    invoke-static {v1}, Lcom/yandex/div/internal/widget/tabs/b;->l(Lcom/yandex/div/internal/widget/tabs/b;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcdc;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/b$a;->g:Lcom/yandex/div/internal/widget/tabs/b;

    invoke-static {v0}, Lcom/yandex/div/internal/widget/tabs/b;->c(Lcom/yandex/div/internal/widget/tabs/b;)Lcom/yandex/div/internal/widget/tabs/b$g;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/div/internal/widget/tabs/b$g;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/yandex/div/internal/widget/tabs/b$g$a;

    new-instance v7, Lcom/yandex/div/internal/widget/tabs/b$e;

    iget-object v1, p0, Lcom/yandex/div/internal/widget/tabs/b$a;->g:Lcom/yandex/div/internal/widget/tabs/b;

    const/4 v5, 0x0

    move-object v0, v7

    move-object v2, v6

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/yandex/div/internal/widget/tabs/b$e;-><init>(Lcom/yandex/div/internal/widget/tabs/b;Landroid/view/ViewGroup;Lcom/yandex/div/internal/widget/tabs/b$g$a;ILcom/yandex/div/internal/widget/tabs/b$a;)V

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/b$a;->g:Lcom/yandex/div/internal/widget/tabs/b;

    invoke-static {v0}, Lcom/yandex/div/internal/widget/tabs/b;->d(Lcom/yandex/div/internal/widget/tabs/b;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v6

    move-object v0, v7

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/yandex/div/internal/widget/tabs/b$a;->g:Lcom/yandex/div/internal/widget/tabs/b;

    invoke-static {p1}, Lcom/yandex/div/internal/widget/tabs/b;->n(Lcom/yandex/div/internal/widget/tabs/b;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/yandex/div/internal/widget/tabs/b$a;->g:Lcom/yandex/div/internal/widget/tabs/b;

    iget-object p1, p1, Lcom/yandex/div/internal/widget/tabs/b;->e:Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;

    invoke-virtual {p1}, Lcom/yandex/div/internal/widget/tabs/RtlViewPager;->getCurrentItem()I

    move-result p1

    if-ne p2, p1, :cond_2

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/tabs/b$e;->b()V

    :cond_2
    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/b$a;->f:Landroid/util/SparseArray;

    if-eqz p0, :cond_3

    invoke-virtual {v1, p0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_3
    return-object v1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p2, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0

    instance-of p2, p1, Landroid/os/Bundle;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/yandex/div/internal/widget/tabs/b$a;->f:Landroid/util/SparseArray;

    return-void

    :cond_0
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string p2, "div_tabs_child_states"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/div/internal/widget/tabs/b$a;->f:Landroid/util/SparseArray;

    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 2

    new-instance v0, Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/yandex/div/internal/widget/tabs/b$a;->g:Lcom/yandex/div/internal/widget/tabs/b;

    invoke-static {v1}, Lcom/yandex/div/internal/widget/tabs/b;->n(Lcom/yandex/div/internal/widget/tabs/b;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/b$a;->g:Lcom/yandex/div/internal/widget/tabs/b;

    invoke-static {p0}, Lcom/yandex/div/internal/widget/tabs/b;->n(Lcom/yandex/div/internal/widget/tabs/b;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "div_tabs_child_states"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    return-object p0
.end method
