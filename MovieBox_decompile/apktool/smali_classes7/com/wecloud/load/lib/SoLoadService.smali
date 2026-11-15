.class public final Lcom/wecloud/load/lib/SoLoadService;
.super Landroid/app/Service;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wecloud/load/lib/SoLoadService$a;,
        Lcom/wecloud/load/lib/SoLoadService$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0099\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0010 \n\u0000\n\u0002\u0010$\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010#\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0006*\u0001X\u0018\u0000 \\2\u00020\u0001:\u0002=AB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0011\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0003J\u0017\u0010\u000b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ \u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fH\u0082@\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J)\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0015\u001a\u00020\u00142\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0017\u001a\u00020\u0014H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u001f\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ!\u0010\u001f\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u00142\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0014H\u0002\u00a2\u0006\u0004\u0008\u001f\u0010 JI\u0010(\u001a\u00020\u00072\u0006\u0010!\u001a\u00020\u000f2\u0006\u0010\"\u001a\u00020\u000f2\u0006\u0010#\u001a\u00020\u000f2\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u00140$2\u0012\u0010\'\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00140&H\u0002\u00a2\u0006\u0004\u0008(\u0010)J\'\u0010-\u001a\u00020\u00072\u0006\u0010*\u001a\u00020\u000f2\u0006\u0010+\u001a\u00020\u000f2\u0006\u0010,\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008-\u0010.J\u001f\u00101\u001a\u00020\u00072\u0006\u0010/\u001a\u00020\u000f2\u0006\u00100\u001a\u00020\u0014H\u0002\u00a2\u0006\u0004\u00081\u00102J\u0019\u00106\u001a\u0002052\u0008\u00104\u001a\u0004\u0018\u000103H\u0016\u00a2\u0006\u0004\u00086\u00107J\u000f\u00108\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u00088\u0010\u0003J\u000f\u00109\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u00089\u0010\u0003J\r\u0010:\u001a\u00020\u0007\u00a2\u0006\u0004\u0008:\u0010\u0003J\r\u0010;\u001a\u00020\u0007\u00a2\u0006\u0004\u0008;\u0010\u0003R\u0014\u0010?\u001a\u00020<8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008=\u0010>R\u0018\u0010C\u001a\u0004\u0018\u00010@8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008A\u0010BR\u0018\u0010G\u001a\u0004\u0018\u00010D8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008E\u0010FR\u0018\u0010I\u001a\u0004\u0018\u00010@8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008H\u0010BR\u0018\u0010K\u001a\u0004\u0018\u00010@8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008J\u0010BR\u0014\u0010O\u001a\u00020L8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008M\u0010NR\u001a\u0010S\u001a\u0008\u0012\u0004\u0012\u00020\u00140P8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008Q\u0010RR \u0010W\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u000f0T8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008U\u0010VR\u0014\u0010[\u001a\u00020X8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008Y\u0010Z\u00a8\u0006]"
    }
    d2 = {
        "Lcom/wecloud/load/lib/SoLoadService;",
        "Landroid/app/Service;",
        "<init>",
        "()V",
        "Lcom/wecloud/load/lib/bean/SoLoadControlConfig;",
        "s",
        "()Lcom/wecloud/load/lib/bean/SoLoadControlConfig;",
        "",
        "A",
        "Lcom/wecloud/load/lib/SoDownloadRequest;",
        "request",
        "r",
        "(Lcom/wecloud/load/lib/SoDownloadRequest;)V",
        "Lcom/wecloud/load/lib/bean/SoZipInfo;",
        "soZipInfo",
        "",
        "zipIndex",
        "Lcom/wecloud/load/lib/SoLoadService$b;",
        "y",
        "(Lcom/wecloud/load/lib/bean/SoZipInfo;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "",
        "methodName",
        "input",
        "soName",
        "",
        "q",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z",
        "status",
        "w",
        "(Ljava/lang/String;I)V",
        "msg",
        "x",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "groupIndex",
        "successCount",
        "failCount",
        "",
        "successSoNames",
        "",
        "failSoNames",
        "v",
        "(IIILjava/util/List;Ljava/util/Map;)V",
        "totalGroups",
        "totalSuccess",
        "totalFail",
        "t",
        "(III)V",
        "errorCode",
        "errorMessage",
        "u",
        "(ILjava/lang/String;)V",
        "Landroid/content/Intent;",
        "intent",
        "Landroid/os/IBinder;",
        "onBind",
        "(Landroid/content/Intent;)Landroid/os/IBinder;",
        "onDestroy",
        "onCreate",
        "B",
        "z",
        "Lkotlinx/coroutines/n0;",
        "a",
        "Lkotlinx/coroutines/n0;",
        "serviceScope",
        "Lkotlinx/coroutines/t1;",
        "b",
        "Lkotlinx/coroutines/t1;",
        "currentJob",
        "Lcom/wecloud/load/lib/h;",
        "c",
        "Lcom/wecloud/load/lib/h;",
        "callback",
        "d",
        "exitProcessCheckJob",
        "e",
        "exitMonitorJob",
        "",
        "f",
        "J",
        "MONITOR_INTERVAL_MS",
        "",
        "g",
        "Ljava/util/Set;",
        "loadedSoSet",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "h",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "downloadProgressMap",
        "com/wecloud/load/lib/SoLoadService$c",
        "i",
        "Lcom/wecloud/load/lib/SoLoadService$c;",
        "binder",
        "j",
        "lib_release"
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
.field public static final j:Lcom/wecloud/load/lib/SoLoadService$a;


# instance fields
.field private final a:Lkotlinx/coroutines/n0;

.field private b:Lkotlinx/coroutines/t1;

.field private c:Lcom/wecloud/load/lib/h;

.field private d:Lkotlinx/coroutines/t1;

.field private e:Lkotlinx/coroutines/t1;

.field private final f:J

.field private final g:Ljava/util/Set;

.field private final h:Ljava/util/concurrent/ConcurrentHashMap;

.field private final i:Lcom/wecloud/load/lib/SoLoadService$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/wecloud/load/lib/SoLoadService$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/wecloud/load/lib/SoLoadService$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/wecloud/load/lib/SoLoadService;->j:Lcom/wecloud/load/lib/SoLoadService$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-static {v1, v2, v1}, Lkotlinx/coroutines/l2;->b(Lkotlinx/coroutines/t1;ILjava/lang/Object;)Lkotlinx/coroutines/z;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/wecloud/load/lib/SoLoadService;->a:Lkotlinx/coroutines/n0;

    .line 23
    .line 24
    const-wide/32 v0, 0xea60

    .line 25
    .line 26
    .line 27
    iput-wide v0, p0, Lcom/wecloud/load/lib/SoLoadService;->f:J

    .line 28
    .line 29
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/wecloud/load/lib/SoLoadService;->g:Ljava/util/Set;

    .line 35
    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/wecloud/load/lib/SoLoadService;->h:Ljava/util/concurrent/ConcurrentHashMap;

    .line 42
    .line 43
    new-instance v0, Lcom/wecloud/load/lib/SoLoadService$c;

    .line 44
    .line 45
    invoke-direct {v0, p0}, Lcom/wecloud/load/lib/SoLoadService$c;-><init>(Lcom/wecloud/load/lib/SoLoadService;)V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lcom/wecloud/load/lib/SoLoadService;->i:Lcom/wecloud/load/lib/SoLoadService$c;

    .line 49
    .line 50
    return-void
.end method

.method private final A()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/wecloud/load/lib/SoLoadService;->d:Lkotlinx/coroutines/t1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/t1$a;->b(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v3, p0, Lcom/wecloud/load/lib/SoLoadService;->a:Lkotlinx/coroutines/n0;

    .line 11
    .line 12
    new-instance v6, Lcom/wecloud/load/lib/SoLoadService$startExitProcessCheck$1;

    .line 13
    .line 14
    invoke-direct {v6, p0, v1}, Lcom/wecloud/load/lib/SoLoadService$startExitProcessCheck$1;-><init>(Lcom/wecloud/load/lib/SoLoadService;Lkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    const/4 v7, 0x3

    .line 18
    const/4 v8, 0x0

    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v5, 0x0

    .line 21
    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/wecloud/load/lib/SoLoadService;->d:Lkotlinx/coroutines/t1;

    .line 26
    .line 27
    return-void
.end method

.method public static final synthetic a(Lcom/wecloud/load/lib/SoLoadService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/wecloud/load/lib/SoLoadService;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic b(Lcom/wecloud/load/lib/SoLoadService;Lcom/wecloud/load/lib/SoDownloadRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wecloud/load/lib/SoLoadService;->r(Lcom/wecloud/load/lib/SoDownloadRequest;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic c(Lcom/wecloud/load/lib/SoLoadService;)Lcom/wecloud/load/lib/bean/SoLoadControlConfig;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wecloud/load/lib/SoLoadService;->s()Lcom/wecloud/load/lib/bean/SoLoadControlConfig;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic d(Lcom/wecloud/load/lib/SoLoadService;)Lkotlinx/coroutines/t1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wecloud/load/lib/SoLoadService;->b:Lkotlinx/coroutines/t1;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic e(Lcom/wecloud/load/lib/SoLoadService;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wecloud/load/lib/SoLoadService;->h:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic f(Lcom/wecloud/load/lib/SoLoadService;)Lkotlinx/coroutines/t1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wecloud/load/lib/SoLoadService;->e:Lkotlinx/coroutines/t1;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic g(Lcom/wecloud/load/lib/SoLoadService;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wecloud/load/lib/SoLoadService;->g:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic h(Lcom/wecloud/load/lib/SoLoadService;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wecloud/load/lib/SoLoadService;->f:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic i(Lcom/wecloud/load/lib/SoLoadService;III)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/wecloud/load/lib/SoLoadService;->t(III)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic j(Lcom/wecloud/load/lib/SoLoadService;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wecloud/load/lib/SoLoadService;->u(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic k(Lcom/wecloud/load/lib/SoLoadService;IIILjava/util/List;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/wecloud/load/lib/SoLoadService;->v(IIILjava/util/List;Ljava/util/Map;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic l(Lcom/wecloud/load/lib/SoLoadService;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wecloud/load/lib/SoLoadService;->w(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic m(Lcom/wecloud/load/lib/SoLoadService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wecloud/load/lib/SoLoadService;->x(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic n(Lcom/wecloud/load/lib/SoLoadService;Lcom/wecloud/load/lib/bean/SoZipInfo;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/wecloud/load/lib/SoLoadService;->y(Lcom/wecloud/load/lib/bean/SoZipInfo;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic o(Lcom/wecloud/load/lib/SoLoadService;Lcom/wecloud/load/lib/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wecloud/load/lib/SoLoadService;->c:Lcom/wecloud/load/lib/h;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic p(Lcom/wecloud/load/lib/SoLoadService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wecloud/load/lib/SoLoadService;->A()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Lcom/wecloud/load/lib/SoLoadService$d;

    .line 3
    .line 4
    invoke-direct {v1, p0, p3}, Lcom/wecloud/load/lib/SoLoadService$d;-><init>(Lcom/wecloud/load/lib/SoLoadService;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    .line 7
    const/4 p3, 0x1

    .line 8
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    sparse-switch v2, :sswitch_data_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :sswitch_0
    const-string v2, "group4Init"

    .line 17
    .line 18
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    sget-object p1, Lcom/wecloud/load/lib/NativeClass;->a:Lcom/wecloud/load/lib/NativeClass;

    .line 26
    .line 27
    invoke-virtual {p1, p2, v1}, Lcom/wecloud/load/lib/NativeClass;->group4Init(Ljava/lang/String;Lcom/wecloud/load/lib/NativeClass$Callback;)V

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :catch_0
    move-exception p1

    .line 32
    goto :goto_2

    .line 33
    :catch_1
    move-exception p1

    .line 34
    move v0, p3

    .line 35
    goto :goto_3

    .line 36
    :sswitch_1
    const-string v2, "group3Init"

    .line 37
    .line 38
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-nez v2, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    sget-object p1, Lcom/wecloud/load/lib/NativeClass;->a:Lcom/wecloud/load/lib/NativeClass;

    .line 46
    .line 47
    invoke-virtual {p1, p2, v1}, Lcom/wecloud/load/lib/NativeClass;->group3Init(Ljava/lang/String;Lcom/wecloud/load/lib/NativeClass$Callback;)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :sswitch_2
    const-string v2, "group2Init"

    .line 52
    .line 53
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-nez v2, :cond_2

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    sget-object p1, Lcom/wecloud/load/lib/NativeClass;->a:Lcom/wecloud/load/lib/NativeClass;

    .line 61
    .line 62
    invoke-virtual {p1, p2, v1}, Lcom/wecloud/load/lib/NativeClass;->group2Init(Ljava/lang/String;Lcom/wecloud/load/lib/NativeClass$Callback;)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :sswitch_3
    const-string v2, "group1Init"

    .line 67
    .line 68
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-nez v2, :cond_3

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    sget-object p1, Lcom/wecloud/load/lib/NativeClass;->a:Lcom/wecloud/load/lib/NativeClass;

    .line 76
    .line 77
    invoke-virtual {p1, p2, v1}, Lcom/wecloud/load/lib/NativeClass;->group1Init(Ljava/lang/String;Lcom/wecloud/load/lib/NativeClass$Callback;)V

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :sswitch_4
    const-string v2, "group0Init"

    .line 82
    .line 83
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-nez v2, :cond_4

    .line 88
    .line 89
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    const-string v1, "when else methodName  "

    .line 95
    .line 96
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    goto :goto_4

    .line 103
    :cond_4
    sget-object p1, Lcom/wecloud/load/lib/NativeClass;->a:Lcom/wecloud/load/lib/NativeClass;

    .line 104
    .line 105
    invoke-virtual {p1, p2, v1}, Lcom/wecloud/load/lib/NativeClass;->group0Init(Ljava/lang/String;Lcom/wecloud/load/lib/NativeClass$Callback;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 106
    .line 107
    .line 108
    :goto_1
    move v0, p3

    .line 109
    goto :goto_4

    .line 110
    :catch_2
    move-exception p1

    .line 111
    goto :goto_3

    .line 112
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    new-instance p2, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    .line 121
    const-string p3, "when callNativeInit e  "

    .line 122
    .line 123
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    goto :goto_4

    .line 130
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    new-instance p3, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .line 138
    .line 139
    const-string v1, "SO\u52a0\u8f7d\u5931\u8d25 (UnsatisfiedLinkError): "

    .line 140
    .line 141
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    const-string p3, "SoLoadService"

    .line 152
    .line 153
    invoke-static {p3, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    .line 155
    .line 156
    :goto_4
    return v0

    .line 157
    :sswitch_data_0
    .sparse-switch
        0x49c78241 -> :sswitch_4
        0x49d599c2 -> :sswitch_3
        0x49e3b143 -> :sswitch_2
        0x49f1c8c4 -> :sswitch_1
        0x49ffe045 -> :sswitch_0
    .end sparse-switch
.end method

.method private final r(Lcom/wecloud/load/lib/SoDownloadRequest;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/wecloud/load/lib/SoDownloadRequest;->isValid()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e9

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string p1, "\u8bf7\u6c42\u6570\u636e\u65e0\u6548"

    .line 10
    .line 11
    invoke-direct {p0, v1, p1}, Lcom/wecloud/load/lib/SoLoadService;->u(ILjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/wecloud/load/lib/SoDownloadRequest;->getSoZipList()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    const-string p1, "SO ZIP\u5217\u8868\u4e3a\u7a7a"

    .line 26
    .line 27
    invoke-direct {p0, v1, p1}, Lcom/wecloud/load/lib/SoLoadService;->u(ILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    invoke-virtual {p1}, Lcom/wecloud/load/lib/SoDownloadRequest;->getControlConfig()Lcom/wecloud/load/lib/bean/SoLoadControlConfig;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/wecloud/load/lib/bean/SoLoadControlConfig;->getExitProcess()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    invoke-direct {p0}, Lcom/wecloud/load/lib/SoLoadService;->A()V

    .line 44
    .line 45
    .line 46
    :cond_2
    iget-object p1, p0, Lcom/wecloud/load/lib/SoLoadService;->b:Lkotlinx/coroutines/t1;

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    if-eqz p1, :cond_3

    .line 50
    .line 51
    const/4 v2, 0x1

    .line 52
    invoke-static {p1, v1, v2, v1}, Lkotlinx/coroutines/t1$a;->b(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :cond_3
    iget-object p1, p0, Lcom/wecloud/load/lib/SoLoadService;->h:Ljava/util/concurrent/ConcurrentHashMap;

    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 58
    .line 59
    .line 60
    iget-object v2, p0, Lcom/wecloud/load/lib/SoLoadService;->a:Lkotlinx/coroutines/n0;

    .line 61
    .line 62
    new-instance v5, Lcom/wecloud/load/lib/SoLoadService$downloadAndLoadSoInternal$1;

    .line 63
    .line 64
    invoke-direct {v5, v0, p0, v1}, Lcom/wecloud/load/lib/SoLoadService$downloadAndLoadSoInternal$1;-><init>(Ljava/util/List;Lcom/wecloud/load/lib/SoLoadService;Lkotlin/coroutines/Continuation;)V

    .line 65
    .line 66
    .line 67
    const/4 v6, 0x3

    .line 68
    const/4 v7, 0x0

    .line 69
    const/4 v3, 0x0

    .line 70
    const/4 v4, 0x0

    .line 71
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iput-object p1, p0, Lcom/wecloud/load/lib/SoLoadService;->b:Lkotlinx/coroutines/t1;

    .line 76
    .line 77
    return-void
.end method

.method private final s()Lcom/wecloud/load/lib/bean/SoLoadControlConfig;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Ltx/b;->a:Ltx/b;

    .line 3
    .line 4
    invoke-virtual {v1}, Ltx/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const-string v2, "so_load_control_config"

    .line 9
    .line 10
    invoke-virtual {v1, v2, v0}, Lcom/tencent/mmkv/MMKV;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-static {v1}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v2, Lcom/google/gson/Gson;

    .line 24
    .line 25
    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 26
    .line 27
    .line 28
    const-class v3, Lcom/wecloud/load/lib/bean/SoLoadControlConfig;

    .line 29
    .line 30
    invoke-virtual {v2, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lcom/wecloud/load/lib/bean/SoLoadControlConfig;

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/wecloud/load/lib/bean/SoLoadControlConfig;->getExitProcess()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v4, "\u4ece MMKV \u8bfb\u53d6\u914d\u7f6e\u6210\u529f: exitProcess="

    .line 46
    .line 47
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    move-object v0, v1

    .line 54
    goto :goto_2

    .line 55
    :catch_0
    move-exception v1

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    :goto_0
    return-object v0

    .line 58
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    const-string v4, "\u4ece MMKV \u8bfb\u53d6\u914d\u7f6e\u5931\u8d25: "

    .line 68
    .line 69
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    const-string v3, "SoLoadService"

    .line 80
    .line 81
    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    .line 83
    .line 84
    :goto_2
    return-object v0
.end method

.method private final t(III)V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wecloud/load/lib/SoLoadService;->c:Lcom/wecloud/load/lib/h;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2, p3}, Lcom/wecloud/load/lib/h;->n0(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p1

    .line 10
    move-object v3, p1

    .line 11
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 12
    .line 13
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance p2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string p3, "\u56de\u8c03\u5f02\u5e38: "

    .line 23
    .line 24
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const/16 v5, 0x8

    .line 35
    .line 36
    const/4 v6, 0x0

    .line 37
    const-string v1, "SoLoadService"

    .line 38
    .line 39
    const/4 v4, 0x0

    .line 40
    invoke-static/range {v0 .. v6}, Lwf/a$a;->k(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    :goto_0
    return-void
.end method

.method private final u(ILjava/lang/String;)V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wecloud/load/lib/SoLoadService;->c:Lcom/wecloud/load/lib/h;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/wecloud/load/lib/h;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p1

    .line 10
    move-object v3, p1

    .line 11
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 12
    .line 13
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance p2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v1, "\u56de\u8c03\u5f02\u5e38: "

    .line 23
    .line 24
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const/16 v5, 0x8

    .line 35
    .line 36
    const/4 v6, 0x0

    .line 37
    const-string v1, "SoLoadService"

    .line 38
    .line 39
    const/4 v4, 0x0

    .line 40
    invoke-static/range {v0 .. v6}, Lwf/a$a;->k(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    :goto_0
    return-void
.end method

.method private final v(IIILjava/util/List;Ljava/util/Map;)V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wecloud/load/lib/SoLoadService;->c:Lcom/wecloud/load/lib/h;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move v1, p1

    .line 6
    move v2, p2

    .line 7
    move v3, p3

    .line 8
    move-object v4, p4

    .line 9
    move-object v5, p5

    .line 10
    invoke-interface/range {v0 .. v5}, Lcom/wecloud/load/lib/h;->q0(IIILjava/util/List;Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception p1

    .line 15
    move-object v3, p1

    .line 16
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 17
    .line 18
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance p2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string p3, "\u56de\u8c03\u5f02\u5e38: "

    .line 28
    .line 29
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const/16 v5, 0x8

    .line 40
    .line 41
    const/4 v6, 0x0

    .line 42
    const-string v1, "SoLoadService"

    .line 43
    .line 44
    const/4 v4, 0x0

    .line 45
    invoke-static/range {v0 .. v6}, Lwf/a$a;->k(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    :goto_0
    return-void
.end method

.method private final w(Ljava/lang/String;I)V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wecloud/load/lib/SoLoadService;->c:Lcom/wecloud/load/lib/h;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/wecloud/load/lib/h;->e(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p1

    .line 10
    move-object v3, p1

    .line 11
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 12
    .line 13
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance p2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v1, "\u56de\u8c03\u5f02\u5e38: "

    .line 23
    .line 24
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const/16 v5, 0x8

    .line 35
    .line 36
    const/4 v6, 0x0

    .line 37
    const-string v1, "SoLoadService"

    .line 38
    .line 39
    const/4 v4, 0x0

    .line 40
    invoke-static/range {v0 .. v6}, Lwf/a$a;->k(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    :goto_0
    return-void
.end method

.method private final x(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wecloud/load/lib/SoLoadService;->c:Lcom/wecloud/load/lib/h;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    const-string p2, ""

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception p1

    .line 11
    move-object v3, p1

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    :goto_0
    invoke-interface {v0, p1, p2}, Lcom/wecloud/load/lib/h;->R(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_2

    .line 17
    :goto_1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    new-instance p2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v1, "\u56de\u8c03\u5f02\u5e38: "

    .line 29
    .line 30
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    const/16 v5, 0x8

    .line 41
    .line 42
    const/4 v6, 0x0

    .line 43
    const-string v1, "SoLoadService"

    .line 44
    .line 45
    const/4 v4, 0x0

    .line 46
    invoke-static/range {v0 .. v6}, Lwf/a$a;->k(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    :goto_2
    return-void
.end method

.method private final y(Lcom/wecloud/load/lib/bean/SoZipInfo;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/wecloud/load/lib/SoLoadService$processSoZip$2;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, p1, p2, p0, v2}, Lcom/wecloud/load/lib/SoLoadService$processSoZip$2;-><init>(Lcom/wecloud/load/lib/bean/SoZipInfo;ILcom/wecloud/load/lib/SoLoadService;Lkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method


# virtual methods
.method public final B()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wecloud/load/lib/SoLoadService;->A()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/wecloud/load/lib/SoLoadService;->i:Lcom/wecloud/load/lib/SoLoadService$c;

    .line 2
    .line 3
    return-object p1
.end method

.method public onCreate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/tencent/mmkv/MMKV;->C(Landroid/content/Context;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/wecloud/load/lib/p;->a:Lcom/wecloud/load/lib/p;

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Lcom/wecloud/load/lib/p;->b(Lcom/wecloud/load/lib/SoLoadService;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/wecloud/load/lib/p;->a:Lcom/wecloud/load/lib/p;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/wecloud/load/lib/p;->d()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/wecloud/load/lib/SoLoadService;->b:Lkotlinx/coroutines/t1;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/t1$a;->b(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/wecloud/load/lib/SoLoadService;->d:Lkotlinx/coroutines/t1;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/t1$a;->b(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lcom/wecloud/load/lib/SoLoadService;->a:Lkotlinx/coroutines/n0;

    .line 26
    .line 27
    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/o0;->d(Lkotlinx/coroutines/n0;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v1, "onDestroy "

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final z()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/wecloud/load/lib/SoLoadService;->e:Lkotlinx/coroutines/t1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/t1$a;->b(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v3, p0, Lcom/wecloud/load/lib/SoLoadService;->a:Lkotlinx/coroutines/n0;

    .line 11
    .line 12
    new-instance v6, Lcom/wecloud/load/lib/SoLoadService$scheduleCheckExit$1;

    .line 13
    .line 14
    invoke-direct {v6, p0, v1}, Lcom/wecloud/load/lib/SoLoadService$scheduleCheckExit$1;-><init>(Lcom/wecloud/load/lib/SoLoadService;Lkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    const/4 v7, 0x3

    .line 18
    const/4 v8, 0x0

    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v5, 0x0

    .line 21
    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/wecloud/load/lib/SoLoadService;->e:Lkotlinx/coroutines/t1;

    .line 26
    .line 27
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 28
    .line 29
    const/4 v5, 0x4

    .line 30
    const/4 v6, 0x0

    .line 31
    const-string v2, "SoLoadManagerExample"

    .line 32
    .line 33
    const-string v3, "\u5df2\u542f\u52a8\u9000\u51fa\u76d1\u63a7\u4efb\u52a1\uff0c\u6bcf30\u5206\u949f\u68c0\u67e5\u4e00\u6b21"

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
