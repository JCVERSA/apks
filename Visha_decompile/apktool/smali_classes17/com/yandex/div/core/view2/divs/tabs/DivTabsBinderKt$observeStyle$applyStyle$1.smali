.class final Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinderKt$observeStyle$applyStyle$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinderKt;->g(Lcom/yandex/div/internal/widget/tabs/TabView;Lcom/yandex/div2/DivTabs$TabTitleStyle;Loj3;Lqj3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Le74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0005\u001a\u00020\u00022\u0008\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "",
        "<anonymous parameter 0>",
        "Lzfb;",
        "invoke",
        "(Ljava/lang/Object;)V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $resolver:Loj3;

.field final synthetic $style:Lcom/yandex/div2/DivTabs$TabTitleStyle;

.field final synthetic $this_observeStyle:Lcom/yandex/div/internal/widget/tabs/TabView;


# direct methods
.method public constructor <init>(Lcom/yandex/div2/DivTabs$TabTitleStyle;Loj3;Lcom/yandex/div/internal/widget/tabs/TabView;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinderKt$observeStyle$applyStyle$1;->$style:Lcom/yandex/div2/DivTabs$TabTitleStyle;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinderKt$observeStyle$applyStyle$1;->$resolver:Loj3;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinderKt$observeStyle$applyStyle$1;->$this_observeStyle:Lcom/yandex/div/internal/widget/tabs/TabView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinderKt$observeStyle$applyStyle$1;->invoke(Ljava/lang/Object;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 8

    .line 2
    iget-object p1, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinderKt$observeStyle$applyStyle$1;->$style:Lcom/yandex/div2/DivTabs$TabTitleStyle;

    iget-object p1, p1, Lcom/yandex/div2/DivTabs$TabTitleStyle;->j:Lcom/yandex/div/json/expressions/Expression;

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinderKt$observeStyle$applyStyle$1;->$resolver:Loj3;

    invoke-virtual {p1, v0}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const/16 p1, 0x1f

    shr-long v2, v0, p1

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-eqz p1, :cond_3

    const-wide/16 v6, -0x1

    cmp-long p1, v2, v6

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, Lae5;->a:Lae5;

    .line 4
    invoke-static {}, Lxi;->o()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable convert \'"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\' to Int"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lxi;->i(Ljava/lang/String;)V

    :cond_1
    cmp-long p1, v0, v4

    if-lez p1, :cond_2

    const p1, 0x7fffffff

    goto :goto_1

    :cond_2
    const/high16 p1, -0x80000000

    goto :goto_1

    :cond_3
    :goto_0
    long-to-int p1, v0

    .line 7
    :goto_1
    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinderKt$observeStyle$applyStyle$1;->$this_observeStyle:Lcom/yandex/div/internal/widget/tabs/TabView;

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinderKt$observeStyle$applyStyle$1;->$style:Lcom/yandex/div2/DivTabs$TabTitleStyle;

    iget-object v1, v1, Lcom/yandex/div2/DivTabs$TabTitleStyle;->k:Lcom/yandex/div/json/expressions/Expression;

    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinderKt$observeStyle$applyStyle$1;->$resolver:Loj3;

    invoke-virtual {v1, v2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivSizeUnit;

    invoke-static {v0, p1, v1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->k(Landroid/widget/TextView;ILcom/yandex/div2/DivSizeUnit;)V

    .line 8
    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinderKt$observeStyle$applyStyle$1;->$this_observeStyle:Lcom/yandex/div/internal/widget/tabs/TabView;

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinderKt$observeStyle$applyStyle$1;->$style:Lcom/yandex/div2/DivTabs$TabTitleStyle;

    iget-object v1, v1, Lcom/yandex/div2/DivTabs$TabTitleStyle;->r:Lcom/yandex/div/json/expressions/Expression;

    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinderKt$observeStyle$applyStyle$1;->$resolver:Loj3;

    invoke-virtual {v1, v2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-static {v0, v1, v2, p1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->p(Landroid/widget/TextView;DI)V

    .line 9
    iget-object p1, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinderKt$observeStyle$applyStyle$1;->$this_observeStyle:Lcom/yandex/div/internal/widget/tabs/TabView;

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinderKt$observeStyle$applyStyle$1;->$style:Lcom/yandex/div2/DivTabs$TabTitleStyle;

    iget-object v0, v0, Lcom/yandex/div2/DivTabs$TabTitleStyle;->s:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinderKt$observeStyle$applyStyle$1;->$resolver:Loj3;

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinderKt$observeStyle$applyStyle$1;->$style:Lcom/yandex/div2/DivTabs$TabTitleStyle;

    iget-object v1, v1, Lcom/yandex/div2/DivTabs$TabTitleStyle;->k:Lcom/yandex/div/json/expressions/Expression;

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinderKt$observeStyle$applyStyle$1;->$resolver:Loj3;

    invoke-virtual {v1, p0}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivSizeUnit;

    invoke-static {p1, v0, p0}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->q(Landroid/widget/TextView;Ljava/lang/Long;Lcom/yandex/div2/DivSizeUnit;)V

    return-void
.end method
