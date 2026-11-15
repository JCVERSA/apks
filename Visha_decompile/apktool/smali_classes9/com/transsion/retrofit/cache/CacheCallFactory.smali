.class public Lcom/transsion/retrofit/cache/CacheCallFactory;
.super Llq0$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/retrofit/cache/CacheCallFactory$MainThreadExecutor;,
        Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall;
    }
.end annotation


# instance fields
.field final callbackExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Llq0$a;-><init>()V

    new-instance v0, Lcom/transsion/retrofit/cache/CacheCallFactory$MainThreadExecutor;

    invoke-direct {v0}, Lcom/transsion/retrofit/cache/CacheCallFactory$MainThreadExecutor;-><init>()V

    iput-object v0, p0, Lcom/transsion/retrofit/cache/CacheCallFactory;->callbackExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static getCallResponseType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1

    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v0, p0}, Llq0$a;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Call return type must be parameterized as Call<Foo> or Call<? extends Foo>"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public get(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lru8;)Llq0;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lru8;",
            ")",
            "Llq0;"
        }
    .end annotation

    invoke-static {p1}, Llq0$a;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p2

    const-class p3, Ljq0;

    if-eq p2, p3, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/transsion/retrofit/cache/CacheCallFactory;->getCallResponseType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    new-instance p2, Lcom/transsion/retrofit/cache/CacheCallFactory$1;

    invoke-direct {p2, p0, p1}, Lcom/transsion/retrofit/cache/CacheCallFactory$1;-><init>(Lcom/transsion/retrofit/cache/CacheCallFactory;Ljava/lang/reflect/Type;)V

    return-object p2
.end method
