.class Lcom/transsion/retrofit/cache/CacheCallFactory$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llq0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/retrofit/cache/CacheCallFactory;->get(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lru8;)Llq0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Llq0;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/retrofit/cache/CacheCallFactory;

.field final synthetic val$responseType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Lcom/transsion/retrofit/cache/CacheCallFactory;Ljava/lang/reflect/Type;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/retrofit/cache/CacheCallFactory$1;->this$0:Lcom/transsion/retrofit/cache/CacheCallFactory;

    iput-object p2, p0, Lcom/transsion/retrofit/cache/CacheCallFactory$1;->val$responseType:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic adapt(Ljq0;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/retrofit/cache/CacheCallFactory$1;->adapt(Ljq0;)Ljq0;

    move-result-object p0

    return-object p0
.end method

.method public adapt(Ljq0;)Ljq0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljq0<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljq0<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall;

    iget-object p0, p0, Lcom/transsion/retrofit/cache/CacheCallFactory$1;->this$0:Lcom/transsion/retrofit/cache/CacheCallFactory;

    iget-object p0, p0, Lcom/transsion/retrofit/cache/CacheCallFactory;->callbackExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v0, p0, p1}, Lcom/transsion/retrofit/cache/CacheCallFactory$ExecutorCallbackCall;-><init>(Ljava/util/concurrent/Executor;Ljq0;)V

    return-object v0
.end method

.method public responseType()Ljava/lang/reflect/Type;
    .locals 0

    iget-object p0, p0, Lcom/transsion/retrofit/cache/CacheCallFactory$1;->val$responseType:Ljava/lang/reflect/Type;

    return-object p0
.end method
