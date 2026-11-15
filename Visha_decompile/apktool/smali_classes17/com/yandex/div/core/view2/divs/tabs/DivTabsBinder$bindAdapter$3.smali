.class final Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$bindAdapter$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;->u(Lcom/yandex/div/core/state/DivStatePath;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;Lcom/yandex/div2/DivTabs;Lcom/yandex/div2/DivTabs;Lrg2;Lqj3;)V
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
        "\u0000\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "",
        "dynamicHeight",
        "Lzfb;",
        "invoke",
        "(Z)V",
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
.field final synthetic $bindingContext:Lcom/yandex/div/core/view2/a;

.field final synthetic $div:Lcom/yandex/div2/DivTabs;

.field final synthetic $divBinder:Lrg2;

.field final synthetic $list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lyp2;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $path:Lcom/yandex/div/core/state/DivStatePath;

.field final synthetic $resolver:Loj3;

.field final synthetic $view:Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;

.field final synthetic this$0:Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;Lcom/yandex/div2/DivTabs;Loj3;Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;Lcom/yandex/div/core/view2/a;Lrg2;Lcom/yandex/div/core/state/DivStatePath;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;",
            "Lcom/yandex/div2/DivTabs;",
            "Loj3;",
            "Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;",
            "Lcom/yandex/div/core/view2/a;",
            "Lrg2;",
            "Lcom/yandex/div/core/state/DivStatePath;",
            "Ljava/util/List<",
            "Lyp2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$bindAdapter$3;->$view:Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$bindAdapter$3;->$div:Lcom/yandex/div2/DivTabs;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$bindAdapter$3;->$resolver:Loj3;

    iput-object p4, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$bindAdapter$3;->this$0:Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;

    iput-object p5, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$bindAdapter$3;->$bindingContext:Lcom/yandex/div/core/view2/a;

    iput-object p6, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$bindAdapter$3;->$divBinder:Lrg2;

    iput-object p7, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$bindAdapter$3;->$path:Lcom/yandex/div/core/state/DivStatePath;

    iput-object p8, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$bindAdapter$3;->$list:Ljava/util/List;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$bindAdapter$3;->invoke(Z)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke(Z)V
    .locals 14

    .line 2
    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$bindAdapter$3;->$view:Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/tabs/TabsLayout;->getDivTabsAdapter()Lpr2;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lpr2;->H()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$bindAdapter$3;->this$0:Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;

    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$bindAdapter$3;->$bindingContext:Lcom/yandex/div/core/view2/a;

    iget-object v3, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$bindAdapter$3;->$div:Lcom/yandex/div2/DivTabs;

    iget-object v4, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$bindAdapter$3;->$view:Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;

    iget-object v5, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$bindAdapter$3;->$divBinder:Lrg2;

    iget-object v6, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$bindAdapter$3;->$path:Lcom/yandex/div/core/state/DivStatePath;

    iget-object v7, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$bindAdapter$3;->$list:Ljava/util/List;

    .line 4
    invoke-virtual {v4}, Lcom/yandex/div/internal/widget/tabs/TabsLayout;->getDivTabsAdapter()Lpr2;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lpr2;->G()Lwv7;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lwv7;->a()I

    move-result p0

    :goto_0
    move v8, p0

    goto :goto_2

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$bindAdapter$3;->$div:Lcom/yandex/div2/DivTabs;

    iget-object p1, p1, Lcom/yandex/div2/DivTabs;->y:Lcom/yandex/div/json/expressions/Expression;

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$bindAdapter$3;->$resolver:Loj3;

    invoke-virtual {p1, p0}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    const/16 v0, 0x1f

    shr-long v8, p0, v0

    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-eqz v0, :cond_5

    const-wide/16 v12, -0x1

    cmp-long v0, v8, v12

    if-nez v0, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    sget-object v0, Lae5;->a:Lae5;

    .line 7
    invoke-static {}, Lxi;->o()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable convert \'"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "\' to Int"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v0}, Lxi;->i(Ljava/lang/String;)V

    :cond_3
    cmp-long p0, p0, v10

    if-lez p0, :cond_4

    const p0, 0x7fffffff

    goto :goto_0

    :cond_4
    const/high16 p0, -0x80000000

    goto :goto_0

    :cond_5
    :goto_1
    long-to-int p0, p0

    goto :goto_0

    .line 10
    :goto_2
    invoke-static/range {v1 .. v8}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;->m(Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivTabs;Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;Lrg2;Lcom/yandex/div/core/state/DivStatePath;Ljava/util/List;I)V

    return-void
.end method
