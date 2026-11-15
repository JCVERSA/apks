.class final Lcom/yandex/div/core/view2/divs/DivInputBinder$observeFilters$updateFiltersData$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/DivInputBinder;->C(Lcom/yandex/div/core/view2/divs/widgets/DivInputView;Lcom/yandex/div2/DivInput;Lcom/yandex/div/core/view2/a;Le74;)V
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
        "\u0000\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
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
.field final synthetic $bindingContext:Lcom/yandex/div/core/view2/a;

.field final synthetic $divFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/div2/DivInputFilter;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onFiltersUpdate:Le74;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le74;"
        }
    .end annotation
.end field

.field final synthetic $resolver:Loj3;

.field final synthetic this$0:Lcom/yandex/div/core/view2/divs/DivInputBinder;


# direct methods
.method public constructor <init>(Ljava/util/List;Le74;Loj3;Lcom/yandex/div/core/view2/divs/DivInputBinder;Lcom/yandex/div/core/view2/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/yandex/div2/DivInputFilter;",
            ">;",
            "Le74;",
            "Loj3;",
            "Lcom/yandex/div/core/view2/divs/DivInputBinder;",
            "Lcom/yandex/div/core/view2/a;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$observeFilters$updateFiltersData$1;->$divFilters:Ljava/util/List;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$observeFilters$updateFiltersData$1;->$onFiltersUpdate:Le74;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$observeFilters$updateFiltersData$1;->$resolver:Loj3;

    iput-object p4, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$observeFilters$updateFiltersData$1;->this$0:Lcom/yandex/div/core/view2/divs/DivInputBinder;

    iput-object p5, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$observeFilters$updateFiltersData$1;->$bindingContext:Lcom/yandex/div/core/view2/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/DivInputBinder$observeFilters$updateFiltersData$1;->invoke(Ljava/lang/Object;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 9

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$observeFilters$updateFiltersData$1;->$divFilters:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$observeFilters$updateFiltersData$1;->$resolver:Loj3;

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$observeFilters$updateFiltersData$1;->this$0:Lcom/yandex/div/core/view2/divs/DivInputBinder;

    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$observeFilters$updateFiltersData$1;->$bindingContext:Lcom/yandex/div/core/view2/a;

    .line 3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 5
    check-cast v4, Lcom/yandex/div2/DivInputFilter;

    .line 6
    instance-of v5, v4, Lcom/yandex/div2/DivInputFilter$c;

    if-eqz v5, :cond_1

    .line 7
    :try_start_0
    new-instance v5, Lgr8;

    check-cast v4, Lcom/yandex/div2/DivInputFilter$c;

    invoke-virtual {v4}, Lcom/yandex/div2/DivInputFilter$c;->c()Lcom/yandex/div2/DivInputFilterRegex;

    move-result-object v4

    iget-object v4, v4, Lcom/yandex/div2/DivInputFilterRegex;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v4, v0}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v5, v4}, Lgr8;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 8
    invoke-static {v1}, Lcom/yandex/div/core/view2/divs/DivInputBinder;->l(Lcom/yandex/div/core/view2/divs/DivInputBinder;)Lxc3;

    move-result-object v5

    invoke-virtual {v2}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v6

    invoke-virtual {v6}, Lcom/yandex/div/core/view2/Div2View;->getDataTag()Lei2;

    move-result-object v6

    invoke-virtual {v2}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v7

    invoke-virtual {v7}, Lcom/yandex/div/core/view2/Div2View;->getDivData()Lcom/yandex/div2/DivData;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lxc3;->a(Lei2;Lcom/yandex/div2/DivData;)Lwc3;

    move-result-object v5

    .line 9
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid regex pattern \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/util/regex/PatternSyntaxException;->getPattern()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\'."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v5, v6}, Lwc3;->e(Ljava/lang/Throwable;)V

    const/4 v5, 0x0

    goto :goto_1

    .line 10
    :cond_1
    instance-of v5, v4, Lcom/yandex/div2/DivInputFilter$b;

    if-eqz v5, :cond_2

    new-instance v5, Lmj3;

    check-cast v4, Lcom/yandex/div2/DivInputFilter$b;

    invoke-virtual {v4}, Lcom/yandex/div2/DivInputFilter$b;->c()Lcom/yandex/div2/DivInputFilterExpression;

    move-result-object v4

    iget-object v4, v4, Lcom/yandex/div2/DivInputFilterExpression;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-direct {v5, v4, v0}, Lmj3;-><init>(Lcom/yandex/div/json/expressions/Expression;Loj3;)V

    :goto_1
    if-eqz v5, :cond_0

    .line 11
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 13
    :cond_3
    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivInputBinder$observeFilters$updateFiltersData$1;->$onFiltersUpdate:Le74;

    new-instance p1, Lz05;

    invoke-direct {p1, v3}, Lz05;-><init>(Ljava/util/List;)V

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
