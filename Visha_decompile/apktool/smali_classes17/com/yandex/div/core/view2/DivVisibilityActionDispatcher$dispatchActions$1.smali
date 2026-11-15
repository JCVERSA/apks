.class final Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher$dispatchActions$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher;->c(Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;[Lwp2;)V
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
.field final synthetic $actions:[Lwp2;

.field final synthetic $resolver:Loj3;

.field final synthetic $scope:Lcom/yandex/div/core/view2/Div2View;

.field final synthetic $view:Landroid/view/View;

.field final synthetic this$0:Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher;


# direct methods
.method public constructor <init>([Lwp2;Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher;Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher$dispatchActions$1;->$actions:[Lwp2;

    iput-object p2, p0, Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher$dispatchActions$1;->this$0:Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher;

    iput-object p3, p0, Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher$dispatchActions$1;->$scope:Lcom/yandex/div/core/view2/Div2View;

    iput-object p4, p0, Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher$dispatchActions$1;->$resolver:Loj3;

    iput-object p5, p0, Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher$dispatchActions$1;->$view:Landroid/view/View;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher$dispatchActions$1;->invoke()V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke()V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher$dispatchActions$1;->$actions:[Lwp2;

    iget-object v1, p0, Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher$dispatchActions$1;->this$0:Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher;

    iget-object v2, p0, Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher$dispatchActions$1;->$scope:Lcom/yandex/div/core/view2/Div2View;

    iget-object v3, p0, Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher$dispatchActions$1;->$resolver:Loj3;

    iget-object p0, p0, Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher$dispatchActions$1;->$view:Landroid/view/View;

    .line 3
    array-length v4, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v0, v5

    .line 4
    invoke-virtual {v1, v2, v3, p0, v6}, Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher;->b(Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Lwp2;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
