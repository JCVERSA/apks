.class public Lcom/yandex/div/core/view2/divs/DivSelectBinder$observeVariable$subscription$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/div/core/expression/variables/TwoWayVariableBinder$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/DivSelectBinder;->q(Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;Lcom/yandex/div2/DivSelect;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/state/DivStatePath;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/yandex/div2/DivSelect;

.field public final synthetic b:Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;

.field public final synthetic c:Lwc3;

.field public final synthetic d:Loj3;


# direct methods
.method public constructor <init>(Lcom/yandex/div2/DivSelect;Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;Lwc3;Loj3;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/DivSelectBinder$observeVariable$subscription$1;->a:Lcom/yandex/div2/DivSelect;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/DivSelectBinder$observeVariable$subscription$1;->b:Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/DivSelectBinder$observeVariable$subscription$1;->c:Lwc3;

    iput-object p4, p0, Lcom/yandex/div/core/view2/divs/DivSelectBinder$observeVariable$subscription$1;->d:Loj3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/DivSelectBinder$observeVariable$subscription$1;->c(Ljava/lang/String;)V

    return-void
.end method

.method public b(Le74;)V
    .locals 1

    const-string v0, "valueUpdater"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivSelectBinder$observeVariable$subscription$1;->b:Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;->setValueUpdater(Le74;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivSelectBinder$observeVariable$subscription$1;->a:Lcom/yandex/div2/DivSelect;

    iget-object v0, v0, Lcom/yandex/div2/DivSelect;->A:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Li81;->b0(Ljava/lang/Iterable;)Lpc9;

    move-result-object v0

    new-instance v1, Lcom/yandex/div/core/view2/divs/DivSelectBinder$observeVariable$subscription$1$onVariableChanged$matchingOptionsSequence$1;

    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/DivSelectBinder$observeVariable$subscription$1;->d:Loj3;

    invoke-direct {v1, v2, p1}, Lcom/yandex/div/core/view2/divs/DivSelectBinder$observeVariable$subscription$1$onVariableChanged$matchingOptionsSequence$1;-><init>(Loj3;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt___SequencesKt;->F(Lpc9;Le74;)Lpc9;

    move-result-object v0

    invoke-interface {v0}, Lpc9;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivSelectBinder$observeVariable$subscription$1;->b:Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivSelectBinder$observeVariable$subscription$1;->c:Lwc3;

    new-instance v0, Ljava/lang/Throwable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No option found with value = \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x22

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lwc3;->f(Ljava/lang/Throwable;)V

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/div2/DivSelect$Option;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivSelectBinder$observeVariable$subscription$1;->c:Lwc3;

    new-instance v3, Ljava/lang/Throwable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Multiple options found with value = \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\", selecting first one"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lwc3;->f(Ljava/lang/Throwable;)V

    :cond_1
    iget-object p1, v2, Lcom/yandex/div2/DivSelect$Option;->a:Lcom/yandex/div/json/expressions/Expression;

    if-nez p1, :cond_2

    iget-object p1, v2, Lcom/yandex/div2/DivSelect$Option;->b:Lcom/yandex/div/json/expressions/Expression;

    :cond_2
    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivSelectBinder$observeVariable$subscription$1;->d:Loj3;

    invoke-virtual {p1, p0}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    :goto_0
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
