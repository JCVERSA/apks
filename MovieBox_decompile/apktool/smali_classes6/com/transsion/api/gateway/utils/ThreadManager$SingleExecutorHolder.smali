.class public Lcom/transsion/api/gateway/utils/ThreadManager$SingleExecutorHolder;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/api/gateway/utils/ThreadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleExecutorHolder"
.end annotation


# static fields
.field private static mSingleExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/transsion/api/gateway/utils/ThreadManager$SingleExecutorHolder;->mSingleExecutor:Ljava/util/concurrent/ExecutorService;

    .line 6
    .line 7
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

.method public static synthetic access$100()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/api/gateway/utils/ThreadManager$SingleExecutorHolder;->mSingleExecutor:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    return-object v0
.end method
