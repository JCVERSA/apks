.class public final enum Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/data/aphone/core/constants/EventContants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

.field public static final enum EVENT_AC:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

.field public static final enum EVENT_ADLOST:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

.field public static final enum EVENT_APLAY:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

.field public static final enum EVENT_APPLS:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

.field public static final enum EVENT_BUFFER:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

.field public static final enum EVENT_CD:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

.field public static final enum EVENT_CLICK:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

.field public static final enum EVENT_CRASH:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

.field public static final enum EVENT_DOWNUP:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

.field public static final enum EVENT_DRM:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

.field public static final enum EVENT_HB:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

.field public static final enum EVENT_HEARTBEAT:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

.field public static final enum EVENT_HLS:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

.field public static final enum EVENT_HLS_DLPROC:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

.field public static final enum EVENT_HLS_DLRS:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

.field public static final enum EVENT_NEWCLICK:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

.field public static final enum EVENT_OFLHB:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

.field public static final enum EVENT_OFLVV:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

.field public static final enum EVENT_PBUFFER:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

.field public static final enum EVENT_PEND:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

.field public static final enum EVENT_PERR:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

.field public static final enum EVENT_PHEARTBEAT:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

.field public static final enum EVENT_PHONEWIFI:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

.field public static final enum EVENT_PPV:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

.field public static final enum EVENT_PSEEK:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

.field public static final enum EVENT_PV:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

.field public static final enum EVENT_PVV:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

.field public static final enum EVENT_SHOW:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

.field public static final enum EVENT_ST:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

.field public static final enum EVENT_SWITCH:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

.field public static final enum EVENT_VV:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;


# instance fields
.field private eventId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 35

    new-instance v1, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    move-object v0, v1

    const/4 v2, 0x0

    const-string v3, "1"

    const-string v4, "EVENT_CRASH"

    invoke-direct {v1, v4, v2, v3}, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;->EVENT_CRASH:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    new-instance v2, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    move-object v1, v2

    const/4 v3, 0x1

    const-string v4, "2"

    const-string v5, "EVENT_PV"

    invoke-direct {v2, v5, v3, v4}, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;->EVENT_PV:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    new-instance v3, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    move-object v2, v3

    const/4 v4, 0x2

    const-string v5, "3"

    const-string v6, "EVENT_VV"

    invoke-direct {v3, v6, v4, v5}, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;->EVENT_VV:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    new-instance v4, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    move-object v3, v4

    const/4 v5, 0x3

    const-string v6, "4"

    const-string v7, "EVENT_ADLOST"

    invoke-direct {v4, v7, v5, v6}, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;->EVENT_ADLOST:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    new-instance v5, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    move-object v4, v5

    const/4 v6, 0x4

    const-string v7, "5"

    const-string v8, "EVENT_BUFFER"

    invoke-direct {v5, v8, v6, v7}, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;->EVENT_BUFFER:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    new-instance v6, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    move-object v5, v6

    const/4 v7, 0x5

    const-string v8, "6"

    const-string v9, "EVENT_HB"

    invoke-direct {v6, v9, v7, v8}, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;->EVENT_HB:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    new-instance v7, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    move-object v6, v7

    const/4 v8, 0x6

    const-string v9, "7"

    const-string v10, "EVENT_CD"

    invoke-direct {v7, v10, v8, v9}, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;->EVENT_CD:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    new-instance v8, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    move-object v7, v8

    const/4 v9, 0x7

    const-string v10, "8"

    const-string v11, "EVENT_CLICK"

    invoke-direct {v8, v11, v9, v10}, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;->EVENT_CLICK:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    new-instance v9, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    move-object v8, v9

    const/16 v10, 0x8

    const-string v11, "9"

    const-string v12, "EVENT_APLAY"

    invoke-direct {v9, v12, v10, v11}, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;->EVENT_APLAY:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    new-instance v10, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    move-object v9, v10

    const/16 v11, 0x9

    const-string v12, "10"

    const-string v13, "EVENT_HEARTBEAT"

    invoke-direct {v10, v13, v11, v12}, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;->EVENT_HEARTBEAT:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    new-instance v11, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    move-object v10, v11

    const/16 v12, 0xa

    const-string v13, "11"

    const-string v14, "EVENT_SWITCH"

    invoke-direct {v11, v14, v12, v13}, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;->EVENT_SWITCH:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    new-instance v12, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    move-object v11, v12

    const/16 v13, 0xb

    const-string v14, "12"

    const-string v15, "EVENT_ST"

    invoke-direct {v12, v15, v13, v14}, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;->EVENT_ST:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    new-instance v13, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    move-object v12, v13

    const/16 v14, 0xc

    const-string v15, "13"

    move-object/from16 v31, v0

    const-string v0, "EVENT_DOWNUP"

    invoke-direct {v13, v0, v14, v15}, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;->EVENT_DOWNUP:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    new-instance v0, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    move-object v13, v0

    const/16 v14, 0xd

    const-string v15, "14"

    move-object/from16 v32, v1

    const-string v1, "EVENT_APPLS"

    invoke-direct {v0, v1, v14, v15}, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;->EVENT_APPLS:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    new-instance v0, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    move-object v14, v0

    const/16 v1, 0xe

    const-string v15, "15"

    move-object/from16 v33, v2

    const-string v2, "EVENT_PHONEWIFI"

    invoke-direct {v0, v2, v1, v15}, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;->EVENT_PHONEWIFI:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    new-instance v0, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    move-object v15, v0

    const/16 v1, 0xf

    const-string v2, "16"

    move-object/from16 v34, v3

    const-string v3, "EVENT_HLS"

    invoke-direct {v0, v3, v1, v2}, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;->EVENT_HLS:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    new-instance v0, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    move-object/from16 v16, v0

    const/16 v1, 0x10

    const-string v2, "17"

    const-string v3, "EVENT_OFLHB"

    invoke-direct {v0, v3, v1, v2}, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;->EVENT_OFLHB:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    new-instance v0, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    move-object/from16 v17, v0

    const/16 v1, 0x11

    const-string v2, "18"

    const-string v3, "EVENT_PPV"

    invoke-direct {v0, v3, v1, v2}, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;->EVENT_PPV:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    new-instance v0, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    move-object/from16 v18, v0

    const/16 v1, 0x12

    const-string v2, "19"

    const-string v3, "EVENT_PVV"

    invoke-direct {v0, v3, v1, v2}, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;->EVENT_PVV:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    new-instance v0, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    move-object/from16 v19, v0

    const/16 v1, 0x13

    const-string v2, "20"

    const-string v3, "EVENT_PERR"

    invoke-direct {v0, v3, v1, v2}, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;->EVENT_PERR:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    new-instance v0, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    move-object/from16 v20, v0

    const/16 v1, 0x14

    const-string v2, "21"

    const-string v3, "EVENT_PEND"

    invoke-direct {v0, v3, v1, v2}, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;->EVENT_PEND:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    new-instance v0, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    move-object/from16 v21, v0

    const/16 v1, 0x15

    const-string v2, "22"

    const-string v3, "EVENT_PBUFFER"

    invoke-direct {v0, v3, v1, v2}, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;->EVENT_PBUFFER:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    new-instance v0, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    move-object/from16 v22, v0

    const/16 v1, 0x16

    const-string v2, "23"

    const-string v3, "EVENT_PSEEK"

    invoke-direct {v0, v3, v1, v2}, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;->EVENT_PSEEK:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    new-instance v0, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    move-object/from16 v23, v0

    const/16 v1, 0x17

    const-string v2, "24"

    const-string v3, "EVENT_PHEARTBEAT"

    invoke-direct {v0, v3, v1, v2}, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;->EVENT_PHEARTBEAT:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    new-instance v0, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    move-object/from16 v24, v0

    const/16 v1, 0x18

    const-string v2, "25"

    const-string v3, "EVENT_DRM"

    invoke-direct {v0, v3, v1, v2}, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;->EVENT_DRM:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    new-instance v0, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    move-object/from16 v25, v0

    const/16 v1, 0x19

    const-string v2, "26"

    const-string v3, "EVENT_HLS_DLRS"

    invoke-direct {v0, v3, v1, v2}, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;->EVENT_HLS_DLRS:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    new-instance v0, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    move-object/from16 v26, v0

    const/16 v1, 0x1a

    const-string v2, "27"

    const-string v3, "EVENT_HLS_DLPROC"

    invoke-direct {v0, v3, v1, v2}, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;->EVENT_HLS_DLPROC:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    new-instance v0, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    move-object/from16 v27, v0

    const/16 v1, 0x1b

    const-string v2, "28"

    const-string v3, "EVENT_SHOW"

    invoke-direct {v0, v3, v1, v2}, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;->EVENT_SHOW:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    new-instance v0, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    move-object/from16 v28, v0

    const/16 v1, 0x1c

    const-string v2, "29"

    const-string v3, "EVENT_NEWCLICK"

    invoke-direct {v0, v3, v1, v2}, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;->EVENT_NEWCLICK:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    new-instance v0, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    move-object/from16 v29, v0

    const/16 v1, 0x1d

    const-string v2, "30"

    const-string v3, "EVENT_OFLVV"

    invoke-direct {v0, v3, v1, v2}, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;->EVENT_OFLVV:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    new-instance v0, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    move-object/from16 v30, v0

    const/16 v1, 0x1e

    const-string v2, "31"

    const-string v3, "EVENT_AC"

    invoke-direct {v0, v3, v1, v2}, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;->EVENT_AC:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    filled-new-array/range {v0 .. v30}, [Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    move-result-object v0

    sput-object v0, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;->$VALUES:[Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;->eventId:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;
    .locals 1

    const-class v0, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    return-object p0
.end method

.method public static values()[Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;
    .locals 1

    sget-object v0, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;->$VALUES:[Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    invoke-virtual {v0}, [Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    return-object v0
.end method


# virtual methods
.method public getEventId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;->eventId:Ljava/lang/String;

    return-object p0
.end method
