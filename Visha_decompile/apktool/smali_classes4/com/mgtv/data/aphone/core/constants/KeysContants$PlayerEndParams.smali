.class public final enum Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/data/aphone/core/constants/KeysContants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlayerEndParams"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;

.field public static final enum BUFFER_COUNT:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;

.field public static final enum CODEC_TYPE:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;

.field public static final enum DECODE_TYPE:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;

.field public static final enum END_TYPE:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;

.field public static final enum FPS:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;

.field public static final enum HARD_DECODE:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;

.field public static final enum RESOLUTION:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;

.field public static final enum SEEK_COUNT:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;

.field public static final enum TICKET_TIME:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;

.field public static final enum VIDEO_RATE:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;

    const/4 v1, 0x0

    const-string v2, "endtp"

    const-string v3, "END_TYPE"

    invoke-direct {v0, v3, v1, v2}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;->END_TYPE:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;

    new-instance v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;

    const/4 v2, 0x1

    const-string v3, "dectp"

    const-string v4, "DECODE_TYPE"

    invoke-direct {v1, v4, v2, v3}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;->DECODE_TYPE:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;

    new-instance v2, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;

    const/4 v3, 0x2

    const-string v4, "cdtp"

    const-string v5, "CODEC_TYPE"

    invoke-direct {v2, v5, v3, v4}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;->CODEC_TYPE:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;

    new-instance v3, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;

    const/4 v4, 0x3

    const-string v5, "res"

    const-string v6, "RESOLUTION"

    invoke-direct {v3, v6, v4, v5}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;->RESOLUTION:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;

    new-instance v4, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;

    const/4 v5, 0x4

    const-string v6, "fps"

    const-string v7, "FPS"

    invoke-direct {v4, v7, v5, v6}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;->FPS:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;

    new-instance v5, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;

    const/4 v6, 0x5

    const-string v7, "vrate"

    const-string v8, "VIDEO_RATE"

    invoke-direct {v5, v8, v6, v7}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;->VIDEO_RATE:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;

    new-instance v6, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;

    const/4 v7, 0x6

    const-string v8, "hddc"

    const-string v9, "HARD_DECODE"

    invoke-direct {v6, v9, v7, v8}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;->HARD_DECODE:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;

    new-instance v7, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;

    const/4 v8, 0x7

    const-string v9, "bfct"

    const-string v10, "BUFFER_COUNT"

    invoke-direct {v7, v10, v8, v9}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;->BUFFER_COUNT:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;

    new-instance v8, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;

    const/16 v9, 0x8

    const-string v10, "skct"

    const-string v11, "SEEK_COUNT"

    invoke-direct {v8, v11, v9, v10}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;->SEEK_COUNT:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;

    new-instance v9, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;

    const/16 v10, 0x9

    const-string v11, "ptst"

    const-string v12, "TICKET_TIME"

    invoke-direct {v9, v12, v10, v11}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;->TICKET_TIME:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;

    filled-new-array/range {v0 .. v9}, [Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;

    move-result-object v0

    sput-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;->$VALUES:[Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;

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

    iput-object p3, p0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;
    .locals 1

    const-class v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;

    return-object p0
.end method

.method public static values()[Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;
    .locals 1

    sget-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;->$VALUES:[Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;

    invoke-virtual {v0}, [Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;->value:Ljava/lang/String;

    return-object p0
.end method
