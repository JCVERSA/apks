.class public Lcom/mgtv/data/aphone/core/e/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/mgtv/data/aphone/core/e/d;

.field private static final b:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mgtv/data/aphone/core/e/d$1;

    invoke-direct {v0}, Lcom/mgtv/data/aphone/core/e/d$1;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/mgtv/data/aphone/core/e/d;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/e/d;->c:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/mgtv/data/aphone/core/e/d;
    .locals 1

    .line 1
    sget-object v0, Lcom/mgtv/data/aphone/core/e/d;->a:Lcom/mgtv/data/aphone/core/e/d;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/mgtv/data/aphone/core/e/d;

    invoke-direct {v0, p0}, Lcom/mgtv/data/aphone/core/e/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mgtv/data/aphone/core/e/d;->a:Lcom/mgtv/data/aphone/core/e/d;

    .line 3
    :cond_0
    sget-object p0, Lcom/mgtv/data/aphone/core/e/d;->a:Lcom/mgtv/data/aphone/core/e/d;

    return-object p0
.end method

.method public static a()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 4
    sget-object v0, Lcom/mgtv/data/aphone/core/e/d;->b:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method
