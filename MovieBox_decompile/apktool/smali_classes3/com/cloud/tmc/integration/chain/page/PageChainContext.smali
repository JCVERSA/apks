.class public final Lcom/cloud/tmc/integration/chain/page/PageChainContext;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/integration/chain/ChainContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/chain/page/PageChainContext$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008#\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0015\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J:\u0010Q\u001a\u00020R2\u001a\u0008\u0002\u0010S\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u000e0\u00062\u0014\u0008\u0002\u0010T\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006H\u0002J\u0010\u0010U\u001a\u00020R2\u0006\u0010V\u001a\u00020WH\u0016J\u0012\u0010X\u001a\u0004\u0018\u00010\u00002\u0006\u0010E\u001a\u00020\u0007H\u0002J\u0010\u0010Y\u001a\u00020W2\u0006\u0010Z\u001a\u00020WH\u0002J\u0010\u0010[\u001a\u00020\u00082\u0006\u0010\\\u001a\u00020\u0016H\u0002J\u0010\u0010]\u001a\u00020R2\u0006\u0010\\\u001a\u00020\u0016H\u0002J\u0010\u0010^\u001a\u00020R2\u0006\u0010_\u001a\u00020\u0016H\u0002J\u0010\u0010`\u001a\u00020R2\u0006\u0010a\u001a\u00020\u0016H\u0002J\u0010\u0010b\u001a\u00020R2\u0006\u0010c\u001a\u00020\u0016H\u0002J\u0010\u0010d\u001a\u00020R2\u0006\u0010V\u001a\u00020WH\u0002J\u0010\u0010e\u001a\u00020R2\u0006\u0010V\u001a\u00020WH\u0002J\u0010\u0010f\u001a\u00020R2\u0006\u0010V\u001a\u00020WH\u0002J\u0010\u0010g\u001a\u00020R2\u0006\u0010V\u001a\u00020WH\u0002J\u0010\u0010h\u001a\u00020W2\u0006\u0010i\u001a\u00020\u0007H\u0002J\u0010\u0010j\u001a\u00020R2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004J\u0010\u0010k\u001a\u00020R2\u0006\u0010\\\u001a\u00020\u0016H\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R&\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR,\u0010\r\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u000e0\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\n\"\u0004\u0008\u0010\u0010\u000cR\u0014\u0010\u0011\u001a\u00020\u00128VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0018\"\u0004\u0008\u001d\u0010\u001aR\u001a\u0010\u001e\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u001a\u0010#\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010 \"\u0004\u0008%\u0010\"R\u001a\u0010&\u001a\u00020\'X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010(\"\u0004\u0008)\u0010*R\u001a\u0010+\u001a\u00020\'X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010(\"\u0004\u0008,\u0010*R\u001a\u0010-\u001a\u00020.X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102R\u001a\u00103\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00084\u0010 \"\u0004\u00085\u0010\"R\u001a\u00106\u001a\u00020\'X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00087\u0010(\"\u0004\u00088\u0010*R\u001a\u00109\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008:\u0010 \"\u0004\u0008;\u0010\"R\u001a\u0010<\u001a\u00020\'X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008=\u0010(\"\u0004\u0008>\u0010*R\u001a\u0010?\u001a\u00020.X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008@\u00100\"\u0004\u0008A\u00102R\u001a\u0010B\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008C\u0010 \"\u0004\u0008D\u0010\"R\u001a\u0010E\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008F\u0010 \"\u0004\u0008G\u0010\"R\u001a\u0010H\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008I\u0010 \"\u0004\u0008J\u0010\"R&\u0010K\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008L\u0010\n\"\u0004\u0008M\u0010\u000cR,\u0010N\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u000e0\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008O\u0010\n\"\u0004\u0008P\u0010\u000c\u00a8\u0006l"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/chain/page/PageChainContext;",
        "Lcom/cloud/tmc/integration/chain/ChainContext;",
        "()V",
        "appChainContext",
        "Lcom/cloud/tmc/integration/chain/app/AppChainContext;",
        "appStateCostTime",
        "",
        "",
        "",
        "getAppStateCostTime",
        "()Ljava/util/Map;",
        "setAppStateCostTime",
        "(Ljava/util/Map;)V",
        "appStateRangeTime",
        "",
        "getAppStateRangeTime",
        "setAppStateRangeTime",
        "contextType",
        "Lcom/cloud/tmc/integration/chain/ContextType;",
        "getContextType",
        "()Lcom/cloud/tmc/integration/chain/ContextType;",
        "currentChainEndState",
        "Lcom/cloud/tmc/integration/chain/ChainState;",
        "getCurrentChainEndState",
        "()Lcom/cloud/tmc/integration/chain/ChainState;",
        "setCurrentChainEndState",
        "(Lcom/cloud/tmc/integration/chain/ChainState;)V",
        "currentChainStartState",
        "getCurrentChainStartState",
        "setCurrentChainStartState",
        "drawEndType",
        "getDrawEndType",
        "()Ljava/lang/String;",
        "setDrawEndType",
        "(Ljava/lang/String;)V",
        "h5ProgressCollectList",
        "getH5ProgressCollectList",
        "setH5ProgressCollectList",
        "isReportEnd",
        "",
        "()Z",
        "setReportEnd",
        "(Z)V",
        "isReportMid",
        "setReportMid",
        "maxStage",
        "",
        "getMaxStage",
        "()I",
        "setMaxStage",
        "(I)V",
        "openChannel",
        "getOpenChannel",
        "setOpenChannel",
        "openMiniPageEndResult",
        "getOpenMiniPageEndResult",
        "setOpenMiniPageEndResult",
        "openMiniPageFailedReason",
        "getOpenMiniPageFailedReason",
        "setOpenMiniPageFailedReason",
        "openMiniPageMidResult",
        "getOpenMiniPageMidResult",
        "setOpenMiniPageMidResult",
        "pageIndexOfApp",
        "getPageIndexOfApp",
        "setPageIndexOfApp",
        "pageUrl",
        "getPageUrl",
        "setPageUrl",
        "renderId",
        "getRenderId",
        "setRenderId",
        "scene",
        "getScene",
        "setScene",
        "stateCostTime",
        "getStateCostTime",
        "setStateCostTime",
        "stateRangeTime",
        "getStateRangeTime",
        "setStateRangeTime",
        "appendStages",
        "",
        "tmpStateRangeTime",
        "tmpStateCostTime",
        "destroy",
        "data",
        "Landroid/os/Bundle;",
        "findPageContext",
        "generateAppReportData",
        "dataBundle",
        "getTime",
        "chainState",
        "insertData",
        "parseChainEnd",
        "chainEndState",
        "parseChainStart",
        "chainStartState",
        "parseChianError",
        "pageErrorState",
        "reportPageOpenEndFail",
        "reportPageOpenEndSuccess",
        "reportPageOpenMidFail",
        "reportPageOpenMidSuccess",
        "reportPsData",
        "appId",
        "setAppChainContext",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

.field private appStateCostTime:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private appStateRangeTime:Ljava/util/Map;
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

.field private currentChainEndState:Lcom/cloud/tmc/integration/chain/ChainState;

.field private currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

.field private drawEndType:Ljava/lang/String;

.field private h5ProgressCollectList:Ljava/lang/String;

.field private isReportEnd:Z

.field private isReportMid:Z

.field private maxStage:I

.field private openChannel:Ljava/lang/String;

.field private openMiniPageEndResult:Z

.field private openMiniPageFailedReason:Ljava/lang/String;

.field private openMiniPageMidResult:Z

.field private pageIndexOfApp:I

.field private pageUrl:Ljava/lang/String;

.field private renderId:Ljava/lang/String;

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


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->renderId:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->openMiniPageFailedReason:Ljava/lang/String;

    .line 9
    .line 10
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->appStateCostTime:Ljava/util/Map;

    .line 16
    .line 17
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->appStateRangeTime:Ljava/util/Map;

    .line 23
    .line 24
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->stateCostTime:Ljava/util/Map;

    .line 30
    .line 31
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->stateRangeTime:Ljava/util/Map;

    .line 37
    .line 38
    const-string v1, "0"

    .line 39
    .line 40
    iput-object v1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->scene:Ljava/lang/String;

    .line 41
    .line 42
    iput-object v1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->openChannel:Ljava/lang/String;

    .line 43
    .line 44
    iput-object v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->h5ProgressCollectList:Ljava/lang/String;

    .line 45
    .line 46
    iput-object v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->pageUrl:Ljava/lang/String;

    .line 47
    .line 48
    iput-object v1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->drawEndType:Ljava/lang/String;

    .line 49
    .line 50
    return-void
.end method

.method private final appendStages(Ljava/util/Map;Ljava/util/Map;)V
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
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-class v2, Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    .line 4
    .line 5
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, "_appendStages"

    .line 18
    .line 19
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const-string v3, "chainPoint"

    .line 27
    .line 28
    invoke-static {v3, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    .line 32
    .line 33
    if-eqz v2, :cond_4

    .line 34
    .line 35
    iget v2, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->pageIndexOfApp:I

    .line 36
    .line 37
    if-ne v2, v1, :cond_0

    .line 38
    .line 39
    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->appStateRangeTime:Ljava/util/Map;

    .line 40
    .line 41
    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->appStateCostTime:Ljava/util/Map;

    .line 45
    .line 46
    invoke-interface {p2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 47
    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_0
    move v2, v1

    .line 51
    :goto_0
    const/16 v3, 0xc

    .line 52
    .line 53
    if-ge v2, v3, :cond_3

    .line 54
    .line 55
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    iget-object v4, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->stateRangeTime:Ljava/util/Map;

    .line 60
    .line 61
    const-string v5, "12"

    .line 62
    .line 63
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    check-cast v4, Ljava/util/List;

    .line 68
    .line 69
    const-wide/16 v6, 0x0

    .line 70
    .line 71
    if-eqz v4, :cond_1

    .line 72
    .line 73
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    check-cast v4, Ljava/lang/Number;

    .line 78
    .line 79
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    .line 80
    .line 81
    .line 82
    move-result-wide v8

    .line 83
    goto :goto_1

    .line 84
    :cond_1
    move-wide v8, v6

    .line 85
    :goto_1
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    iget-object v8, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->stateRangeTime:Ljava/util/Map;

    .line 90
    .line 91
    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    check-cast v5, Ljava/util/List;

    .line 96
    .line 97
    if-eqz v5, :cond_2

    .line 98
    .line 99
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    check-cast v5, Ljava/lang/Number;

    .line 104
    .line 105
    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    .line 106
    .line 107
    .line 108
    move-result-wide v8

    .line 109
    goto :goto_2

    .line 110
    :cond_2
    move-wide v8, v6

    .line 111
    :goto_2
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    const/4 v8, 0x2

    .line 116
    new-array v8, v8, [Ljava/lang/Long;

    .line 117
    .line 118
    aput-object v4, v8, v0

    .line 119
    .line 120
    aput-object v5, v8, v1

    .line 121
    .line 122
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->h([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    invoke-interface {p2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    add-int/2addr v2, v1

    .line 141
    goto :goto_0

    .line 142
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->stateRangeTime:Ljava/util/Map;

    .line 143
    .line 144
    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 145
    .line 146
    .line 147
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->stateCostTime:Ljava/util/Map;

    .line 148
    .line 149
    invoke-interface {p2, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 150
    .line 151
    .line 152
    :cond_4
    return-void
.end method

.method static synthetic appendStages$default(Lcom/cloud/tmc/integration/chain/page/PageChainContext;Ljava/util/Map;Ljava/util/Map;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

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
    and-int/lit8 p3, p3, 0x2

    .line 11
    .line 12
    if-eqz p3, :cond_1

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
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->appendStages(Ljava/util/Map;Ljava/util/Map;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private final findPageContext(Ljava/lang/String;)Lcom/cloud/tmc/integration/chain/page/PageChainContext;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getPageContexts()Ljava/util/Stack;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    .line 27
    .line 28
    iget-object v3, v2, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->renderId:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_0

    .line 35
    .line 36
    move-object v1, v2

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    return-object v1
.end method

.method private final generateAppReportData(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    iget p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->pageIndexOfApp:I

    .line 10
    .line 11
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v1, "pageIndex"

    .line 16
    .line 17
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string p1, "maxStage"

    .line 21
    .line 22
    iget v1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->maxStage:I

    .line 23
    .line 24
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 28
    .line 29
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 30
    .line 31
    .line 32
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 33
    .line 34
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 35
    .line 36
    .line 37
    iget-object v2, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    .line 38
    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    iget v3, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->maxStage:I

    .line 42
    .line 43
    invoke-virtual {v2, p0, p1, v1, v3}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->appendStagesSuccess(Lcom/cloud/tmc/integration/chain/page/PageChainContext;Ljava/util/Map;Ljava/util/Map;I)V

    .line 44
    .line 45
    .line 46
    :cond_0
    const-string v2, "stageCostTime"

    .line 47
    .line 48
    invoke-static {v1}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-string v1, "stageRangeTime"

    .line 56
    .line 57
    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-object v0
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
    .locals 2

    .line 1
    :try_start_0
    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getDataBundle()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->OPEN_PAGE_FAILED_REASON:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->OPEN_PAGE_FAILED_REASON:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    const-string v0, "\u89e3\u6790\u5931\u8d25\u539f\u56e0\u9519\u8bef"

    .line 22
    .line 23
    :cond_0
    iput-object v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->openMiniPageFailedReason:Ljava/lang/String;

    .line 24
    .line 25
    :cond_1
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_H5_PROGRESS_STATUS:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_H5_PROGRESS_STATUS:Ljava/lang/String;

    .line 34
    .line 35
    const-string v1, ""

    .line 36
    .line 37
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const-string v0, "data.getString(ChainPoin\u2026E_H5_PROGRESS_STATUS, \"\")"

    .line 42
    .line 43
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->h5ProgressCollectList:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    :catchall_0
    :cond_2
    return-void
.end method

.method private final parseChainEnd(Lcom/cloud/tmc/integration/chain/ChainState;)V
    .locals 10

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
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->log(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->isReportEnd:Z

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    .line 27
    .line 28
    if-eqz v0, :cond_c

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getAppId()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getDataBundle()Landroid/os/Bundle;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_RENDER_ID:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const-string v2, ""

    .line 52
    .line 53
    if-nez v1, :cond_2

    .line 54
    .line 55
    move-object v1, v2

    .line 56
    :cond_2
    const-string v3, "chainEndState.dataBundle\u2026ng(CHAIN_RENDER_ID) ?: \"\""

    .line 57
    .line 58
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_3

    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->currentChainEndState:Lcom/cloud/tmc/integration/chain/ChainState;

    .line 69
    .line 70
    instance-of v1, p1, Lcom/cloud/tmc/integration/chain/endState/DrawViewEndState;

    .line 71
    .line 72
    if-eqz v1, :cond_4

    .line 73
    .line 74
    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getDataBundle()Landroid/os/Bundle;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_DRAW_END_TYPE:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    const-string v4, "2"

    .line 85
    .line 86
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-eqz v3, :cond_4

    .line 91
    .line 92
    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getDataBundle()Landroid/os/Bundle;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->FCP_CURRENT_TIMEMILLIS:Ljava/lang/String;

    .line 97
    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 99
    .line 100
    .line 101
    move-result-wide v5

    .line 102
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 103
    .line 104
    .line 105
    move-result-wide v3

    .line 106
    new-instance v5, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    const-string v6, "fcpTime:"

    .line 112
    .line 113
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    const-string v6, "chainState"

    .line 124
    .line 125
    invoke-static {v6, v5}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_4
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->getTime(Lcom/cloud/tmc/integration/chain/ChainState;)J

    .line 130
    .line 131
    .line 132
    move-result-wide v3

    .line 133
    :goto_0
    iget-object v5, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->stateRangeTime:Ljava/util/Map;

    .line 134
    .line 135
    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 136
    .line 137
    .line 138
    move-result v6

    .line 139
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v6

    .line 143
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    check-cast v5, Ljava/util/List;

    .line 148
    .line 149
    if-eqz v5, :cond_5

    .line 150
    .line 151
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    :cond_5
    iget-object v3, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->stateRangeTime:Ljava/util/Map;

    .line 159
    .line 160
    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 161
    .line 162
    .line 163
    move-result v4

    .line 164
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v4

    .line 168
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    check-cast v3, Ljava/util/List;

    .line 173
    .line 174
    const/4 v4, 0x0

    .line 175
    const/4 v5, 0x1

    .line 176
    const-wide/16 v6, 0x0

    .line 177
    .line 178
    if-eqz v3, :cond_6

    .line 179
    .line 180
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 181
    .line 182
    .line 183
    move-result v8

    .line 184
    const/4 v9, 0x2

    .line 185
    if-ne v8, v9, :cond_6

    .line 186
    .line 187
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v6

    .line 191
    check-cast v6, Ljava/lang/Number;

    .line 192
    .line 193
    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    .line 194
    .line 195
    .line 196
    move-result-wide v6

    .line 197
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v3

    .line 201
    check-cast v3, Ljava/lang/Number;

    .line 202
    .line 203
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    .line 204
    .line 205
    .line 206
    move-result-wide v8

    .line 207
    sub-long/2addr v6, v8

    .line 208
    :cond_6
    iget-object v3, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->stateCostTime:Ljava/util/Map;

    .line 209
    .line 210
    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 211
    .line 212
    .line 213
    move-result v8

    .line 214
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v8

    .line 218
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 219
    .line 220
    .line 221
    move-result-object v6

    .line 222
    invoke-interface {v3, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    iget v3, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->pageIndexOfApp:I

    .line 226
    .line 227
    if-ne v3, v5, :cond_7

    .line 228
    .line 229
    iget-object v3, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->stateRangeTime:Ljava/util/Map;

    .line 230
    .line 231
    invoke-virtual {v0, v3}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->setFirstPageStateRangeTime(Ljava/util/Map;)V

    .line 232
    .line 233
    .line 234
    iget-object v3, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->stateCostTime:Ljava/util/Map;

    .line 235
    .line 236
    invoke-virtual {v0, v3}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->setFirstPageStateCostTime(Ljava/util/Map;)V

    .line 237
    .line 238
    .line 239
    :cond_7
    instance-of v3, p1, Lcom/cloud/tmc/integration/chain/endState/ChainMidEndState;

    .line 240
    .line 241
    if-eqz v3, :cond_9

    .line 242
    .line 243
    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getDataBundle()Landroid/os/Bundle;

    .line 244
    .line 245
    .line 246
    move-result-object v3

    .line 247
    invoke-direct {p0, v3}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->reportPageOpenMidSuccess(Landroid/os/Bundle;)V

    .line 248
    .line 249
    .line 250
    iget v3, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->pageIndexOfApp:I

    .line 251
    .line 252
    if-ne v3, v5, :cond_8

    .line 253
    .line 254
    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getDataBundle()Landroid/os/Bundle;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    invoke-direct {p0, v3}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->generateAppReportData(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    invoke-virtual {v0, v3, v5}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->reportAppOpenMidSuccess(Landroid/os/Bundle;Z)V

    .line 263
    .line 264
    .line 265
    goto :goto_1

    .line 266
    :cond_8
    if-eq v3, v5, :cond_9

    .line 267
    .line 268
    iget-object v3, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    .line 269
    .line 270
    if-eqz v3, :cond_9

    .line 271
    .line 272
    invoke-virtual {v3}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->isReportMid()Z

    .line 273
    .line 274
    .line 275
    move-result v3

    .line 276
    if-nez v3, :cond_9

    .line 277
    .line 278
    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getDataBundle()Landroid/os/Bundle;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    invoke-direct {p0, v3}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->generateAppReportData(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    invoke-virtual {v0, v3, v4}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->reportAppOpenMidSuccess(Landroid/os/Bundle;Z)V

    .line 287
    .line 288
    .line 289
    :cond_9
    :goto_1
    if-eqz v1, :cond_c

    .line 290
    .line 291
    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getDataBundle()Landroid/os/Bundle;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_DRAW_END_TYPE:Ljava/lang/String;

    .line 296
    .line 297
    const-string v6, "0"

    .line 298
    .line 299
    invoke-virtual {v1, v3, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    const-string v3, "chainEndState.dataBundle\u2026CHAIN_DRAW_END_TYPE, \"0\")"

    .line 304
    .line 305
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    iput-object v1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->drawEndType:Ljava/lang/String;

    .line 309
    .line 310
    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getDataBundle()Landroid/os/Bundle;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    invoke-direct {p0, v1}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->reportPageOpenEndSuccess(Landroid/os/Bundle;)V

    .line 315
    .line 316
    .line 317
    iget v1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->pageIndexOfApp:I

    .line 318
    .line 319
    if-ne v1, v5, :cond_b

    .line 320
    .line 321
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getAppId()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    if-nez v1, :cond_a

    .line 326
    .line 327
    goto :goto_2

    .line 328
    :cond_a
    move-object v2, v1

    .line 329
    :goto_2
    invoke-direct {p0, v2}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->reportPsData(Ljava/lang/String;)Landroid/os/Bundle;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getDataBundle()Landroid/os/Bundle;

    .line 334
    .line 335
    .line 336
    move-result-object p1

    .line 337
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->generateAppReportData(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 338
    .line 339
    .line 340
    move-result-object p1

    .line 341
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v0, p1, v5}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->reportAppOpenEndSuccess(Landroid/os/Bundle;Z)V

    .line 345
    .line 346
    .line 347
    goto :goto_3

    .line 348
    :cond_b
    if-eq v1, v5, :cond_c

    .line 349
    .line 350
    iget-object v1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    .line 351
    .line 352
    if-eqz v1, :cond_c

    .line 353
    .line 354
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->isReportEnd()Z

    .line 355
    .line 356
    .line 357
    move-result v1

    .line 358
    if-nez v1, :cond_c

    .line 359
    .line 360
    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getDataBundle()Landroid/os/Bundle;

    .line 361
    .line 362
    .line 363
    move-result-object p1

    .line 364
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->generateAppReportData(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 365
    .line 366
    .line 367
    move-result-object p1

    .line 368
    invoke-virtual {v0, p1, v4}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->reportAppOpenEndSuccess(Landroid/os/Bundle;Z)V

    .line 369
    .line 370
    .line 371
    :cond_c
    :goto_3
    return-void
.end method

.method private final parseChainStart(Lcom/cloud/tmc/integration/chain/ChainState;)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    .line 6
    .line 7
    const-string v2, "parseChainStart_"

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p0, v1}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->log(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    .line 23
    .line 24
    if-eqz v1, :cond_5

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getAppId()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getDataBundle()Landroid/os/Bundle;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_RENDER_ID:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const-string v3, ""

    .line 48
    .line 49
    if-nez v2, :cond_1

    .line 50
    .line 51
    move-object v2, v3

    .line 52
    :cond_1
    const-string v4, "chainStartState.dataBund\u2026ng(CHAIN_RENDER_ID) ?: \"\""

    .line 53
    .line 54
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-eqz v4, :cond_2

    .line 62
    .line 63
    return-void

    .line 64
    :cond_2
    invoke-direct {p0, v2}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->findPageContext(Ljava/lang/String;)Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    if-nez v4, :cond_3

    .line 69
    .line 70
    iput-object v2, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->renderId:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getPageContexts()Ljava/util/Stack;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v2, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    :cond_3
    instance-of v2, p1, Lcom/cloud/tmc/integration/chain/startState/CreateContainerStartState;

    .line 80
    .line 81
    if-eqz v2, :cond_4

    .line 82
    .line 83
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getPageIndexOfApp()Ljava/util/concurrent/atomic/AtomicInteger;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    iput v2, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->pageIndexOfApp:I

    .line 92
    .line 93
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getScene()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    iput-object v2, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->scene:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getOpenChannel()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    iput-object v2, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->openChannel:Ljava/lang/String;

    .line 104
    .line 105
    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getDataBundle()Landroid/os/Bundle;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    const-string v3, "chainStartState.dataBund\u2026ChainPoint.PAGE_PATH, \"\")"

    .line 116
    .line 117
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    iput-object v2, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->pageUrl:Ljava/lang/String;

    .line 121
    .line 122
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getStateCostTime()Ljava/util/Map;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    iput-object v2, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->appStateCostTime:Ljava/util/Map;

    .line 127
    .line 128
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getStateRangeTime()Ljava/util/Map;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    iput-object v2, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->appStateRangeTime:Ljava/util/Map;

    .line 133
    .line 134
    :cond_4
    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    iput v2, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->maxStage:I

    .line 139
    .line 140
    const/4 v2, 0x0

    .line 141
    iput-object v2, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->currentChainEndState:Lcom/cloud/tmc/integration/chain/ChainState;

    .line 142
    .line 143
    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    .line 144
    .line 145
    iget-object v2, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->stateRangeTime:Ljava/util/Map;

    .line 146
    .line 147
    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->getTime(Lcom/cloud/tmc/integration/chain/ChainState;)J

    .line 156
    .line 157
    .line 158
    move-result-wide v4

    .line 159
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    new-array v4, v0, [Ljava/lang/Long;

    .line 164
    .line 165
    const/4 v5, 0x0

    .line 166
    aput-object p1, v4, v5

    .line 167
    .line 168
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->h([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    iget p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->pageIndexOfApp:I

    .line 176
    .line 177
    if-ne p1, v0, :cond_5

    .line 178
    .line 179
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->stateRangeTime:Ljava/util/Map;

    .line 180
    .line 181
    invoke-virtual {v1, p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->setFirstPageStateRangeTime(Ljava/util/Map;)V

    .line 182
    .line 183
    .line 184
    iget p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->maxStage:I

    .line 185
    .line 186
    invoke-virtual {v1, p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->setFirstPageMaxStage(I)V

    .line 187
    .line 188
    .line 189
    :cond_5
    return-void
.end method

.method private final parseChianError(Lcom/cloud/tmc/integration/chain/ChainState;)V
    .locals 7

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
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->log(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->isReportEnd:Z

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    .line 27
    .line 28
    if-eqz v0, :cond_5

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getAppId()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getDataBundle()Landroid/os/Bundle;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_RENDER_ID:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    if-nez v1, :cond_2

    .line 52
    .line 53
    const-string v1, ""

    .line 54
    .line 55
    :cond_2
    const-string v2, "pageErrorState.dataBundl\u2026ng(CHAIN_RENDER_ID) ?: \"\""

    .line 56
    .line 57
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_3

    .line 65
    .line 66
    return-void

    .line 67
    :cond_3
    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->currentChainEndState:Lcom/cloud/tmc/integration/chain/ChainState;

    .line 68
    .line 69
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    .line 70
    .line 71
    const/4 v1, 0x1

    .line 72
    if-eqz p1, :cond_4

    .line 73
    .line 74
    iget-object v2, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->stateRangeTime:Ljava/util/Map;

    .line 75
    .line 76
    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    check-cast v2, Ljava/util/List;

    .line 89
    .line 90
    if-eqz v2, :cond_4

    .line 91
    .line 92
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    if-ne v3, v1, :cond_4

    .line 97
    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 99
    .line 100
    .line 101
    move-result-wide v3

    .line 102
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    check-cast v3, Ljava/lang/Number;

    .line 114
    .line 115
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    .line 116
    .line 117
    .line 118
    move-result-wide v3

    .line 119
    const/4 v5, 0x0

    .line 120
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    check-cast v2, Ljava/lang/Number;

    .line 125
    .line 126
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    .line 127
    .line 128
    .line 129
    move-result-wide v5

    .line 130
    sub-long/2addr v3, v5

    .line 131
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    iget-object v3, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->stateCostTime:Ljava/util/Map;

    .line 136
    .line 137
    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    :cond_4
    iget p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->pageIndexOfApp:I

    .line 149
    .line 150
    if-ne p1, v1, :cond_5

    .line 151
    .line 152
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->stateRangeTime:Ljava/util/Map;

    .line 153
    .line 154
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->setFirstPageStateRangeTime(Ljava/util/Map;)V

    .line 155
    .line 156
    .line 157
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->stateCostTime:Ljava/util/Map;

    .line 158
    .line 159
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->setFirstPageStateCostTime(Ljava/util/Map;)V

    .line 160
    .line 161
    .line 162
    :cond_5
    return-void
.end method

.method private final reportPageOpenEndFail(Landroid/os/Bundle;)V
    .locals 10

    .line 1
    const-class v0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-boolean v1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->isReportEnd:Z

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
    const-string v0, "_reportPageOpenEndFail->isReportEnd:"

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
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->isReportEnd:Z

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
    iput-boolean v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->isReportEnd:Z

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
    const-string p1, "openPageResult"

    .line 51
    .line 52
    const-string v2, "false"

    .line 53
    .line 54
    invoke-virtual {v1, p1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string p1, "openPageFailedReason"

    .line 58
    .line 59
    iget-object v2, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->openMiniPageFailedReason:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v1, p1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const-string p1, "maxStage"

    .line 65
    .line 66
    iget v2, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->maxStage:I

    .line 67
    .line 68
    invoke-virtual {v1, p1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->openChannel:Ljava/lang/String;

    .line 72
    .line 73
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    const-string v2, "open_channel"

    .line 78
    .line 79
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    .line 83
    .line 84
    const/4 v2, 0x0

    .line 85
    if-eqz p1, :cond_1

    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getHotOpenType()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    goto :goto_0

    .line 92
    :cond_1
    move-object p1, v2

    .line 93
    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    const-string v3, "hot_open_type"

    .line 98
    .line 99
    invoke-virtual {v1, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

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
    if-eqz p1, :cond_2

    .line 109
    .line 110
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TIME:Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {v1, p1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 113
    .line 114
    .line 115
    move-result-wide v3

    .line 116
    goto :goto_1

    .line 117
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 118
    .line 119
    .line 120
    move-result-wide v3

    .line 121
    :goto_1
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    .line 122
    .line 123
    const/4 v5, 0x0

    .line 124
    if-eqz p1, :cond_3

    .line 125
    .line 126
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->currentChainEndState:Lcom/cloud/tmc/integration/chain/ChainState;

    .line 127
    .line 128
    if-nez p1, :cond_3

    .line 129
    .line 130
    move p1, v0

    .line 131
    goto :goto_2

    .line 132
    :cond_3
    move p1, v5

    .line 133
    :goto_2
    const-string v6, "isExitInStage"

    .line 134
    .line 135
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v7

    .line 139
    invoke-virtual {v1, v6, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    if-eqz p1, :cond_7

    .line 143
    .line 144
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    .line 145
    .line 146
    if-eqz p1, :cond_7

    .line 147
    .line 148
    iget-object v6, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->stateRangeTime:Ljava/util/Map;

    .line 149
    .line 150
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    if-eqz p1, :cond_7

    .line 166
    .line 167
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->stateRangeTime:Ljava/util/Map;

    .line 168
    .line 169
    iget-object v6, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    .line 170
    .line 171
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    invoke-interface {v6}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 175
    .line 176
    .line 177
    move-result v6

    .line 178
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v6

    .line 182
    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    check-cast p1, Ljava/util/List;

    .line 187
    .line 188
    if-eqz p1, :cond_7

    .line 189
    .line 190
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 191
    .line 192
    .line 193
    move-result p1

    .line 194
    if-ne p1, v0, :cond_7

    .line 195
    .line 196
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->stateRangeTime:Ljava/util/Map;

    .line 197
    .line 198
    iget-object v6, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    .line 199
    .line 200
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    invoke-interface {v6}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 204
    .line 205
    .line 206
    move-result v6

    .line 207
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v6

    .line 211
    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    check-cast p1, Ljava/util/List;

    .line 216
    .line 217
    if-eqz p1, :cond_4

    .line 218
    .line 219
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    :cond_4
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->stateCostTime:Ljava/util/Map;

    .line 227
    .line 228
    iget-object v3, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    .line 229
    .line 230
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    invoke-interface {v3}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 234
    .line 235
    .line 236
    move-result v3

    .line 237
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    iget-object v4, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->stateRangeTime:Ljava/util/Map;

    .line 242
    .line 243
    iget-object v6, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    .line 244
    .line 245
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    invoke-interface {v6}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 249
    .line 250
    .line 251
    move-result v6

    .line 252
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v6

    .line 256
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v4

    .line 260
    check-cast v4, Ljava/util/List;

    .line 261
    .line 262
    const-wide/16 v6, 0x0

    .line 263
    .line 264
    if-eqz v4, :cond_5

    .line 265
    .line 266
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    check-cast v0, Ljava/lang/Number;

    .line 271
    .line 272
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 273
    .line 274
    .line 275
    move-result-wide v8

    .line 276
    goto :goto_3

    .line 277
    :cond_5
    move-wide v8, v6

    .line 278
    :goto_3
    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->stateRangeTime:Ljava/util/Map;

    .line 279
    .line 280
    iget-object v4, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    .line 281
    .line 282
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 283
    .line 284
    .line 285
    invoke-interface {v4}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 286
    .line 287
    .line 288
    move-result v4

    .line 289
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v4

    .line 293
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    check-cast v0, Ljava/util/List;

    .line 298
    .line 299
    if-eqz v0, :cond_6

    .line 300
    .line 301
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    check-cast v0, Ljava/lang/Number;

    .line 306
    .line 307
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 308
    .line 309
    .line 310
    move-result-wide v6

    .line 311
    :cond_6
    sub-long/2addr v8, v6

    .line 312
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    :cond_7
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 320
    .line 321
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 322
    .line 323
    .line 324
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 325
    .line 326
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 327
    .line 328
    .line 329
    invoke-direct {p0, p1, v0}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->appendStages(Ljava/util/Map;Ljava/util/Map;)V

    .line 330
    .line 331
    .line 332
    const-string v3, "stageCostTime"

    .line 333
    .line 334
    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    invoke-virtual {v1, v3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    const-string v0, "stageRangeTime"

    .line 342
    .line 343
    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object p1

    .line 347
    invoke-virtual {v1, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->scene:Ljava/lang/String;

    .line 351
    .line 352
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object p1

    .line 356
    const-string v0, "scene"

    .line 357
    .line 358
    invoke-virtual {v1, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    iget p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->pageIndexOfApp:I

    .line 362
    .line 363
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object p1

    .line 367
    const-string v0, "pageIndex"

    .line 368
    .line 369
    invoke-virtual {v1, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    const-string p1, "isAdd"

    .line 373
    .line 374
    const-string v0, "true"

    .line 375
    .line 376
    invoke-virtual {v1, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    invoke-static {}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->getGAId()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object p1

    .line 383
    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->renderId:Ljava/lang/String;

    .line 384
    .line 385
    new-instance v3, Ljava/lang/StringBuilder;

    .line 386
    .line 387
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    const-string p1, "_"

    .line 394
    .line 395
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object p1

    .line 405
    const-string v0, "pageUniqueId"

    .line 406
    .line 407
    invoke-virtual {v1, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 411
    .line 412
    invoke-virtual {v1, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object p1

    .line 416
    if-eqz p1, :cond_8

    .line 417
    .line 418
    const-string v0, "page_path"

    .line 419
    .line 420
    invoke-virtual {v1, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    :cond_8
    const-string p1, "appH5ProgressStatus"

    .line 424
    .line 425
    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->h5ProgressCollectList:Ljava/lang/String;

    .line 426
    .line 427
    invoke-virtual {v1, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 431
    .line 432
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    .line 436
    .line 437
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    const-class p1, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    .line 441
    .line 442
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 443
    .line 444
    .line 445
    move-result-object p1

    .line 446
    check-cast p1, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    .line 447
    .line 448
    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    .line 449
    .line 450
    if-eqz v0, :cond_9

    .line 451
    .line 452
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getAppId()Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v2

    .line 456
    :cond_9
    const-string v0, "mini_page_open_end"

    .line 457
    .line 458
    invoke-interface {p1, v2, v0, v1}, Lcom/cloud/tmc/integration/proxy/ReportProxy;->report(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 459
    .line 460
    .line 461
    return-void
.end method

.method private final reportPageOpenEndSuccess(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    const-class v0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-boolean v1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->isReportEnd:Z

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
    const-string v0, "_reportPageOpenEndSuccess->isReportEnd:"

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
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->isReportEnd:Z

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
    iput-boolean v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->isReportEnd:Z

    .line 41
    .line 42
    iput-boolean v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->openMiniPageEndResult:Z

    .line 43
    .line 44
    new-instance v0, Landroid/os/Bundle;

    .line 45
    .line 46
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 50
    .line 51
    .line 52
    const-string p1, "openPageResult"

    .line 53
    .line 54
    const-string v1, "true"

    .line 55
    .line 56
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const-string p1, "openPageFailedReason"

    .line 60
    .line 61
    const-string v2, ""

    .line 62
    .line 63
    invoke-virtual {v0, p1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const-string p1, "maxStage"

    .line 67
    .line 68
    iget v2, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->maxStage:I

    .line 69
    .line 70
    invoke-virtual {v0, p1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 71
    .line 72
    .line 73
    const-string p1, "isExitInStage"

    .line 74
    .line 75
    const-string v2, "false"

    .line 76
    .line 77
    invoke-virtual {v0, p1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->openChannel:Ljava/lang/String;

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
    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    .line 92
    .line 93
    const/4 v2, 0x0

    .line 94
    if-eqz p1, :cond_1

    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getHotOpenType()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    goto :goto_0

    .line 101
    :cond_1
    move-object p1, v2

    .line 102
    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    const-string v3, "hot_open_type"

    .line 107
    .line 108
    invoke-virtual {v0, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 112
    .line 113
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 114
    .line 115
    .line 116
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 117
    .line 118
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-direct {p0, p1, v3}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->appendStages(Ljava/util/Map;Ljava/util/Map;)V

    .line 122
    .line 123
    .line 124
    const-string v4, "stageCostTime"

    .line 125
    .line 126
    invoke-static {v3}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    const-string v3, "stageRangeTime"

    .line 134
    .line 135
    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {v0, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->scene:Ljava/lang/String;

    .line 143
    .line 144
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    const-string v3, "scene"

    .line 149
    .line 150
    invoke-virtual {v0, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    iget p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->pageIndexOfApp:I

    .line 154
    .line 155
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    const-string v3, "pageIndex"

    .line 160
    .line 161
    invoke-virtual {v0, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    const-string p1, "isAdd"

    .line 165
    .line 166
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 170
    .line 171
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    if-eqz p1, :cond_2

    .line 176
    .line 177
    const-string v1, "page_path"

    .line 178
    .line 179
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    :cond_2
    const-string p1, "appH5ProgressStatus"

    .line 183
    .line 184
    iget-object v1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->h5ProgressCollectList:Ljava/lang/String;

    .line 185
    .line 186
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 190
    .line 191
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    .line 195
    .line 196
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    const-class p1, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    .line 200
    .line 201
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    check-cast p1, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    .line 206
    .line 207
    iget-object v1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    .line 208
    .line 209
    if-eqz v1, :cond_3

    .line 210
    .line 211
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getAppId()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    :cond_3
    const-string v1, "mini_page_open_end"

    .line 216
    .line 217
    invoke-interface {p1, v2, v1, v0}, Lcom/cloud/tmc/integration/proxy/ReportProxy;->report(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 218
    .line 219
    .line 220
    return-void
.end method

.method private final reportPageOpenMidFail(Landroid/os/Bundle;)V
    .locals 10

    .line 1
    const-class v0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-boolean v1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->isReportMid:Z

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
    const-string v0, "_reportPageOpenMidFail->isReportMid:"

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
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->isReportMid:Z

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
    iput-boolean v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->isReportMid:Z

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
    const-string p1, "openPageResult"

    .line 51
    .line 52
    const-string v2, "false"

    .line 53
    .line 54
    invoke-virtual {v1, p1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string p1, "openPageFailedReason"

    .line 58
    .line 59
    iget-object v2, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->openMiniPageFailedReason:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v1, p1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const-string p1, "maxStage"

    .line 65
    .line 66
    iget v2, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->maxStage:I

    .line 67
    .line 68
    invoke-virtual {v1, p1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->openChannel:Ljava/lang/String;

    .line 72
    .line 73
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    const-string v2, "open_channel"

    .line 78
    .line 79
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    .line 83
    .line 84
    const/4 v2, 0x0

    .line 85
    if-eqz p1, :cond_1

    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getHotOpenType()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    goto :goto_0

    .line 92
    :cond_1
    move-object p1, v2

    .line 93
    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    const-string v3, "hot_open_type"

    .line 98
    .line 99
    invoke-virtual {v1, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

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
    if-eqz p1, :cond_2

    .line 109
    .line 110
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TIME:Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {v1, p1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 113
    .line 114
    .line 115
    move-result-wide v3

    .line 116
    goto :goto_1

    .line 117
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 118
    .line 119
    .line 120
    move-result-wide v3

    .line 121
    :goto_1
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    .line 122
    .line 123
    const/4 v5, 0x0

    .line 124
    if-eqz p1, :cond_3

    .line 125
    .line 126
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->currentChainEndState:Lcom/cloud/tmc/integration/chain/ChainState;

    .line 127
    .line 128
    if-nez p1, :cond_3

    .line 129
    .line 130
    move p1, v0

    .line 131
    goto :goto_2

    .line 132
    :cond_3
    move p1, v5

    .line 133
    :goto_2
    const-string v6, "isExitInStage"

    .line 134
    .line 135
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v7

    .line 139
    invoke-virtual {v1, v6, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    if-eqz p1, :cond_7

    .line 143
    .line 144
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    .line 145
    .line 146
    if-eqz p1, :cond_7

    .line 147
    .line 148
    iget-object v6, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->stateRangeTime:Ljava/util/Map;

    .line 149
    .line 150
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    if-eqz p1, :cond_7

    .line 166
    .line 167
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->stateRangeTime:Ljava/util/Map;

    .line 168
    .line 169
    iget-object v6, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    .line 170
    .line 171
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    invoke-interface {v6}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 175
    .line 176
    .line 177
    move-result v6

    .line 178
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v6

    .line 182
    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    check-cast p1, Ljava/util/List;

    .line 187
    .line 188
    if-eqz p1, :cond_7

    .line 189
    .line 190
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 191
    .line 192
    .line 193
    move-result p1

    .line 194
    if-ne p1, v0, :cond_7

    .line 195
    .line 196
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->stateRangeTime:Ljava/util/Map;

    .line 197
    .line 198
    iget-object v6, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    .line 199
    .line 200
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    invoke-interface {v6}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 204
    .line 205
    .line 206
    move-result v6

    .line 207
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v6

    .line 211
    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    check-cast p1, Ljava/util/List;

    .line 216
    .line 217
    if-eqz p1, :cond_4

    .line 218
    .line 219
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    :cond_4
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->stateCostTime:Ljava/util/Map;

    .line 227
    .line 228
    iget-object v3, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    .line 229
    .line 230
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    invoke-interface {v3}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 234
    .line 235
    .line 236
    move-result v3

    .line 237
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    iget-object v4, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->stateRangeTime:Ljava/util/Map;

    .line 242
    .line 243
    iget-object v6, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    .line 244
    .line 245
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    invoke-interface {v6}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 249
    .line 250
    .line 251
    move-result v6

    .line 252
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v6

    .line 256
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v4

    .line 260
    check-cast v4, Ljava/util/List;

    .line 261
    .line 262
    const-wide/16 v6, 0x0

    .line 263
    .line 264
    if-eqz v4, :cond_5

    .line 265
    .line 266
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    check-cast v0, Ljava/lang/Number;

    .line 271
    .line 272
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 273
    .line 274
    .line 275
    move-result-wide v8

    .line 276
    goto :goto_3

    .line 277
    :cond_5
    move-wide v8, v6

    .line 278
    :goto_3
    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->stateRangeTime:Ljava/util/Map;

    .line 279
    .line 280
    iget-object v4, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    .line 281
    .line 282
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 283
    .line 284
    .line 285
    invoke-interface {v4}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    .line 286
    .line 287
    .line 288
    move-result v4

    .line 289
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v4

    .line 293
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    check-cast v0, Ljava/util/List;

    .line 298
    .line 299
    if-eqz v0, :cond_6

    .line 300
    .line 301
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    check-cast v0, Ljava/lang/Number;

    .line 306
    .line 307
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 308
    .line 309
    .line 310
    move-result-wide v6

    .line 311
    :cond_6
    sub-long/2addr v8, v6

    .line 312
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    :cond_7
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 320
    .line 321
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 322
    .line 323
    .line 324
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 325
    .line 326
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 327
    .line 328
    .line 329
    invoke-direct {p0, p1, v0}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->appendStages(Ljava/util/Map;Ljava/util/Map;)V

    .line 330
    .line 331
    .line 332
    const-string v3, "stageCostTime"

    .line 333
    .line 334
    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    invoke-virtual {v1, v3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    const-string v0, "stageRangeTime"

    .line 342
    .line 343
    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object p1

    .line 347
    invoke-virtual {v1, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->scene:Ljava/lang/String;

    .line 351
    .line 352
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object p1

    .line 356
    const-string v0, "scene"

    .line 357
    .line 358
    invoke-virtual {v1, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    iget p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->pageIndexOfApp:I

    .line 362
    .line 363
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object p1

    .line 367
    const-string v0, "pageIndex"

    .line 368
    .line 369
    invoke-virtual {v1, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    const-string p1, "isAdd"

    .line 373
    .line 374
    const-string v0, "true"

    .line 375
    .line 376
    invoke-virtual {v1, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    invoke-static {}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->getGAId()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object p1

    .line 383
    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->renderId:Ljava/lang/String;

    .line 384
    .line 385
    new-instance v3, Ljava/lang/StringBuilder;

    .line 386
    .line 387
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    const-string p1, "_"

    .line 394
    .line 395
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object p1

    .line 405
    const-string v0, "pageUniqueId"

    .line 406
    .line 407
    invoke-virtual {v1, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 411
    .line 412
    invoke-virtual {v1, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object p1

    .line 416
    if-eqz p1, :cond_8

    .line 417
    .line 418
    const-string v0, "page_path"

    .line 419
    .line 420
    invoke-virtual {v1, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    :cond_8
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 424
    .line 425
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    .line 429
    .line 430
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    const-class p1, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    .line 434
    .line 435
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 436
    .line 437
    .line 438
    move-result-object p1

    .line 439
    check-cast p1, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    .line 440
    .line 441
    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    .line 442
    .line 443
    if-eqz v0, :cond_9

    .line 444
    .line 445
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getAppId()Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v2

    .line 449
    :cond_9
    const-string v0, "mini_page_open_mid"

    .line 450
    .line 451
    invoke-interface {p1, v2, v0, v1}, Lcom/cloud/tmc/integration/proxy/ReportProxy;->report(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 452
    .line 453
    .line 454
    return-void
.end method

.method private final reportPageOpenMidSuccess(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    const-class v0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-boolean v1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->isReportMid:Z

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
    const-string v0, "_reportPageOpenMidSuccess->isReportMid:"

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
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->isReportMid:Z

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
    iput-boolean v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->isReportMid:Z

    .line 41
    .line 42
    iput-boolean v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->openMiniPageMidResult:Z

    .line 43
    .line 44
    new-instance v0, Landroid/os/Bundle;

    .line 45
    .line 46
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 50
    .line 51
    .line 52
    const-string p1, "openPageResult"

    .line 53
    .line 54
    const-string v1, "true"

    .line 55
    .line 56
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const-string p1, "openPageFailedReason"

    .line 60
    .line 61
    const-string v2, ""

    .line 62
    .line 63
    invoke-virtual {v0, p1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const-string p1, "maxStage"

    .line 67
    .line 68
    iget v2, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->maxStage:I

    .line 69
    .line 70
    invoke-virtual {v0, p1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 71
    .line 72
    .line 73
    const-string p1, "isExitInStage"

    .line 74
    .line 75
    const-string v2, "false"

    .line 76
    .line 77
    invoke-virtual {v0, p1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->openChannel:Ljava/lang/String;

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
    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    .line 92
    .line 93
    const/4 v2, 0x0

    .line 94
    if-eqz p1, :cond_1

    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getHotOpenType()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    goto :goto_0

    .line 101
    :cond_1
    move-object p1, v2

    .line 102
    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    const-string v3, "hot_open_type"

    .line 107
    .line 108
    invoke-virtual {v0, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 112
    .line 113
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 114
    .line 115
    .line 116
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 117
    .line 118
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-direct {p0, p1, v3}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->appendStages(Ljava/util/Map;Ljava/util/Map;)V

    .line 122
    .line 123
    .line 124
    const-string v4, "stageCostTime"

    .line 125
    .line 126
    invoke-static {v3}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    const-string v3, "stageRangeTime"

    .line 134
    .line 135
    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {v0, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->scene:Ljava/lang/String;

    .line 143
    .line 144
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    const-string v3, "scene"

    .line 149
    .line 150
    invoke-virtual {v0, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    iget p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->pageIndexOfApp:I

    .line 154
    .line 155
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    const-string v3, "pageIndex"

    .line 160
    .line 161
    invoke-virtual {v0, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    const-string p1, "isAdd"

    .line 165
    .line 166
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 170
    .line 171
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    if-eqz p1, :cond_2

    .line 176
    .line 177
    const-string v1, "page_path"

    .line 178
    .line 179
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    :cond_2
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    .line 183
    .line 184
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    .line 188
    .line 189
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    const-class p1, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    .line 193
    .line 194
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    check-cast p1, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    .line 199
    .line 200
    iget-object v1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    .line 201
    .line 202
    if-eqz v1, :cond_3

    .line 203
    .line 204
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getAppId()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    :cond_3
    const-string v1, "mini_page_open_mid"

    .line 209
    .line 210
    invoke-interface {p1, v2, v1, v0}, Lcom/cloud/tmc/integration/proxy/ReportProxy;->report(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 211
    .line 212
    .line 213
    return-void
.end method

.method private final reportPsData(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 12

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->appStateRangeTime:Ljava/util/Map;

    .line 7
    .line 8
    const-string v2, "1"

    .line 9
    .line 10
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Ljava/util/List;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v3, v2

    .line 25
    :goto_0
    const/4 v4, 0x1

    .line 26
    if-lt v3, v4, :cond_2

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Ljava/lang/Number;

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 37
    .line 38
    .line 39
    move-result-wide v5

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 42
    .line 43
    .line 44
    move-result-wide v5

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 47
    .line 48
    .line 49
    move-result-wide v5

    .line 50
    :goto_1
    iget-object v1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->stateRangeTime:Ljava/util/Map;

    .line 51
    .line 52
    const-string v3, "18"

    .line 53
    .line 54
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Ljava/util/List;

    .line 59
    .line 60
    if-eqz v1, :cond_3

    .line 61
    .line 62
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    :cond_3
    if-lt v2, v4, :cond_5

    .line 67
    .line 68
    if-eqz v1, :cond_4

    .line 69
    .line 70
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    check-cast v1, Ljava/lang/Number;

    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 77
    .line 78
    .line 79
    move-result-wide v1

    .line 80
    goto :goto_2

    .line 81
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 82
    .line 83
    .line 84
    move-result-wide v1

    .line 85
    goto :goto_2

    .line 86
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 87
    .line 88
    .line 89
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 90
    :goto_2
    const-wide/16 v3, 0x0

    .line 91
    .line 92
    :try_start_1
    const-class v7, Lcom/cloud/tmc/integration/structure/AppManager;

    .line 93
    .line 94
    invoke-static {v7}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    check-cast v7, Lcom/cloud/tmc/integration/structure/AppManager;

    .line 99
    .line 100
    invoke-interface {v7, p1}, Lcom/cloud/tmc/integration/structure/AppManager;->findApp(Ljava/lang/String;)Lcom/cloud/tmc/integration/structure/App;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    if-eqz p1, :cond_6

    .line 105
    .line 106
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getSceneParams()Landroid/os/Bundle;

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    if-eqz v7, :cond_6

    .line 111
    .line 112
    const-string v8, "start_main_first_time"

    .line 113
    .line 114
    invoke-virtual {v7, v8}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 115
    .line 116
    .line 117
    move-result-wide v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    goto :goto_3

    .line 119
    :catchall_0
    move-wide v7, v3

    .line 120
    goto :goto_4

    .line 121
    :cond_6
    move-wide v7, v3

    .line 122
    :goto_3
    if-eqz p1, :cond_7

    .line 123
    .line 124
    :try_start_2
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getSceneParams()Landroid/os/Bundle;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    if-eqz p1, :cond_7

    .line 129
    .line 130
    const-string v9, "start_mini_first_time"

    .line 131
    .line 132
    invoke-virtual {p1, v9}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 133
    .line 134
    .line 135
    move-result-wide v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 136
    goto :goto_5

    .line 137
    :catchall_1
    :cond_7
    :goto_4
    move-wide v9, v3

    .line 138
    :goto_5
    cmp-long p1, v7, v3

    .line 139
    .line 140
    if-eqz p1, :cond_8

    .line 141
    .line 142
    :try_start_3
    const-string v11, "mini_first_time"

    .line 143
    .line 144
    invoke-virtual {v0, v11, v7, v8}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 145
    .line 146
    .line 147
    :cond_8
    cmp-long v3, v9, v3

    .line 148
    .line 149
    if-eqz v3, :cond_9

    .line 150
    .line 151
    const-string v4, "mini_second_time"

    .line 152
    .line 153
    invoke-virtual {v0, v4, v9, v10}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 154
    .line 155
    .line 156
    :cond_9
    const-string v4, "Tmc"

    .line 157
    .line 158
    if-eqz p1, :cond_a

    .line 159
    .line 160
    :try_start_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .line 164
    .line 165
    const-string v3, "firstStartTime:"

    .line 166
    .line 167
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    invoke-static {v4, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    move-wide v5, v7

    .line 181
    goto :goto_6

    .line 182
    :cond_a
    if-eqz v3, :cond_b

    .line 183
    .line 184
    new-instance p1, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .line 188
    .line 189
    const-string v3, "secondStartTime:"

    .line 190
    .line 191
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {p1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    invoke-static {v4, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    move-wide v5, v9

    .line 205
    goto :goto_6

    .line 206
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    .line 207
    .line 208
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    .line 210
    .line 211
    const-string v3, "reportStartTime:"

    .line 212
    .line 213
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    invoke-static {v4, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    :goto_6
    sub-long/2addr v1, v5

    .line 227
    const-string p1, "miniapp_all_start_time"

    .line 228
    .line 229
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 230
    .line 231
    .line 232
    :catchall_2
    return-object v0
.end method


# virtual methods
.method public destroy(Landroid/os/Bundle;)V
    .locals 5

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
    const-class v1, Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-boolean v2, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->openMiniPageMidResult:Z

    .line 15
    .line 16
    iget-boolean v3, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->openMiniPageEndResult:Z

    .line 17
    .line 18
    new-instance v4, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, "_destroy->openMiniPageMidResult:"

    .line 27
    .line 28
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, " ,openMiniPageEndResult:"

    .line 35
    .line 36
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->openMiniPageMidResult:Z

    .line 50
    .line 51
    if-nez v0, :cond_0

    .line 52
    .line 53
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->reportPageOpenMidFail(Landroid/os/Bundle;)V

    .line 54
    .line 55
    .line 56
    :cond_0
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->openMiniPageEndResult:Z

    .line 57
    .line 58
    if-nez v0, :cond_1

    .line 59
    .line 60
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->reportPageOpenEndFail(Landroid/os/Bundle;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    .line 64
    .line 65
    if-eqz p1, :cond_2

    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getPageContexts()Ljava/util/Stack;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    if-eqz p1, :cond_2

    .line 72
    .line 73
    new-instance v0, Lcom/cloud/tmc/integration/chain/page/PageChainContext$destroy$1;

    .line 74
    .line 75
    invoke-direct {v0, p0}, Lcom/cloud/tmc/integration/chain/page/PageChainContext$destroy$1;-><init>(Lcom/cloud/tmc/integration/chain/page/PageChainContext;)V

    .line 76
    .line 77
    .line 78
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->I(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    .line 79
    .line 80
    .line 81
    :cond_2
    const/4 p1, 0x0

    .line 82
    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .line 84
    :catchall_0
    return-void
.end method

.method public final getAppStateCostTime()Ljava/util/Map;
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
    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->appStateCostTime:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAppStateRangeTime()Ljava/util/Map;
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
    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->appStateRangeTime:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public getContextType()Lcom/cloud/tmc/integration/chain/ContextType;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/integration/chain/ContextType;->TYPE_PAGE:Lcom/cloud/tmc/integration/chain/ContextType;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCurrentChainEndState()Lcom/cloud/tmc/integration/chain/ChainState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->currentChainEndState:Lcom/cloud/tmc/integration/chain/ChainState;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCurrentChainStartState()Lcom/cloud/tmc/integration/chain/ChainState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDrawEndType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->drawEndType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getH5ProgressCollectList()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->h5ProgressCollectList:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMaxStage()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->maxStage:I

    .line 2
    .line 3
    return v0
.end method

.method public final getOpenChannel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->openChannel:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOpenMiniPageEndResult()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->openMiniPageEndResult:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getOpenMiniPageFailedReason()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->openMiniPageFailedReason:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOpenMiniPageMidResult()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->openMiniPageMidResult:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getPageIndexOfApp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->pageIndexOfApp:I

    .line 2
    .line 3
    return v0
.end method

.method public final getPageUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->pageUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRenderId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->renderId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getScene()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->scene:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->stateCostTime:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->stateRangeTime:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public final isReportEnd()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->isReportEnd:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isReportMid()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->isReportMid:Z

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

.method public final setAppChainContext(Lcom/cloud/tmc/integration/chain/app/AppChainContext;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    .line 2
    .line 3
    return-void
.end method

.method public final setAppStateCostTime(Ljava/util/Map;)V
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
    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->appStateCostTime:Ljava/util/Map;

    .line 7
    .line 8
    return-void
.end method

.method public final setAppStateRangeTime(Ljava/util/Map;)V
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
    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->appStateRangeTime:Ljava/util/Map;

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
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->log(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getChainType()Lcom/cloud/tmc/integration/chain/ChainType;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sget-object v1, Lcom/cloud/tmc/integration/chain/page/PageChainContext$WhenMappings;->$EnumSwitchMapping$0:[I

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
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->insertData(Lcom/cloud/tmc/integration/chain/ChainState;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->parseChianError(Lcom/cloud/tmc/integration/chain/ChainState;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->parseChainEnd(Lcom/cloud/tmc/integration/chain/ChainState;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->parseChainStart(Lcom/cloud/tmc/integration/chain/ChainState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .line 69
    .line 70
    :catchall_0
    :goto_0
    return-void
.end method

.method public final setCurrentChainEndState(Lcom/cloud/tmc/integration/chain/ChainState;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->currentChainEndState:Lcom/cloud/tmc/integration/chain/ChainState;

    .line 2
    .line 3
    return-void
.end method

.method public final setCurrentChainStartState(Lcom/cloud/tmc/integration/chain/ChainState;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    .line 2
    .line 3
    return-void
.end method

.method public final setDrawEndType(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->drawEndType:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->h5ProgressCollectList:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setMaxStage(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->maxStage:I

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
    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->openChannel:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setOpenMiniPageEndResult(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->openMiniPageEndResult:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setOpenMiniPageFailedReason(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->openMiniPageFailedReason:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setOpenMiniPageMidResult(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->openMiniPageMidResult:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setPageIndexOfApp(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->pageIndexOfApp:I

    .line 2
    .line 3
    return-void
.end method

.method public final setPageUrl(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->pageUrl:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setRenderId(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->renderId:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setReportEnd(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->isReportEnd:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setReportMid(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->isReportMid:Z

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
    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->scene:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->stateCostTime:Ljava/util/Map;

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
    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->stateRangeTime:Ljava/util/Map;

    .line 7
    .line 8
    return-void
.end method
