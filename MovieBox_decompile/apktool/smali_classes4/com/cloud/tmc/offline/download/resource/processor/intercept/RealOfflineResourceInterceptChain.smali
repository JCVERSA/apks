.class public final Lcom/cloud/tmc/offline/download/resource/processor/intercept/RealOfflineResourceInterceptChain;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Chain;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B#\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u001c\u0010\n\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u0002J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u0008H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/cloud/tmc/offline/download/resource/processor/intercept/RealOfflineResourceInterceptChain;",
        "Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Chain;",
        "interceptors",
        "",
        "Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept;",
        "index",
        "",
        "params",
        "Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Params;",
        "(Ljava/util/List;ILcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Params;)V",
        "copy",
        "proceed",
        "Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Result;",
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


# instance fields
.field private final index:I

.field private final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept;",
            ">;"
        }
    .end annotation
.end field

.field private final params:Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Params;


# direct methods
.method public constructor <init>(Ljava/util/List;ILcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Params;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept;",
            ">;I",
            "Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Params;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "interceptors"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "params"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/cloud/tmc/offline/download/resource/processor/intercept/RealOfflineResourceInterceptChain;->interceptors:Ljava/util/List;

    .line 15
    .line 16
    iput p2, p0, Lcom/cloud/tmc/offline/download/resource/processor/intercept/RealOfflineResourceInterceptChain;->index:I

    .line 17
    .line 18
    iput-object p3, p0, Lcom/cloud/tmc/offline/download/resource/processor/intercept/RealOfflineResourceInterceptChain;->params:Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Params;

    .line 19
    .line 20
    return-void
.end method

.method private final copy(ILcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Params;)Lcom/cloud/tmc/offline/download/resource/processor/intercept/RealOfflineResourceInterceptChain;
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/tmc/offline/download/resource/processor/intercept/RealOfflineResourceInterceptChain;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/offline/download/resource/processor/intercept/RealOfflineResourceInterceptChain;->interceptors:Ljava/util/List;

    .line 4
    .line 5
    invoke-direct {v0, v1, p1, p2}, Lcom/cloud/tmc/offline/download/resource/processor/intercept/RealOfflineResourceInterceptChain;-><init>(Ljava/util/List;ILcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Params;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method static synthetic copy$default(Lcom/cloud/tmc/offline/download/resource/processor/intercept/RealOfflineResourceInterceptChain;ILcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Params;ILjava/lang/Object;)Lcom/cloud/tmc/offline/download/resource/processor/intercept/RealOfflineResourceInterceptChain;
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    iget p1, p0, Lcom/cloud/tmc/offline/download/resource/processor/intercept/RealOfflineResourceInterceptChain;->index:I

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lcom/cloud/tmc/offline/download/resource/processor/intercept/RealOfflineResourceInterceptChain;->params:Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Params;

    .line 12
    .line 13
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/offline/download/resource/processor/intercept/RealOfflineResourceInterceptChain;->copy(ILcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Params;)Lcom/cloud/tmc/offline/download/resource/processor/intercept/RealOfflineResourceInterceptChain;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method


# virtual methods
.method public params()Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Params;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/resource/processor/intercept/RealOfflineResourceInterceptChain;->params:Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Params;

    .line 2
    .line 3
    return-object v0
.end method

.method public proceed(Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Params;)Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Result;
    .locals 3

    .line 1
    const-string v0, "params"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/cloud/tmc/offline/download/resource/processor/intercept/RealOfflineResourceInterceptChain;->index:I

    .line 7
    .line 8
    iget-object v1, p0, Lcom/cloud/tmc/offline/download/resource/processor/intercept/RealOfflineResourceInterceptChain;->interceptors:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x1

    .line 15
    if-lt v0, v1, :cond_0

    .line 16
    .line 17
    new-instance p1, Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Result;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-direct {p1, v0, v2, v0}, Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Result;-><init>(Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 21
    .line 22
    .line 23
    return-object p1

    .line 24
    :cond_0
    iget v0, p0, Lcom/cloud/tmc/offline/download/resource/processor/intercept/RealOfflineResourceInterceptChain;->index:I

    .line 25
    .line 26
    add-int/2addr v0, v2

    .line 27
    invoke-direct {p0, v0, p1}, Lcom/cloud/tmc/offline/download/resource/processor/intercept/RealOfflineResourceInterceptChain;->copy(ILcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Params;)Lcom/cloud/tmc/offline/download/resource/processor/intercept/RealOfflineResourceInterceptChain;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/resource/processor/intercept/RealOfflineResourceInterceptChain;->interceptors:Ljava/util/List;

    .line 32
    .line 33
    iget v1, p0, Lcom/cloud/tmc/offline/download/resource/processor/intercept/RealOfflineResourceInterceptChain;->index:I

    .line 34
    .line 35
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept;

    .line 40
    .line 41
    invoke-interface {v0, p1}, Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept;->intercept(Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Chain;)Lcom/cloud/tmc/offline/download/resource/processor/intercept/IOfflineResourceIntercept$Result;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    return-object p1
.end method
