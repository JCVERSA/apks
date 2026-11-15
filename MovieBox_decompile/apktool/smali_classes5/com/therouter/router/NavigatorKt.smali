.class public abstract Lcom/therouter/router/NavigatorKt;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final a:Ljava/util/LinkedList;

.field private static final b:Ljava/util/HashMap;

.field private static final c:Ljava/util/List;

.field private static final d:Ljava/util/List;

.field private static final e:Ljava/util/List;

.field private static f:Lmf/c;

.field private static g:Lkotlin/jvm/functions/Function2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/therouter/router/NavigatorKt;->a:Ljava/util/LinkedList;

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/therouter/router/NavigatorKt;->b:Ljava/util/HashMap;

    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/therouter/router/NavigatorKt;->c:Ljava/util/List;

    .line 21
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lcom/therouter/router/NavigatorKt;->d:Ljava/util/List;

    .line 28
    .line 29
    new-instance v0, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    sput-object v0, Lcom/therouter/router/NavigatorKt;->e:Ljava/util/List;

    .line 35
    .line 36
    new-instance v0, Lmf/c;

    .line 37
    .line 38
    invoke-direct {v0}, Lmf/c;-><init>()V

    .line 39
    .line 40
    .line 41
    sput-object v0, Lcom/therouter/router/NavigatorKt;->f:Lmf/c;

    .line 42
    .line 43
    sget-object v0, Lcom/therouter/router/NavigatorKt$routerInterceptor$1;->INSTANCE:Lcom/therouter/router/NavigatorKt$routerInterceptor$1;

    .line 44
    .line 45
    sput-object v0, Lcom/therouter/router/NavigatorKt;->g:Lkotlin/jvm/functions/Function2;

    .line 46
    .line 47
    return-void
.end method

.method public static synthetic a(Lmf/e;Lmf/e;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/therouter/router/NavigatorKt;->i(Lmf/e;Lmf/e;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic b()Lmf/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/therouter/router/NavigatorKt;->f:Lmf/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic c()Ljava/util/LinkedList;
    .locals 1

    .line 1
    sget-object v0, Lcom/therouter/router/NavigatorKt;->a:Ljava/util/LinkedList;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic d()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcom/therouter/router/NavigatorKt;->c:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic e()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcom/therouter/router/NavigatorKt;->d:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic f()Lkotlin/jvm/functions/Function2;
    .locals 1

    .line 1
    sget-object v0, Lcom/therouter/router/NavigatorKt;->g:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic g()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcom/therouter/router/NavigatorKt;->e:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final h(Lmf/e;)V
    .locals 1

    .line 1
    const-string v0, "interceptor"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/therouter/router/NavigatorKt;->d:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    new-instance p0, Lcom/therouter/router/f;

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/therouter/router/f;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private static final i(Lmf/e;Lmf/e;)I
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, -0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    if-nez p1, :cond_1

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p1}, Lmf/e;->a()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-virtual {p0}, Lmf/e;->a()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    sub-int p0, p1, p0

    .line 18
    .line 19
    :goto_0
    return p0
.end method

.method public static final j()Ljava/util/HashMap;
    .locals 1

    .line 1
    sget-object v0, Lcom/therouter/router/NavigatorKt;->b:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final k()V
    .locals 2

    .line 1
    sget-object v0, Lcom/therouter/router/NavigatorKt;->a:Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/therouter/router/g;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/therouter/router/g;->a()Lkotlin/jvm/functions/Function0;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    sget-object v0, Lcom/therouter/router/NavigatorKt;->a:Ljava/util/LinkedList;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public static final l(Lmf/f;)V
    .locals 1

    .line 1
    const-string v0, "interceptor"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/therouter/router/NavigatorKt$setRouterInterceptor$1;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/therouter/router/NavigatorKt$setRouterInterceptor$1;-><init>(Lmf/f;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/therouter/router/NavigatorKt;->g:Lkotlin/jvm/functions/Function2;

    .line 12
    .line 13
    return-void
.end method
