.class final Lcom/yandex/div/core/view2/divs/DivActionBinder$handleBulkActions$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/DivActionBinder;->J(Lcom/yandex/div/core/view2/a;Landroid/view/View;Ljava/util/List;Ljava/lang/String;)V
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
.field final synthetic $actionLogType:Ljava/lang/String;

.field final synthetic $actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/div2/DivAction;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $divView:Lcom/yandex/div/core/view2/Div2View;

.field final synthetic $resolver:Loj3;

.field final synthetic $target:Landroid/view/View;

.field final synthetic this$0:Lcom/yandex/div/core/view2/divs/DivActionBinder;


# direct methods
.method public constructor <init>(Ljava/util/List;Loj3;Ljava/lang/String;Lcom/yandex/div/core/view2/divs/DivActionBinder;Lcom/yandex/div/core/view2/Div2View;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yandex/div2/DivAction;",
            ">;",
            "Loj3;",
            "Ljava/lang/String;",
            "Lcom/yandex/div/core/view2/divs/DivActionBinder;",
            "Lcom/yandex/div/core/view2/Div2View;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder$handleBulkActions$1;->$actions:Ljava/util/List;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder$handleBulkActions$1;->$resolver:Loj3;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder$handleBulkActions$1;->$actionLogType:Ljava/lang/String;

    iput-object p4, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder$handleBulkActions$1;->this$0:Lcom/yandex/div/core/view2/divs/DivActionBinder;

    iput-object p5, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder$handleBulkActions$1;->$divView:Lcom/yandex/div/core/view2/Div2View;

    iput-object p6, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder$handleBulkActions$1;->$target:Landroid/view/View;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/DivActionBinder$handleBulkActions$1;->invoke()V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke()V
    .locals 17

    move-object/from16 v0, p0

    .line 2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "randomUUID().toString()"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v2, v0, Lcom/yandex/div/core/view2/divs/DivActionBinder$handleBulkActions$1;->$actions:Ljava/util/List;

    iget-object v3, v0, Lcom/yandex/div/core/view2/divs/DivActionBinder$handleBulkActions$1;->$resolver:Loj3;

    invoke-static {v2, v3}, Lme2;->d(Ljava/util/List;Loj3;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    iget-object v11, v0, Lcom/yandex/div/core/view2/divs/DivActionBinder$handleBulkActions$1;->$actionLogType:Ljava/lang/String;

    iget-object v12, v0, Lcom/yandex/div/core/view2/divs/DivActionBinder$handleBulkActions$1;->this$0:Lcom/yandex/div/core/view2/divs/DivActionBinder;

    iget-object v13, v0, Lcom/yandex/div/core/view2/divs/DivActionBinder$handleBulkActions$1;->$divView:Lcom/yandex/div/core/view2/Div2View;

    iget-object v14, v0, Lcom/yandex/div/core/view2/divs/DivActionBinder$handleBulkActions$1;->$resolver:Loj3;

    iget-object v0, v0, Lcom/yandex/div/core/view2/divs/DivActionBinder$handleBulkActions$1;->$target:Landroid/view/View;

    .line 4
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/yandex/div2/DivAction;

    .line 5
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v2, "double_click"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 6
    :cond_0
    invoke-static {v12}, Lcom/yandex/div/core/view2/divs/DivActionBinder;->j(Lcom/yandex/div/core/view2/divs/DivActionBinder;)Lgd2;

    move-result-object v2

    move-object v3, v13

    move-object v4, v14

    move-object v5, v0

    move-object v6, v9

    move-object v7, v1

    invoke-interface/range {v2 .. v7}, Lgd2;->r(Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Lcom/yandex/div2/DivAction;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 7
    :sswitch_1
    const-string v2, "release"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_1

    .line 8
    :cond_1
    invoke-static {v12}, Lcom/yandex/div/core/view2/divs/DivActionBinder;->j(Lcom/yandex/div/core/view2/divs/DivActionBinder;)Lgd2;

    move-result-object v3

    const/4 v8, 0x0

    move-object v4, v13

    move-object v5, v14

    move-object v6, v0

    move-object v7, v9

    invoke-interface/range {v3 .. v8}, Lgd2;->y(Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Lcom/yandex/div2/DivAction;Z)V

    goto/16 :goto_2

    .line 9
    :sswitch_2
    const-string v2, "press"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_1

    .line 10
    :cond_2
    invoke-static {v12}, Lcom/yandex/div/core/view2/divs/DivActionBinder;->j(Lcom/yandex/div/core/view2/divs/DivActionBinder;)Lgd2;

    move-result-object v3

    const/4 v8, 0x1

    move-object v4, v13

    move-object v5, v14

    move-object v6, v0

    move-object v7, v9

    invoke-interface/range {v3 .. v8}, Lgd2;->y(Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Lcom/yandex/div2/DivAction;Z)V

    goto/16 :goto_2

    .line 11
    :sswitch_3
    const-string v2, "hover"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_1

    .line 12
    :cond_3
    invoke-static {v12}, Lcom/yandex/div/core/view2/divs/DivActionBinder;->j(Lcom/yandex/div/core/view2/divs/DivActionBinder;)Lgd2;

    move-result-object v3

    const/4 v8, 0x1

    move-object v4, v13

    move-object v5, v14

    move-object v6, v0

    move-object v7, v9

    invoke-interface/range {v3 .. v8}, Lgd2;->a(Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Lcom/yandex/div2/DivAction;Z)V

    goto/16 :goto_2

    .line 13
    :sswitch_4
    const-string v2, "focus"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto/16 :goto_1

    .line 14
    :cond_4
    invoke-static {v12}, Lcom/yandex/div/core/view2/divs/DivActionBinder;->j(Lcom/yandex/div/core/view2/divs/DivActionBinder;)Lgd2;

    move-result-object v3

    const/4 v8, 0x1

    move-object v4, v13

    move-object v5, v14

    move-object v6, v0

    move-object v7, v9

    invoke-interface/range {v3 .. v8}, Lgd2;->u(Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Lcom/yandex/div2/DivAction;Z)V

    goto/16 :goto_2

    .line 15
    :sswitch_5
    const-string v2, "enter"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto/16 :goto_1

    .line 16
    :cond_5
    invoke-static {v12}, Lcom/yandex/div/core/view2/divs/DivActionBinder;->j(Lcom/yandex/div/core/view2/divs/DivActionBinder;)Lgd2;

    move-result-object v2

    invoke-interface {v2, v13, v14, v0, v9}, Lgd2;->t(Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Lcom/yandex/div2/DivAction;)V

    goto/16 :goto_2

    .line 17
    :sswitch_6
    const-string v2, "click"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    .line 18
    :cond_6
    invoke-static {v12}, Lcom/yandex/div/core/view2/divs/DivActionBinder;->j(Lcom/yandex/div/core/view2/divs/DivActionBinder;)Lgd2;

    move-result-object v2

    move-object v3, v13

    move-object v4, v14

    move-object v5, v0

    move-object v6, v9

    move-object v7, v1

    invoke-interface/range {v2 .. v7}, Lgd2;->e(Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Lcom/yandex/div2/DivAction;Ljava/lang/String;)V

    goto :goto_2

    .line 19
    :sswitch_7
    const-string v2, "blur"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_1

    .line 20
    :cond_7
    invoke-static {v12}, Lcom/yandex/div/core/view2/divs/DivActionBinder;->j(Lcom/yandex/div/core/view2/divs/DivActionBinder;)Lgd2;

    move-result-object v3

    const/4 v8, 0x0

    move-object v4, v13

    move-object v5, v14

    move-object v6, v0

    move-object v7, v9

    invoke-interface/range {v3 .. v8}, Lgd2;->u(Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Lcom/yandex/div2/DivAction;Z)V

    goto :goto_2

    .line 21
    :sswitch_8
    const-string v2, "unhover"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_1

    .line 22
    :cond_8
    invoke-static {v12}, Lcom/yandex/div/core/view2/divs/DivActionBinder;->j(Lcom/yandex/div/core/view2/divs/DivActionBinder;)Lgd2;

    move-result-object v3

    const/4 v8, 0x0

    move-object v4, v13

    move-object v5, v14

    move-object v6, v0

    move-object v7, v9

    invoke-interface/range {v3 .. v8}, Lgd2;->a(Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Lcom/yandex/div2/DivAction;Z)V

    goto :goto_2

    .line 23
    :sswitch_9
    const-string v2, "long_click"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 24
    :goto_1
    const-string v2, "Please, add new logType"

    invoke-static {v2}, Lxi;->i(Ljava/lang/String;)V

    goto :goto_2

    .line 25
    :cond_9
    invoke-static {v12}, Lcom/yandex/div/core/view2/divs/DivActionBinder;->j(Lcom/yandex/div/core/view2/divs/DivActionBinder;)Lgd2;

    move-result-object v2

    move-object v3, v13

    move-object v4, v14

    move-object v5, v0

    move-object v6, v9

    move-object v7, v1

    invoke-interface/range {v2 .. v7}, Lgd2;->i(Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Lcom/yandex/div2/DivAction;Ljava/lang/String;)V

    .line 26
    :goto_2
    invoke-static {v12}, Lcom/yandex/div/core/view2/divs/DivActionBinder;->i(Lcom/yandex/div/core/view2/divs/DivActionBinder;)Lce2;

    move-result-object v2

    invoke-virtual {v2, v9, v14}, Lce2;->c(Lcom/yandex/div2/DivAction;Loj3;)V

    .line 27
    invoke-static {v12, v11}, Lcom/yandex/div/core/view2/divs/DivActionBinder;->k(Lcom/yandex/div/core/view2/divs/DivActionBinder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v10, 0x20

    const/16 v16, 0x0

    const/4 v8, 0x0

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    move-object v5, v9

    move-object v7, v1

    move v9, v10

    move-object/from16 v10, v16

    invoke-static/range {v2 .. v10}, Lcom/yandex/div/core/view2/divs/DivActionBinder;->G(Lcom/yandex/div/core/view2/divs/DivActionBinder;Lsv2;Loj3;Lcom/yandex/div2/DivAction;Ljava/lang/String;Ljava/lang/String;Lcf2;ILjava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x1432ddfb -> :sswitch_9
        -0x11240dbd -> :sswitch_8
        0x2e3067 -> :sswitch_7
        0x5a5c588 -> :sswitch_6
        0x5c306d8 -> :sswitch_5
        0x5d154d8 -> :sswitch_4
        0x5edc93c -> :sswitch_3
        0x65fa443 -> :sswitch_2
        0x41012807 -> :sswitch_1
        0x51e7c39a -> :sswitch_0
    .end sparse-switch
.end method
