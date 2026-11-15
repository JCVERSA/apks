.class public final Lcom/transsion/spwaitkiller/SpWaitKiller;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/spwaitkiller/SpWaitKiller$Builder;,
        Lcom/transsion/spwaitkiller/SpWaitKiller$Companion;,
        Lcom/transsion/spwaitkiller/SpWaitKiller$QueueWorksWorkFieldHooker;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u0000 \u00152\u00020\u0001:\u0003\u0015\u0016\u0017B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010\u0012\u001a\u00020\u0013J\u0008\u0010\u0014\u001a\u00020\u0013H\u0002R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/transsion/spwaitkiller/SpWaitKiller;",
        "",
        "builder",
        "Lcom/transsion/spwaitkiller/SpWaitKiller$Builder;",
        "<init>",
        "(Lcom/transsion/spwaitkiller/SpWaitKiller$Builder;)V",
        "hiddenApiExempter",
        "Lcom/transsion/spwaitkiller/HiddenApiExempter;",
        "working",
        "",
        "neverWaitingFinishQueue",
        "neverProcessWorkOnMainThread",
        "unExpectExceptionCatcher",
        "Lcom/transsion/spwaitkiller/UnExpectExceptionCatcher;",
        "targetSdkVersion",
        "",
        "mContext",
        "Landroid/content/Context;",
        "work",
        "",
        "realWork",
        "Companion",
        "QueueWorksWorkFieldHooker",
        "Builder",
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


# static fields
.field public static final Companion:Lcom/transsion/spwaitkiller/SpWaitKiller$Companion;


# instance fields
.field private hiddenApiExempter:Lcom/transsion/spwaitkiller/HiddenApiExempter;

.field private mContext:Landroid/content/Context;

.field private neverProcessWorkOnMainThread:Z

.field private neverWaitingFinishQueue:Z

.field private targetSdkVersion:I

.field private unExpectExceptionCatcher:Lcom/transsion/spwaitkiller/UnExpectExceptionCatcher;

.field private working:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/spwaitkiller/SpWaitKiller$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/spwaitkiller/SpWaitKiller$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/spwaitkiller/SpWaitKiller;->Companion:Lcom/transsion/spwaitkiller/SpWaitKiller$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/transsion/spwaitkiller/SpWaitKiller$Builder;)V
    .locals 1

    .line 1
    const-string v0, "builder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/transsion/spwaitkiller/SpWaitKiller$Builder;->getHiddenApiExempter()Lcom/transsion/spwaitkiller/HiddenApiExempter;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Lcom/transsion/spwaitkiller/DefaultHiddenApiExempter;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/transsion/spwaitkiller/DefaultHiddenApiExempter;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lcom/transsion/spwaitkiller/SpWaitKiller$Builder;->setHiddenApiExempter(Lcom/transsion/spwaitkiller/HiddenApiExempter;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/spwaitkiller/SpWaitKiller$Builder;->getUnExpectExceptionCatcher()Lcom/transsion/spwaitkiller/UnExpectExceptionCatcher;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    new-instance v0, Lcom/transsion/spwaitkiller/SpWaitKiller$1;

    .line 30
    .line 31
    invoke-direct {v0}, Lcom/transsion/spwaitkiller/SpWaitKiller$1;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Lcom/transsion/spwaitkiller/SpWaitKiller$Builder;->setUnExpectExceptionCatcher(Lcom/transsion/spwaitkiller/UnExpectExceptionCatcher;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-virtual {p1}, Lcom/transsion/spwaitkiller/SpWaitKiller$Builder;->getHiddenApiExempter()Lcom/transsion/spwaitkiller/HiddenApiExempter;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/transsion/spwaitkiller/SpWaitKiller;->hiddenApiExempter:Lcom/transsion/spwaitkiller/HiddenApiExempter;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/transsion/spwaitkiller/SpWaitKiller$Builder;->getNeverProcessWorkOnMainThread()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iput-boolean v0, p0, Lcom/transsion/spwaitkiller/SpWaitKiller;->neverProcessWorkOnMainThread:Z

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/transsion/spwaitkiller/SpWaitKiller$Builder;->getNeverWaitingFinishQueue()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    iput-boolean v0, p0, Lcom/transsion/spwaitkiller/SpWaitKiller;->neverWaitingFinishQueue:Z

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/transsion/spwaitkiller/SpWaitKiller$Builder;->getContext()Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Lcom/transsion/spwaitkiller/SpWaitKiller;->mContext:Landroid/content/Context;

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/transsion/spwaitkiller/SpWaitKiller$Builder;->getUnExpectExceptionCatcher()Lcom/transsion/spwaitkiller/UnExpectExceptionCatcher;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iput-object p1, p0, Lcom/transsion/spwaitkiller/SpWaitKiller;->unExpectExceptionCatcher:Lcom/transsion/spwaitkiller/UnExpectExceptionCatcher;

    .line 66
    .line 67
    iget-object p1, p0, Lcom/transsion/spwaitkiller/SpWaitKiller;->mContext:Landroid/content/Context;

    .line 68
    .line 69
    if-eqz p1, :cond_2

    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    if-eqz p1, :cond_2

    .line 76
    .line 77
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    const/4 p1, 0x0

    .line 81
    :goto_0
    iput p1, p0, Lcom/transsion/spwaitkiller/SpWaitKiller;->targetSdkVersion:I

    .line 82
    .line 83
    return-void
.end method

.method private final realWork()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    const-string v0, "android.app.QueuedWork"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-boolean v1, p0, Lcom/transsion/spwaitkiller/SpWaitKiller;->neverWaitingFinishQueue:Z

    .line 8
    .line 9
    const/16 v2, 0x1a

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    const/4 v4, 0x0

    .line 17
    if-ge v1, v2, :cond_0

    .line 18
    .line 19
    const-string v1, "sPendingWorkFinishers"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v3, "null cannot be cast to non-null type java.util.concurrent.ConcurrentLinkedQueue<*>"

    .line 33
    .line 34
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    check-cast v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 38
    .line 39
    new-instance v3, Lcom/transsion/spwaitkiller/ProxyFinishersLinkedList;

    .line 40
    .line 41
    invoke-direct {v3, v1}, Lcom/transsion/spwaitkiller/ProxyFinishersLinkedList;-><init>(Ljava/util/concurrent/ConcurrentLinkedQueue;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v4, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const-string v1, "sFinishers"

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    const-string v3, "null cannot be cast to non-null type java.util.LinkedList<*>"

    .line 62
    .line 63
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    check-cast v1, Ljava/util/LinkedList;

    .line 67
    .line 68
    new-instance v3, Lcom/transsion/spwaitkiller/ProxyFinishersList;

    .line 69
    .line 70
    invoke-direct {v3, v1}, Lcom/transsion/spwaitkiller/ProxyFinishersList;-><init>(Ljava/util/LinkedList;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v4, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/transsion/spwaitkiller/SpWaitKiller;->neverProcessWorkOnMainThread:Z

    .line 77
    .line 78
    if-eqz v0, :cond_4

    .line 79
    .line 80
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 81
    .line 82
    if-ge v0, v2, :cond_2

    .line 83
    .line 84
    return-void

    .line 85
    :cond_2
    iget v0, p0, Lcom/transsion/spwaitkiller/SpWaitKiller;->targetSdkVersion:I

    .line 86
    .line 87
    const/16 v1, 0x1e

    .line 88
    .line 89
    if-lt v0, v1, :cond_3

    .line 90
    .line 91
    iget-object v0, p0, Lcom/transsion/spwaitkiller/SpWaitKiller;->hiddenApiExempter:Lcom/transsion/spwaitkiller/HiddenApiExempter;

    .line 92
    .line 93
    if-eqz v0, :cond_3

    .line 94
    .line 95
    iget-object v1, p0, Lcom/transsion/spwaitkiller/SpWaitKiller;->mContext:Landroid/content/Context;

    .line 96
    .line 97
    invoke-interface {v0, v1}, Lcom/transsion/spwaitkiller/HiddenApiExempter;->exempt(Landroid/content/Context;)Z

    .line 98
    .line 99
    .line 100
    :cond_3
    new-instance v0, Lcom/transsion/spwaitkiller/SpWaitKiller$QueueWorksWorkFieldHooker;

    .line 101
    .line 102
    invoke-direct {v0}, Lcom/transsion/spwaitkiller/SpWaitKiller$QueueWorksWorkFieldHooker;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/transsion/spwaitkiller/SpWaitKiller$QueueWorksWorkFieldHooker;->proxyWork()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .line 107
    .line 108
    :catch_0
    :cond_4
    return-void
.end method


# virtual methods
.method public final work()V
    .locals 2

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/transsion/spwaitkiller/SpWaitKiller;->working:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/transsion/spwaitkiller/SpWaitKiller;->realWork()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/transsion/spwaitkiller/SpWaitKiller;->working:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    iget-object v1, p0, Lcom/transsion/spwaitkiller/SpWaitKiller;->unExpectExceptionCatcher:Lcom/transsion/spwaitkiller/UnExpectExceptionCatcher;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-interface {v1, v0}, Lcom/transsion/spwaitkiller/UnExpectExceptionCatcher;->onException(Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    :goto_0
    return-void
.end method
