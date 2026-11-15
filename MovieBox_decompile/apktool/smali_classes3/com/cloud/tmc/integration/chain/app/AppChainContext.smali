.class public final Lcom/cloud/tmc/integration/chain/app/AppChainContext;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/integration/chain/ChainContext;
.implements Lcom/cloud/tmc/integration/chain/app/IAppOpen;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/chain/app/AppChainContext$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010%\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0018\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0019\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0019\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003JB\u0010g\u001a\u0002022\u001a\u0008\u0002\u0010h\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\"0(0!2\u0014\u0008\u0002\u0010i\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\"0!2\u0006\u0010j\u001a\u000202H\u0002JH\u0010k\u001a\u00020l2\u0006\u0010m\u001a\u00020R2\u001a\u0008\u0002\u0010h\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\"0(0!2\u0014\u0008\u0002\u0010i\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\"0!2\u0006\u0010n\u001a\u00020\u001bJ\u0010\u0010o\u001a\u00020l2\u0006\u0010p\u001a\u00020qH\u0016J\u0010\u0010r\u001a\u00020l2\u0006\u0010p\u001a\u00020qH\u0002J\u0008\u0010s\u001a\u00020\u001bH\u0002J\u0018\u0010b\u001a\u00020\u001b2\u0006\u0010t\u001a\u00020\u001b2\u0006\u0010u\u001a\u00020\u001bH\u0002J\u0010\u0010v\u001a\u00020\"2\u0006\u0010w\u001a\u00020\u0012H\u0002J\u0010\u0010x\u001a\u00020l2\u0006\u0010y\u001a\u00020qH\u0016J\u0010\u0010z\u001a\u00020l2\u0006\u0010w\u001a\u00020\u0012H\u0002J\u0010\u0010{\u001a\u00020l2\u0006\u0010|\u001a\u00020\u0012H\u0002J\u0010\u0010}\u001a\u00020l2\u0006\u0010~\u001a\u00020\u0012H\u0002J\u0011\u0010\u007f\u001a\u00020l2\u0007\u0010\u0080\u0001\u001a\u00020\u0012H\u0002J\u0011\u0010\u0081\u0001\u001a\u00020l2\u0006\u0010p\u001a\u00020qH\u0002J\u0018\u0010\u0082\u0001\u001a\u00020l2\u0006\u0010p\u001a\u00020q2\u0007\u0010\u0083\u0001\u001a\u000202J\u0011\u0010\u0084\u0001\u001a\u00020l2\u0006\u0010p\u001a\u00020qH\u0002J\u0018\u0010\u0085\u0001\u001a\u00020l2\u0006\u0010p\u001a\u00020q2\u0007\u0010\u0083\u0001\u001a\u000202J\u0007\u0010\u0086\u0001\u001a\u00020lJ\u0011\u0010\u0087\u0001\u001a\u00020l2\u0006\u0010y\u001a\u00020qH\u0002J\u0011\u0010\u0088\u0001\u001a\u00020l2\u0006\u0010y\u001a\u00020qH\u0002J\u0011\u0010\u0089\u0001\u001a\u00020l2\u0006\u0010w\u001a\u00020\u0012H\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR$\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u000b8V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0014\"\u0004\u0008\u0019\u0010\u0016R\u001a\u0010\u001a\u001a\u00020\u001bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR&\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\"0!X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R,\u0010\'\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\"0(0!X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010$\"\u0004\u0008*\u0010&R\u001a\u0010+\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010\u0007\"\u0004\u0008-\u0010\tR\u001a\u0010.\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u0010\u0007\"\u0004\u00080\u0010\tR\u001a\u00101\u001a\u000202X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u00103\"\u0004\u00084\u00105R\u001a\u00106\u001a\u000202X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00086\u00103\"\u0004\u00087\u00105R\u001a\u00108\u001a\u00020\u001bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00089\u0010\u001d\"\u0004\u0008:\u0010\u001fR\u001a\u0010;\u001a\u000202X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008<\u00103\"\u0004\u0008=\u00105R\u001a\u0010>\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008?\u0010\u0007\"\u0004\u0008@\u0010\tR\u001a\u0010A\u001a\u000202X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008B\u00103\"\u0004\u0008C\u00105R\u001a\u0010D\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008E\u0010\u0007\"\u0004\u0008F\u0010\tR\u001a\u0010G\u001a\u000202X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008H\u00103\"\u0004\u0008I\u00105R\u001a\u0010J\u001a\u00020KX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008L\u0010M\"\u0004\u0008N\u0010OR\u0017\u0010P\u001a\u0008\u0012\u0004\u0012\u00020R0Q\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008S\u0010TR\u001a\u0010U\u001a\u00020KX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008V\u0010M\"\u0004\u0008W\u0010OR\u001a\u0010X\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Y\u0010\u0007\"\u0004\u0008Z\u0010\tR&\u0010[\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\"0!X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\\\u0010$\"\u0004\u0008]\u0010&R,\u0010^\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\"0(0!X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008_\u0010$\"\u0004\u0008`\u0010&R\u001a\u0010a\u001a\u00020\u001bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008b\u0010\u001d\"\u0004\u0008c\u0010\u001fR&\u0010d\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u001b0!X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008e\u0010$\"\u0004\u0008f\u0010&\u00a8\u0006\u008a\u0001"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/chain/app/AppChainContext;",
        "Lcom/cloud/tmc/integration/chain/ChainContext;",
        "Lcom/cloud/tmc/integration/chain/app/IAppOpen;",
        "()V",
        "appId",
        "",
        "getAppId",
        "()Ljava/lang/String;",
        "setAppId",
        "(Ljava/lang/String;)V",
        "value",
        "Lcom/cloud/tmc/integration/chain/ContextType;",
        "contextType",
        "getContextType",
        "()Lcom/cloud/tmc/integration/chain/ContextType;",
        "setContextType",
        "(Lcom/cloud/tmc/integration/chain/ContextType;)V",
        "currentChainEndState",
        "Lcom/cloud/tmc/integration/chain/ChainState;",
        "getCurrentChainEndState",
        "()Lcom/cloud/tmc/integration/chain/ChainState;",
        "setCurrentChainEndState",
        "(Lcom/cloud/tmc/integration/chain/ChainState;)V",
        "currentChainStartState",
        "getCurrentChainStartState",
        "setCurrentChainStartState",
        "firstPageMaxStage",
        "",
        "getFirstPageMaxStage",
        "()I",
        "setFirstPageMaxStage",
        "(I)V",
        "firstPageStateCostTime",
        "",
        "",
        "getFirstPageStateCostTime",
        "()Ljava/util/Map;",
        "setFirstPageStateCostTime",
        "(Ljava/util/Map;)V",
        "firstPageStateRangeTime",
        "",
        "getFirstPageStateRangeTime",
        "setFirstPageStateRangeTime",
        "h5ProgressCollectList",
        "getH5ProgressCollectList",
        "setH5ProgressCollectList",
        "hotOpenType",
        "getHotOpenType",
        "setHotOpenType",
        "isReportEnd",
        "",
        "()Z",
        "setReportEnd",
        "(Z)V",
        "isReportMid",
        "setReportMid",
        "maxStage",
        "getMaxStage",
        "setMaxStage",
        "offScreenRender",
        "getOffScreenRender",
        "setOffScreenRender",
        "openChannel",
        "getOpenChannel",
        "setOpenChannel",
        "openMiniAppEndResult",
        "getOpenMiniAppEndResult",
        "setOpenMiniAppEndResult",
        "openMiniAppFailedReason",
        "getOpenMiniAppFailedReason",
        "setOpenMiniAppFailedReason",
        "openMiniAppMidResult",
        "getOpenMiniAppMidResult",
        "setOpenMiniAppMidResult",
        "openedPageCount",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "getOpenedPageCount",
        "()Ljava/util/concurrent/atomic/AtomicInteger;",
        "setOpenedPageCount",
        "(Ljava/util/concurrent/atomic/AtomicInteger;)V",
        "pageContexts",
        "Ljava/util/Stack;",
        "Lcom/cloud/tmc/integration/chain/page/PageChainContext;",
        "getPageContexts",
        "()Ljava/util/Stack;",
        "pageIndexOfApp",
        "getPageIndexOfApp",
        "setPageIndexOfApp",
        "scene",
        "getScene",
        "setScene",
        "stateCostTime",
        "getStateCostTime",
        "setStateCostTime",
        "stateRangeTime",
        "getStateRangeTime",
        "setStateRangeTime",
        "syncType",
        "getSyncType",
        "setSyncType",
        "syncTypeMap",
        "getSyncTypeMap",
        "setSyncTypeMap",
        "appendStagesFail",
        "tmpStateRangeTime",
        "tmpStateCostTime",
        "existInStage",
        "appendStagesSuccess",
        "",
        "pageChainContext",
        "stage",
        "destroy",
        "data",
        "Landroid/os/Bundle;",
        "destroyReport",
        "getMaxStageFromCompare",
        "currentSyncType",
        "nextSyncType",
        "getTime",
        "chainState",
        "hotOpen",
        "dataBundle",
        "insertData",
        "parseChainEnd",
        "chainEndState",
        "parseChainStart",
        "chainStartState",
        "parseChianError",
        "appErrorState",
        "reportAppOpenEndFail",
        "reportAppOpenEndSuccess",
        "launch",
        "reportAppOpenMidFail",
        "reportAppOpenMidSuccess",
        "reportFailureClickReloadButton",
        "reportPageOpenEndFail",
        "reportPageOpenMidFail",
        "setChainState",
        "com.cloud.tmc.integration"
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
.field private appId:Ljava/lang/String;

.field private currentChainEndState:Lcom/cloud/tmc/integration/chain/ChainState;

.field private currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

.field private firstPageMaxStage:I

.field private firstPageStateCostTime:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private firstPageStateRangeTime:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private h5ProgressCollectList:Ljava/lang/String;

.field private hotOpenType:Ljava/lang/String;

.field private isReportEnd:Z

.field private isReportMid:Z

.field private maxStage:I

.field private offScreenRender:Z

.field private openChannel:Ljava/lang/String;

.field private openMiniAppEndResult:Z

.field private openMiniAppFailedReason:Ljava/lang/String;

.field private openMiniAppMidResult:Z

.field private openedPageCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final pageContexts:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/cloud/tmc/integration/chain/page/PageChainContext;",
            ">;"
        }
    .end annotation
.end field

.field private pageIndexOfApp:Ljava/util/concurrent/atomic/AtomicInteger;

.field private scene:Ljava/lang/String;

.field private stateCostTime:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private stateRangeTime:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private syncType:I

.field private syncTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->appId:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->openMiniAppFailedReason:Ljava/lang/String;

    .line 9
    .line 10
    new-instance v1, Ljava/util/Stack;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->pageContexts:Ljava/util/Stack;

    .line 16
    .line 17
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->openedPageCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 24
    .line 25
    const-string v1, "0"

    .line 26
    .line 27
    iput-object v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->openChannel:Ljava/lang/String;

    .line 28
    .line 29
    iput-object v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->scene:Ljava/lang/String;

    .line 30
    .line 31
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateCostTime:Ljava/util/Map;

    .line 37
    .line 38
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 39
    .line 40
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateRangeTime:Ljava/util/Map;

    .line 44
    .line 45
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 46
    .line 47
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 48
    .line 49
    .line 50
    iput-object v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->pageIndexOfApp:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 51
    .line 52
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 53
    .line 54
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->firstPageStateCostTime:Ljava/util/Map;

    .line 58
    .line 59
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 60
    .line 61
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->firstPageStateRangeTime:Ljava/util/Map;

    .line 65
    .line 66
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 67
    .line 68
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->syncTypeMap:Ljava/util/Map;

    .line 72
    .line 73
    iput-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->h5ProgressCollectList:Ljava/lang/String;

    .line 74
    .line 75
    const-string v0, "-1"

    .line 76
    .line 77
    iput-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->hotOpenType:Ljava/lang/String;

    .line 78
    .line 79
    return-void
.end method

.method private final appendStagesFail(Ljava/util/Map;Ljava/util/Map;Z)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;Z)Z"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const-class v1, Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, "_appendStages"

    .line 17
    .line 18
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "chainPoint"

    .line 26
    .line 27
    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->openChannel:Ljava/lang/String;

    .line 31
    .line 32
    const-string v2, "3"

    .line 33
    .line 34
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    const/4 v2, 0x1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 42
    .line 43
    .line 44
    move-result-wide v3

    .line 45
    iget-object v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    .line 46
    .line 47
    if-eqz v1, :cond_0

    .line 48
    .line 49
    invoke-interface {v1}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    move v1, v2

    .line 55
    :goto_0
    if-gt v2, v1, :cond_2

    .line 56
    .line 57
    move v5, v2

    .line 58
    :goto_1
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    const-wide/16 v7, 0x0

    .line 63
    .line 64
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    invoke-interface {p2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    const/4 v9, 0x2

    .line 84
    new-array v9, v9, [Ljava/lang/Long;

    .line 85
    .line 86
    aput-object v7, v9, v0

    .line 87
    .line 88
    aput-object v8, v9, v2

    .line 89
    .line 90
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->h([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    invoke-interface {p1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    if-eq v5, v1, :cond_2

    .line 98
    .line 99
    add-int/2addr v5, v2

    .line 100
    goto :goto_1

    .line 101
    :cond_1
    iget-object v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->openChannel:Ljava/lang/String;

    .line 102
    .line 103
    const-string v3, "0"

    .line 104
    .line 105
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-eqz v1, :cond_2

    .line 110
    .line 111
    iget-object v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateRangeTime:Ljava/util/Map;

    .line 112
    .line 113
    invoke-interface {p1, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 114
    .line 115
    .line 116
    iget-object v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateCostTime:Ljava/util/Map;

    .line 117
    .line 118
    invoke-interface {p2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 119
    .line 120
    .line 121
    :cond_2
    iget-object v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    .line 122
    .line 123
    if-eqz v1, :cond_4

    .line 124
    .line 125
    invoke-interface {v1}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    const/16 v3, 0xb

    .line 130
    .line 131
    if-ne v1, v3, :cond_4

    .line 132
    .line 133
    iget-object v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainEndState:Lcom/cloud/tmc/integration/chain/ChainState;

    .line 134
    .line 135
    if-eqz v1, :cond_4

    .line 136
    .line 137
    invoke-interface {v1}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-ne v1, v3, :cond_4

    .line 142
    .line 143
    iget-object v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->firstPageStateRangeTime:Ljava/util/Map;

    .line 144
    .line 145
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    if-nez v1, :cond_3

    .line 150
    .line 151
    iget-object v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->firstPageStateRangeTime:Ljava/util/Map;

    .line 152
    .line 153
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    check-cast v1, Ljava/lang/Iterable;

    .line 158
    .line 159
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->t0(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    check-cast v1, Ljava/util/Map$Entry;

    .line 164
    .line 165
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    check-cast v1, Ljava/util/List;

    .line 170
    .line 171
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    if-ne v1, v2, :cond_3

    .line 176
    .line 177
    iget-object p3, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->firstPageStateRangeTime:Ljava/util/Map;

    .line 178
    .line 179
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 180
    .line 181
    .line 182
    move-result-object p3

    .line 183
    check-cast p3, Ljava/lang/Iterable;

    .line 184
    .line 185
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->t0(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object p3

    .line 189
    check-cast p3, Ljava/util/Map$Entry;

    .line 190
    .line 191
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object p3

    .line 195
    check-cast p3, Ljava/util/List;

    .line 196
    .line 197
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 198
    .line 199
    .line 200
    move-result-wide v3

    .line 201
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    iget-object p3, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->firstPageStateCostTime:Ljava/util/Map;

    .line 209
    .line 210
    iget-object v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->firstPageStateRangeTime:Ljava/util/Map;

    .line 211
    .line 212
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    check-cast v1, Ljava/lang/Iterable;

    .line 217
    .line 218
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->t0(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    check-cast v1, Ljava/util/Map$Entry;

    .line 223
    .line 224
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    iget-object v3, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->firstPageStateRangeTime:Ljava/util/Map;

    .line 229
    .line 230
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    check-cast v3, Ljava/lang/Iterable;

    .line 235
    .line 236
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->t0(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v3

    .line 240
    check-cast v3, Ljava/util/Map$Entry;

    .line 241
    .line 242
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v3

    .line 246
    check-cast v3, Ljava/util/List;

    .line 247
    .line 248
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v3

    .line 252
    check-cast v3, Ljava/lang/Number;

    .line 253
    .line 254
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    .line 255
    .line 256
    .line 257
    move-result-wide v3

    .line 258
    iget-object v5, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->firstPageStateRangeTime:Ljava/util/Map;

    .line 259
    .line 260
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 261
    .line 262
    .line 263
    move-result-object v5

    .line 264
    check-cast v5, Ljava/lang/Iterable;

    .line 265
    .line 266
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->t0(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v5

    .line 270
    check-cast v5, Ljava/util/Map$Entry;

    .line 271
    .line 272
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v5

    .line 276
    check-cast v5, Ljava/util/List;

    .line 277
    .line 278
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    check-cast v0, Ljava/lang/Number;

    .line 283
    .line 284
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 285
    .line 286
    .line 287
    move-result-wide v5

    .line 288
    sub-long/2addr v3, v5

    .line 289
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move p3, v2

    .line 297
    :cond_3
    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->firstPageStateRangeTime:Ljava/util/Map;

    .line 298
    .line 299
    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 300
    .line 301
    .line 302
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->firstPageStateCostTime:Ljava/util/Map;

    .line 303
    .line 304
    invoke-interface {p2, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 305
    .line 306
    .line 307
    :cond_4
    return p3
.end method

.method static synthetic appendStagesFail$default(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Ljava/util/Map;Ljava/util/Map;ZILjava/lang/Object;)Z
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 6
    .line 7
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    :cond_0
    and-int/lit8 p4, p4, 0x2

    .line 11
    .line 12
    if-eqz p4, :cond_1

    .line 13
    .line 14
    new-instance p2, Ljava/util/LinkedHashMap;

    .line 15
    .line 16
    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->appendStagesFail(Ljava/util/Map;Ljava/util/Map;Z)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0
.end method

.method public static synthetic appendStagesSuccess$default(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Lcom/cloud/tmc/integration/chain/page/PageChainContext;Ljava/util/Map;Ljava/util/Map;IILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p6, p5, 0x2

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    new-instance p2, Ljava/util/LinkedHashMap;

    .line 6
    .line 7
    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    :cond_0
    and-int/lit8 p5, p5, 0x4

    .line 11
    .line 12
    if-eqz p5, :cond_1

    .line 13
    .line 14
    new-instance p3, Ljava/util/LinkedHashMap;

    .line 15
    .line 16
    invoke-direct {p3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->appendStagesSuccess(Lcom/cloud/tmc/integration/chain/page/PageChainContext;Ljava/util/Map;Ljava/util/Map;I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private final destroyReport(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    const-class v0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-boolean v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->openMiniAppMidResult:Z

    .line 8
    .line 9
    iget-boolean v2, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->openMiniAppEndResult:Z

    .line 10
    .line 11
    iget-object v3, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->pageIndexOfApp:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    .line 13
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    new-instance v4, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v0, "_destroyReport->openMiniAppMidResult:"

    .line 26
    .line 27
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v0, ", openMiniAppEndResult:"

    .line 34
    .line 35
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v0, ", pageIndexOfApp:"

    .line 42
    .line 43
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const-string v1, "chainPoint"

    .line 54
    .line 55
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->openMiniAppMidResult:Z

    .line 59
    .line 60
    if-nez v0, :cond_1

    .line 61
    .line 62
    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->pageIndexOfApp:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_0

    .line 69
    .line 70
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->reportPageOpenMidFail(Landroid/os/Bundle;)V

    .line 71
    .line 72
    .line 73
    :cond_0
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->reportAppOpenMidFail(Landroid/os/Bundle;)V

    .line 74
    .line 75
    .line 76
    :cond_1
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->openMiniAppEndResult:Z

    .line 77
    .line 78
    if-nez v0, :cond_3

    .line 79
    .line 80
    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->pageIndexOfApp:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-nez v0, :cond_2

    .line 87
    .line 88
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->reportPageOpenEndFail(Landroid/os/Bundle;)V

    .line 89
    .line 90
    .line 91
    :cond_2
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->reportAppOpenEndFail(Landroid/os/Bundle;)V

    .line 92
    .line 93
    .line 94
    :cond_3
    return-void
.end method

.method private final getMaxStageFromCompare()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->maxStage:I

    .line 2
    .line 3
    iget v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->firstPageMaxStage:I

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v0, v1

    .line 9
    :goto_0
    return v0
.end method

.method private final getSyncType(II)I
    .locals 1

    .line 1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    return p1

    :cond_0
    if-nez p1, :cond_1

    return p2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private final getTime(Lcom/cloud/tmc/integration/chain/ChainState;)J
    .locals 2

    .line 1
    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getDataBundle()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TIME:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getDataBundle()Landroid/os/Bundle;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TIME:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getTime()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    :goto_0
    return-wide v0
.end method

.method private final insertData(Lcom/cloud/tmc/integration/chain/ChainState;)V
    .locals 4

    .line 1
    :try_start_0
    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getDataBundle()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "insertData_"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, "_"

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {p0, v1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->log(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_SYNC_TYPE:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_SYNC_TYPE:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    iget-object v3, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->syncTypeMap:Ljava/util/Map;

    .line 52
    .line 53
    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getChainType()Lcom/cloud/tmc/integration/chain/ChainType;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/ChainType;->getType()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    iget p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->syncType:I

    .line 69
    .line 70
    invoke-direct {p0, p1, v1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getSyncType(II)I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    iput p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->syncType:I

    .line 75
    .line 76
    :cond_0
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->OPEN_MINI_APP_FAILED_REASON:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_2

    .line 83
    .line 84
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->OPEN_MINI_APP_FAILED_REASON:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    if-nez p1, :cond_1

    .line 91
    .line 92
    const-string p1, "\u89e3\u6790\u5931\u8d25\u539f\u56e0\u9519\u8bef"

    .line 93
    .line 94
    :cond_1
    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->openMiniAppFailedReason:Ljava/lang/String;

    .line 95
    .line 96
    :cond_2
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->APP_H5_PROGRESS_STATUS:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-eqz p1, :cond_3

    .line 103
    .line 104
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->APP_H5_PROGRESS_STATUS:Ljava/lang/String;

    .line 105
    .line 106
    const-string v1, ""

    .line 107
    .line 108
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    const-string v1, "data.getString(APP_H5_PROGRESS_STATUS, \"\")"

    .line 113
    .line 114
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->h5ProgressCollectList:Ljava/lang/String;

    .line 118
    .line 119
    :cond_3
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->APP_OFF_SCREEN_RENDER:Ljava/lang/String;

    .line 120
    .line 121
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    if-eqz p1, :cond_4

    .line 126
    .line 127
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->APP_OFF_SCREEN_RENDER:Ljava/lang/String;

    .line 128
    .line 129
    const/4 v1, 0x0

    .line 130
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    iput-boolean p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->offScreenRender:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    .line 136
    :catchall_0
    :cond_4
    return-void
.end method

.method private final parseChainEnd(Lcom/cloud/tmc/integration/chain/ChainState;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "parseChainEnd_"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->log(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->appId:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainEndState:Lcom/cloud/tmc/integration/chain/ChainState;

    .line 31
    .line 32
    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateRangeTime:Ljava/util/Map;

    .line 33
    .line 34
    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Ljava/util/List;

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getTime(Lcom/cloud/tmc/integration/chain/ChainState;)J

    .line 51
    .line 52
    .line 53
    move-result-wide v1

    .line 54
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateRangeTime:Ljava/util/Map;

    .line 62
    .line 63
    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Ljava/util/List;

    .line 76
    .line 77
    const-wide/16 v1, 0x0

    .line 78
    .line 79
    if-eqz v0, :cond_2

    .line 80
    .line 81
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    const/4 v4, 0x2

    .line 86
    if-ne v3, v4, :cond_2

    .line 87
    .line 88
    const/4 v1, 0x1

    .line 89
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    check-cast v1, Ljava/lang/Number;

    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 96
    .line 97
    .line 98
    move-result-wide v1

    .line 99
    const/4 v3, 0x0

    .line 100
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    check-cast v0, Ljava/lang/Number;

    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 107
    .line 108
    .line 109
    move-result-wide v3

    .line 110
    sub-long/2addr v1, v3

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateCostTime:Ljava/util/Map;

    .line 112
    .line 113
    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    return-void
.end method

.method private final parseChainStart(Lcom/cloud/tmc/integration/chain/ChainState;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "parseChainStart_"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->log(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    instance-of v0, p1, Lcom/cloud/tmc/integration/chain/startState/SetupStepStartState;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getDataBundle()Landroid/os/Bundle;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_APP_ID:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getDataBundle()Landroid/os/Bundle;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_APP_ID:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    if-nez v1, :cond_0

    .line 48
    .line 49
    const-string v1, ""

    .line 50
    .line 51
    :cond_0
    iput-object v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->appId:Ljava/lang/String;

    .line 52
    .line 53
    :cond_1
    iget-object v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->appId:Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    return-void

    .line 62
    :cond_2
    if-eqz v0, :cond_4

    .line 63
    .line 64
    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->openChannel:Ljava/lang/String;

    .line 65
    .line 66
    const-string v1, "3"

    .line 67
    .line 68
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_4

    .line 73
    .line 74
    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getDataBundle()Landroid/os/Bundle;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_SCENE:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_3

    .line 85
    .line 86
    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getDataBundle()Landroid/os/Bundle;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_SCENE:Ljava/lang/String;

    .line 91
    .line 92
    const-string v2, "0"

    .line 93
    .line 94
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    const-string v1, "chainStartState.dataBund\u2026tString(CHAIN_SCENE, \"0\")"

    .line 99
    .line 100
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iput-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->scene:Ljava/lang/String;

    .line 104
    .line 105
    :cond_3
    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getDataBundle()Landroid/os/Bundle;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_OPEN_CHANNEL:Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_4

    .line 116
    .line 117
    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getDataBundle()Landroid/os/Bundle;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_OPEN_CHANNEL:Ljava/lang/String;

    .line 122
    .line 123
    const-string v2, "-1"

    .line 124
    .line 125
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    const-string v1, "chainStartState.dataBund\u2026CHAIN_OPEN_CHANNEL, \"-1\")"

    .line 130
    .line 131
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    iput-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->openChannel:Ljava/lang/String;

    .line 135
    .line 136
    :cond_4
    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    iput v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->maxStage:I

    .line 141
    .line 142
    const/4 v0, 0x0

    .line 143
    iput-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainEndState:Lcom/cloud/tmc/integration/chain/ChainState;

    .line 144
    .line 145
    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    .line 146
    .line 147
    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateRangeTime:Ljava/util/Map;

    .line 148
    .line 149
    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getTime(Lcom/cloud/tmc/integration/chain/ChainState;)J

    .line 158
    .line 159
    .line 160
    move-result-wide v2

    .line 161
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    const/4 v2, 0x1

    .line 166
    new-array v2, v2, [Ljava/lang/Long;

    .line 167
    .line 168
    const/4 v3, 0x0

    .line 169
    aput-object p1, v2, v3

    .line 170
    .line 171
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->h([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    return-void
.end method

.method private final parseChianError(Lcom/cloud/tmc/integration/chain/ChainState;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "parseChianError_"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->log(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->appId:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainEndState:Lcom/cloud/tmc/integration/chain/ChainState;

    .line 31
    .line 32
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateRangeTime:Ljava/util/Map;

    .line 37
    .line 38
    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Ljava/util/List;

    .line 51
    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    const/4 v2, 0x1

    .line 59
    if-ne v1, v2, :cond_1

    .line 60
    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 62
    .line 63
    .line 64
    move-result-wide v3

    .line 65
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    check-cast v1, Ljava/lang/Number;

    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 79
    .line 80
    .line 81
    move-result-wide v1

    .line 82
    const/4 v3, 0x0

    .line 83
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Ljava/lang/Number;

    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 90
    .line 91
    .line 92
    move-result-wide v3

    .line 93
    sub-long/2addr v1, v3

    .line 94
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateCostTime:Ljava/util/Map;

    .line 99
    .line 100
    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    :cond_1
    return-void
.end method

.method private final reportAppOpenEndFail(Landroid/os/Bundle;)V
    .locals 10

    .line 1
    const-class v0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-boolean v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->isReportEnd:Z

    .line 8
    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v0, "_reportAppOpenEndFail->isReportEnd:"

    .line 18
    .line 19
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "chainPoint"

    .line 30
    .line 31
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->isReportEnd:Z

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->isReportEnd:Z

    .line 41
    .line 42
    new-instance v1, Landroid/os/Bundle;

    .line 43
    .line 44
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 48
    .line 49
    .line 50
    const-string p1, "openMiniAppResult"

    .line 51
    .line 52
    const-string v2, "false"

    .line 53
    .line 54
    invoke-virtual {v1, p1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string p1, "openMiniAppFailedReason"

    .line 58
    .line 59
    iget-object v2, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->openMiniAppFailedReason:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v1, p1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const-string p1, "maxStage"

    .line 65
    .line 66
    invoke-direct {p0}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getMaxStageFromCompare()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    invoke-virtual {v1, p1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 71
    .line 72
    .line 73
    const-string p1, "syncType"

    .line 74
    .line 75
    iget v2, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->syncType:I

    .line 76
    .line 77
    invoke-virtual {v1, p1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->openChannel:Ljava/lang/String;

    .line 81
    .line 82
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    const-string v2, "open_channel"

    .line 87
    .line 88
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->hotOpenType:Ljava/lang/String;

    .line 92
    .line 93
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    const-string v2, "hot_open_type"

    .line 98
    .line 99
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TIME:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {v1, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-eqz p1, :cond_1

    .line 109
    .line 110
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TIME:Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {v1, p1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 113
    .line 114
    .line 115
    move-result-wide v2

    .line 116
    goto :goto_0

    .line 117
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 118
    .line 119
    .line 120
    move-result-wide v2

    .line 121
    :goto_0
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    .line 122
    .line 123
    const/4 v4, 0x0

    .line 124
    if-eqz p1, :cond_2

    .line 125
    .line 126
    iget-object v5, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainEndState:Lcom/cloud/tmc/integration/chain/ChainState;

    .line 127
    .line 128
    if-nez v5, :cond_2

    .line 129
    .line 130
    move v5, v0

    .line 131
    goto :goto_1

    .line 132
    :cond_2
    move v5, v4

    .line 133
    :goto_1
    if-eqz v5, :cond_6

    .line 134
    .line 135
    if-eqz p1, :cond_6

    .line 136
    .line 137
    iget-object v6, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateRangeTime:Ljava/util/Map;

    .line 138
    .line 139
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    if-eqz p1, :cond_6

    .line 155
    .line 156
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateRangeTime:Ljava/util/Map;

    .line 157
    .line 158
    iget-object v6, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    .line 159
    .line 160
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    invoke-interface {v6}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 164
    .line 165
    .line 166
    move-result v6

    .line 167
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v6

    .line 171
    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    check-cast p1, Ljava/util/List;

    .line 176
    .line 177
    if-eqz p1, :cond_6

    .line 178
    .line 179
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 180
    .line 181
    .line 182
    move-result p1

    .line 183
    if-ne p1, v0, :cond_6

    .line 184
    .line 185
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateRangeTime:Ljava/util/Map;

    .line 186
    .line 187
    iget-object v6, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    .line 188
    .line 189
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    invoke-interface {v6}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 193
    .line 194
    .line 195
    move-result v6

    .line 196
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v6

    .line 200
    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    check-cast p1, Ljava/util/List;

    .line 205
    .line 206
    if-eqz p1, :cond_3

    .line 207
    .line 208
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    :cond_3
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateCostTime:Ljava/util/Map;

    .line 216
    .line 217
    iget-object v2, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    .line 218
    .line 219
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    invoke-interface {v2}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    iget-object v3, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateRangeTime:Ljava/util/Map;

    .line 231
    .line 232
    iget-object v6, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    .line 233
    .line 234
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    invoke-interface {v6}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 238
    .line 239
    .line 240
    move-result v6

    .line 241
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v6

    .line 245
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v3

    .line 249
    check-cast v3, Ljava/util/List;

    .line 250
    .line 251
    const-wide/16 v6, 0x0

    .line 252
    .line 253
    if-eqz v3, :cond_4

    .line 254
    .line 255
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    check-cast v0, Ljava/lang/Number;

    .line 260
    .line 261
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 262
    .line 263
    .line 264
    move-result-wide v8

    .line 265
    goto :goto_2

    .line 266
    :cond_4
    move-wide v8, v6

    .line 267
    :goto_2
    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateRangeTime:Ljava/util/Map;

    .line 268
    .line 269
    iget-object v3, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    .line 270
    .line 271
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 272
    .line 273
    .line 274
    invoke-interface {v3}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 275
    .line 276
    .line 277
    move-result v3

    .line 278
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    check-cast v0, Ljava/util/List;

    .line 287
    .line 288
    if-eqz v0, :cond_5

    .line 289
    .line 290
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    check-cast v0, Ljava/lang/Number;

    .line 295
    .line 296
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 297
    .line 298
    .line 299
    move-result-wide v6

    .line 300
    :cond_5
    sub-long/2addr v8, v6

    .line 301
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    :cond_6
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 309
    .line 310
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 311
    .line 312
    .line 313
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 314
    .line 315
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 316
    .line 317
    .line 318
    invoke-direct {p0, p1, v0, v5}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->appendStagesFail(Ljava/util/Map;Ljava/util/Map;Z)Z

    .line 319
    .line 320
    .line 321
    move-result v2

    .line 322
    const-string v3, "isExitInStage"

    .line 323
    .line 324
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v2

    .line 328
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    const-string v2, "stageCostTime"

    .line 332
    .line 333
    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    const-string v0, "stageRangeTime"

    .line 341
    .line 342
    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object p1

    .line 346
    invoke-virtual {v1, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->scene:Ljava/lang/String;

    .line 350
    .line 351
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object p1

    .line 355
    const-string v0, "scene"

    .line 356
    .line 357
    invoke-virtual {v1, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 361
    .line 362
    invoke-virtual {v1, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object p1

    .line 366
    if-eqz p1, :cond_7

    .line 367
    .line 368
    const-string v0, "page_path"

    .line 369
    .line 370
    invoke-virtual {v1, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    :cond_7
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->openedPageCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 374
    .line 375
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 376
    .line 377
    .line 378
    move-result p1

    .line 379
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object p1

    .line 383
    const-string v0, "openedPageCount"

    .line 384
    .line 385
    invoke-virtual {v1, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    const-string p1, "appH5ProgressStatus"

    .line 389
    .line 390
    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->h5ProgressCollectList:Ljava/lang/String;

    .line 391
    .line 392
    invoke-virtual {v1, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    const-string p1, "offScreenRender"

    .line 396
    .line 397
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->offScreenRender:Z

    .line 398
    .line 399
    invoke-virtual {v1, p1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 400
    .line 401
    .line 402
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 403
    .line 404
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    .line 408
    .line 409
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    const-class p1, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    .line 413
    .line 414
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    move-result-object p1

    .line 418
    check-cast p1, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    .line 419
    .line 420
    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->appId:Ljava/lang/String;

    .line 421
    .line 422
    const-string v2, "mini_app_open_end"

    .line 423
    .line 424
    invoke-interface {p1, v0, v2, v1}, Lcom/cloud/tmc/integration/proxy/ReportProxy;->report(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 425
    .line 426
    .line 427
    return-void
.end method

.method private final reportAppOpenMidFail(Landroid/os/Bundle;)V
    .locals 10

    .line 1
    const-class v0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-boolean v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->isReportMid:Z

    .line 8
    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v0, "_reportAppOpenMidFail->isReportMid:"

    .line 18
    .line 19
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "chainPoint"

    .line 30
    .line 31
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->isReportMid:Z

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->isReportMid:Z

    .line 41
    .line 42
    new-instance v1, Landroid/os/Bundle;

    .line 43
    .line 44
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 48
    .line 49
    .line 50
    const-string p1, "openMiniAppResult"

    .line 51
    .line 52
    const-string v2, "false"

    .line 53
    .line 54
    invoke-virtual {v1, p1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string p1, "openMiniAppFailedReason"

    .line 58
    .line 59
    iget-object v2, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->openMiniAppFailedReason:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v1, p1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const-string p1, "maxStage"

    .line 65
    .line 66
    invoke-direct {p0}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getMaxStageFromCompare()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    invoke-virtual {v1, p1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 71
    .line 72
    .line 73
    const-string p1, "syncType"

    .line 74
    .line 75
    iget v2, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->syncType:I

    .line 76
    .line 77
    invoke-virtual {v1, p1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->openChannel:Ljava/lang/String;

    .line 81
    .line 82
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    const-string v2, "open_channel"

    .line 87
    .line 88
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->hotOpenType:Ljava/lang/String;

    .line 92
    .line 93
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    const-string v2, "hot_open_type"

    .line 98
    .line 99
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TIME:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {v1, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-eqz p1, :cond_1

    .line 109
    .line 110
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TIME:Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {v1, p1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 113
    .line 114
    .line 115
    move-result-wide v2

    .line 116
    goto :goto_0

    .line 117
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 118
    .line 119
    .line 120
    move-result-wide v2

    .line 121
    :goto_0
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    .line 122
    .line 123
    const/4 v4, 0x0

    .line 124
    if-eqz p1, :cond_2

    .line 125
    .line 126
    iget-object v5, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainEndState:Lcom/cloud/tmc/integration/chain/ChainState;

    .line 127
    .line 128
    if-nez v5, :cond_2

    .line 129
    .line 130
    move v5, v0

    .line 131
    goto :goto_1

    .line 132
    :cond_2
    move v5, v4

    .line 133
    :goto_1
    if-eqz v5, :cond_6

    .line 134
    .line 135
    if-eqz p1, :cond_6

    .line 136
    .line 137
    iget-object v6, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateRangeTime:Ljava/util/Map;

    .line 138
    .line 139
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    if-eqz p1, :cond_6

    .line 155
    .line 156
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateRangeTime:Ljava/util/Map;

    .line 157
    .line 158
    iget-object v6, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    .line 159
    .line 160
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    invoke-interface {v6}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 164
    .line 165
    .line 166
    move-result v6

    .line 167
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v6

    .line 171
    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    check-cast p1, Ljava/util/List;

    .line 176
    .line 177
    if-eqz p1, :cond_6

    .line 178
    .line 179
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 180
    .line 181
    .line 182
    move-result p1

    .line 183
    if-ne p1, v0, :cond_6

    .line 184
    .line 185
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateRangeTime:Ljava/util/Map;

    .line 186
    .line 187
    iget-object v6, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    .line 188
    .line 189
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    invoke-interface {v6}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 193
    .line 194
    .line 195
    move-result v6

    .line 196
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v6

    .line 200
    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    check-cast p1, Ljava/util/List;

    .line 205
    .line 206
    if-eqz p1, :cond_3

    .line 207
    .line 208
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    :cond_3
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateCostTime:Ljava/util/Map;

    .line 216
    .line 217
    iget-object v2, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    .line 218
    .line 219
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    invoke-interface {v2}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    iget-object v3, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateRangeTime:Ljava/util/Map;

    .line 231
    .line 232
    iget-object v6, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    .line 233
    .line 234
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    invoke-interface {v6}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 238
    .line 239
    .line 240
    move-result v6

    .line 241
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v6

    .line 245
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v3

    .line 249
    check-cast v3, Ljava/util/List;

    .line 250
    .line 251
    const-wide/16 v6, 0x0

    .line 252
    .line 253
    if-eqz v3, :cond_4

    .line 254
    .line 255
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    check-cast v0, Ljava/lang/Number;

    .line 260
    .line 261
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 262
    .line 263
    .line 264
    move-result-wide v8

    .line 265
    goto :goto_2

    .line 266
    :cond_4
    move-wide v8, v6

    .line 267
    :goto_2
    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateRangeTime:Ljava/util/Map;

    .line 268
    .line 269
    iget-object v3, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    .line 270
    .line 271
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 272
    .line 273
    .line 274
    invoke-interface {v3}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 275
    .line 276
    .line 277
    move-result v3

    .line 278
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    check-cast v0, Ljava/util/List;

    .line 287
    .line 288
    if-eqz v0, :cond_5

    .line 289
    .line 290
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    check-cast v0, Ljava/lang/Number;

    .line 295
    .line 296
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 297
    .line 298
    .line 299
    move-result-wide v6

    .line 300
    :cond_5
    sub-long/2addr v8, v6

    .line 301
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    :cond_6
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 309
    .line 310
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 311
    .line 312
    .line 313
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 314
    .line 315
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 316
    .line 317
    .line 318
    invoke-direct {p0, p1, v0, v5}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->appendStagesFail(Ljava/util/Map;Ljava/util/Map;Z)Z

    .line 319
    .line 320
    .line 321
    move-result v2

    .line 322
    const-string v3, "isExitInStage"

    .line 323
    .line 324
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v2

    .line 328
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    const-string v2, "stageCostTime"

    .line 332
    .line 333
    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    const-string v0, "stageRangeTime"

    .line 341
    .line 342
    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object p1

    .line 346
    invoke-virtual {v1, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    const-string p1, "scene"

    .line 350
    .line 351
    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->scene:Ljava/lang/String;

    .line 352
    .line 353
    invoke-virtual {v1, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 357
    .line 358
    invoke-virtual {v1, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object p1

    .line 362
    if-eqz p1, :cond_7

    .line 363
    .line 364
    const-string v0, "page_path"

    .line 365
    .line 366
    invoke-virtual {v1, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    :cond_7
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->openedPageCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 370
    .line 371
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 372
    .line 373
    .line 374
    move-result p1

    .line 375
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object p1

    .line 379
    const-string v0, "openedPageCount"

    .line 380
    .line 381
    invoke-virtual {v1, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 385
    .line 386
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    .line 390
    .line 391
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    const-class p1, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    .line 395
    .line 396
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object p1

    .line 400
    check-cast p1, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    .line 401
    .line 402
    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->appId:Ljava/lang/String;

    .line 403
    .line 404
    const-string v2, "mini_app_open_mid"

    .line 405
    .line 406
    invoke-interface {p1, v0, v2, v1}, Lcom/cloud/tmc/integration/proxy/ReportProxy;->report(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 407
    .line 408
    .line 409
    return-void
.end method

.method private final reportPageOpenEndFail(Landroid/os/Bundle;)V
    .locals 10

    .line 1
    const-class v0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v0, "_reportPageOpenEndFail"

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "chainPoint"

    .line 25
    .line 26
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Landroid/os/Bundle;

    .line 30
    .line 31
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 35
    .line 36
    .line 37
    const-string p1, "openPageResult"

    .line 38
    .line 39
    const-string v1, "false"

    .line 40
    .line 41
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string p1, "openPageFailedReason"

    .line 45
    .line 46
    iget-object v2, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->openMiniAppFailedReason:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v0, p1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-string p1, "maxStage"

    .line 52
    .line 53
    iget v2, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->maxStage:I

    .line 54
    .line 55
    invoke-virtual {v0, p1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->openChannel:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    const-string v2, "open_channel"

    .line 65
    .line 66
    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->hotOpenType:Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    const-string v2, "hot_open_type"

    .line 76
    .line 77
    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TIME:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-eqz p1, :cond_0

    .line 87
    .line 88
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TIME:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 91
    .line 92
    .line 93
    move-result-wide v2

    .line 94
    goto :goto_0

    .line 95
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 96
    .line 97
    .line 98
    move-result-wide v2

    .line 99
    :goto_0
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    .line 100
    .line 101
    const/4 v4, 0x0

    .line 102
    const/4 v5, 0x1

    .line 103
    if-eqz p1, :cond_1

    .line 104
    .line 105
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainEndState:Lcom/cloud/tmc/integration/chain/ChainState;

    .line 106
    .line 107
    if-nez p1, :cond_1

    .line 108
    .line 109
    move p1, v5

    .line 110
    goto :goto_1

    .line 111
    :cond_1
    move p1, v4

    .line 112
    :goto_1
    const-string v6, "isExitInStage"

    .line 113
    .line 114
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v7

    .line 118
    invoke-virtual {v0, v6, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    if-eqz p1, :cond_5

    .line 122
    .line 123
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    .line 124
    .line 125
    if-eqz p1, :cond_5

    .line 126
    .line 127
    iget-object v6, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateRangeTime:Ljava/util/Map;

    .line 128
    .line 129
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    if-eqz p1, :cond_5

    .line 145
    .line 146
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateRangeTime:Ljava/util/Map;

    .line 147
    .line 148
    iget-object v6, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    .line 149
    .line 150
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    invoke-interface {v6}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 154
    .line 155
    .line 156
    move-result v6

    .line 157
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    check-cast p1, Ljava/util/List;

    .line 166
    .line 167
    if-eqz p1, :cond_5

    .line 168
    .line 169
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    if-ne p1, v5, :cond_5

    .line 174
    .line 175
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateRangeTime:Ljava/util/Map;

    .line 176
    .line 177
    iget-object v6, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    .line 178
    .line 179
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    invoke-interface {v6}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 183
    .line 184
    .line 185
    move-result v6

    .line 186
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v6

    .line 190
    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    check-cast p1, Ljava/util/List;

    .line 195
    .line 196
    if-eqz p1, :cond_2

    .line 197
    .line 198
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    :cond_2
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateCostTime:Ljava/util/Map;

    .line 206
    .line 207
    iget-object v2, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    .line 208
    .line 209
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    invoke-interface {v2}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    iget-object v3, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateRangeTime:Ljava/util/Map;

    .line 221
    .line 222
    iget-object v6, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    .line 223
    .line 224
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 225
    .line 226
    .line 227
    invoke-interface {v6}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 228
    .line 229
    .line 230
    move-result v6

    .line 231
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v6

    .line 235
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    check-cast v3, Ljava/util/List;

    .line 240
    .line 241
    const-wide/16 v6, 0x0

    .line 242
    .line 243
    if-eqz v3, :cond_3

    .line 244
    .line 245
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v3

    .line 249
    check-cast v3, Ljava/lang/Number;

    .line 250
    .line 251
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    .line 252
    .line 253
    .line 254
    move-result-wide v8

    .line 255
    goto :goto_2

    .line 256
    :cond_3
    move-wide v8, v6

    .line 257
    :goto_2
    iget-object v3, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateRangeTime:Ljava/util/Map;

    .line 258
    .line 259
    iget-object v5, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    .line 260
    .line 261
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    invoke-interface {v5}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 265
    .line 266
    .line 267
    move-result v5

    .line 268
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v5

    .line 272
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v3

    .line 276
    check-cast v3, Ljava/util/List;

    .line 277
    .line 278
    if-eqz v3, :cond_4

    .line 279
    .line 280
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v3

    .line 284
    check-cast v3, Ljava/lang/Number;

    .line 285
    .line 286
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    .line 287
    .line 288
    .line 289
    move-result-wide v6

    .line 290
    :cond_4
    sub-long/2addr v8, v6

    .line 291
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 292
    .line 293
    .line 294
    move-result-object v3

    .line 295
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    :cond_5
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateCostTime:Ljava/util/Map;

    .line 299
    .line 300
    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object p1

    .line 304
    const-string v2, "stageCostTime"

    .line 305
    .line 306
    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateRangeTime:Ljava/util/Map;

    .line 310
    .line 311
    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object p1

    .line 315
    const-string v2, "stageRangeTime"

    .line 316
    .line 317
    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->scene:Ljava/lang/String;

    .line 321
    .line 322
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object p1

    .line 326
    const-string v2, "scene"

    .line 327
    .line 328
    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 332
    .line 333
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object p1

    .line 337
    if-eqz p1, :cond_6

    .line 338
    .line 339
    const-string v2, "page_path"

    .line 340
    .line 341
    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    :cond_6
    const-string p1, "pageIndex"

    .line 345
    .line 346
    const-string v2, "1"

    .line 347
    .line 348
    invoke-virtual {v0, p1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    const-string p1, "isAdd"

    .line 352
    .line 353
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    const-string p1, "offScreenRender"

    .line 357
    .line 358
    iget-boolean v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->offScreenRender:Z

    .line 359
    .line 360
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 361
    .line 362
    .line 363
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 364
    .line 365
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    .line 369
    .line 370
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    const-class p1, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    .line 374
    .line 375
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    move-result-object p1

    .line 379
    check-cast p1, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    .line 380
    .line 381
    iget-object v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->appId:Ljava/lang/String;

    .line 382
    .line 383
    const-string v2, "mini_page_open_end"

    .line 384
    .line 385
    invoke-interface {p1, v1, v2, v0}, Lcom/cloud/tmc/integration/proxy/ReportProxy;->report(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 386
    .line 387
    .line 388
    return-void
.end method

.method private final reportPageOpenMidFail(Landroid/os/Bundle;)V
    .locals 10

    .line 1
    const-class v0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v0, "_reportPageOpenMidFail"

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "chainPoint"

    .line 25
    .line 26
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Landroid/os/Bundle;

    .line 30
    .line 31
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 35
    .line 36
    .line 37
    const-string p1, "openPageResult"

    .line 38
    .line 39
    const-string v1, "false"

    .line 40
    .line 41
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string p1, "openPageFailedReason"

    .line 45
    .line 46
    iget-object v2, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->openMiniAppFailedReason:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v0, p1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-string p1, "maxStage"

    .line 52
    .line 53
    iget v2, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->maxStage:I

    .line 54
    .line 55
    invoke-virtual {v0, p1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->openChannel:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    const-string v2, "open_channel"

    .line 65
    .line 66
    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->hotOpenType:Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    const-string v2, "hot_open_type"

    .line 76
    .line 77
    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TIME:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-eqz p1, :cond_0

    .line 87
    .line 88
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TIME:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 91
    .line 92
    .line 93
    move-result-wide v2

    .line 94
    goto :goto_0

    .line 95
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 96
    .line 97
    .line 98
    move-result-wide v2

    .line 99
    :goto_0
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    .line 100
    .line 101
    const/4 v4, 0x0

    .line 102
    const/4 v5, 0x1

    .line 103
    if-eqz p1, :cond_1

    .line 104
    .line 105
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainEndState:Lcom/cloud/tmc/integration/chain/ChainState;

    .line 106
    .line 107
    if-nez p1, :cond_1

    .line 108
    .line 109
    move p1, v5

    .line 110
    goto :goto_1

    .line 111
    :cond_1
    move p1, v4

    .line 112
    :goto_1
    const-string v6, "isExitInStage"

    .line 113
    .line 114
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v7

    .line 118
    invoke-virtual {v0, v6, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    if-eqz p1, :cond_5

    .line 122
    .line 123
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    .line 124
    .line 125
    if-eqz p1, :cond_5

    .line 126
    .line 127
    iget-object v6, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateRangeTime:Ljava/util/Map;

    .line 128
    .line 129
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    if-eqz p1, :cond_5

    .line 145
    .line 146
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateRangeTime:Ljava/util/Map;

    .line 147
    .line 148
    iget-object v6, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    .line 149
    .line 150
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    invoke-interface {v6}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 154
    .line 155
    .line 156
    move-result v6

    .line 157
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    check-cast p1, Ljava/util/List;

    .line 166
    .line 167
    if-eqz p1, :cond_5

    .line 168
    .line 169
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    if-ne p1, v5, :cond_5

    .line 174
    .line 175
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateRangeTime:Ljava/util/Map;

    .line 176
    .line 177
    iget-object v6, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    .line 178
    .line 179
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    invoke-interface {v6}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 183
    .line 184
    .line 185
    move-result v6

    .line 186
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v6

    .line 190
    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    check-cast p1, Ljava/util/List;

    .line 195
    .line 196
    if-eqz p1, :cond_2

    .line 197
    .line 198
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    :cond_2
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateCostTime:Ljava/util/Map;

    .line 206
    .line 207
    iget-object v2, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    .line 208
    .line 209
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    invoke-interface {v2}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    iget-object v3, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateRangeTime:Ljava/util/Map;

    .line 221
    .line 222
    iget-object v6, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    .line 223
    .line 224
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 225
    .line 226
    .line 227
    invoke-interface {v6}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 228
    .line 229
    .line 230
    move-result v6

    .line 231
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v6

    .line 235
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    check-cast v3, Ljava/util/List;

    .line 240
    .line 241
    const-wide/16 v6, 0x0

    .line 242
    .line 243
    if-eqz v3, :cond_3

    .line 244
    .line 245
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v3

    .line 249
    check-cast v3, Ljava/lang/Number;

    .line 250
    .line 251
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    .line 252
    .line 253
    .line 254
    move-result-wide v8

    .line 255
    goto :goto_2

    .line 256
    :cond_3
    move-wide v8, v6

    .line 257
    :goto_2
    iget-object v3, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateRangeTime:Ljava/util/Map;

    .line 258
    .line 259
    iget-object v5, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    .line 260
    .line 261
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    invoke-interface {v5}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 265
    .line 266
    .line 267
    move-result v5

    .line 268
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v5

    .line 272
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v3

    .line 276
    check-cast v3, Ljava/util/List;

    .line 277
    .line 278
    if-eqz v3, :cond_4

    .line 279
    .line 280
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v3

    .line 284
    check-cast v3, Ljava/lang/Number;

    .line 285
    .line 286
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    .line 287
    .line 288
    .line 289
    move-result-wide v6

    .line 290
    :cond_4
    sub-long/2addr v8, v6

    .line 291
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 292
    .line 293
    .line 294
    move-result-object v3

    .line 295
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    :cond_5
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateCostTime:Ljava/util/Map;

    .line 299
    .line 300
    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object p1

    .line 304
    const-string v2, "stageCostTime"

    .line 305
    .line 306
    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateRangeTime:Ljava/util/Map;

    .line 310
    .line 311
    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object p1

    .line 315
    const-string v2, "stageRangeTime"

    .line 316
    .line 317
    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->scene:Ljava/lang/String;

    .line 321
    .line 322
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object p1

    .line 326
    const-string v2, "scene"

    .line 327
    .line 328
    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 332
    .line 333
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object p1

    .line 337
    if-eqz p1, :cond_6

    .line 338
    .line 339
    const-string v2, "page_path"

    .line 340
    .line 341
    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    :cond_6
    const-string p1, "pageIndex"

    .line 345
    .line 346
    const-string v2, "1"

    .line 347
    .line 348
    invoke-virtual {v0, p1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    const-string p1, "isAdd"

    .line 352
    .line 353
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 357
    .line 358
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    .line 362
    .line 363
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    const-class p1, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    .line 367
    .line 368
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object p1

    .line 372
    check-cast p1, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    .line 373
    .line 374
    iget-object v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->appId:Ljava/lang/String;

    .line 375
    .line 376
    const-string v2, "mini_page_open_mid"

    .line 377
    .line 378
    invoke-interface {p1, v1, v2, v0}, Lcom/cloud/tmc/integration/proxy/ReportProxy;->report(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 379
    .line 380
    .line 381
    return-void
.end method


# virtual methods
.method public final appendStagesSuccess(Lcom/cloud/tmc/integration/chain/page/PageChainContext;Ljava/util/Map;Ljava/util/Map;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/integration/chain/page/PageChainContext;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;I)V"
        }
    .end annotation

    .line 1
    const-string v0, "pageChainContext"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "tmpStateRangeTime"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "tmpStateCostTime"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-class v0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v0, "_appendStages"

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v1, "chainPoint"

    .line 40
    .line 41
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const/16 v0, 0x11

    .line 45
    .line 46
    if-ne p4, v0, :cond_0

    .line 47
    .line 48
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->isReportMid:Z

    .line 49
    .line 50
    if-nez v0, :cond_0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const/16 v0, 0x12

    .line 54
    .line 55
    if-ne p4, v0, :cond_1

    .line 56
    .line 57
    iget-boolean p4, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->isReportEnd:Z

    .line 58
    .line 59
    if-nez p4, :cond_1

    .line 60
    .line 61
    :goto_0
    iget-object p4, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateRangeTime:Ljava/util/Map;

    .line 62
    .line 63
    invoke-interface {p2, p4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 64
    .line 65
    .line 66
    iget-object p4, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateCostTime:Ljava/util/Map;

    .line 67
    .line 68
    invoke-interface {p3, p4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->getStateRangeTime()Ljava/util/Map;

    .line 72
    .line 73
    .line 74
    move-result-object p4

    .line 75
    invoke-interface {p2, p4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->getStateCostTime()Ljava/util/Map;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-interface {p3, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 83
    .line 84
    .line 85
    :cond_1
    return-void
.end method

.method public destroy(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v0, "chainPoint"

    .line 7
    .line 8
    const-class v1, Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, "_destroy"

    .line 23
    .line 24
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->destroyReport(Landroid/os/Bundle;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->pageContexts:Ljava/util/Stack;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    .line 42
    :catchall_0
    return-void
.end method

.method public final getAppId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->appId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getContextType()Lcom/cloud/tmc/integration/chain/ContextType;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/integration/chain/ContextType;->TYPE_APP:Lcom/cloud/tmc/integration/chain/ContextType;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCurrentChainEndState()Lcom/cloud/tmc/integration/chain/ChainState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainEndState:Lcom/cloud/tmc/integration/chain/ChainState;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCurrentChainStartState()Lcom/cloud/tmc/integration/chain/ChainState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getFirstPageMaxStage()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->firstPageMaxStage:I

    .line 2
    .line 3
    return v0
.end method

.method public final getFirstPageStateCostTime()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->firstPageStateCostTime:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getFirstPageStateRangeTime()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->firstPageStateRangeTime:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getH5ProgressCollectList()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->h5ProgressCollectList:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getHotOpenType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->hotOpenType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMaxStage()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->maxStage:I

    .line 2
    .line 3
    return v0
.end method

.method public final getOffScreenRender()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->offScreenRender:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getOpenChannel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->openChannel:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOpenMiniAppEndResult()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->openMiniAppEndResult:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getOpenMiniAppFailedReason()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->openMiniAppFailedReason:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOpenMiniAppMidResult()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->openMiniAppMidResult:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getOpenedPageCount()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->openedPageCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPageContexts()Ljava/util/Stack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack<",
            "Lcom/cloud/tmc/integration/chain/page/PageChainContext;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->pageContexts:Ljava/util/Stack;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPageIndexOfApp()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->pageIndexOfApp:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getScene()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->scene:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStateCostTime()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateCostTime:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStateRangeTime()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateRangeTime:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSyncType()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->syncType:I

    return v0
.end method

.method public final getSyncTypeMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->syncTypeMap:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public hotOpen(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    const-string v0, "dataBundle"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v0, "hot_open_type"

    .line 7
    .line 8
    const-string v1, "-1"

    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "chainPoint"

    .line 15
    .line 16
    const-class v2, Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v2, "_hotOpen -> hotOpenType:"

    .line 31
    .line 32
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    if-eqz v0, :cond_4

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    const/16 v2, 0x30

    .line 52
    .line 53
    if-eq v1, v2, :cond_2

    .line 54
    .line 55
    packed-switch v1, :pswitch_data_0

    .line 56
    .line 57
    .line 58
    packed-switch v1, :pswitch_data_1

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :pswitch_0
    const-string v1, "shell_1"

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-nez v1, :cond_0

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :pswitch_1
    const-string v1, "shell_0"

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-nez v1, :cond_0

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    sget-object v1, Lcom/cloud/tmc/integration/chain/hotopen/HotOpenManager;->INSTANCE:Lcom/cloud/tmc/integration/chain/hotopen/HotOpenManager;

    .line 81
    .line 82
    const-string v2, "hotOpenType"

    .line 83
    .line 84
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, p0, p1, v0}, Lcom/cloud/tmc/integration/chain/hotopen/HotOpenManager;->openActivatePageShell(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :pswitch_2
    const-string v1, "normal_4"

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-nez v0, :cond_1

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :pswitch_3
    const-string v1, "normal_3"

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-nez v0, :cond_1

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_1
    sget-object v0, Lcom/cloud/tmc/integration/chain/hotopen/HotOpenManager;->INSTANCE:Lcom/cloud/tmc/integration/chain/hotopen/HotOpenManager;

    .line 110
    .line 111
    invoke-virtual {v0, p0, p1}, Lcom/cloud/tmc/integration/chain/hotopen/HotOpenManager;->openNewPage(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :pswitch_4
    const-string v1, "normal_2"

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-nez v0, :cond_3

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :pswitch_5
    const-string v1, "normal_1"

    .line 125
    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-nez v0, :cond_3

    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_2
    const-string v1, "0"

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-nez v0, :cond_3

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_3
    sget-object v0, Lcom/cloud/tmc/integration/chain/hotopen/HotOpenManager;->INSTANCE:Lcom/cloud/tmc/integration/chain/hotopen/HotOpenManager;

    .line 143
    .line 144
    invoke-virtual {v0, p0, p1}, Lcom/cloud/tmc/integration/chain/hotopen/HotOpenManager;->openActivatePage(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    .line 146
    .line 147
    :catchall_0
    :cond_4
    :goto_0
    return-void

    .line 148
    nop

    .line 149
    :pswitch_data_0
    .packed-switch 0x5b4b2ad9
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    :pswitch_data_1
    .packed-switch 0x7aa69de1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isReportEnd()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->isReportEnd:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isReportMid()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->isReportMid:Z

    .line 2
    .line 3
    return v0
.end method

.method public log(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/integration/chain/ChainContext$DefaultImpls;->log(Lcom/cloud/tmc/integration/chain/ChainContext;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final reportAppOpenEndSuccess(Landroid/os/Bundle;Z)V
    .locals 4

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v0, "chainPoint"

    .line 7
    .line 8
    const-class v1, Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-boolean v2, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->isReportEnd:Z

    .line 15
    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, "_reportAppOpenEndSuccess->isReportEnd:"

    .line 25
    .line 26
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->isReportEnd:Z

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    return-void

    .line 44
    :cond_0
    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->isReportEnd:Z

    .line 46
    .line 47
    iput-boolean v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->openMiniAppEndResult:Z

    .line 48
    .line 49
    new-instance v0, Landroid/os/Bundle;

    .line 50
    .line 51
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 55
    .line 56
    .line 57
    const-string p1, "openMiniAppResult"

    .line 58
    .line 59
    const-string v1, "true"

    .line 60
    .line 61
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const-string p1, "openMiniAppFailedReason"

    .line 65
    .line 66
    const-string v1, ""

    .line 67
    .line 68
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const-string p1, "syncType"

    .line 72
    .line 73
    iget v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->syncType:I

    .line 74
    .line 75
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 76
    .line 77
    .line 78
    const-string p1, "isExitInStage"

    .line 79
    .line 80
    const-string v1, "false"

    .line 81
    .line 82
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const-string p1, "open_channel"

    .line 86
    .line 87
    iget-object v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->openChannel:Ljava/lang/String;

    .line 88
    .line 89
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    const-string p1, "hot_open_type"

    .line 97
    .line 98
    iget-object v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->hotOpenType:Ljava/lang/String;

    .line 99
    .line 100
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    const-string p1, "scene"

    .line 108
    .line 109
    iget-object v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->scene:Ljava/lang/String;

    .line 110
    .line 111
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    const-string p1, "openByLaunch"

    .line 119
    .line 120
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 128
    .line 129
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    if-eqz p1, :cond_1

    .line 134
    .line 135
    const-string p2, "page_path"

    .line 136
    .line 137
    invoke-virtual {v0, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    :cond_1
    const-string p1, "appH5ProgressStatus"

    .line 141
    .line 142
    iget-object p2, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->h5ProgressCollectList:Ljava/lang/String;

    .line 143
    .line 144
    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    const-string p1, "offScreenRender"

    .line 148
    .line 149
    iget-boolean p2, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->offScreenRender:Z

    .line 150
    .line 151
    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 152
    .line 153
    .line 154
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 155
    .line 156
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    .line 160
    .line 161
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    const-class p1, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    .line 165
    .line 166
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    check-cast p1, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    .line 171
    .line 172
    iget-object p2, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->appId:Ljava/lang/String;

    .line 173
    .line 174
    const-string v1, "mini_app_open_end"

    .line 175
    .line 176
    invoke-interface {p1, p2, v1, v0}, Lcom/cloud/tmc/integration/proxy/ReportProxy;->report(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    .line 178
    .line 179
    :catchall_0
    return-void
.end method

.method public final reportAppOpenMidSuccess(Landroid/os/Bundle;Z)V
    .locals 4

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v0, "chainPoint"

    .line 7
    .line 8
    const-class v1, Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-boolean v2, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->isReportMid:Z

    .line 15
    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, "_reportAppOpenMidSuccess->isReportMid:"

    .line 25
    .line 26
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->isReportMid:Z

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    return-void

    .line 44
    :cond_0
    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->isReportMid:Z

    .line 46
    .line 47
    iput-boolean v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->openMiniAppMidResult:Z

    .line 48
    .line 49
    new-instance v0, Landroid/os/Bundle;

    .line 50
    .line 51
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 55
    .line 56
    .line 57
    const-string p1, "openMiniAppResult"

    .line 58
    .line 59
    const-string v1, "true"

    .line 60
    .line 61
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const-string p1, "openMiniAppFailedReason"

    .line 65
    .line 66
    const-string v1, ""

    .line 67
    .line 68
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const-string p1, "syncType"

    .line 72
    .line 73
    iget v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->syncType:I

    .line 74
    .line 75
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 76
    .line 77
    .line 78
    const-string p1, "isExitInStage"

    .line 79
    .line 80
    const-string v1, "false"

    .line 81
    .line 82
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const-string p1, "open_channel"

    .line 86
    .line 87
    iget-object v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->openChannel:Ljava/lang/String;

    .line 88
    .line 89
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    const-string p1, "hot_open_type"

    .line 97
    .line 98
    iget-object v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->hotOpenType:Ljava/lang/String;

    .line 99
    .line 100
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    const-string p1, "scene"

    .line 108
    .line 109
    iget-object v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->scene:Ljava/lang/String;

    .line 110
    .line 111
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    const-string p1, "openByLaunch"

    .line 119
    .line 120
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 128
    .line 129
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    if-eqz p1, :cond_1

    .line 134
    .line 135
    const-string p2, "page_path"

    .line 136
    .line 137
    invoke-virtual {v0, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    :cond_1
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 141
    .line 142
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    .line 146
    .line 147
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    const-class p1, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    .line 151
    .line 152
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    check-cast p1, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    .line 157
    .line 158
    iget-object p2, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->appId:Ljava/lang/String;

    .line 159
    .line 160
    const-string v1, "mini_app_open_mid"

    .line 161
    .line 162
    invoke-interface {p1, p2, v1, v0}, Lcom/cloud/tmc/integration/proxy/ReportProxy;->report(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    .line 164
    .line 165
    :catchall_0
    return-void
.end method

.method public final reportFailureClickReloadButton()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "openMiniAppFailedReason"

    .line 7
    .line 8
    const-string v2, "reload"

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v0}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->reportPageOpenMidFail(Landroid/os/Bundle;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->reportPageOpenEndFail(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    const-string v1, "Tmc"

    .line 22
    .line 23
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void
.end method

.method public final setAppId(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->appId:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public setChainState(Lcom/cloud/tmc/integration/chain/ChainState;)V
    .locals 3

    .line 1
    const-string v0, "chainState"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v2, "setChainState_"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->log(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getChainType()Lcom/cloud/tmc/integration/chain/ChainType;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sget-object v1, Lcom/cloud/tmc/integration/chain/app/AppChainContext$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    aget v0, v1, v0

    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    if-eq v0, v1, :cond_3

    .line 44
    .line 45
    const/4 v1, 0x2

    .line 46
    if-eq v0, v1, :cond_2

    .line 47
    .line 48
    const/4 v1, 0x3

    .line 49
    if-eq v0, v1, :cond_1

    .line 50
    .line 51
    const/4 v1, 0x4

    .line 52
    if-eq v0, v1, :cond_0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->insertData(Lcom/cloud/tmc/integration/chain/ChainState;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->parseChianError(Lcom/cloud/tmc/integration/chain/ChainState;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->parseChainEnd(Lcom/cloud/tmc/integration/chain/ChainState;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->parseChainStart(Lcom/cloud/tmc/integration/chain/ChainState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .line 69
    .line 70
    :catchall_0
    :goto_0
    return-void
.end method

.method public setContextType(Lcom/cloud/tmc/integration/chain/ContextType;)V
    .locals 1

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setCurrentChainEndState(Lcom/cloud/tmc/integration/chain/ChainState;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainEndState:Lcom/cloud/tmc/integration/chain/ChainState;

    .line 2
    .line 3
    return-void
.end method

.method public final setCurrentChainStartState(Lcom/cloud/tmc/integration/chain/ChainState;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    .line 2
    .line 3
    return-void
.end method

.method public final setFirstPageMaxStage(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->firstPageMaxStage:I

    .line 2
    .line 3
    return-void
.end method

.method public final setFirstPageStateCostTime(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->firstPageStateCostTime:Ljava/util/Map;

    .line 7
    .line 8
    return-void
.end method

.method public final setFirstPageStateRangeTime(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->firstPageStateRangeTime:Ljava/util/Map;

    .line 7
    .line 8
    return-void
.end method

.method public final setH5ProgressCollectList(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->h5ProgressCollectList:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setHotOpenType(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->hotOpenType:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setMaxStage(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->maxStage:I

    .line 2
    .line 3
    return-void
.end method

.method public final setOffScreenRender(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->offScreenRender:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setOpenChannel(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->openChannel:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setOpenMiniAppEndResult(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->openMiniAppEndResult:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setOpenMiniAppFailedReason(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->openMiniAppFailedReason:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setOpenMiniAppMidResult(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->openMiniAppMidResult:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setOpenedPageCount(Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->openedPageCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    .line 8
    return-void
.end method

.method public final setPageIndexOfApp(Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->pageIndexOfApp:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    .line 8
    return-void
.end method

.method public final setReportEnd(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->isReportEnd:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setReportMid(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->isReportMid:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setScene(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->scene:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setStateCostTime(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateCostTime:Ljava/util/Map;

    .line 7
    .line 8
    return-void
.end method

.method public final setStateRangeTime(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateRangeTime:Ljava/util/Map;

    .line 7
    .line 8
    return-void
.end method

.method public final setSyncType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->syncType:I

    .line 2
    .line 3
    return-void
.end method

.method public final setSyncTypeMap(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->syncTypeMap:Ljava/util/Map;

    .line 7
    .line 8
    return-void
.end method
