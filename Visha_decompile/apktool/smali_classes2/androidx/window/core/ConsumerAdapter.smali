.class public final Landroidx/window/core/ConsumerAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "BanUncheckedReflection"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/core/ConsumerAdapter$ConsumerHandler;,
        Landroidx/window/core/ConsumerAdapter$Subscription;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0001\u0018\u00002\u00020\u0001:\u0002\'(B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0013\u0010\u0007\u001a\u0006\u0012\u0002\u0008\u00030\u0006H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J;\u0010\u000f\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\t*\u00020\u00012\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\n2\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\r0\u000cH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0015\u0010\u0012\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0006H\u0000\u00a2\u0006\u0004\u0008\u0011\u0010\u0008JI\u0010\u0016\u001a\u00020\r\"\u0008\u0008\u0000\u0010\t*\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00012\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\n2\u0006\u0010\u0015\u001a\u00020\u00142\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\r0\u000c\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J[\u0010\u001d\u001a\u00020\u001c\"\u0008\u0008\u0000\u0010\t*\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00012\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\n2\u0006\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u001a2\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\r0\u000cH\u0007\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJS\u0010\u001f\u001a\u00020\u001c\"\u0008\u0008\u0000\u0010\t*\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00012\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\n2\u0006\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00020\u00142\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\r0\u000cH\u0007\u00a2\u0006\u0004\u0008\u001f\u0010 J[\u0010\u001d\u001a\u00020\u001c\"\u0008\u0008\u0000\u0010\t*\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00012\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\n2\u0006\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00020\u00142\u0006\u0010\"\u001a\u00020!2\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\r0\u000cH\u0007\u00a2\u0006\u0004\u0008\u001d\u0010#JQ\u0010$\u001a\u00020\r\"\u0008\u0008\u0000\u0010\t*\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00012\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\n2\u0006\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u001a2\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\r0\u000c\u00a2\u0006\u0004\u0008$\u0010%R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010&\u00a8\u0006)"
    }
    d2 = {
        "Landroidx/window/core/ConsumerAdapter;",
        "",
        "Ljava/lang/ClassLoader;",
        "loader",
        "<init>",
        "(Ljava/lang/ClassLoader;)V",
        "Ljava/lang/Class;",
        "unsafeConsumerClass",
        "()Ljava/lang/Class;",
        "T",
        "Lde5;",
        "clazz",
        "Lkotlin/Function1;",
        "Lzfb;",
        "consumer",
        "buildConsumer",
        "(Lde5;Le74;)Ljava/lang/Object;",
        "consumerClassOrNull$window_release",
        "consumerClassOrNull",
        "obj",
        "",
        "methodName",
        "addConsumer",
        "(Ljava/lang/Object;Lde5;Ljava/lang/String;Le74;)V",
        "addMethodName",
        "removeMethodName",
        "Landroid/app/Activity;",
        "activity",
        "Landroidx/window/core/ConsumerAdapter$Subscription;",
        "createSubscription",
        "(Ljava/lang/Object;Lde5;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Le74;)Landroidx/window/core/ConsumerAdapter$Subscription;",
        "createSubscriptionNoActivity",
        "(Ljava/lang/Object;Lde5;Ljava/lang/String;Ljava/lang/String;Le74;)Landroidx/window/core/ConsumerAdapter$Subscription;",
        "Landroid/content/Context;",
        "context",
        "(Ljava/lang/Object;Lde5;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Le74;)Landroidx/window/core/ConsumerAdapter$Subscription;",
        "createConsumer",
        "(Ljava/lang/Object;Lde5;Ljava/lang/String;Landroid/app/Activity;Le74;)V",
        "Ljava/lang/ClassLoader;",
        "ConsumerHandler",
        "Subscription",
        "window_release"
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
.field private final loader:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1

    const-string v0, "loader"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/core/ConsumerAdapter;->loader:Ljava/lang/ClassLoader;

    return-void
.end method

.method private final buildConsumer(Lde5;Le74;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lde5;",
            "Le74;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Landroidx/window/core/ConsumerAdapter$ConsumerHandler;

    invoke-direct {v0, p1, p2}, Landroidx/window/core/ConsumerAdapter$ConsumerHandler;-><init>(Lde5;Le74;)V

    iget-object p1, p0, Landroidx/window/core/ConsumerAdapter;->loader:Ljava/lang/ClassLoader;

    invoke-direct {p0}, Landroidx/window/core/ConsumerAdapter;->unsafeConsumerClass()Ljava/lang/Class;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Class;

    move-result-object p0

    invoke-static {p1, p0, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "newProxyInstance(loader,\u2026onsumerClass()), handler)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final unsafeConsumerClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/window/core/ConsumerAdapter;->loader:Ljava/lang/ClassLoader;

    const-string v0, "java.util.function.Consumer"

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "loader.loadClass(\"java.util.function.Consumer\")"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final addConsumer(Ljava/lang/Object;Lde5;Ljava/lang/String;Le74;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lde5;",
            "Ljava/lang/String;",
            "Le74;",
            ")V"
        }
    .end annotation

    const-string v0, "obj"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clazz"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "methodName"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consumer"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0}, Landroidx/window/core/ConsumerAdapter;->unsafeConsumerClass()Ljava/lang/Class;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    invoke-direct {p0, p2, p4}, Landroidx/window/core/ConsumerAdapter;->buildConsumer(Lde5;Le74;)Ljava/lang/Object;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p3, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final consumerClassOrNull$window_release()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroidx/window/core/ConsumerAdapter;->unsafeConsumerClass()Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final createConsumer(Ljava/lang/Object;Lde5;Ljava/lang/String;Landroid/app/Activity;Le74;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lde5;",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            "Le74;",
            ")V"
        }
    .end annotation

    const-string v0, "obj"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clazz"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "addMethodName"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consumer"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2, p5}, Landroidx/window/core/ConsumerAdapter;->buildConsumer(Lde5;Le74;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p5

    const-class v0, Landroid/app/Activity;

    invoke-direct {p0}, Landroidx/window/core/ConsumerAdapter;->unsafeConsumerClass()Ljava/lang/Class;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p5, p3, p0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    filled-new-array {p4, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final createSubscription(Ljava/lang/Object;Lde5;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Le74;)Landroidx/window/core/ConsumerAdapter$Subscription;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lde5;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            "Le74;",
            ")",
            "Landroidx/window/core/ConsumerAdapter$Subscription;"
        }
    .end annotation

    const-string v0, "obj"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clazz"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "addMethodName"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "removeMethodName"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consumer"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2, p6}, Landroidx/window/core/ConsumerAdapter;->buildConsumer(Lde5;Le74;)Ljava/lang/Object;

    move-result-object p2

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p6

    const-class v0, Landroid/app/Activity;

    invoke-direct {p0}, Landroidx/window/core/ConsumerAdapter;->unsafeConsumerClass()Ljava/lang/Class;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p6, p3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    .line 3
    filled-new-array {p5, p2}, [Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p3, p1, p5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-direct {p0}, Landroidx/window/core/ConsumerAdapter;->unsafeConsumerClass()Ljava/lang/Class;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p3, p4, p0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 5
    new-instance p3, Landroidx/window/core/ConsumerAdapter$createSubscription$1;

    invoke-direct {p3, p0, p1, p2}, Landroidx/window/core/ConsumerAdapter$createSubscription$1;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p3
.end method

.method public final createSubscription(Ljava/lang/Object;Lde5;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Le74;)Landroidx/window/core/ConsumerAdapter$Subscription;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lde5;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Le74;",
            ")",
            "Landroidx/window/core/ConsumerAdapter$Subscription;"
        }
    .end annotation

    const-string v0, "obj"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clazz"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "addMethodName"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "removeMethodName"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consumer"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, p2, p6}, Landroidx/window/core/ConsumerAdapter;->buildConsumer(Lde5;Le74;)Ljava/lang/Object;

    move-result-object p2

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p6

    const-class v0, Landroid/content/Context;

    invoke-direct {p0}, Landroidx/window/core/ConsumerAdapter;->unsafeConsumerClass()Ljava/lang/Class;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p6, p3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    .line 8
    filled-new-array {p5, p2}, [Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p3, p1, p5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-direct {p0}, Landroidx/window/core/ConsumerAdapter;->unsafeConsumerClass()Ljava/lang/Class;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p3, p4, p0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 10
    new-instance p3, Landroidx/window/core/ConsumerAdapter$createSubscription$2;

    invoke-direct {p3, p0, p1, p2}, Landroidx/window/core/ConsumerAdapter$createSubscription$2;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p3
.end method

.method public final createSubscriptionNoActivity(Ljava/lang/Object;Lde5;Ljava/lang/String;Ljava/lang/String;Le74;)Landroidx/window/core/ConsumerAdapter$Subscription;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lde5;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Le74;",
            ")",
            "Landroidx/window/core/ConsumerAdapter$Subscription;"
        }
    .end annotation

    const-string v0, "obj"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clazz"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "addMethodName"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "removeMethodName"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consumer"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2, p5}, Landroidx/window/core/ConsumerAdapter;->buildConsumer(Lde5;Le74;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p5

    invoke-direct {p0}, Landroidx/window/core/ConsumerAdapter;->unsafeConsumerClass()Ljava/lang/Class;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p5, p3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p3, p1, p5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-direct {p0}, Landroidx/window/core/ConsumerAdapter;->unsafeConsumerClass()Ljava/lang/Class;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p3, p4, p0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-instance p3, Landroidx/window/core/ConsumerAdapter$createSubscriptionNoActivity$1;

    invoke-direct {p3, p0, p1, p2}, Landroidx/window/core/ConsumerAdapter$createSubscriptionNoActivity$1;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p3
.end method
