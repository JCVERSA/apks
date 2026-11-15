.class public Lxr8;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxr8$a;,
        Lxr8$b;
    }
.end annotation


# static fields
.field public static final e:Lxr8$a;


# instance fields
.field public final a:Lcom/yandex/div/core/expression/a;

.field public final b:Ljava/util/HashMap;

.field public final c:Ljava/lang/Object;

.field public final d:Landroidx/lifecycle/LifecycleEventObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lxr8$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lxr8$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lxr8;->e:Lxr8$a;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/div/core/expression/a;)V
    .locals 1

    const-string v0, "runtimeProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxr8;->a:Lcom/yandex/div/core/expression/a;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lxr8;->b:Ljava/util/HashMap;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxr8;->c:Ljava/lang/Object;

    new-instance p1, Lwr8;

    invoke-direct {p1, p0}, Lwr8;-><init>(Lxr8;)V

    iput-object p1, p0, Lxr8;->d:Landroidx/lifecycle/LifecycleEventObserver;

    return-void
.end method

.method public static synthetic a(Lxr8;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lxr8;->e(Lxr8;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public static final synthetic b(Lxr8;Landroidx/lifecycle/LifecycleOwner;Lcom/yandex/div/core/view2/Div2View;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lxr8;->c(Landroidx/lifecycle/LifecycleOwner;Lcom/yandex/div/core/view2/Div2View;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Lxr8;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lxr8;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lxr8$b;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v1, p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    iget-object p2, p0, Lxr8;->b:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    if-eqz p2, :cond_0

    const-string v1, "divToRelease[source]"

    invoke-static {p2, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div/core/view2/Div2View;

    invoke-virtual {v1}, Lcom/yandex/div/core/view2/Div2View;->cleanup()V

    iget-object v2, p0, Lxr8;->a:Lcom/yandex/div/core/expression/a;

    invoke-virtual {v2, v1}, Lcom/yandex/div/core/expression/a;->c(Lcom/yandex/div/core/view2/Div2View;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lxr8;->b:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final c(Landroidx/lifecycle/LifecycleOwner;Lcom/yandex/div/core/view2/Div2View;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lxr8;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lxr8;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lxr8;->b:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lxr8;->b:Ljava/util/HashMap;

    filled-new-array {p2}, [Lcom/yandex/div/core/view2/Div2View;

    move-result-object p2

    invoke-static {p2}, Lye9;->h([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    iget-object p0, p0, Lxr8;->d:Landroidx/lifecycle/LifecycleEventObserver;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public d(Lcom/yandex/div/core/view2/Div2View;)V
    .locals 1

    const-string v0, "divView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/Div2View;->getContext$div_release()Lcom/yandex/div/core/Div2Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div/core/Div2Context;->getLifecycleOwner$div_release()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p1}, Lxr8;->c(Landroidx/lifecycle/LifecycleOwner;Lcom/yandex/div/core/view2/Div2View;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->get(Landroid/view/View;)Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p0, v0, p1}, Lxr8;->b(Lxr8;Landroidx/lifecycle/LifecycleOwner;Lcom/yandex/div/core/view2/Div2View;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string p0, "ReleaseManager"

    const-string p1, "Attempt to bind a Div2View, which has no LifecycleOwner. Release event will not be caught! If you\'re using some long-lived resources, like a video player, call cleanup explicitly when you don\'t need Div2View anymore"

    invoke-static {p0, p1}, Lpp5;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lxr8$c;

    invoke-direct {v0, p1, p1, p0}, Lxr8$c;-><init>(Landroid/view/View;Lcom/yandex/div/core/view2/Div2View;Lxr8;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :goto_0
    return-void
.end method
