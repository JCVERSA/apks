.class final Lcom/transsion/core/pool/TranssionPoolExecutor$DefaultThreadFactory;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/core/pool/TranssionPoolExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultThreadFactory"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/transsion/core/pool/TranssionPoolExecutor$UncaughtThrowableStrategy;

.field private final c:Z

.field private d:I


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/transsion/core/pool/TranssionPoolExecutor$UncaughtThrowableStrategy;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/core/pool/TranssionPoolExecutor$DefaultThreadFactory;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/core/pool/TranssionPoolExecutor$DefaultThreadFactory;->b:Lcom/transsion/core/pool/TranssionPoolExecutor$UncaughtThrowableStrategy;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/transsion/core/pool/TranssionPoolExecutor$DefaultThreadFactory;->c:Z

    .line 9
    .line 10
    return-void
.end method

.method static synthetic a(Lcom/transsion/core/pool/TranssionPoolExecutor$DefaultThreadFactory;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/transsion/core/pool/TranssionPoolExecutor$DefaultThreadFactory;->c:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic b(Lcom/transsion/core/pool/TranssionPoolExecutor$DefaultThreadFactory;)Lcom/transsion/core/pool/TranssionPoolExecutor$UncaughtThrowableStrategy;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/core/pool/TranssionPoolExecutor$DefaultThreadFactory;->b:Lcom/transsion/core/pool/TranssionPoolExecutor$UncaughtThrowableStrategy;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public declared-synchronized newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Lcom/transsion/core/pool/TranssionPoolExecutor$DefaultThreadFactory$1;

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v2, "zero-"

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lcom/transsion/core/pool/TranssionPoolExecutor$DefaultThreadFactory;->a:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v2, "-thread-"

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget v2, p0, Lcom/transsion/core/pool/TranssionPoolExecutor$DefaultThreadFactory;->d:I

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-direct {v0, p0, p1, v1}, Lcom/transsion/core/pool/TranssionPoolExecutor$DefaultThreadFactory$1;-><init>(Lcom/transsion/core/pool/TranssionPoolExecutor$DefaultThreadFactory;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget p1, p0, Lcom/transsion/core/pool/TranssionPoolExecutor$DefaultThreadFactory;->d:I

    .line 37
    .line 38
    add-int/lit8 p1, p1, 0x1

    .line 39
    .line 40
    iput p1, p0, Lcom/transsion/core/pool/TranssionPoolExecutor$DefaultThreadFactory;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    monitor-exit p0

    .line 43
    return-object v0

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    throw p1
.end method
