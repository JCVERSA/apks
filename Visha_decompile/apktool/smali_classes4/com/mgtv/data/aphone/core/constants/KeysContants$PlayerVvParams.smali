.class public final enum Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVvParams;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/data/aphone/core/constants/KeysContants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlayerVvParams"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVvParams;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVvParams;

.field public static final enum CODEC_TYPE:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVvParams;

.field public static final enum COST_TIME:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVvParams;

.field public static final enum DECODE_TYPE:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVvParams;

.field public static final enum HARD_DECODE:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVvParams;

.field public static final enum MEMORY_PLAY:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVvParams;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVvParams;

    const/4 v1, 0x0

    const-string v2, "cdtp"

    const-string v3, "CODEC_TYPE"

    invoke-direct {v0, v3, v1, v2}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVvParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVvParams;->CODEC_TYPE:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVvParams;

    new-instance v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVvParams;

    const/4 v2, 0x1

    const-string v3, "ltst"

    const-string v4, "COST_TIME"

    invoke-direct {v1, v4, v2, v3}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVvParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVvParams;->COST_TIME:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVvParams;

    new-instance v2, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVvParams;

    const/4 v3, 0x2

    const-string v4, "hddc"

    const-string v5, "HARD_DECODE"

    invoke-direct {v2, v5, v3, v4}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVvParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVvParams;->HARD_DECODE:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVvParams;

    new-instance v3, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVvParams;

    const/4 v4, 0x3

    const-string v5, "dectp"

    const-string v6, "DECODE_TYPE"

    invoke-direct {v3, v6, v4, v5}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVvParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVvParams;->DECODE_TYPE:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVvParams;

    new-instance v4, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVvParams;

    const/4 v5, 0x4

    const-string v6, "mp"

    const-string v7, "MEMORY_PLAY"

    invoke-direct {v4, v7, v5, v6}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVvParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVvParams;->MEMORY_PLAY:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVvParams;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVvParams;

    move-result-object v0

    sput-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVvParams;->$VALUES:[Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVvParams;

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

    iput-object p3, p0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVvParams;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVvParams;
    .locals 1

    const-class v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVvParams;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVvParams;

    return-object p0
.end method

.method public static values()[Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVvParams;
    .locals 1

    sget-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVvParams;->$VALUES:[Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVvParams;

    invoke-virtual {v0}, [Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVvParams;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVvParams;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerVvParams;->value:Ljava/lang/String;

    return-object p0
.end method
