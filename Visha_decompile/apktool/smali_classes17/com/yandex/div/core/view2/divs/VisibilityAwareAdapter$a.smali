.class public final Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter$a;
.super Lg3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;-><init>(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter$a;->b:Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;

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

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter$a;->f(Lzl2;)Z

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

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter$a;->k(I)Lzl2;

    move-result-object p0

    return-object p0
.end method

.method public getSize()I
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter$a;->b:Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;

    invoke-static {p0}, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;->b(Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 1

    instance-of v0, p1, Lzl2;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    check-cast p1, Lzl2;

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter$a;->l(Lzl2;)I

    move-result p0

    return p0
.end method

.method public k(I)Lzl2;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter$a;->b:Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;

    invoke-static {p0}, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;->b(Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmz4;

    invoke-virtual {p0}, Lmz4;->d()Ljava/lang/Object;

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

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter$a;->m(Lzl2;)I

    move-result p0

    return p0
.end method

.method public bridge m(Lzl2;)I
    .locals 0

    invoke-super {p0, p1}, Lg3;->lastIndexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
