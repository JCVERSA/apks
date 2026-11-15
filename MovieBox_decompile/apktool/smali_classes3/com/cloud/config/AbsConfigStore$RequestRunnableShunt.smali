.class public final Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/config/AbsConfigStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestRunnableShunt"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0014\u0008\u0000\u0018\u00002\u00020\u0001Be\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0014\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0006\u0012\u0014\u0010\u0008\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0006\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R\u0019\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015R\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018R%\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001bR%\u0010\u0008\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\u0019\u001a\u0004\u0008\u001c\u0010\u001bR\u0017\u0010\t\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\u0013\u001a\u0004\u0008\u001d\u0010\u0015R\u0019\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u001e\u001a\u0004\u0008\u001f\u0010 R\u0019\u0010\r\u001a\u0004\u0018\u00010\u000c8\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010!\u001a\u0004\u0008\"\u0010#\u00a8\u0006$"
    }
    d2 = {
        "Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;",
        "Ljava/lang/Runnable;",
        "",
        "packageName",
        "Lcom/cloud/config/AbsConfigStore;",
        "store",
        "",
        "headers",
        "requestJson",
        "requestUrl",
        "Lcom/cloud/config/r;",
        "configListener",
        "Lcom/cloud/config/s;",
        "configResultListener",
        "<init>",
        "(Ljava/lang/String;Lcom/cloud/config/AbsConfigStore;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lcom/cloud/config/r;Lcom/cloud/config/s;)V",
        "",
        "run",
        "()V",
        "Ljava/lang/String;",
        "getPackageName",
        "()Ljava/lang/String;",
        "Lcom/cloud/config/AbsConfigStore;",
        "getStore",
        "()Lcom/cloud/config/AbsConfigStore;",
        "Ljava/util/Map;",
        "getHeaders",
        "()Ljava/util/Map;",
        "getRequestJson",
        "getRequestUrl",
        "Lcom/cloud/config/r;",
        "getConfigListener",
        "()Lcom/cloud/config/r;",
        "Lcom/cloud/config/s;",
        "getConfigResultListener",
        "()Lcom/cloud/config/s;",
        "config_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final configListener:Lcom/cloud/config/r;

.field private final configResultListener:Lcom/cloud/config/s;

.field private final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final packageName:Ljava/lang/String;

.field private final requestJson:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final requestUrl:Ljava/lang/String;

.field private final store:Lcom/cloud/config/AbsConfigStore;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/cloud/config/AbsConfigStore;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lcom/cloud/config/r;Lcom/cloud/config/s;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/cloud/config/AbsConfigStore;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/cloud/config/r;",
            "Lcom/cloud/config/s;",
            ")V"
        }
    .end annotation

    const-string p6, "store"

    invoke-static {p2, p6}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "requestUrl"

    invoke-static {p5, p6}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;->packageName:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;->store:Lcom/cloud/config/AbsConfigStore;

    .line 4
    iput-object p3, p0, Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;->headers:Ljava/util/Map;

    .line 5
    iput-object p4, p0, Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;->requestJson:Ljava/util/Map;

    .line 6
    iput-object p5, p0, Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;->requestUrl:Ljava/lang/String;

    .line 7
    iput-object p7, p0, Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;->configResultListener:Lcom/cloud/config/s;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/cloud/config/AbsConfigStore;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lcom/cloud/config/r;Lcom/cloud/config/s;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    and-int/lit8 v0, p8, 0x20

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v8, v1

    goto :goto_0

    :cond_0
    move-object/from16 v8, p6

    :goto_0
    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_1

    move-object v9, v1

    goto :goto_1

    :cond_1
    move-object/from16 v9, p7

    :goto_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 8
    invoke-direct/range {v2 .. v9}, Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;-><init>(Ljava/lang/String;Lcom/cloud/config/AbsConfigStore;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lcom/cloud/config/r;Lcom/cloud/config/s;)V

    return-void
.end method

.method public static synthetic a(Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;->run$lambda-0(Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final run$lambda-0(Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;)V
    .locals 2

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;->configResultListener:Lcom/cloud/config/s;

    .line 7
    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/16 v0, 0x3eb

    .line 12
    .line 13
    const-string v1, "try catch exception"

    .line 14
    .line 15
    invoke-interface {p0, v0, v1}, Lcom/cloud/config/s;->onLoadDataFailure(ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method


# virtual methods
.method public final getConfigListener()Lcom/cloud/config/r;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final getConfigResultListener()Lcom/cloud/config/s;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;->configResultListener:Lcom/cloud/config/s;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;->headers:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRequestJson()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;->requestJson:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRequestUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;->requestUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStore()Lcom/cloud/config/AbsConfigStore;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;->store:Lcom/cloud/config/AbsConfigStore;

    .line 2
    .line 3
    return-object v0
.end method

.method public run()V
    .locals 6

    .line 1
    const-string v0, "config"

    .line 2
    .line 3
    :try_start_0
    sget-object v1, Lcom/cloud/config/utils/XLogUtil;->Companion:Lcom/cloud/config/utils/XLogUtil$Companion;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/cloud/config/utils/XLogUtil$Companion;->getLog()Lcom/cloud/config/utils/XLogUtil;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v3, "requestJson --> "

    .line 10
    .line 11
    iget-object v4, p0, Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;->requestJson:Ljava/util/Map;

    .line 12
    .line 13
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->q(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v2, v0, v3}, Lcom/cloud/config/utils/XLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/cloud/config/utils/XLogUtil$Companion;->getLog()Lcom/cloud/config/utils/XLogUtil;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "requestUrl --> "

    .line 25
    .line 26
    iget-object v3, p0, Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;->requestUrl:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->q(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1, v0, v2}, Lcom/cloud/config/utils/XLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sget-object v1, Lcom/tmc/network/HttpRequestor;->Companion:Lcom/tmc/network/HttpRequestor$Companion;

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/tmc/network/HttpRequestor$Companion;->getInstance()Lcom/tmc/network/HttpRequestor;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-nez v1, :cond_0

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_0
    iget-object v2, p0, Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;->requestUrl:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v3, p0, Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;->headers:Ljava/util/Map;

    .line 47
    .line 48
    if-nez v3, :cond_1

    .line 49
    .line 50
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 51
    .line 52
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception v1

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;->requestJson:Ljava/util/Map;

    .line 59
    .line 60
    new-instance v5, Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt$a;

    .line 61
    .line 62
    invoke-direct {v5, p0}, Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt$a;-><init>(Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/tmc/network/HttpRequestor;->get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lokhttp3/Callback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :goto_1
    sget-object v2, Lcom/cloud/config/utils/XLogUtil;->Companion:Lcom/cloud/config/utils/XLogUtil$Companion;

    .line 70
    .line 71
    invoke-virtual {v2}, Lcom/cloud/config/utils/XLogUtil$Companion;->getLog()Lcom/cloud/config/utils/XLogUtil;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    const-string v3, "getStackTraceString(e)"

    .line 80
    .line 81
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, v0, v1}, Lcom/cloud/config/utils/XLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-static {}, Lcom/cloud/config/utils/ExecutorUtils;->main()Ljava/util/concurrent/ExecutorService;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    new-instance v1, Lcom/cloud/config/k;

    .line 92
    .line 93
    invoke-direct {v1, p0}, Lcom/cloud/config/k;-><init>(Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;)V

    .line 94
    .line 95
    .line 96
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 97
    .line 98
    .line 99
    :goto_2
    return-void
.end method
