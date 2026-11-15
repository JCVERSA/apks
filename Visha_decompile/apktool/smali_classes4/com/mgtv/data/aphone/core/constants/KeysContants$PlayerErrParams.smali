.class public final enum Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/data/aphone/core/constants/KeysContants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlayerErrParams"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;

.field public static final enum CODEC_TYPE:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;

.field public static final enum CURRENT_POSITION:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;

.field public static final enum DECODE_TYPE:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;

.field public static final enum DSC:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;

.field public static final enum ET:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;

.field public static final enum EXR:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;

.field public static final enum FPS:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;

.field public static final enum HARD_DECODE:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;

.field public static final enum RESOLUTION:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;

.field public static final enum SC:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;

.field public static final enum TICKET_TIME:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;

.field public static final enum VIDEO_RATE:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;

    const/4 v1, 0x0

    const-string v2, "et"

    const-string v3, "ET"

    invoke-direct {v0, v3, v1, v2}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;->ET:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;

    new-instance v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;

    const/4 v2, 0x1

    const-string v3, "sc"

    const-string v4, "SC"

    invoke-direct {v1, v4, v2, v3}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;->SC:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;

    new-instance v2, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;

    const/4 v3, 0x2

    const-string v4, "exr"

    const-string v5, "EXR"

    invoke-direct {v2, v5, v3, v4}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;->EXR:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;

    new-instance v3, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;

    const/4 v4, 0x3

    const-string v5, "dsc"

    const-string v6, "DSC"

    invoke-direct {v3, v6, v4, v5}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;->DSC:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;

    new-instance v4, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;

    const/4 v5, 0x4

    const-string v6, "dectp"

    const-string v7, "DECODE_TYPE"

    invoke-direct {v4, v7, v5, v6}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;->DECODE_TYPE:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;

    new-instance v5, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;

    const/4 v6, 0x5

    const-string v7, "cdtp"

    const-string v8, "CODEC_TYPE"

    invoke-direct {v5, v8, v6, v7}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;->CODEC_TYPE:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;

    new-instance v6, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;

    const/4 v7, 0x6

    const-string v8, "cp"

    const-string v9, "CURRENT_POSITION"

    invoke-direct {v6, v9, v7, v8}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;->CURRENT_POSITION:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;

    new-instance v7, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;

    const/4 v8, 0x7

    const-string v9, "res"

    const-string v10, "RESOLUTION"

    invoke-direct {v7, v10, v8, v9}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;->RESOLUTION:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;

    new-instance v8, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;

    const/16 v9, 0x8

    const-string v10, "fps"

    const-string v11, "FPS"

    invoke-direct {v8, v11, v9, v10}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;->FPS:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;

    new-instance v9, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;

    const/16 v10, 0x9

    const-string v11, "vrate"

    const-string v12, "VIDEO_RATE"

    invoke-direct {v9, v12, v10, v11}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;->VIDEO_RATE:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;

    new-instance v10, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;

    const/16 v11, 0xa

    const-string v12, "hddc"

    const-string v13, "HARD_DECODE"

    invoke-direct {v10, v13, v11, v12}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;->HARD_DECODE:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;

    new-instance v11, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;

    const/16 v12, 0xb

    const-string v13, "ptst"

    const-string v14, "TICKET_TIME"

    invoke-direct {v11, v14, v12, v13}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;->TICKET_TIME:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;

    filled-new-array/range {v0 .. v11}, [Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;

    move-result-object v0

    sput-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;->$VALUES:[Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;

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

    iput-object p3, p0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;
    .locals 1

    const-class v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;

    return-object p0
.end method

.method public static values()[Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;
    .locals 1

    sget-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;->$VALUES:[Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;

    invoke-virtual {v0}, [Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;->value:Ljava/lang/String;

    return-object p0
.end method
