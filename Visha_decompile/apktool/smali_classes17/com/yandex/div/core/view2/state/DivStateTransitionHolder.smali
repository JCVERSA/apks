.class public Lcom/yandex/div/core/view2/state/DivStateTransitionHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/yandex/div/core/view2/Div2View;

.field public final b:Ljava/util/List;

.field public c:Z


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/Div2View;)V
    .locals 1

    const-string v0, "div2View"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/state/DivStateTransitionHolder;->a:Lcom/yandex/div/core/view2/Div2View;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/state/DivStateTransitionHolder;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Landroidx/transition/Transition;)V
    .locals 1

    const-string v0, "transition"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/state/DivStateTransitionHolder;->b:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/state/DivStateTransitionHolder;->c()V

    return-void
.end method

.method public b()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/state/DivStateTransitionHolder;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final c()V
    .locals 2

    iget-boolean v0, p0, Lcom/yandex/div/core/view2/state/DivStateTransitionHolder;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yandex/div/core/view2/state/DivStateTransitionHolder;->a:Lcom/yandex/div/core/view2/Div2View;

    new-instance v1, Lcom/yandex/div/core/view2/state/DivStateTransitionHolder$scheduleClean$$inlined$doOnPreDraw$1;

    invoke-direct {v1, v0, p0}, Lcom/yandex/div/core/view2/state/DivStateTransitionHolder$scheduleClean$$inlined$doOnPreDraw$1;-><init>(Landroid/view/View;Lcom/yandex/div/core/view2/state/DivStateTransitionHolder;)V

    invoke-static {v0, v1}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/div/core/view2/state/DivStateTransitionHolder;->c:Z

    :cond_0
    return-void
.end method
