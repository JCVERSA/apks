.class final Lcom/transsion/spwaitkiller/SpWaitKiller$QueueWorksWorkFieldHooker;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/spwaitkiller/ProxySWork$AboveAndroid12Processor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/spwaitkiller/SpWaitKiller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "QueueWorksWorkFieldHooker"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u000c\u001a\u00020\rJ\u0008\u0010\u000e\u001a\u00020\rH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/transsion/spwaitkiller/SpWaitKiller$QueueWorksWorkFieldHooker;",
        "Lcom/transsion/spwaitkiller/ProxySWork$AboveAndroid12Processor;",
        "<init>",
        "()V",
        "reflectionFailed",
        "",
        "sLock",
        "",
        "sWorkField",
        "Ljava/lang/reflect/Field;",
        "looper",
        "Landroid/os/Looper;",
        "proxyWork",
        "",
        "reProxySWork",
        "SpWaitKiller_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private looper:Landroid/os/Looper;

.field private reflectionFailed:Z

.field private sLock:Ljava/lang/Object;

.field private sWorkField:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SoonBlockedPrivateApi"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    :try_start_0
    const-string v1, "android.app.QueuedWork"

    .line 6
    .line 7
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "getHandler"

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v2, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const-string v4, "null cannot be cast to non-null type android.os.Handler"

    .line 26
    .line 27
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    check-cast v2, Landroid/os/Handler;

    .line 31
    .line 32
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    iput-object v2, p0, Lcom/transsion/spwaitkiller/SpWaitKiller$QueueWorksWorkFieldHooker;->looper:Landroid/os/Looper;

    .line 37
    .line 38
    const-string v2, "sWork"

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    iput-object v2, p0, Lcom/transsion/spwaitkiller/SpWaitKiller$QueueWorksWorkFieldHooker;->sWorkField:Ljava/lang/reflect/Field;

    .line 45
    .line 46
    if-eqz v2, :cond_0

    .line 47
    .line 48
    invoke-virtual {v2, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 49
    .line 50
    .line 51
    :cond_0
    const-string v2, "sLock"

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    iput-object v1, p0, Lcom/transsion/spwaitkiller/SpWaitKiller$QueueWorksWorkFieldHooker;->sLock:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catch_0
    iput-boolean v0, p0, Lcom/transsion/spwaitkiller/SpWaitKiller$QueueWorksWorkFieldHooker;->reflectionFailed:Z

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catch_1
    iput-boolean v0, p0, Lcom/transsion/spwaitkiller/SpWaitKiller$QueueWorksWorkFieldHooker;->reflectionFailed:Z

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catch_2
    iput-boolean v0, p0, Lcom/transsion/spwaitkiller/SpWaitKiller$QueueWorksWorkFieldHooker;->reflectionFailed:Z

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catch_3
    iput-boolean v0, p0, Lcom/transsion/spwaitkiller/SpWaitKiller$QueueWorksWorkFieldHooker;->reflectionFailed:Z

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :catch_4
    iput-boolean v0, p0, Lcom/transsion/spwaitkiller/SpWaitKiller$QueueWorksWorkFieldHooker;->reflectionFailed:Z

    .line 80
    .line 81
    :goto_0
    return-void
.end method


# virtual methods
.method public final proxyWork()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/transsion/spwaitkiller/SpWaitKiller$QueueWorksWorkFieldHooker;->reflectionFailed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/transsion/spwaitkiller/SpWaitKiller$QueueWorksWorkFieldHooker;->sLock:Ljava/lang/Object;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lcom/transsion/spwaitkiller/SpWaitKiller$QueueWorksWorkFieldHooker;->sWorkField:Ljava/lang/reflect/Field;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    iget-object v2, p0, Lcom/transsion/spwaitkiller/SpWaitKiller$QueueWorksWorkFieldHooker;->looper:Landroid/os/Looper;

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    monitor-enter v0

    .line 19
    const/4 v3, 0x0

    .line 20
    :try_start_0
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    const-string v5, "null cannot be cast to non-null type java.util.LinkedList<*>"

    .line 25
    .line 26
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    check-cast v4, Ljava/util/LinkedList;

    .line 30
    .line 31
    new-instance v5, Lcom/transsion/spwaitkiller/ProxySWork;

    .line 32
    .line 33
    invoke-direct {v5, v4, v2, p0}, Lcom/transsion/spwaitkiller/ProxySWork;-><init>(Ljava/util/LinkedList;Landroid/os/Looper;Lcom/transsion/spwaitkiller/ProxySWork$AboveAndroid12Processor;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v3, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception v1

    .line 41
    goto :goto_1

    .line 42
    :catch_0
    const/4 v1, 0x1

    .line 43
    :try_start_1
    iput-boolean v1, p0, Lcom/transsion/spwaitkiller/SpWaitKiller$QueueWorksWorkFieldHooker;->reflectionFailed:Z

    .line 44
    .line 45
    :goto_0
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    .line 47
    monitor-exit v0

    .line 48
    goto :goto_2

    .line 49
    :goto_1
    monitor-exit v0

    .line 50
    throw v1

    .line 51
    :cond_1
    :goto_2
    return-void
.end method

.method public reProxySWork()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/spwaitkiller/SpWaitKiller$QueueWorksWorkFieldHooker;->proxyWork()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
