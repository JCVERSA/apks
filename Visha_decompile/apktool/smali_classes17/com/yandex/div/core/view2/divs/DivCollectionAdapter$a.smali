.class public final Lcom/yandex/div/core/view2/divs/DivCollectionAdapter$a;
.super Landroidx/recyclerview/widget/DiffUtil$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/core/view2/divs/DivCollectionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1

    const-string v0, "oldItems"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItems"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/DivCollectionAdapter$a;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/DivCollectionAdapter$a;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lzl2;Lzl2;)Z
    .locals 4

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/yandex/div/core/view2/divs/DivCollectionAdapter$a;->b(Lzl2;Z)V

    invoke-virtual {p0, p2, v0}, Lcom/yandex/div/core/view2/divs/DivCollectionAdapter$a;->b(Lzl2;Z)V

    invoke-virtual {p1}, Lzl2;->c()Lcom/yandex/div2/Div;

    move-result-object v0

    invoke-virtual {p2}, Lzl2;->c()Lcom/yandex/div2/Div;

    move-result-object v1

    invoke-virtual {p1}, Lzl2;->d()Loj3;

    move-result-object v2

    invoke-virtual {p2}, Lzl2;->d()Loj3;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/yandex/div2/Div;->a(Lcom/yandex/div2/Div;Loj3;Loj3;)Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/yandex/div/core/view2/divs/DivCollectionAdapter$a;->b(Lzl2;Z)V

    invoke-virtual {p0, p2, v1}, Lcom/yandex/div/core/view2/divs/DivCollectionAdapter$a;->b(Lzl2;Z)V

    return v0

    :cond_1
    :goto_0
    invoke-static {p1, p2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public areContentsTheSame(II)Z
    .locals 1

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivCollectionAdapter$a;->a:Ljava/util/List;

    invoke-static {v0, p1}, Li81;->r0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzl2;

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivCollectionAdapter$a;->b:Ljava/util/List;

    invoke-static {v0, p2}, Li81;->r0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lzl2;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/view2/divs/DivCollectionAdapter$a;->a(Lzl2;Lzl2;)Z

    move-result p0

    return p0
.end method

.method public areItemsTheSame(II)Z
    .locals 3

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivCollectionAdapter$a;->a:Ljava/util/List;

    invoke-static {v0, p1}, Li81;->r0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzl2;

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivCollectionAdapter$a;->b:Ljava/util/List;

    invoke-static {v0, p2}, Li81;->r0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lzl2;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lzl2;->c()Lcom/yandex/div2/Div;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Log2;->f()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lzl2;->d()Loj3;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lzl2;->c()Lcom/yandex/div2/Div;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Log2;->f()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Lzl2;->d()Loj3;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_1
    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/view2/divs/DivCollectionAdapter$a;->a(Lzl2;Lzl2;)Z

    move-result p0

    goto :goto_2

    :cond_3
    :goto_1
    invoke-static {v1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    :goto_2
    return p0
.end method

.method public final b(Lzl2;Z)V
    .locals 0

    invoke-virtual {p1}, Lzl2;->d()Loj3;

    move-result-object p0

    instance-of p1, p0, Lcom/yandex/div/core/expression/ExpressionResolverImpl;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/yandex/div/core/expression/ExpressionResolverImpl;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p2}, Lcom/yandex/div/core/expression/ExpressionResolverImpl;->n(Z)V

    :goto_1
    return-void
.end method

.method public getNewListSize()I
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivCollectionAdapter$a;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getOldListSize()I
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivCollectionAdapter$a;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
