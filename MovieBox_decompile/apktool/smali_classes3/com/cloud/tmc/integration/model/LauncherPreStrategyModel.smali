.class public final Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;
.super Lcom/cloud/tmc/kernel/model/BaseBean;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008:\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u00df\u0001\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u001a\u0010\u0007\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0008j\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001`\t\u0012\u001a\u0010\n\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0008j\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001`\t\u0012\u001a\u0010\u000b\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0008j\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001`\t\u0012\u001a\u0010\u000c\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0008j\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001`\t\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0014\u00a2\u0006\u0002\u0010\u0016J\u000b\u0010>\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010?\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010@\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010A\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0010\u0010B\u001a\u0004\u0018\u00010\u0014H\u00c6\u0003\u00a2\u0006\u0002\u00104J\u0010\u0010C\u001a\u0004\u0018\u00010\u0014H\u00c6\u0003\u00a2\u0006\u0002\u00104J\u000b\u0010D\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010E\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u001d\u0010F\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0008j\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001`\tH\u00c6\u0003J\u001d\u0010G\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0008j\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001`\tH\u00c6\u0003J\u001d\u0010H\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0008j\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001`\tH\u00c6\u0003J\u001d\u0010I\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0008j\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001`\tH\u00c6\u0003J\u0010\u0010J\u001a\u0004\u0018\u00010\u000eH\u00c6\u0003\u00a2\u0006\u0002\u0010/J\u000b\u0010K\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u00fe\u0001\u0010L\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u001c\u0008\u0002\u0010\u0007\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0008j\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001`\t2\u001c\u0008\u0002\u0010\n\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0008j\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001`\t2\u001c\u0008\u0002\u0010\u000b\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0008j\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001`\t2\u001c\u0008\u0002\u0010\u000c\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0008j\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001`\t2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u00c6\u0001\u00a2\u0006\u0002\u0010MJ\u0013\u0010N\u001a\u00020O2\u0008\u0010P\u001a\u0004\u0018\u00010QH\u00d6\u0003J\t\u0010R\u001a\u00020\u000eH\u00d6\u0001J\t\u0010S\u001a\u00020\u0003H\u00d6\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R.\u0010\u0007\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0008j\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001`\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR.\u0010\u000b\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0008j\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001`\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001a\"\u0004\u0008\u001e\u0010\u001cR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010 \"\u0004\u0008$\u0010\"R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010\u0018\"\u0004\u0008&\u0010\'R\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010\u0018\"\u0004\u0008)\u0010\'R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010\u0018\"\u0004\u0008+\u0010\'R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010\u0018\"\u0004\u0008-\u0010\'R\u001e\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u00102\u001a\u0004\u0008.\u0010/\"\u0004\u00080\u00101R\u001e\u0010\u0015\u001a\u0004\u0018\u00010\u0014X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u00107\u001a\u0004\u00083\u00104\"\u0004\u00085\u00106R\u001e\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u00107\u001a\u0004\u00088\u00104\"\u0004\u00089\u00106R.\u0010\n\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0008j\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001`\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008:\u0010\u001a\"\u0004\u0008;\u0010\u001cR.\u0010\u000c\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0008j\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001`\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008<\u0010\u001a\"\u0004\u0008=\u0010\u001c\u00a8\u0006T"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;",
        "Lcom/cloud/tmc/kernel/model/BaseBean;",
        "appId",
        "",
        "commonConfig",
        "Lcom/google/gson/JsonObject;",
        "config",
        "blackCountryList",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "whiteCountryList",
        "blackModelList",
        "whiteModelList",
        "netType",
        "",
        "lowestSDKVersion",
        "highestSDKVersion",
        "lowestFrameworkVersion",
        "highestFrameworkVersion",
        "validTime",
        "",
        "openBrowserTime",
        "(Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V",
        "getAppId",
        "()Ljava/lang/String;",
        "getBlackCountryList",
        "()Ljava/util/ArrayList;",
        "setBlackCountryList",
        "(Ljava/util/ArrayList;)V",
        "getBlackModelList",
        "setBlackModelList",
        "getCommonConfig",
        "()Lcom/google/gson/JsonObject;",
        "setCommonConfig",
        "(Lcom/google/gson/JsonObject;)V",
        "getConfig",
        "setConfig",
        "getHighestFrameworkVersion",
        "setHighestFrameworkVersion",
        "(Ljava/lang/String;)V",
        "getHighestSDKVersion",
        "setHighestSDKVersion",
        "getLowestFrameworkVersion",
        "setLowestFrameworkVersion",
        "getLowestSDKVersion",
        "setLowestSDKVersion",
        "getNetType",
        "()Ljava/lang/Integer;",
        "setNetType",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "getOpenBrowserTime",
        "()Ljava/lang/Long;",
        "setOpenBrowserTime",
        "(Ljava/lang/Long;)V",
        "Ljava/lang/Long;",
        "getValidTime",
        "setValidTime",
        "getWhiteCountryList",
        "setWhiteCountryList",
        "getWhiteModelList",
        "setWhiteModelList",
        "component1",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "(Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
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
.field private final appId:Ljava/lang/String;

.field private blackCountryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blackModelList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private commonConfig:Lcom/google/gson/JsonObject;

.field private config:Lcom/google/gson/JsonObject;

.field private highestFrameworkVersion:Ljava/lang/String;

.field private highestSDKVersion:Ljava/lang/String;

.field private lowestFrameworkVersion:Ljava/lang/String;

.field private lowestSDKVersion:Ljava/lang/String;

.field private netType:Ljava/lang/Integer;

.field private openBrowserTime:Ljava/lang/Long;

.field private validTime:Ljava/lang/Long;

.field private whiteCountryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private whiteModelList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/gson/JsonObject;",
            "Lcom/google/gson/JsonObject;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Lcom/cloud/tmc/kernel/model/BaseBean;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->appId:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->commonConfig:Lcom/google/gson/JsonObject;

    .line 8
    iput-object p3, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->config:Lcom/google/gson/JsonObject;

    .line 9
    iput-object p4, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->blackCountryList:Ljava/util/ArrayList;

    .line 10
    iput-object p5, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->whiteCountryList:Ljava/util/ArrayList;

    .line 11
    iput-object p6, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->blackModelList:Ljava/util/ArrayList;

    .line 12
    iput-object p7, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->whiteModelList:Ljava/util/ArrayList;

    .line 13
    iput-object p8, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->netType:Ljava/lang/Integer;

    .line 14
    iput-object p9, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->lowestSDKVersion:Ljava/lang/String;

    .line 15
    iput-object p10, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->highestSDKVersion:Ljava/lang/String;

    .line 16
    iput-object p11, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->lowestFrameworkVersion:Ljava/lang/String;

    .line 17
    iput-object p12, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->highestFrameworkVersion:Ljava/lang/String;

    .line 18
    iput-object p13, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->validTime:Ljava/lang/Long;

    .line 19
    iput-object p14, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->openBrowserTime:Ljava/lang/Long;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 17

    move/from16 v0, p15

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    .line 1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v10, v1

    goto :goto_0

    :cond_0
    move-object/from16 v10, p8

    :goto_0
    and-int/lit16 v1, v0, 0x1000

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_1

    .line 2
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v15, v1

    goto :goto_1

    :cond_1
    move-object/from16 v15, p13

    :goto_1
    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_2

    .line 3
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_2

    :cond_2
    move-object/from16 v16, p14

    :goto_2
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    .line 4
    invoke-direct/range {v2 .. v16}, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;-><init>(Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;ILjava/lang/Object;)Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;
    .locals 15

    .line 1
    move-object v0, p0

    move/from16 v1, p15

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->appId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->commonConfig:Lcom/google/gson/JsonObject;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->config:Lcom/google/gson/JsonObject;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->blackCountryList:Ljava/util/ArrayList;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->whiteCountryList:Ljava/util/ArrayList;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->blackModelList:Ljava/util/ArrayList;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->whiteModelList:Ljava/util/ArrayList;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->netType:Ljava/lang/Integer;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->lowestSDKVersion:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->highestSDKVersion:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->lowestFrameworkVersion:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->highestFrameworkVersion:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-object v14, v0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->validTime:Ljava/lang/Long;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_d

    iget-object v1, v0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->openBrowserTime:Ljava/lang/Long;

    goto :goto_d

    :cond_d
    move-object/from16 v1, p14

    :goto_d
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p14, v1

    invoke-virtual/range {p0 .. p14}, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->copy(Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->appId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->highestSDKVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component11()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->lowestFrameworkVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component12()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->highestFrameworkVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component13()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->validTime:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component14()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->openBrowserTime:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Lcom/google/gson/JsonObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->commonConfig:Lcom/google/gson/JsonObject;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()Lcom/google/gson/JsonObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->config:Lcom/google/gson/JsonObject;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component4()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->blackCountryList:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component5()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->whiteCountryList:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component6()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->blackModelList:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component7()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->whiteModelList:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component8()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->netType:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->lowestSDKVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/gson/JsonObject;",
            "Lcom/google/gson/JsonObject;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ")",
            "Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;"
        }
    .end annotation

    .line 1
    new-instance v15, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;

    .line 2
    .line 3
    move-object v0, v15

    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    move-object/from16 v2, p2

    .line 7
    .line 8
    move-object/from16 v3, p3

    .line 9
    .line 10
    move-object/from16 v4, p4

    .line 11
    .line 12
    move-object/from16 v5, p5

    .line 13
    .line 14
    move-object/from16 v6, p6

    .line 15
    .line 16
    move-object/from16 v7, p7

    .line 17
    .line 18
    move-object/from16 v8, p8

    .line 19
    .line 20
    move-object/from16 v9, p9

    .line 21
    .line 22
    move-object/from16 v10, p10

    .line 23
    .line 24
    move-object/from16 v11, p11

    .line 25
    .line 26
    move-object/from16 v12, p12

    .line 27
    .line 28
    move-object/from16 v13, p13

    .line 29
    .line 30
    move-object/from16 v14, p14

    .line 31
    .line 32
    invoke-direct/range {v0 .. v14}, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;-><init>(Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 33
    .line 34
    .line 35
    return-object v15
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->appId:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->appId:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->commonConfig:Lcom/google/gson/JsonObject;

    .line 25
    .line 26
    iget-object v3, p1, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->commonConfig:Lcom/google/gson/JsonObject;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-object v1, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->config:Lcom/google/gson/JsonObject;

    .line 36
    .line 37
    iget-object v3, p1, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->config:Lcom/google/gson/JsonObject;

    .line 38
    .line 39
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    iget-object v1, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->blackCountryList:Ljava/util/ArrayList;

    .line 47
    .line 48
    iget-object v3, p1, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->blackCountryList:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_5

    .line 55
    .line 56
    return v2

    .line 57
    :cond_5
    iget-object v1, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->whiteCountryList:Ljava/util/ArrayList;

    .line 58
    .line 59
    iget-object v3, p1, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->whiteCountryList:Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_6

    .line 66
    .line 67
    return v2

    .line 68
    :cond_6
    iget-object v1, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->blackModelList:Ljava/util/ArrayList;

    .line 69
    .line 70
    iget-object v3, p1, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->blackModelList:Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-nez v1, :cond_7

    .line 77
    .line 78
    return v2

    .line 79
    :cond_7
    iget-object v1, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->whiteModelList:Ljava/util/ArrayList;

    .line 80
    .line 81
    iget-object v3, p1, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->whiteModelList:Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-nez v1, :cond_8

    .line 88
    .line 89
    return v2

    .line 90
    :cond_8
    iget-object v1, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->netType:Ljava/lang/Integer;

    .line 91
    .line 92
    iget-object v3, p1, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->netType:Ljava/lang/Integer;

    .line 93
    .line 94
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-nez v1, :cond_9

    .line 99
    .line 100
    return v2

    .line 101
    :cond_9
    iget-object v1, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->lowestSDKVersion:Ljava/lang/String;

    .line 102
    .line 103
    iget-object v3, p1, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->lowestSDKVersion:Ljava/lang/String;

    .line 104
    .line 105
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-nez v1, :cond_a

    .line 110
    .line 111
    return v2

    .line 112
    :cond_a
    iget-object v1, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->highestSDKVersion:Ljava/lang/String;

    .line 113
    .line 114
    iget-object v3, p1, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->highestSDKVersion:Ljava/lang/String;

    .line 115
    .line 116
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-nez v1, :cond_b

    .line 121
    .line 122
    return v2

    .line 123
    :cond_b
    iget-object v1, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->lowestFrameworkVersion:Ljava/lang/String;

    .line 124
    .line 125
    iget-object v3, p1, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->lowestFrameworkVersion:Ljava/lang/String;

    .line 126
    .line 127
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-nez v1, :cond_c

    .line 132
    .line 133
    return v2

    .line 134
    :cond_c
    iget-object v1, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->highestFrameworkVersion:Ljava/lang/String;

    .line 135
    .line 136
    iget-object v3, p1, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->highestFrameworkVersion:Ljava/lang/String;

    .line 137
    .line 138
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-nez v1, :cond_d

    .line 143
    .line 144
    return v2

    .line 145
    :cond_d
    iget-object v1, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->validTime:Ljava/lang/Long;

    .line 146
    .line 147
    iget-object v3, p1, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->validTime:Ljava/lang/Long;

    .line 148
    .line 149
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-nez v1, :cond_e

    .line 154
    .line 155
    return v2

    .line 156
    :cond_e
    iget-object v1, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->openBrowserTime:Ljava/lang/Long;

    .line 157
    .line 158
    iget-object p1, p1, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->openBrowserTime:Ljava/lang/Long;

    .line 159
    .line 160
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result p1

    .line 164
    if-nez p1, :cond_f

    .line 165
    .line 166
    return v2

    .line 167
    :cond_f
    return v0
.end method

.method public final getAppId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->appId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getBlackCountryList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->blackCountryList:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getBlackModelList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->blackModelList:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCommonConfig()Lcom/google/gson/JsonObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->commonConfig:Lcom/google/gson/JsonObject;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getConfig()Lcom/google/gson/JsonObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->config:Lcom/google/gson/JsonObject;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getHighestFrameworkVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->highestFrameworkVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getHighestSDKVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->highestSDKVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLowestFrameworkVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->lowestFrameworkVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLowestSDKVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->lowestSDKVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNetType()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->netType:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOpenBrowserTime()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->openBrowserTime:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getValidTime()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->validTime:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getWhiteCountryList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->whiteCountryList:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getWhiteModelList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->whiteModelList:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->appId:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->commonConfig:Lcom/google/gson/JsonObject;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    move v2, v1

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {v2}, Lcom/google/gson/JsonObject;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    :goto_1
    add-int/2addr v0, v2

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-object v2, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->config:Lcom/google/gson/JsonObject;

    .line 28
    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    move v2, v1

    .line 32
    goto :goto_2

    .line 33
    :cond_2
    invoke-virtual {v2}, Lcom/google/gson/JsonObject;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    :goto_2
    add-int/2addr v0, v2

    .line 38
    mul-int/lit8 v0, v0, 0x1f

    .line 39
    .line 40
    iget-object v2, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->blackCountryList:Ljava/util/ArrayList;

    .line 41
    .line 42
    if-nez v2, :cond_3

    .line 43
    .line 44
    move v2, v1

    .line 45
    goto :goto_3

    .line 46
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    :goto_3
    add-int/2addr v0, v2

    .line 51
    mul-int/lit8 v0, v0, 0x1f

    .line 52
    .line 53
    iget-object v2, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->whiteCountryList:Ljava/util/ArrayList;

    .line 54
    .line 55
    if-nez v2, :cond_4

    .line 56
    .line 57
    move v2, v1

    .line 58
    goto :goto_4

    .line 59
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->hashCode()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    :goto_4
    add-int/2addr v0, v2

    .line 64
    mul-int/lit8 v0, v0, 0x1f

    .line 65
    .line 66
    iget-object v2, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->blackModelList:Ljava/util/ArrayList;

    .line 67
    .line 68
    if-nez v2, :cond_5

    .line 69
    .line 70
    move v2, v1

    .line 71
    goto :goto_5

    .line 72
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->hashCode()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    :goto_5
    add-int/2addr v0, v2

    .line 77
    mul-int/lit8 v0, v0, 0x1f

    .line 78
    .line 79
    iget-object v2, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->whiteModelList:Ljava/util/ArrayList;

    .line 80
    .line 81
    if-nez v2, :cond_6

    .line 82
    .line 83
    move v2, v1

    .line 84
    goto :goto_6

    .line 85
    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->hashCode()I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    :goto_6
    add-int/2addr v0, v2

    .line 90
    mul-int/lit8 v0, v0, 0x1f

    .line 91
    .line 92
    iget-object v2, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->netType:Ljava/lang/Integer;

    .line 93
    .line 94
    if-nez v2, :cond_7

    .line 95
    .line 96
    move v2, v1

    .line 97
    goto :goto_7

    .line 98
    :cond_7
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    :goto_7
    add-int/2addr v0, v2

    .line 103
    mul-int/lit8 v0, v0, 0x1f

    .line 104
    .line 105
    iget-object v2, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->lowestSDKVersion:Ljava/lang/String;

    .line 106
    .line 107
    if-nez v2, :cond_8

    .line 108
    .line 109
    move v2, v1

    .line 110
    goto :goto_8

    .line 111
    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    :goto_8
    add-int/2addr v0, v2

    .line 116
    mul-int/lit8 v0, v0, 0x1f

    .line 117
    .line 118
    iget-object v2, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->highestSDKVersion:Ljava/lang/String;

    .line 119
    .line 120
    if-nez v2, :cond_9

    .line 121
    .line 122
    move v2, v1

    .line 123
    goto :goto_9

    .line 124
    :cond_9
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    :goto_9
    add-int/2addr v0, v2

    .line 129
    mul-int/lit8 v0, v0, 0x1f

    .line 130
    .line 131
    iget-object v2, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->lowestFrameworkVersion:Ljava/lang/String;

    .line 132
    .line 133
    if-nez v2, :cond_a

    .line 134
    .line 135
    move v2, v1

    .line 136
    goto :goto_a

    .line 137
    :cond_a
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    :goto_a
    add-int/2addr v0, v2

    .line 142
    mul-int/lit8 v0, v0, 0x1f

    .line 143
    .line 144
    iget-object v2, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->highestFrameworkVersion:Ljava/lang/String;

    .line 145
    .line 146
    if-nez v2, :cond_b

    .line 147
    .line 148
    move v2, v1

    .line 149
    goto :goto_b

    .line 150
    :cond_b
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    :goto_b
    add-int/2addr v0, v2

    .line 155
    mul-int/lit8 v0, v0, 0x1f

    .line 156
    .line 157
    iget-object v2, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->validTime:Ljava/lang/Long;

    .line 158
    .line 159
    if-nez v2, :cond_c

    .line 160
    .line 161
    move v2, v1

    .line 162
    goto :goto_c

    .line 163
    :cond_c
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    :goto_c
    add-int/2addr v0, v2

    .line 168
    mul-int/lit8 v0, v0, 0x1f

    .line 169
    .line 170
    iget-object v2, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->openBrowserTime:Ljava/lang/Long;

    .line 171
    .line 172
    if-nez v2, :cond_d

    .line 173
    .line 174
    goto :goto_d

    .line 175
    :cond_d
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    :goto_d
    add-int/2addr v0, v1

    .line 180
    return v0
.end method

.method public final setBlackCountryList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->blackCountryList:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-void
.end method

.method public final setBlackModelList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->blackModelList:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-void
.end method

.method public final setCommonConfig(Lcom/google/gson/JsonObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->commonConfig:Lcom/google/gson/JsonObject;

    .line 2
    .line 3
    return-void
.end method

.method public final setConfig(Lcom/google/gson/JsonObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->config:Lcom/google/gson/JsonObject;

    .line 2
    .line 3
    return-void
.end method

.method public final setHighestFrameworkVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->highestFrameworkVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setHighestSDKVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->highestSDKVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setLowestFrameworkVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->lowestFrameworkVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setLowestSDKVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->lowestSDKVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setNetType(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->netType:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setOpenBrowserTime(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->openBrowserTime:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setValidTime(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->validTime:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setWhiteCountryList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->whiteCountryList:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-void
.end method

.method public final setWhiteModelList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->whiteModelList:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->appId:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->commonConfig:Lcom/google/gson/JsonObject;

    .line 6
    .line 7
    iget-object v3, v0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->config:Lcom/google/gson/JsonObject;

    .line 8
    .line 9
    iget-object v4, v0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->blackCountryList:Ljava/util/ArrayList;

    .line 10
    .line 11
    iget-object v5, v0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->whiteCountryList:Ljava/util/ArrayList;

    .line 12
    .line 13
    iget-object v6, v0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->blackModelList:Ljava/util/ArrayList;

    .line 14
    .line 15
    iget-object v7, v0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->whiteModelList:Ljava/util/ArrayList;

    .line 16
    .line 17
    iget-object v8, v0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->netType:Ljava/lang/Integer;

    .line 18
    .line 19
    iget-object v9, v0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->lowestSDKVersion:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v10, v0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->highestSDKVersion:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v11, v0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->lowestFrameworkVersion:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v12, v0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->highestFrameworkVersion:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v13, v0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->validTime:Ljava/lang/Long;

    .line 28
    .line 29
    iget-object v14, v0, Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;->openBrowserTime:Ljava/lang/Long;

    .line 30
    .line 31
    new-instance v15, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v0, "LauncherPreStrategyModel(appId="

    .line 37
    .line 38
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v0, ", commonConfig="

    .line 45
    .line 46
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v0, ", config="

    .line 53
    .line 54
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v0, ", blackCountryList="

    .line 61
    .line 62
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v0, ", whiteCountryList="

    .line 69
    .line 70
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v0, ", blackModelList="

    .line 77
    .line 78
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v0, ", whiteModelList="

    .line 85
    .line 86
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v0, ", netType="

    .line 93
    .line 94
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v0, ", lowestSDKVersion="

    .line 101
    .line 102
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v0, ", highestSDKVersion="

    .line 109
    .line 110
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v0, ", lowestFrameworkVersion="

    .line 117
    .line 118
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v0, ", highestFrameworkVersion="

    .line 125
    .line 126
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v0, ", validTime="

    .line 133
    .line 134
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v0, ", openBrowserTime="

    .line 141
    .line 142
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v0, ")"

    .line 149
    .line 150
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    return-object v0
.end method
