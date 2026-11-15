.class final Lcom/yandex/div/core/view2/DivVisibilityActionTracker$startTrackingViewsHierarchy$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->s(Lcom/yandex/div/core/view2/a;Landroid/view/View;Lcom/yandex/div2/Div;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Ls74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\n\u00a2\u0006\u0004\u0008\u0006\u0010\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "currentView",
        "Landroid/view/View;",
        "currentDiv",
        "Lcom/yandex/div2/Div;",
        "invoke",
        "(Landroid/view/View;Lcom/yandex/div2/Div;)Ljava/lang/Boolean;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $context:Lcom/yandex/div/core/view2/a;

.field final synthetic this$0:Lcom/yandex/div/core/view2/DivVisibilityActionTracker;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/DivVisibilityActionTracker;Lcom/yandex/div/core/view2/a;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$startTrackingViewsHierarchy$1;->this$0:Lcom/yandex/div/core/view2/DivVisibilityActionTracker;

    iput-object p2, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$startTrackingViewsHierarchy$1;->$context:Lcom/yandex/div/core/view2/a;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroid/view/View;Lcom/yandex/div2/Div;)Ljava/lang/Boolean;
    .locals 11

    const-string v0, "currentView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$startTrackingViewsHierarchy$1;->this$0:Lcom/yandex/div/core/view2/DivVisibilityActionTracker;

    invoke-static {v0}, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->i(Lcom/yandex/div/core/view2/DivVisibilityActionTracker;)Lmdc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmdc;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$startTrackingViewsHierarchy$1;->this$0:Lcom/yandex/div/core/view2/DivVisibilityActionTracker;

    invoke-static {v1}, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->h(Lcom/yandex/div/core/view2/DivVisibilityActionTracker;)Ljava/util/WeakHashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$startTrackingViewsHierarchy$1;->this$0:Lcom/yandex/div/core/view2/DivVisibilityActionTracker;

    invoke-static {v1}, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->h(Lcom/yandex/div/core/view2/DivVisibilityActionTracker;)Ljava/util/WeakHashMap;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    .line 6
    iget-object v2, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$startTrackingViewsHierarchy$1;->this$0:Lcom/yandex/div/core/view2/DivVisibilityActionTracker;

    iget-object p0, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$startTrackingViewsHierarchy$1;->$context:Lcom/yandex/div/core/view2/a;

    .line 7
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v3

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v4

    const/16 v9, 0x30

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v2 .. v10}, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->x(Lcom/yandex/div/core/view2/DivVisibilityActionTracker;Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Lcom/yandex/div2/Div;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)V

    :cond_1
    const/4 p0, 0x1

    .line 8
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/view/View;

    check-cast p2, Lcom/yandex/div2/Div;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$startTrackingViewsHierarchy$1;->invoke(Landroid/view/View;Lcom/yandex/div2/Div;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
