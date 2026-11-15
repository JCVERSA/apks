.class public final Lcom/yandex/div/core/view2/DivVisibilityActionTracker$startTracking$$inlined$postDelayed$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->r(Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Ljava/util/List;JLbw2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0010\u0004\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lzfb;",
        "run",
        "()V",
        "androidx/core/os/HandlerKt$postDelayed$runnable$1",
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
.field final synthetic $actions$inlined:Ljava/util/List;

.field final synthetic $logIds$inlined:Ljava/util/Map;

.field final synthetic $originalDataLogId$inlined:Ljava/lang/String;

.field final synthetic $resolver$inlined:Loj3;

.field final synthetic $scope$inlined:Lcom/yandex/div/core/view2/Div2View;

.field final synthetic $view$inlined:Landroid/view/View;

.field final synthetic this$0:Lcom/yandex/div/core/view2/DivVisibilityActionTracker;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/DivVisibilityActionTracker;Landroid/view/View;Lcom/yandex/div/core/view2/Div2View;Ljava/lang/String;Loj3;Ljava/util/Map;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$startTracking$$inlined$postDelayed$1;->this$0:Lcom/yandex/div/core/view2/DivVisibilityActionTracker;

    iput-object p2, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$startTracking$$inlined$postDelayed$1;->$view$inlined:Landroid/view/View;

    iput-object p3, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$startTracking$$inlined$postDelayed$1;->$scope$inlined:Lcom/yandex/div/core/view2/Div2View;

    iput-object p4, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$startTracking$$inlined$postDelayed$1;->$originalDataLogId$inlined:Ljava/lang/String;

    iput-object p5, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$startTracking$$inlined$postDelayed$1;->$resolver$inlined:Loj3;

    iput-object p6, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$startTracking$$inlined$postDelayed$1;->$logIds$inlined:Ljava/util/Map;

    iput-object p7, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$startTracking$$inlined$postDelayed$1;->$actions$inlined:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    sget-object v0, Lne5;->a:Lne5;

    sget-object v1, Lcom/yandex/div/logging/Severity;->INFO:Lcom/yandex/div/logging/Severity;

    invoke-virtual {v0, v1}, Lne5;->a(Lcom/yandex/div/logging/Severity;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchActions: id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$startTracking$$inlined$postDelayed$1;->$logIds$inlined:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/Iterable;

    const/16 v10, 0x3f

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v11}, Li81;->y0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Le74;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    const-string v3, "DivVisibilityActionTracker"

    invoke-virtual {v0, v2, v3, v1}, Lne5;->b(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$startTracking$$inlined$postDelayed$1;->this$0:Lcom/yandex/div/core/view2/DivVisibilityActionTracker;

    invoke-static {v0}, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->c(Lcom/yandex/div/core/view2/DivVisibilityActionTracker;)Ljava/util/WeakHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$startTracking$$inlined$postDelayed$1;->$view$inlined:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$startTracking$$inlined$postDelayed$1;->$actions$inlined:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/yandex/div2/DivDisappearAction;

    if-eqz v4, :cond_1

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v1, "waitingActions"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/div2/DivDisappearAction;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$startTracking$$inlined$postDelayed$1;->this$0:Lcom/yandex/div/core/view2/DivVisibilityActionTracker;

    invoke-static {v0}, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->c(Lcom/yandex/div/core/view2/DivVisibilityActionTracker;)Ljava/util/WeakHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$startTracking$$inlined$postDelayed$1;->$view$inlined:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$startTracking$$inlined$postDelayed$1;->this$0:Lcom/yandex/div/core/view2/DivVisibilityActionTracker;

    invoke-static {v0}, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->e(Lcom/yandex/div/core/view2/DivVisibilityActionTracker;)Lf8a;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$startTracking$$inlined$postDelayed$1;->$view$inlined:Landroid/view/View;

    invoke-virtual {v0, v1}, Lf8a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v0, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$startTracking$$inlined$postDelayed$1;->$scope$inlined:Lcom/yandex/div/core/view2/Div2View;

    invoke-virtual {v0}, Lcom/yandex/div/core/view2/Div2View;->getLogId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$startTracking$$inlined$postDelayed$1;->$originalDataLogId$inlined:Ljava/lang/String;

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$startTracking$$inlined$postDelayed$1;->this$0:Lcom/yandex/div/core/view2/DivVisibilityActionTracker;

    invoke-static {v0}, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->j(Lcom/yandex/div/core/view2/DivVisibilityActionTracker;)Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$startTracking$$inlined$postDelayed$1;->$scope$inlined:Lcom/yandex/div/core/view2/Div2View;

    iget-object v2, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$startTracking$$inlined$postDelayed$1;->$resolver$inlined:Loj3;

    iget-object v3, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$startTracking$$inlined$postDelayed$1;->$view$inlined:Landroid/view/View;

    iget-object p0, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$startTracking$$inlined$postDelayed$1;->$logIds$inlined:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    const/4 v4, 0x0

    new-array v4, v4, [Lwp2;

    invoke-interface {p0, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lwp2;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher;->c(Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;[Lwp2;)V

    :cond_5
    return-void
.end method
