.class final Lcom/yandex/div/core/view2/divs/DivActionBinder$createPressTouchListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/DivActionBinder;->C(Lcom/yandex/div/core/view2/a;Landroid/view/View;Ljava/util/List;Ljava/util/List;)Ls74;
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
        "\u0000\u0016\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0004\u0008\u0006\u0010\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/view/View;",
        "event",
        "Landroid/view/MotionEvent;",
        "invoke",
        "(Landroid/view/View;Landroid/view/MotionEvent;)Ljava/lang/Boolean;"
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

.field final synthetic $pressEndActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/div2/DivAction;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $pressStartActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/div2/DivAction;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $target:Landroid/view/View;

.field final synthetic this$0:Lcom/yandex/div/core/view2/divs/DivActionBinder;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/divs/DivActionBinder;Lcom/yandex/div/core/view2/a;Landroid/view/View;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/div/core/view2/divs/DivActionBinder;",
            "Lcom/yandex/div/core/view2/a;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/yandex/div2/DivAction;",
            ">;",
            "Ljava/util/List<",
            "Lcom/yandex/div2/DivAction;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder$createPressTouchListener$1;->this$0:Lcom/yandex/div/core/view2/divs/DivActionBinder;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder$createPressTouchListener$1;->$context:Lcom/yandex/div/core/view2/a;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder$createPressTouchListener$1;->$target:Landroid/view/View;

    iput-object p4, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder$createPressTouchListener$1;->$pressStartActions:Ljava/util/List;

    iput-object p5, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder$createPressTouchListener$1;->$pressEndActions:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroid/view/View;Landroid/view/MotionEvent;)Ljava/lang/Boolean;
    .locals 3

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    if-eq p1, p2, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder$createPressTouchListener$1;->this$0:Lcom/yandex/div/core/view2/divs/DivActionBinder;

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder$createPressTouchListener$1;->$context:Lcom/yandex/div/core/view2/a;

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder$createPressTouchListener$1;->$target:Landroid/view/View;

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder$createPressTouchListener$1;->$pressEndActions:Ljava/util/List;

    const-string v2, "release"

    invoke-virtual {p1, v0, v1, p0, v2}, Lcom/yandex/div/core/view2/divs/DivActionBinder;->J(Lcom/yandex/div/core/view2/a;Landroid/view/View;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder$createPressTouchListener$1;->this$0:Lcom/yandex/div/core/view2/divs/DivActionBinder;

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder$createPressTouchListener$1;->$context:Lcom/yandex/div/core/view2/a;

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder$createPressTouchListener$1;->$target:Landroid/view/View;

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder$createPressTouchListener$1;->$pressStartActions:Ljava/util/List;

    const-string v2, "press"

    invoke-virtual {p1, v0, v1, p0, v2}, Lcom/yandex/div/core/view2/divs/DivActionBinder;->J(Lcom/yandex/div/core/view2/a;Landroid/view/View;Ljava/util/List;Ljava/lang/String;)V

    .line 5
    :goto_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/MotionEvent;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/view2/divs/DivActionBinder$createPressTouchListener$1;->invoke(Landroid/view/View;Landroid/view/MotionEvent;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
