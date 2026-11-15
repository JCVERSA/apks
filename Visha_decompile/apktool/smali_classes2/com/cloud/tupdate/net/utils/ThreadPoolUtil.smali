.class public final Lcom/cloud/tupdate/net/utils/ThreadPoolUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tupdate/net/utils/ThreadPoolUtil$ThreadPoolUtilsHolder;,
        Lcom/cloud/tupdate/net/utils/ThreadPoolUtil$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \t2\u00020\u0001:\u0002\r\u000eB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0003R\u0018\u0010\u000c\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u000b\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/cloud/tupdate/net/utils/ThreadPoolUtil;",
        "",
        "<init>",
        "()V",
        "Ljava/lang/Runnable;",
        "runnable",
        "Lzfb;",
        "a",
        "(Ljava/lang/Runnable;)V",
        "b",
        "Ljava/util/concurrent/ExecutorService;",
        "Ljava/util/concurrent/ExecutorService;",
        "mExecutorService",
        "Companion",
        "ThreadPoolUtilsHolder",
        "tupdate_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final b:Lcom/cloud/tupdate/net/utils/ThreadPoolUtil$Companion;


# instance fields
.field public a:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/tupdate/net/utils/ThreadPoolUtil$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/tupdate/net/utils/ThreadPoolUtil$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/tupdate/net/utils/ThreadPoolUtil;->b:Lcom/cloud/tupdate/net/utils/ThreadPoolUtil$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p0}, Lcom/cloud/tupdate/net/utils/ThreadPoolUtil;->b()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/tupdate/net/utils/ThreadPoolUtil;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tupdate/net/utils/ThreadPoolUtil;->a:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/cloud/tupdate/net/utils/ThreadPoolUtil;->a:Ljava/util/concurrent/ExecutorService;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    sget-object p1, Lcom/cloud/tupdate/net/utils/LogUtil;->a:Lcom/cloud/tupdate/net/utils/LogUtil;

    invoke-virtual {p1, p0}, Lcom/cloud/tupdate/net/utils/LogUtil;->d(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tupdate/net/utils/ThreadPoolUtil;->a:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tupdate/net/utils/ThreadPoolUtil;->a:Ljava/util/concurrent/ExecutorService;

    :cond_0
    return-void
.end method
