.class public final Lyp2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/div/internal/widget/tabs/b$g$a;


# instance fields
.field public final a:Lcom/yandex/div2/DivTabs$Item;

.field public final b:Landroid/util/DisplayMetrics;

.field public final c:Loj3;


# direct methods
.method public constructor <init>(Lcom/yandex/div2/DivTabs$Item;Landroid/util/DisplayMetrics;Loj3;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "displayMetrics"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyp2;->a:Lcom/yandex/div2/DivTabs$Item;

    iput-object p2, p0, Lyp2;->b:Landroid/util/DisplayMetrics;

    iput-object p3, p0, Lyp2;->c:Loj3;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Integer;
    .locals 7

    iget-object v0, p0, Lyp2;->a:Lcom/yandex/div2/DivTabs$Item;

    iget-object v0, v0, Lcom/yandex/div2/DivTabs$Item;->a:Lcom/yandex/div2/Div;

    invoke-virtual {v0}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object v0

    invoke-interface {v0}, Log2;->getHeight()Lcom/yandex/div2/DivSize;

    move-result-object v1

    instance-of v0, v1, Lcom/yandex/div2/DivSize$b;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lyp2;->b:Landroid/util/DisplayMetrics;

    iget-object v3, p0, Lyp2;->c:Loj3;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->D0(Lcom/yandex/div2/DivSize;Landroid/util/DisplayMetrics;Loj3;Landroid/view/ViewGroup$LayoutParams;ILjava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic b()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lyp2;->d()Lcom/yandex/div2/DivAction;

    move-result-object p0

    return-object p0
.end method

.method public c()Ljava/lang/Integer;
    .locals 7

    iget-object v0, p0, Lyp2;->a:Lcom/yandex/div2/DivTabs$Item;

    iget-object v0, v0, Lcom/yandex/div2/DivTabs$Item;->a:Lcom/yandex/div2/Div;

    invoke-virtual {v0}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object v0

    invoke-interface {v0}, Log2;->getHeight()Lcom/yandex/div2/DivSize;

    move-result-object v1

    iget-object v2, p0, Lyp2;->b:Landroid/util/DisplayMetrics;

    iget-object v3, p0, Lyp2;->c:Loj3;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->D0(Lcom/yandex/div2/DivSize;Landroid/util/DisplayMetrics;Loj3;Landroid/view/ViewGroup$LayoutParams;ILjava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public d()Lcom/yandex/div2/DivAction;
    .locals 0

    iget-object p0, p0, Lyp2;->a:Lcom/yandex/div2/DivTabs$Item;

    iget-object p0, p0, Lcom/yandex/div2/DivTabs$Item;->c:Lcom/yandex/div2/DivAction;

    return-object p0
.end method

.method public e()Lcom/yandex/div2/DivTabs$Item;
    .locals 0

    iget-object p0, p0, Lyp2;->a:Lcom/yandex/div2/DivTabs$Item;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lyp2;->a:Lcom/yandex/div2/DivTabs$Item;

    iget-object v0, v0, Lcom/yandex/div2/DivTabs$Item;->b:Lcom/yandex/div/json/expressions/Expression;

    iget-object p0, p0, Lyp2;->c:Loj3;

    invoke-virtual {v0, p0}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
