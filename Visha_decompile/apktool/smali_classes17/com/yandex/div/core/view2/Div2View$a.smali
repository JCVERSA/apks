.class public final Lcom/yandex/div/core/view2/Div2View$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/core/view2/Div2View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Lcom/yandex/div2/DivData$State;

.field public c:Z

.field public final d:Ljava/util/List;

.field public final synthetic e:Lcom/yandex/div/core/view2/Div2View;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/Div2View;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/Div2View$a;->e:Lcom/yandex/div/core/view2/Div2View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/yandex/div/core/view2/Div2View$a;->c:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/Div2View$a;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lc74;)V
    .locals 1

    const-string v0, "function"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/yandex/div/core/view2/Div2View$a;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yandex/div/core/view2/Div2View$a;->a:I

    invoke-interface {p1}, Lc74;->invoke()Ljava/lang/Object;

    iget p1, p0, Lcom/yandex/div/core/view2/Div2View$a;->a:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/yandex/div/core/view2/Div2View$a;->a:I

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View$a;->c()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yandex/div/core/view2/Div2View$a;->b:Lcom/yandex/div2/DivData$State;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/div/core/view2/Div2View$a;->c:Z

    iget-object p0, p0, Lcom/yandex/div/core/view2/Div2View$a;->d:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final c()V
    .locals 5

    iget-object v0, p0, Lcom/yandex/div/core/view2/Div2View$a;->b:Lcom/yandex/div2/DivData$State;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-wide v1, v0, Lcom/yandex/div2/DivData$State;->b:J

    iget-object v3, p0, Lcom/yandex/div/core/view2/Div2View$a;->e:Lcom/yandex/div/core/view2/Div2View;

    invoke-virtual {v3}, Lcom/yandex/div/core/view2/Div2View;->getStateId$div_release()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/yandex/div/core/view2/Div2View$a;->e:Lcom/yandex/div/core/view2/Div2View;

    iget-wide v2, v0, Lcom/yandex/div2/DivData$State;->b:J

    iget-boolean v0, p0, Lcom/yandex/div/core/view2/Div2View$a;->c:Z

    invoke-virtual {v1, v2, v3, v0}, Lcom/yandex/div/core/view2/Div2View;->switchToState(JZ)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/yandex/div/core/view2/Div2View$a;->e:Lcom/yandex/div/core/view2/Div2View;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/yandex/div/core/view2/Div2View$a;->e:Lcom/yandex/div/core/view2/Div2View;

    invoke-virtual {v1}, Lcom/yandex/div/core/view2/Div2View;->getViewComponent$div_release()Lcom/yandex/div/core/dagger/Div2ViewComponent;

    move-result-object v1

    invoke-interface {v1}, Lcom/yandex/div/core/dagger/Div2ViewComponent;->h()Lvq2;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/div/core/view2/Div2View$a;->d:Ljava/util/List;

    invoke-static {v2}, Lw71;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/yandex/div/core/view2/Div2View$a;->e:Lcom/yandex/div/core/view2/Div2View;

    invoke-virtual {v3}, Lcom/yandex/div/core/view2/Div2View;->getExpressionResolver()Loj3;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lvq2;->a(Lcom/yandex/div2/DivData$State;Ljava/util/List;Loj3;)V
    :try_end_0
    .catch Lcom/yandex/div/core/state/StateConflictException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/yandex/div/core/view2/Div2View$a;->e:Lcom/yandex/div/core/view2/Div2View;

    invoke-static {v1, v0}, Leg2;->e(Lcom/yandex/div/core/view2/Div2View;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/Div2View$a;->e:Lcom/yandex/div/core/view2/Div2View;

    invoke-virtual {v0}, Lcom/yandex/div/core/view2/Div2View;->resetToInitialState()V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View$a;->b()V

    return-void
.end method

.method public final d(Lcom/yandex/div2/DivData$State;Ljava/util/List;Z)V
    .locals 4

    const-string v0, "paths"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/Div2View$a;->b:Lcom/yandex/div2/DivData$State;

    if-eqz v0, :cond_0

    invoke-static {p1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View$a;->b()V

    :cond_0
    iput-object p1, p0, Lcom/yandex/div/core/view2/Div2View$a;->b:Lcom/yandex/div2/DivData$State;

    iget-boolean p1, p0, Lcom/yandex/div/core/view2/Div2View$a;->c:Z

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/yandex/div/core/view2/Div2View$a;->c:Z

    iget-object p1, p0, Lcom/yandex/div/core/view2/Div2View$a;->d:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p1, p2}, Ld81;->C(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    iget-object p1, p0, Lcom/yandex/div/core/view2/Div2View$a;->e:Lcom/yandex/div/core/view2/Div2View;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div/core/state/DivStatePath;

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/Div2View;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object v1

    invoke-interface {v1}, Lcom/yandex/div/core/dagger/Div2Component;->A()Lsq2;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/Div2View;->getDivTag()Lei2;

    move-result-object v2

    invoke-virtual {v2}, Lei2;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "divTag.id"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0, p3}, Lsq2;->d(Ljava/lang/String;Lcom/yandex/div/core/state/DivStatePath;Z)V

    goto :goto_1

    :cond_2
    iget p1, p0, Lcom/yandex/div/core/view2/Div2View$a;->a:I

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View$a;->c()V

    :cond_3
    return-void
.end method

.method public final e(Lcom/yandex/div2/DivData$State;Lcom/yandex/div/core/state/DivStatePath;Z)V
    .locals 1

    const-string v0, "path"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lx71;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/Div2View$a;->d(Lcom/yandex/div2/DivData$State;Ljava/util/List;Z)V

    return-void
.end method
