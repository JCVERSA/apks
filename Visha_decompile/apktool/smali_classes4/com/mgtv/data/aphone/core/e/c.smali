.class public Lcom/mgtv/data/aphone/core/e/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z = false

.field private static b:Lcom/mgtv/data/aphone/core/e/c;


# instance fields
.field private c:Ljava/util/concurrent/ExecutorService;

.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/e/c;->c:Ljava/util/concurrent/ExecutorService;

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/e/c;->d:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/mgtv/data/aphone/core/e/c;
    .locals 1

    .line 3
    sget-object v0, Lcom/mgtv/data/aphone/core/e/c;->b:Lcom/mgtv/data/aphone/core/e/c;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/mgtv/data/aphone/core/e/c;

    invoke-direct {v0, p0}, Lcom/mgtv/data/aphone/core/e/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mgtv/data/aphone/core/e/c;->b:Lcom/mgtv/data/aphone/core/e/c;

    .line 5
    :cond_0
    sget-object p0, Lcom/mgtv/data/aphone/core/e/c;->b:Lcom/mgtv/data/aphone/core/e/c;

    return-object p0
.end method

.method private a()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic a(Lcom/mgtv/data/aphone/core/e/c;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/mgtv/data/aphone/core/e/c;->a()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/mgtv/data/aphone/core/e/c;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/mgtv/data/aphone/core/e/c$1;

    invoke-direct {v0, p0}, Lcom/mgtv/data/aphone/core/e/c$1;-><init>(Lcom/mgtv/data/aphone/core/e/c;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method
