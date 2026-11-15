.class public final Lcom/cloud/tmc/offline/download/resource/processor/OfflineResourceProcessorProxyImpl;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/offline/download/resource/processor/IOfflineResourceProcessorProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/offline/download/resource/processor/OfflineResourceProcessorProxyImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/cloud/tmc/offline/download/resource/processor/OfflineResourceProcessorProxyImpl;",
        "Lcom/cloud/tmc/offline/download/resource/processor/IOfflineResourceProcessorProxy;",
        "()V",
        "getInterceptors",
        "",
        "Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept;",
        "getResultWithInterceptorChain",
        "Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Result;",
        "params",
        "Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Params;",
        "Companion",
        "com.cloud.tmc.offline_download"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/offline/download/resource/processor/OfflineResourceProcessorProxyImpl$Companion;

.field private static final TAG:Ljava/lang/String; = "TmcOfflineDownload: OfflineResourceProcessor"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/tmc/offline/download/resource/processor/OfflineResourceProcessorProxyImpl$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/cloud/tmc/offline/download/resource/processor/OfflineResourceProcessorProxyImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/tmc/offline/download/resource/processor/OfflineResourceProcessorProxyImpl;->Companion:Lcom/cloud/tmc/offline/download/resource/processor/OfflineResourceProcessorProxyImpl$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final getInterceptors()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/cloud/tmc/offline/download/resource/processor/AhaSoFileFormatConvertResourcesIntercept;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/cloud/tmc/offline/download/resource/processor/AhaSoFileFormatConvertResourcesIntercept;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    new-instance v1, Lcom/cloud/tmc/offline/download/resource/processor/FileResourceIntercept;

    .line 15
    .line 16
    invoke-direct {v1}, Lcom/cloud/tmc/offline/download/resource/processor/FileResourceIntercept;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    return-object v0
.end method


# virtual methods
.method public getResultWithInterceptorChain(Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Params;)Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Result;
    .locals 3

    .line 1
    const-string v0, "params"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/cloud/tmc/offline/download/resource/processor/OfflineResourceProcessorProxyImpl;->getInterceptors()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Ljava/lang/Iterable;

    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->B(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 18
    .line 19
    .line 20
    new-instance v1, Lcom/cloud/tmc/offline/download/resource/processor/FinalResourcesIntercept;

    .line 21
    .line 22
    invoke-direct {v1}, Lcom/cloud/tmc/offline/download/resource/processor/FinalResourcesIntercept;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    new-instance v1, Lcom/cloud/tmc/offline/download/resource/processor/intercept/RealOfflineResourceInterceptChain;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-direct {v1, v0, v2, p1}, Lcom/cloud/tmc/offline/download/resource/processor/intercept/RealOfflineResourceInterceptChain;-><init>(Ljava/util/List;ILcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Params;)V

    .line 32
    .line 33
    .line 34
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/cloud/tmc/offline/download/resource/processor/intercept/RealOfflineResourceInterceptChain;->proceed(Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Params;)Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Result;

    .line 35
    .line 36
    .line 37
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    const-string v0, "TmcOfflineDownload: OfflineResourceProcessor"

    .line 41
    .line 42
    const-string v1, "Proceeding to offline resource"

    .line 43
    .line 44
    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    new-instance p1, Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Result;

    .line 48
    .line 49
    const/4 v0, 0x1

    .line 50
    const/4 v1, 0x0

    .line 51
    invoke-direct {p1, v1, v0, v1}, Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Result;-><init>(Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    return-object p1
.end method
