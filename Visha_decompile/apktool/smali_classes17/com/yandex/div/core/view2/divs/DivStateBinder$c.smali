.class public Lcom/yandex/div/core/view2/divs/DivStateBinder$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/div/core/expression/variables/TwoWayVariableBinder$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/DivStateBinder;->t(Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;Lcom/yandex/div2/DivState;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/state/DivStatePath;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;

.field public final synthetic b:Lcom/yandex/div/core/state/DivStatePath;

.field public final synthetic c:Lcom/yandex/div2/DivState;

.field public final synthetic d:Lcom/yandex/div/core/view2/a;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;Lcom/yandex/div/core/state/DivStatePath;Lcom/yandex/div2/DivState;Lcom/yandex/div/core/view2/a;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/DivStateBinder$c;->a:Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/DivStateBinder$c;->b:Lcom/yandex/div/core/state/DivStatePath;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/DivStateBinder$c;->c:Lcom/yandex/div2/DivState;

    iput-object p4, p0, Lcom/yandex/div/core/view2/divs/DivStateBinder$c;->d:Lcom/yandex/div/core/view2/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/DivStateBinder$c;->c(Ljava/lang/String;)V

    return-void
.end method

.method public b(Le74;)V
    .locals 1

    const-string v0, "valueUpdater"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivStateBinder$c;->a:Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;->setVariableUpdater(Le74;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivStateBinder$c;->a:Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;

    invoke-virtual {v0}, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;->getStateId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivStateBinder$c;->a:Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;

    invoke-virtual {v0}, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;->getStateId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivStateBinder$c;->b:Lcom/yandex/div/core/state/DivStatePath;

    sget-object v1, Lcom/yandex/div/core/state/DivPathUtils;->a:Lcom/yandex/div/core/state/DivPathUtils;

    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/DivStateBinder$c;->c:Lcom/yandex/div2/DivState;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4, v3}, Lcom/yandex/div/core/state/DivPathUtils;->i(Lcom/yandex/div/core/state/DivPathUtils;Lcom/yandex/div2/DivState;Lc74;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/yandex/div/core/state/DivStatePath;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/div/core/state/DivStatePath;

    move-result-object p1

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivStateBinder$c;->d:Lcom/yandex/div/core/view2/a;

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object p0

    invoke-virtual {p0, p1, v4}, Lcom/yandex/div/core/view2/Div2View;->switchToState(Lcom/yandex/div/core/state/DivStatePath;Z)V

    :cond_1
    :goto_0
    return-void
.end method
