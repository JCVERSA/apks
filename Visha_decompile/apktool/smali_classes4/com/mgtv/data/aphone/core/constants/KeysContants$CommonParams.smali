.class public final enum Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/data/aphone/core/constants/KeysContants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CommonParams"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

.field public static final enum ABROAD:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

.field public static final enum ACT:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

.field public static final enum AVER:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

.field public static final enum BDSV:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

.field public static final enum CH:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

.field public static final enum DID:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

.field public static final enum GPS:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

.field public static final enum GUID:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

.field public static final enum IMEI:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

.field public static final enum ISDEBUG:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

.field public static final enum ISP2P:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

.field public static final enum MAC:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

.field public static final enum MF:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

.field public static final enum MOD:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

.field public static final enum MODEL:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

.field public static final enum NET:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

.field public static final enum P2P:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

.field public static final enum RCH:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

.field public static final enum RDC:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

.field public static final enum RUNSID:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

.field public static final enum SESSIONID:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

.field public static final enum SID:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

.field public static final enum SRC:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

.field public static final enum SVER:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

.field public static final enum TIME:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

.field public static final enum UUID:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

.field public static final enum UVIP:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

.field public static final enum VER:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 32

    new-instance v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    move-object v0, v1

    const/4 v2, 0x0

    const-string v3, "act"

    const-string v4, "ACT"

    invoke-direct {v1, v4, v2, v3}, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->ACT:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    new-instance v2, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    move-object v1, v2

    const/4 v3, 0x1

    const-string v4, "guid"

    const-string v5, "GUID"

    invoke-direct {v2, v5, v3, v4}, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->GUID:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    new-instance v3, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    move-object v2, v3

    const/4 v4, 0x2

    const-string v5, "sid"

    const-string v6, "SID"

    invoke-direct {v3, v6, v4, v5}, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->SID:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    new-instance v4, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    move-object v3, v4

    const/4 v5, 0x3

    const-string v6, "ch"

    const-string v7, "CH"

    invoke-direct {v4, v7, v5, v6}, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->CH:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    new-instance v5, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    move-object v4, v5

    const/4 v6, 0x4

    const-string v7, "uuid"

    const-string v8, "UUID"

    invoke-direct {v5, v8, v6, v7}, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->UUID:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    new-instance v6, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    move-object v5, v6

    const/4 v7, 0x5

    const-string v8, "gps"

    const-string v9, "GPS"

    invoke-direct {v6, v9, v7, v8}, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->GPS:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    new-instance v7, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    move-object v6, v7

    const/4 v8, 0x6

    const-string v9, "isp2p"

    const-string v10, "ISP2P"

    invoke-direct {v7, v10, v8, v9}, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->ISP2P:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    new-instance v8, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    move-object v7, v8

    const/4 v9, 0x7

    const-string v10, "time"

    const-string v11, "TIME"

    invoke-direct {v8, v11, v9, v10}, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->TIME:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    new-instance v9, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    move-object v8, v9

    const/16 v10, 0x8

    const-string v11, "did"

    const-string v12, "DID"

    invoke-direct {v9, v12, v10, v11}, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->DID:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    new-instance v10, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    move-object v9, v10

    const/16 v11, 0x9

    const-string v12, "net"

    const-string v13, "NET"

    invoke-direct {v10, v13, v11, v12}, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->NET:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    new-instance v11, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    move-object v10, v11

    const/16 v12, 0xa

    const-string v13, "mf"

    const-string v14, "MF"

    invoke-direct {v11, v14, v12, v13}, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->MF:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    new-instance v12, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    move-object v11, v12

    const/16 v13, 0xb

    const-string v14, "mod"

    const-string v15, "MOD"

    invoke-direct {v12, v15, v13, v14}, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->MOD:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    new-instance v13, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    move-object v12, v13

    const/16 v14, 0xc

    const-string v15, "sver"

    move-object/from16 v28, v0

    const-string v0, "SVER"

    invoke-direct {v13, v0, v14, v15}, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->SVER:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    new-instance v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    move-object v13, v0

    const/16 v14, 0xd

    const-string v15, "aver"

    move-object/from16 v29, v1

    const-string v1, "AVER"

    invoke-direct {v0, v1, v14, v15}, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->AVER:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    new-instance v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    move-object v14, v0

    const/16 v1, 0xe

    const-string v15, "imei"

    move-object/from16 v30, v2

    const-string v2, "IMEI"

    invoke-direct {v0, v2, v1, v15}, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->IMEI:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    new-instance v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    move-object v15, v0

    const/16 v1, 0xf

    const-string v2, "isdebug"

    move-object/from16 v31, v3

    const-string v3, "ISDEBUG"

    invoke-direct {v0, v3, v1, v2}, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->ISDEBUG:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    new-instance v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    move-object/from16 v16, v0

    const/16 v1, 0x10

    const-string v2, "sessionid"

    const-string v3, "SESSIONID"

    invoke-direct {v0, v3, v1, v2}, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->SESSIONID:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    new-instance v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    move-object/from16 v17, v0

    const/16 v1, 0x11

    const-string v2, "model"

    const-string v3, "MODEL"

    invoke-direct {v0, v3, v1, v2}, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->MODEL:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    new-instance v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    move-object/from16 v18, v0

    const/16 v1, 0x12

    const-string v2, "mac"

    const-string v3, "MAC"

    invoke-direct {v0, v3, v1, v2}, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->MAC:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    new-instance v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    move-object/from16 v19, v0

    const/16 v1, 0x13

    const-string v2, "bdsv"

    const-string v3, "BDSV"

    invoke-direct {v0, v3, v1, v2}, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->BDSV:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    new-instance v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    move-object/from16 v20, v0

    const/16 v1, 0x14

    const-string v2, "rdc"

    const-string v3, "RDC"

    invoke-direct {v0, v3, v1, v2}, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->RDC:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    new-instance v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    move-object/from16 v21, v0

    const/16 v1, 0x15

    const-string v2, "rch"

    const-string v3, "RCH"

    invoke-direct {v0, v3, v1, v2}, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->RCH:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    new-instance v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    move-object/from16 v22, v0

    const/16 v1, 0x16

    const-string v2, "ver"

    const-string v3, "VER"

    invoke-direct {v0, v3, v1, v2}, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->VER:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    new-instance v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    move-object/from16 v23, v0

    const/16 v1, 0x17

    const-string v2, "abroad"

    const-string v3, "ABROAD"

    invoke-direct {v0, v3, v1, v2}, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->ABROAD:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    new-instance v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    move-object/from16 v24, v0

    const/16 v1, 0x18

    const-string v2, "uvip"

    const-string v3, "UVIP"

    invoke-direct {v0, v3, v1, v2}, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->UVIP:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    new-instance v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    move-object/from16 v25, v0

    const/16 v1, 0x19

    const-string v2, "p2p"

    const-string v3, "P2P"

    invoke-direct {v0, v3, v1, v2}, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->P2P:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    new-instance v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    move-object/from16 v26, v0

    const/16 v1, 0x1a

    const-string v2, "runsid"

    const-string v3, "RUNSID"

    invoke-direct {v0, v3, v1, v2}, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->RUNSID:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    new-instance v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    move-object/from16 v27, v0

    const/16 v1, 0x1b

    const-string v2, "src"

    const-string v3, "SRC"

    invoke-direct {v0, v3, v1, v2}, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->SRC:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    filled-new-array/range {v0 .. v27}, [Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    move-result-object v0

    sput-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->$VALUES:[Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

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

    iput-object p3, p0, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;
    .locals 1

    const-class v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    return-object p0
.end method

.method public static values()[Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;
    .locals 1

    sget-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->$VALUES:[Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    invoke-virtual {v0}, [Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->value:Ljava/lang/String;

    return-object p0
.end method
