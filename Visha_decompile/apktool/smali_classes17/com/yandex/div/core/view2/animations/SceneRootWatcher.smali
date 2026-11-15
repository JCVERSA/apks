.class public final Lcom/yandex/div/core/view2/animations/SceneRootWatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/core/view2/animations/SceneRootWatcher$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/yandex/div/core/view2/animations/SceneRootWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/yandex/div/core/view2/animations/SceneRootWatcher;

    invoke-direct {v0}, Lcom/yandex/div/core/view2/animations/SceneRootWatcher;-><init>()V

    sput-object v0, Lcom/yandex/div/core/view2/animations/SceneRootWatcher;->a:Lcom/yandex/div/core/view2/animations/SceneRootWatcher;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V
    .locals 1

    const-string p0, "sceneRoot"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "transition"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/yandex/div/core/view2/animations/SceneRootWatcher$a;

    invoke-direct {p0, p1}, Lcom/yandex/div/core/view2/animations/SceneRootWatcher$a;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    new-instance v0, Lcom/yandex/div/core/view2/animations/SceneRootWatcher$watchFor$$inlined$doOnEnd$1;

    invoke-direct {v0, p2, p1, p0}, Lcom/yandex/div/core/view2/animations/SceneRootWatcher$watchFor$$inlined$doOnEnd$1;-><init>(Landroidx/transition/Transition;Landroid/view/ViewGroup;Lcom/yandex/div/core/view2/animations/SceneRootWatcher$a;)V

    invoke-virtual {p2, v0}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    return-void
.end method

.method public final b(Landroidx/transition/Scene;Landroidx/transition/Transition;)V
    .locals 1

    const-string v0, "scene"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transition"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/transition/Scene;->getSceneRoot()Landroid/view/ViewGroup;

    move-result-object p1

    const-string v0, "scene.sceneRoot"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/view2/animations/SceneRootWatcher;->a(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    return-void
.end method
