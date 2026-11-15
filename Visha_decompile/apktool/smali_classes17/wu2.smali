.class public abstract Lwu2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/yandex/div/core/view2/divs/DivBaseBinder;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/divs/DivBaseBinder;)V
    .locals 1

    const-string v0, "baseBinder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwu2;->a:Lcom/yandex/div/core/view2/divs/DivBaseBinder;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lcom/yandex/div/core/view2/a;Log2;Log2;)V
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "bindingContext"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "div"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public b(Landroid/view/View;Lcom/yandex/div/core/view2/a;Log2;Log2;Lcom/yandex/div/core/state/DivStatePath;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bindingContext"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "div"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lwu2;->a(Landroid/view/View;Lcom/yandex/div/core/view2/a;Log2;Log2;)V

    return-void
.end method

.method public c(Lcom/yandex/div/core/view2/a;Landroid/view/View;Lcom/yandex/div2/Div;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "div"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lwu2;->e(Lcom/yandex/div/core/view2/a;Landroid/view/View;Lcom/yandex/div2/Div;Lcom/yandex/div/core/state/DivStatePath;)V

    return-void
.end method

.method public d(Lcom/yandex/div/core/view2/a;Landroid/view/View;Lcom/yandex/div2/Div;Lcom/yandex/div/core/state/DivStatePath;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "div"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lwu2;->e(Lcom/yandex/div/core/view2/a;Landroid/view/View;Lcom/yandex/div2/Div;Lcom/yandex/div/core/state/DivStatePath;)V

    return-void
.end method

.method public final e(Lcom/yandex/div/core/view2/a;Landroid/view/View;Lcom/yandex/div2/Div;Lcom/yandex/div/core/state/DivStatePath;)V
    .locals 8

    const-string v0, "null cannot be cast to non-null type com.yandex.div.core.view2.divs.widgets.DivHolderView<TData of com.yandex.div.core.view2.DivViewBinder>"

    invoke-static {p2, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p2

    check-cast v0, Lmk2;

    invoke-interface {v0}, Lmk2;->getDiv()Lcom/yandex/div2/Div;

    move-result-object v0

    if-ne p3, v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lwu2;->a:Lcom/yandex/div/core/view2/divs/DivBaseBinder;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->N(Lcom/yandex/div/core/view2/a;Landroid/view/View;Lcom/yandex/div2/Div;Lcom/yandex/div2/Div;)V

    const/4 v1, 0x0

    if-eqz p4, :cond_2

    invoke-virtual {p3}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object v5

    const-string v2, "null cannot be cast to non-null type TDataValue of com.yandex.div.core.view2.DivViewBinder.bindViewInternal$lambda$0"

    invoke-static {v5, v2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object v2

    move-object v6, v2

    goto :goto_0

    :cond_1
    move-object v6, v1

    :goto_0
    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lwu2;->b(Landroid/view/View;Lcom/yandex/div/core/view2/a;Log2;Log2;Lcom/yandex/div/core/state/DivStatePath;)V

    sget-object p4, Lzfb;->a:Lzfb;

    goto :goto_1

    :cond_2
    move-object p4, v1

    :goto_1
    if-nez p4, :cond_4

    invoke-virtual {p3}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object p3

    const-string p4, "null cannot be cast to non-null type TDataValue of com.yandex.div.core.view2.DivViewBinder"

    invoke-static {p3, p4}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object v1

    :cond_3
    invoke-virtual {p0, p2, p1, p3, v1}, Lwu2;->a(Landroid/view/View;Lcom/yandex/div/core/view2/a;Log2;Log2;)V

    :cond_4
    return-void
.end method
