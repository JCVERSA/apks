.class public final Lcom/yandex/mobile/ads/impl/x10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/div/core/a;


# instance fields
.field private final a:[Lcom/yandex/div/core/a;


# direct methods
.method public varargs constructor <init>([Lcom/yandex/div/core/a;)V
    .locals 1

    const-string v0, "divCustomViewAdapters"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/x10;->a:[Lcom/yandex/div/core/a;

    return-void
.end method


# virtual methods
.method public final bindView(Landroid/view/View;Lcom/yandex/div2/DivCustom;Lcom/yandex/div/core/view2/Div2View;Loj3;Lcom/yandex/div/core/state/DivStatePath;)V
    .locals 0

    const-string p0, "view"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "div"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "divView"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "expressionResolver"

    invoke-static {p4, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "path"

    invoke-static {p5, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final createView(Lcom/yandex/div2/DivCustom;Lcom/yandex/div/core/view2/Div2View;Loj3;Lcom/yandex/div/core/state/DivStatePath;)Landroid/view/View;
    .locals 4

    const-string v0, "div"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divView"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expressionResolver"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/x10;->a:[Lcom/yandex/div/core/a;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    iget-object v3, p1, Lcom/yandex/div2/DivCustom;->j:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/yandex/div/core/a;->isCustomTypeSupported(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/yandex/div/core/a;->createView(Lcom/yandex/div2/DivCustom;Lcom/yandex/div/core/view2/Div2View;Loj3;Lcom/yandex/div/core/state/DivStatePath;)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    new-instance p0, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    :goto_2
    return-object p0
.end method

.method public final isCustomTypeSupported(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "type"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/x10;->a:[Lcom/yandex/div/core/a;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-interface {v3, p1}, Lcom/yandex/div/core/a;->isCustomTypeSupported(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public bridge synthetic preload(Lcom/yandex/div2/DivCustom;Lcom/yandex/div/core/DivPreloader$a;)Lcom/yandex/div/core/DivPreloader$d;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/yandex/div/core/a;->preload(Lcom/yandex/div2/DivCustom;Lcom/yandex/div/core/DivPreloader$a;)Lcom/yandex/div/core/DivPreloader$d;

    move-result-object p0

    return-object p0
.end method

.method public final release(Landroid/view/View;Lcom/yandex/div2/DivCustom;)V
    .locals 0

    const-string p0, "view"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "div"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
