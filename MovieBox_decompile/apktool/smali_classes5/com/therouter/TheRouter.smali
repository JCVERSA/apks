.class public final Lcom/therouter/TheRouter;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/therouter/TheRouter;

.field private static b:Z

.field private static final c:Ljava/util/LinkedList;

.field private static final d:Lcom/therouter/inject/RouterInject;

.field private static e:Lkotlin/jvm/functions/Function2;

.field private static final f:Ljf/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/therouter/TheRouter;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/therouter/TheRouter;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/therouter/TheRouter;->a:Lcom/therouter/TheRouter;

    .line 7
    .line 8
    new-instance v0, Ljava/util/LinkedList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/therouter/TheRouter;->c:Ljava/util/LinkedList;

    .line 14
    .line 15
    new-instance v0, Lcom/therouter/inject/RouterInject;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/therouter/inject/RouterInject;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/therouter/TheRouter;->d:Lcom/therouter/inject/RouterInject;

    .line 21
    .line 22
    sget-object v0, Lcom/therouter/TheRouter$logCat$1;->INSTANCE:Lcom/therouter/TheRouter$logCat$1;

    .line 23
    .line 24
    sput-object v0, Lcom/therouter/TheRouter;->e:Lkotlin/jvm/functions/Function2;

    .line 25
    .line 26
    new-instance v0, Ljf/b;

    .line 27
    .line 28
    invoke-direct {v0}, Ljf/b;-><init>()V

    .line 29
    .line 30
    .line 31
    sput-object v0, Lcom/therouter/TheRouter;->f:Ljf/b;

    .line 32
    .line 33
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/therouter/TheRouter;->k(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/therouter/TheRouter;->o(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final c(Ljava/lang/String;)Lcom/therouter/router/Navigator;
    .locals 1

    .line 1
    new-instance v0, Lcom/therouter/router/Navigator;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/therouter/router/Navigator;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final varargs d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    const-string v0, "clazz"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "params"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/therouter/TheRouter;->d:Lcom/therouter/inject/RouterInject;

    .line 12
    .line 13
    array-length v1, p1

    .line 14
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {v0, p0, p1}, Lcom/therouter/inject/RouterInject;->e(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public static final f()Lkotlin/jvm/functions/Function2;
    .locals 1

    .line 1
    sget-object v0, Lcom/therouter/TheRouter;->e:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final g()Ljava/util/LinkedList;
    .locals 1

    .line 1
    sget-object v0, Lcom/therouter/TheRouter;->c:Ljava/util/LinkedList;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final h()Lcom/therouter/inject/RouterInject;
    .locals 1

    .line 1
    sget-object v0, Lcom/therouter/TheRouter;->d:Lcom/therouter/inject/RouterInject;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final i(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0}, Lcom/therouter/TheRouter;->j(Landroid/content/Context;Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static final j(Landroid/content/Context;Z)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/therouter/TheRouterKt;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    const-string v0, "TheRouter init start!"

    .line 8
    .line 9
    const-string v1, "init"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x4

    .line 13
    invoke-static {v1, v0, v2, v3, v2}, Lcom/therouter/TheRouterKt;->d(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lcom/therouter/TheRouter;->f:Ljf/b;

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Ljf/b;->c(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    sget-object p1, Lcom/therouter/TheRouter;->d:Lcom/therouter/inject/RouterInject;

    .line 24
    .line 25
    invoke-virtual {p1, p0}, Lcom/therouter/inject/RouterInject;->b(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    sget-object p1, Lcom/therouter/TheRouter;->d:Lcom/therouter/inject/RouterInject;

    .line 30
    .line 31
    invoke-virtual {p1, p0}, Lcom/therouter/inject/RouterInject;->g(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    invoke-static {p0}, Lcom/therouter/router/RouteMapKt;->f(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    new-instance p1, Lcom/therouter/d;

    .line 38
    .line 39
    invoke-direct {p1, p0}, Lcom/therouter/d;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    invoke-static {p1}, Lcom/therouter/TheRouterThreadPool;->f(Ljava/lang/Runnable;)V

    .line 43
    .line 44
    .line 45
    const-string p0, "TheRouter init finish!"

    .line 46
    .line 47
    invoke-static {v1, p0, v2, v3, v2}, Lcom/therouter/TheRouterKt;->d(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    const/4 p0, 0x1

    .line 51
    invoke-static {p0}, Lcom/therouter/TheRouterKt;->b(Z)V

    .line 52
    .line 53
    .line 54
    :cond_1
    return-void
.end method

.method private static final k(Landroid/content/Context;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "null cannot be cast to non-null type android.app.Application"

    .line 8
    .line 9
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast p0, Landroid/app/Application;

    .line 13
    .line 14
    sget-object v0, Lcom/therouter/f;->a:Lcom/therouter/f;

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    sget-object p0, Lcom/therouter/TheRouter;->c:Ljava/util/LinkedList;

    .line 20
    .line 21
    new-instance v0, Llf/b;

    .line 22
    .line 23
    invoke-direct {v0}, Llf/b;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Llf/c;

    .line 30
    .line 31
    invoke-direct {v0}, Llf/c;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    new-instance v0, Llf/d;

    .line 38
    .line 39
    invoke-direct {v0}, Llf/d;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    new-instance v0, Llf/a;

    .line 46
    .line 47
    invoke-direct {v0}, Llf/a;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public static final l(Ljava/lang/Object;)V
    .locals 5

    .line 1
    invoke-static {p0}, La/TheRouterServiceProvideInjecter;->b(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    sget-boolean v0, La/TheRouterServiceProvideInjecter;->asm:Z

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    if-eqz p0, :cond_1

    .line 9
    .line 10
    invoke-static {}, Lcom/therouter/inject/DebugOnlyKt;->b()Ljava/util/HashMap;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Ljava/util/Map$Entry;

    .line 33
    .line 34
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Ljava/lang/Class;

    .line 39
    .line 40
    invoke-virtual {v2, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_0

    .line 45
    .line 46
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Ljava/lang/reflect/Method;

    .line 51
    .line 52
    const/4 v2, 0x0

    .line 53
    const/4 v3, 0x1

    .line 54
    new-array v3, v3, [Ljava/lang/Object;

    .line 55
    .line 56
    const/4 v4, 0x0

    .line 57
    aput-object p0, v3, v4

    .line 58
    .line 59
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    return-void
.end method

.method public static final m()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/therouter/TheRouter;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public static final n(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "taskName"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/therouter/TheRouter;->f:Ljf/b;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljf/b;->h()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Ljf/b;->i(Ljava/lang/String;)Ljf/e;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Ljf/e;->g()V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Lcom/therouter/e;

    .line 23
    .line 24
    invoke-direct {v1, p0}, Lcom/therouter/e;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljf/b;->b(Ljava/lang/Runnable;)Z

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method

.method private static final o(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "$taskName"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/therouter/TheRouter;->f:Ljf/b;

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Ljf/b;->i(Ljava/lang/String;)Ljf/e;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Ljf/e;->g()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static final p(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/therouter/TheRouter;->b:Z

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public final e()Ljf/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/therouter/TheRouter;->f:Ljf/b;

    .line 2
    .line 3
    return-object v0
.end method
