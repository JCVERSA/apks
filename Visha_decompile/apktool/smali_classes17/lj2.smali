.class public Llj2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llj2$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/yandex/div/core/view2/divs/DivActionBinder;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/divs/DivActionBinder;)V
    .locals 1

    const-string v0, "actionBinder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llj2;->a:Lcom/yandex/div/core/view2/divs/DivActionBinder;

    return-void
.end method

.method public static final synthetic a(Llj2;Landroid/view/View;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivBorder;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Llj2;->c(Landroid/view/View;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivBorder;)V

    return-void
.end method

.method public static final synthetic b(Llj2;)Lcom/yandex/div/core/view2/divs/DivActionBinder;
    .locals 0

    iget-object p0, p0, Llj2;->a:Lcom/yandex/div/core/view2/divs/DivActionBinder;

    return-object p0
.end method


# virtual methods
.method public final c(Landroid/view/View;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivBorder;)V
    .locals 1

    instance-of p0, p1, Lvg2;

    if-eqz p0, :cond_0

    move-object p0, p1

    check-cast p0, Lvg2;

    invoke-interface {p0, p2, p3, p1}, Lvg2;->setBorder(Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivBorder;Landroid/view/View;)V

    return-void

    :cond_0
    const/4 p0, 0x0

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p3}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->j0(Lcom/yandex/div2/DivBorder;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p3, Lcom/yandex/div2/DivBorder;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    iget-object p2, p3, Lcom/yandex/div2/DivBorder;->d:Lcom/yandex/div2/DivShadow;

    if-eqz p2, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/yandex/div/R$dimen;->div_shadow_elevation:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setElevation(F)V

    return-void
.end method

.method public d(Landroid/view/View;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivBorder;Lcom/yandex/div2/DivBorder;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p3}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->j0(Lcom/yandex/div2/DivBorder;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p3

    goto :goto_1

    :cond_2
    :goto_0
    move-object v0, p4

    :goto_1
    invoke-virtual {p0, p1, p2, v0}, Llj2;->c(Landroid/view/View;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivBorder;)V

    invoke-virtual {p1}, Landroid/view/View;->getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    instance-of v1, v0, Llj2$a;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast v0, Llj2$a;

    goto :goto_2

    :cond_3
    move-object v0, v2

    :goto_2
    if-nez v0, :cond_4

    invoke-static {p3}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->j0(Lcom/yandex/div2/DivBorder;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    :cond_4
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Llj2$a;->d()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Llj2$a;->b()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_6

    invoke-static {p3}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->j0(Lcom/yandex/div2/DivBorder;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void

    :cond_6
    :goto_3
    new-instance v1, Llj2$a;

    invoke-direct {v1, p0, p2}, Llj2$a;-><init>(Llj2;Lcom/yandex/div/core/view2/a;)V

    invoke-virtual {v1, p3, p4}, Llj2$a;->h(Lcom/yandex/div2/DivBorder;Lcom/yandex/div2/DivBorder;)V

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Llj2$a;->d()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0}, Llj2$a;->b()Ljava/util/List;

    move-result-object p2

    invoke-virtual {v1, p0, p2}, Llj2$a;->g(Ljava/util/List;Ljava/util/List;)V

    :cond_7
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public e(Landroid/view/View;Lcom/yandex/div/core/view2/a;Ljava/util/List;Ljava/util/List;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "target"

    invoke-static {p1, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "context"

    invoke-static {p2, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    move-result-object v3

    instance-of v4, v3, Llj2$a;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    check-cast v3, Llj2$a;

    goto :goto_0

    :cond_0
    move-object v3, v5

    :goto_0
    if-nez v3, :cond_1

    new-array v4, v2, [Ljava/util/List;

    aput-object p3, v4, v1

    aput-object p4, v4, v0

    invoke-static {v4}, Lw71;->a([Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-void

    :cond_1
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Llj2$a;->e()Lcom/yandex/div2/DivBorder;

    move-result-object v4

    if-nez v4, :cond_3

    new-array v2, v2, [Ljava/util/List;

    aput-object p3, v2, v1

    aput-object p4, v2, v0

    invoke-static {v2}, Lw71;->a([Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v5}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void

    :cond_3
    :goto_1
    new-instance v0, Llj2$a;

    invoke-direct {v0, p0, p2}, Llj2$a;-><init>(Llj2;Lcom/yandex/div/core/view2/a;)V

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Llj2$a;->e()Lcom/yandex/div2/DivBorder;

    move-result-object p0

    invoke-virtual {v3}, Llj2$a;->c()Lcom/yandex/div2/DivBorder;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Llj2$a;->h(Lcom/yandex/div2/DivBorder;Lcom/yandex/div2/DivBorder;)V

    :cond_4
    invoke-virtual {v0, p3, p4}, Llj2$a;->g(Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method
