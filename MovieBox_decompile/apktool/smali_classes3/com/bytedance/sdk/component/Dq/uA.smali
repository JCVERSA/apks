.class public Lcom/bytedance/sdk/component/Dq/uA;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# static fields
.field public static final THREAD_GROUP_NAME_PRE:Ljava/lang/String; = "csj_g_"

.field public static final THREAD_NAME_PRE:Ljava/lang/String; = "csj_"

.field public static volatile sCrashHappened:Z


# instance fields
.field private final EjP:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected final Sj:Ljava/lang/ThreadGroup;

.field protected TKC:I

.field protected final sP:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/Dq/uA;->EjP:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    iput p1, p0, Lcom/bytedance/sdk/component/Dq/uA;->TKC:I

    .line 5
    new-instance p1, Ljava/lang/ThreadGroup;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "csj_g_"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/bytedance/sdk/component/Dq/uA;->Sj:Ljava/lang/ThreadGroup;

    .line 6
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "csj_"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/Dq/uA;->sP:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/component/Dq/uA;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected Sj(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Thread;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Thread;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    .line 1
    sget-boolean v0, Lcom/bytedance/sdk/component/Dq/uA;->sCrashHappened:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/Dq/uA;->Sj:Ljava/lang/ThreadGroup;

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lcom/bytedance/sdk/component/Dq/uA;->sP:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Lcom/bytedance/sdk/component/Dq/uA;->EjP:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {p0, v0, p1, v1}, Lcom/bytedance/sdk/component/Dq/uA;->Sj(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Thread;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Ljava/lang/Thread;->isDaemon()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 44
    .line 45
    .line 46
    :cond_1
    iget v0, p0, Lcom/bytedance/sdk/component/Dq/uA;->TKC:I

    .line 47
    .line 48
    const/16 v1, 0xa

    .line 49
    .line 50
    if-gt v0, v1, :cond_2

    .line 51
    .line 52
    if-gtz v0, :cond_3

    .line 53
    .line 54
    :cond_2
    const/4 v0, 0x5

    .line 55
    iput v0, p0, Lcom/bytedance/sdk/component/Dq/uA;->TKC:I

    .line 56
    .line 57
    :cond_3
    iget v0, p0, Lcom/bytedance/sdk/component/Dq/uA;->TKC:I

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 60
    .line 61
    .line 62
    return-object p1
.end method
