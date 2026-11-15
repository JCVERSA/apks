.class final Lcom/yandex/div/core/view2/DivVisibilityActionTracker$isEnabledObserver$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Ly74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/DivVisibilityActionTracker;-><init>(Lmdc;Lcom/yandex/div/core/view2/DivVisibilityActionDispatcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Ly74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\r\u001a\u00020\n2\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000c"
    }
    d2 = {
        "Lcom/yandex/div/core/view2/Div2View;",
        "scope",
        "Loj3;",
        "resolver",
        "Landroid/view/View;",
        "<anonymous parameter 2>",
        "Lcom/yandex/div2/Div;",
        "<anonymous parameter 3>",
        "Lwp2;",
        "action",
        "Lzfb;",
        "invoke",
        "(Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Lcom/yandex/div2/Div;Lwp2;)V",
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
.field final synthetic this$0:Lcom/yandex/div/core/view2/DivVisibilityActionTracker;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/DivVisibilityActionTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$isEnabledObserver$2;->this$0:Lcom/yandex/div/core/view2/DivVisibilityActionTracker;

    const/4 p1, 0x5

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/div/core/view2/Div2View;

    check-cast p2, Loj3;

    check-cast p3, Landroid/view/View;

    check-cast p4, Lcom/yandex/div2/Div;

    check-cast p5, Lwp2;

    invoke-virtual/range {p0 .. p5}, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$isEnabledObserver$2;->invoke(Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Lcom/yandex/div2/Div;Lwp2;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke(Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Lcom/yandex/div2/Div;Lwp2;)V
    .locals 7

    const-string v0, "scope"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 2>"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "<anonymous parameter 3>"

    invoke-static {p4, p3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "action"

    invoke-static {p5, p3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    instance-of p3, p5, Lcom/yandex/div2/DivVisibilityAction;

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$isEnabledObserver$2;->this$0:Lcom/yandex/div/core/view2/DivVisibilityActionTracker;

    const/4 v5, 0x0

    invoke-static {v0}, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->b(Lcom/yandex/div/core/view2/DivVisibilityActionTracker;)Lbw2;

    move-result-object v6

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p5

    invoke-static/range {v0 .. v6}, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->l(Lcom/yandex/div/core/view2/DivVisibilityActionTracker;Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Lwp2;ILbw2;)Z

    goto :goto_0

    .line 3
    :cond_0
    instance-of p3, p5, Lcom/yandex/div2/DivDisappearAction;

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/yandex/div/core/view2/DivVisibilityActionTracker$isEnabledObserver$2;->this$0:Lcom/yandex/div/core/view2/DivVisibilityActionTracker;

    const/4 v5, 0x0

    invoke-static {v0}, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->d(Lcom/yandex/div/core/view2/DivVisibilityActionTracker;)Lbw2;

    move-result-object v6

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p5

    invoke-static/range {v0 .. v6}, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->l(Lcom/yandex/div/core/view2/DivVisibilityActionTracker;Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Lwp2;ILbw2;)Z

    :cond_1
    :goto_0
    return-void
.end method
