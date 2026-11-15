.class public final Lcom/yandex/div/core/view2/animations/DivTransitionHandler$beginDelayedTransitions$$inlined$doOnEnd$1;
.super Landroidx/transition/TransitionListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/animations/DivTransitionHandler;->c(Landroid/view/ViewGroup;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007\u00b8\u0006\u0000"
    }
    d2 = {
        "com/yandex/div/core/view2/animations/TransitionsKt$doOnEnd$1",
        "Landroidx/transition/TransitionListenerAdapter;",
        "Landroidx/transition/Transition;",
        "transition",
        "Lzfb;",
        "onTransitionEnd",
        "(Landroidx/transition/Transition;)V",
        "div_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Landroidx/transition/Transition;

.field public final synthetic c:Lcom/yandex/div/core/view2/animations/DivTransitionHandler;


# direct methods
.method public constructor <init>(Landroidx/transition/Transition;Lcom/yandex/div/core/view2/animations/DivTransitionHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/animations/DivTransitionHandler$beginDelayedTransitions$$inlined$doOnEnd$1;->b:Landroidx/transition/Transition;

    iput-object p2, p0, Lcom/yandex/div/core/view2/animations/DivTransitionHandler$beginDelayedTransitions$$inlined$doOnEnd$1;->c:Lcom/yandex/div/core/view2/animations/DivTransitionHandler;

    invoke-direct {p0}, Landroidx/transition/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroidx/transition/Transition;)V
    .locals 1

    const-string v0, "transition"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/yandex/div/core/view2/animations/DivTransitionHandler$beginDelayedTransitions$$inlined$doOnEnd$1;->c:Lcom/yandex/div/core/view2/animations/DivTransitionHandler;

    invoke-static {p1}, Lcom/yandex/div/core/view2/animations/DivTransitionHandler;->b(Lcom/yandex/div/core/view2/animations/DivTransitionHandler;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/yandex/div/core/view2/animations/DivTransitionHandler$beginDelayedTransitions$$inlined$doOnEnd$1;->b:Landroidx/transition/Transition;

    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->removeListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    return-void
.end method
