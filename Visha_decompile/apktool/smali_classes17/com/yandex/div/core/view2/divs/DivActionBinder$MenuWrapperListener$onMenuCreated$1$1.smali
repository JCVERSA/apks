.class final Lcom/yandex/div/core/view2/divs/DivActionBinder$MenuWrapperListener$onMenuCreated$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/DivActionBinder$MenuWrapperListener;->a(Landroidx/appcompat/widget/PopupMenu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lc74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lzfb;",
        "invoke",
        "()V",
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
.field final synthetic $actionsHandled:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $divView:Lcom/yandex/div/core/view2/Div2View;

.field final synthetic $expressionResolver:Loj3;

.field final synthetic $itemData:Lcom/yandex/div2/DivAction$MenuItem;

.field final synthetic $itemPosition:I

.field final synthetic this$0:Lcom/yandex/div/core/view2/divs/DivActionBinder;


# direct methods
.method public constructor <init>(Lcom/yandex/div2/DivAction$MenuItem;Loj3;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/yandex/div/core/view2/divs/DivActionBinder;Lcom/yandex/div/core/view2/Div2View;I)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder$MenuWrapperListener$onMenuCreated$1$1;->$itemData:Lcom/yandex/div2/DivAction$MenuItem;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder$MenuWrapperListener$onMenuCreated$1$1;->$expressionResolver:Loj3;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder$MenuWrapperListener$onMenuCreated$1$1;->$actionsHandled:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p4, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder$MenuWrapperListener$onMenuCreated$1$1;->this$0:Lcom/yandex/div/core/view2/divs/DivActionBinder;

    iput-object p5, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder$MenuWrapperListener$onMenuCreated$1$1;->$divView:Lcom/yandex/div/core/view2/Div2View;

    iput p6, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder$MenuWrapperListener$onMenuCreated$1$1;->$itemPosition:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/DivActionBinder$MenuWrapperListener$onMenuCreated$1$1;->invoke()V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke()V
    .locals 17

    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/yandex/div/core/view2/divs/DivActionBinder$MenuWrapperListener$onMenuCreated$1$1;->$itemData:Lcom/yandex/div2/DivAction$MenuItem;

    iget-object v1, v1, Lcom/yandex/div2/DivAction$MenuItem;->b:Ljava/util/List;

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v1, v3

    :cond_1
    if-nez v1, :cond_2

    .line 3
    iget-object v1, v0, Lcom/yandex/div/core/view2/divs/DivActionBinder$MenuWrapperListener$onMenuCreated$1$1;->$itemData:Lcom/yandex/div2/DivAction$MenuItem;

    iget-object v1, v1, Lcom/yandex/div2/DivAction$MenuItem;->a:Lcom/yandex/div2/DivAction;

    if-eqz v1, :cond_3

    invoke-static {v1}, Lx71;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto :goto_0

    :cond_2
    move-object v3, v1

    .line 4
    :cond_3
    :goto_0
    move-object v1, v3

    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    .line 5
    :cond_4
    iget-object v1, v0, Lcom/yandex/div/core/view2/divs/DivActionBinder$MenuWrapperListener$onMenuCreated$1$1;->$expressionResolver:Loj3;

    invoke-static {v3, v1}, Lme2;->d(Ljava/util/List;Loj3;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    iget-object v11, v0, Lcom/yandex/div/core/view2/divs/DivActionBinder$MenuWrapperListener$onMenuCreated$1$1;->this$0:Lcom/yandex/div/core/view2/divs/DivActionBinder;

    iget-object v12, v0, Lcom/yandex/div/core/view2/divs/DivActionBinder$MenuWrapperListener$onMenuCreated$1$1;->$divView:Lcom/yandex/div/core/view2/Div2View;

    iget-object v13, v0, Lcom/yandex/div/core/view2/divs/DivActionBinder$MenuWrapperListener$onMenuCreated$1$1;->$expressionResolver:Loj3;

    iget v14, v0, Lcom/yandex/div/core/view2/divs/DivActionBinder$MenuWrapperListener$onMenuCreated$1$1;->$itemPosition:I

    iget-object v15, v0, Lcom/yandex/div/core/view2/divs/DivActionBinder$MenuWrapperListener$onMenuCreated$1$1;->$itemData:Lcom/yandex/div2/DivAction$MenuItem;

    .line 6
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/yandex/div2/DivAction;

    .line 7
    invoke-static {v11}, Lcom/yandex/div/core/view2/divs/DivActionBinder;->j(Lcom/yandex/div/core/view2/divs/DivActionBinder;)Lgd2;

    move-result-object v2

    .line 8
    iget-object v3, v15, Lcom/yandex/div2/DivAction$MenuItem;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v3, v13}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    move-object v3, v12

    move-object v4, v13

    move v5, v14

    move-object v7, v8

    .line 9
    invoke-interface/range {v2 .. v7}, Lgd2;->s(Lcom/yandex/div/core/view2/Div2View;Loj3;ILjava/lang/String;Lcom/yandex/div2/DivAction;)V

    .line 10
    invoke-static {v11}, Lcom/yandex/div/core/view2/divs/DivActionBinder;->i(Lcom/yandex/div/core/view2/divs/DivActionBinder;)Lce2;

    move-result-object v2

    invoke-virtual {v2, v8, v13}, Lce2;->c(Lcom/yandex/div2/DivAction;Loj3;)V

    const/16 v9, 0x30

    const/4 v10, 0x0

    .line 11
    const-string v6, "menu"

    const/4 v7, 0x0

    const/16 v16, 0x0

    move-object v2, v11

    move-object v5, v8

    move-object/from16 v8, v16

    invoke-static/range {v2 .. v10}, Lcom/yandex/div/core/view2/divs/DivActionBinder;->G(Lcom/yandex/div/core/view2/divs/DivActionBinder;Lsv2;Loj3;Lcom/yandex/div2/DivAction;Ljava/lang/String;Ljava/lang/String;Lcf2;ILjava/lang/Object;)Z

    goto :goto_1

    .line 12
    :cond_5
    iget-object v0, v0, Lcom/yandex/div/core/view2/divs/DivActionBinder$MenuWrapperListener$onMenuCreated$1$1;->$actionsHandled:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return-void

    .line 13
    :cond_6
    :goto_2
    sget-object v0, Lae5;->a:Lae5;

    .line 14
    invoke-static {}, Lxi;->o()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 15
    const-string v0, "Menu item does not have any action"

    .line 16
    invoke-static {v0}, Lxi;->i(Ljava/lang/String;)V

    :cond_7
    return-void
.end method
