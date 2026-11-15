.class public final Lcom/yandex/mobile/ads/impl/qj;
.super Lcom/yandex/mobile/ads/impl/wg0;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private final o:Lcom/yandex/mobile/ads/impl/gz1;

.field private p:Lcom/yandex/mobile/ads/impl/rb0;

.field private q:Z

.field private r:I

.field private s:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/gz1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;",
            "Lcom/yandex/mobile/ads/impl/o3;",
            "Lcom/yandex/mobile/ads/impl/gz1;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adResponse"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configurationSizeInfo"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/wg0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;)V

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/qj;->o:Lcom/yandex/mobile/ads/impl/gz1;

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/yandex/mobile/ads/impl/qj;->q:Z

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/qj;->n()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p4, p1}, Lcom/yandex/mobile/ads/impl/gz1;->c(Landroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/yandex/mobile/ads/impl/qj;->r:I

    invoke-interface {p4, p1}, Lcom/yandex/mobile/ads/impl/gz1;->a(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/yandex/mobile/ads/impl/qj;->s:I

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/o8;->r()I

    move-result p3

    if-nez p3, :cond_1

    invoke-interface {p4, p1}, Lcom/yandex/mobile/ads/impl/gz1;->c(Landroid/content/Context;)I

    move-result p1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/o8;->r()I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/yandex/mobile/ads/impl/qj;->r:I

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/o8;->c()I

    move-result p1

    iput p1, p0, Lcom/yandex/mobile/ads/impl/qj;->s:I

    :goto_1
    iget p1, p0, Lcom/yandex/mobile/ads/impl/qj;->r:I

    iget p2, p0, Lcom/yandex/mobile/ads/impl/qj;->s:I

    invoke-direct {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/qj;->a(II)Lcom/yandex/mobile/ads/impl/rb0;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/qj;->p:Lcom/yandex/mobile/ads/impl/rb0;

    return-void
.end method

.method private final a(II)Lcom/yandex/mobile/ads/impl/rb0;
    .locals 1

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qj;->o:Lcom/yandex/mobile/ads/impl/gz1;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/gz1;->a()Lcom/yandex/mobile/ads/impl/gz1$a;

    move-result-object p0

    .line 5
    new-instance v0, Lcom/yandex/mobile/ads/impl/rb0;

    invoke-direct {v0, p1, p2, p0}, Lcom/yandex/mobile/ads/impl/rb0;-><init>(IILcom/yandex/mobile/ads/impl/gz1$a;)V

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AddJavascriptInterface"
        }
    .end annotation

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/wg0;->b(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/wg0$a;

    move-result-object p1

    .line 3
    const-string p2, "AdPerformActionsJSI"

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/vk;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final b(ILjava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/wg0;->k()Lcom/yandex/mobile/ads/impl/o8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/o8;->c()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/wg0;->k()Lcom/yandex/mobile/ads/impl/o8;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/o8;->c()I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/yandex/mobile/ads/impl/qj;->s:I

    invoke-super {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/wg0;->b(ILjava/lang/String;)V

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/wg0;->k()Lcom/yandex/mobile/ads/impl/o8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/o8;->U()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    sget v0, Lcom/yandex/mobile/ads/impl/rj2;->c:I

    iget v0, p0, Lcom/yandex/mobile/ads/impl/qj;->r:I

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/rj2;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/qj;->o:Lcom/yandex/mobile/ads/impl/gz1;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "getContext(...)"

    invoke-static {v3, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/yandex/mobile/ads/impl/gz1;->c(Landroid/content/Context;)I

    move-result v2

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/qj;->o:Lcom/yandex/mobile/ads/impl/gz1;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Lcom/yandex/mobile/ads/impl/gz1;->a(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/qj;->n()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v2, v3}, Lcom/yandex/mobile/ads/impl/rj2;->a(II)Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-super {p0}, Lcom/yandex/mobile/ads/impl/wg0;->c()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final h()V
    .locals 10

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/qj;->q:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/yandex/mobile/ads/impl/qj;->r:I

    iget v1, p0, Lcom/yandex/mobile/ads/impl/qj;->s:I

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/qj;->o:Lcom/yandex/mobile/ads/impl/gz1;

    invoke-interface {v2}, Lcom/yandex/mobile/ads/impl/gz1;->a()Lcom/yandex/mobile/ads/impl/gz1$a;

    move-result-object v2

    new-instance v3, Lcom/yandex/mobile/ads/impl/rb0;

    invoke-direct {v3, v0, v1, v2}, Lcom/yandex/mobile/ads/impl/rb0;-><init>(IILcom/yandex/mobile/ads/impl/gz1$a;)V

    iput-object v3, p0, Lcom/yandex/mobile/ads/impl/qj;->p:Lcom/yandex/mobile/ads/impl/rb0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/wg0;->j()Lcom/yandex/mobile/ads/impl/dh0;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "getContext(...)"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/qj;->p:Lcom/yandex/mobile/ads/impl/rb0;

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/qj;->o:Lcom/yandex/mobile/ads/impl/gz1;

    invoke-static {v2, v3, v4}, Lcom/yandex/mobile/ads/impl/qa;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/gz1;Lcom/yandex/mobile/ads/impl/gz1;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/wg0;->k()Lcom/yandex/mobile/ads/impl/o8;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/o8;->N()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/qj;->o:Lcom/yandex/mobile/ads/impl/gz1;

    invoke-static {v2}, Ly45;->g(Ljava/lang/Object;)V

    invoke-interface {v3, v2}, Lcom/yandex/mobile/ads/impl/gz1;->c(Landroid/content/Context;)I

    move-result v4

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/qj;->o:Lcom/yandex/mobile/ads/impl/gz1;

    invoke-interface {v3, v2}, Lcom/yandex/mobile/ads/impl/gz1;->a(Landroid/content/Context;)I

    move-result v5

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/qj;->p:Lcom/yandex/mobile/ads/impl/rb0;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/rb0;->getWidth()I

    move-result v6

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/qj;->p:Lcom/yandex/mobile/ads/impl/rb0;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/rb0;->getHeight()I

    move-result v7

    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/wh2;->c(Landroid/content/Context;)I

    move-result v8

    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/wh2;->b(Landroid/content/Context;)I

    move-result v9

    invoke-static/range {v4 .. v9}, Lcom/yandex/mobile/ads/impl/w7;->a(IIIIII)Lcom/yandex/mobile/ads/impl/w3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/w3;->d()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/yandex/mobile/ads/impl/hp0;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Lcom/yandex/mobile/ads/impl/dh0;->a(Lcom/yandex/mobile/ads/impl/w3;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/wg0;->l()Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Lcom/yandex/mobile/ads/impl/dh0;->a(Lcom/yandex/mobile/ads/impl/yf1;Ljava/util/Map;)V

    :cond_2
    :goto_1
    iput-boolean v1, p0, Lcom/yandex/mobile/ads/impl/qj;->q:Z

    :cond_3
    return-void
.end method

.method public final n()Z
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/wg0;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/wg0;->k()Lcom/yandex/mobile/ads/impl/o8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/o8;->r()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/wg0;->k()Lcom/yandex/mobile/ads/impl/o8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/o8;->c()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/qj;->o:Lcom/yandex/mobile/ads/impl/gz1;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/yandex/mobile/ads/impl/gz1;->c(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/qj;->o:Lcom/yandex/mobile/ads/impl/gz1;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p0}, Lcom/yandex/mobile/ads/impl/gz1;->a(Landroid/content/Context;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final o()Lcom/yandex/mobile/ads/impl/gz1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qj;->p:Lcom/yandex/mobile/ads/impl/rb0;

    return-object p0
.end method

.method public final setBannerHeight(I)V
    .locals 0

    iput p1, p0, Lcom/yandex/mobile/ads/impl/qj;->s:I

    return-void
.end method

.method public final setBannerWidth(I)V
    .locals 0

    iput p1, p0, Lcom/yandex/mobile/ads/impl/qj;->r:I

    return-void
.end method
