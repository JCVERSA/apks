.class public Lcom/mgtv/data/aphone/core/e/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/mgtv/data/aphone/core/e/b;


# instance fields
.field private b:Ljava/util/concurrent/ExecutorService;

.field private c:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/mgtv/data/aphone/core/e/d;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/e/b;->b:Ljava/util/concurrent/ExecutorService;

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/e/b;->c:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/mgtv/data/aphone/core/e/b;
    .locals 1

    .line 2
    sget-object v0, Lcom/mgtv/data/aphone/core/e/b;->a:Lcom/mgtv/data/aphone/core/e/b;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/mgtv/data/aphone/core/e/b;

    invoke-direct {v0, p0}, Lcom/mgtv/data/aphone/core/e/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mgtv/data/aphone/core/e/b;->a:Lcom/mgtv/data/aphone/core/e/b;

    .line 4
    :cond_0
    sget-object p0, Lcom/mgtv/data/aphone/core/e/b;->a:Lcom/mgtv/data/aphone/core/e/b;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    return-void
.end method
