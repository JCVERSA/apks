.class public final Lcom/yandex/div/core/view2/animations/SceneRootWatcher$watchFor$$inlined$doOnEnd$1;
.super Landroidx/transition/TransitionListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/animations/SceneRootWatcher;->a(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V
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

.field public final synthetic c:Landroid/view/ViewGroup;

.field public final synthetic d:Lcom/yandex/div/core/view2/animations/SceneRootWatcher$a;


# direct methods
.method public constructor <init>(Landroidx/transition/Transition;Landroid/view/ViewGroup;Lcom/yandex/div/core/view2/animations/SceneRootWatcher$a;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/animations/SceneRootWatcher$watchFor$$inlined$doOnEnd$1;->b:Landroidx/transition/Transition;

    iput-object p2, p0, Lcom/yandex/div/core/view2/animations/SceneRootWatcher$watchFor$$inlined$doOnEnd$1;->c:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/yandex/div/core/view2/animations/SceneRootWatcher$watchFor$$inlined$doOnEnd$1;->d:Lcom/yandex/div/core/view2/animations/SceneRootWatcher$a;

    invoke-direct {p0}, Landroidx/transition/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroidx/transition/Transition;)V
    .locals 1

    const-string v0, "transition"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/yandex/div/core/view2/animations/SceneRootWatcher$watchFor$$inlined$doOnEnd$1;->c:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/yandex/div/core/view2/animations/SceneRootWatcher$watchFor$$inlined$doOnEnd$1;->d:Lcom/yandex/div/core/view2/animations/SceneRootWatcher$a;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p1, p0, Lcom/yandex/div/core/view2/animations/SceneRootWatcher$watchFor$$inlined$doOnEnd$1;->b:Landroidx/transition/Transition;

    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->removeListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    return-void
.end method
