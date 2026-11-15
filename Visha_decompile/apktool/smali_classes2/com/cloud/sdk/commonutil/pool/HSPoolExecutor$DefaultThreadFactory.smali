.class public final Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$DefaultThreadFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultThreadFactory"
.end annotation


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$UncaughtThrowableStrategy;

.field public final d:Z

.field public e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$UncaughtThrowableStrategy;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$DefaultThreadFactory;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$DefaultThreadFactory;->c:Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$UncaughtThrowableStrategy;

    iput-boolean p3, p0, Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$DefaultThreadFactory;->d:Z

    return-void
.end method

.method public static synthetic a(Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$DefaultThreadFactory;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$DefaultThreadFactory;->d:Z

    return p0
.end method

.method public static synthetic b(Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$DefaultThreadFactory;)Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$UncaughtThrowableStrategy;
    .locals 0

    iget-object p0, p0, Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$DefaultThreadFactory;->c:Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$UncaughtThrowableStrategy;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$DefaultThreadFactory$1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "zero-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$DefaultThreadFactory;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-thread-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$DefaultThreadFactory;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$DefaultThreadFactory$1;-><init>(Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$DefaultThreadFactory;Ljava/lang/Runnable;Ljava/lang/String;)V

    iget p1, p0, Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$DefaultThreadFactory;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/cloud/sdk/commonutil/pool/HSPoolExecutor$DefaultThreadFactory;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
