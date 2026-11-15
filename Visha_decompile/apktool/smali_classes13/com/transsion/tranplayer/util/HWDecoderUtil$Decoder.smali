.class public final enum Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/tranplayer/util/HWDecoderUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Decoder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;

.field public static final enum ALL:Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;

.field public static final enum MEDIACODEC:Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;

.field public static final enum NONE:Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;

.field public static final enum OMX:Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;

.field public static final enum UNKNOWN:Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;->UNKNOWN:Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;

    new-instance v1, Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;

    const-string v2, "NONE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;->NONE:Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;

    new-instance v2, Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;

    const-string v3, "OMX"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;->OMX:Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;

    new-instance v3, Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;

    const-string v4, "MEDIACODEC"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;->MEDIACODEC:Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;

    new-instance v4, Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;

    const-string v5, "ALL"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;->ALL:Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;

    move-result-object v0

    sput-object v0, Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;->$VALUES:[Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;
    .locals 1

    const-class v0, Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;

    return-object p0
.end method

.method public static values()[Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;
    .locals 1

    sget-object v0, Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;->$VALUES:[Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;

    invoke-virtual {v0}, [Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/tranplayer/util/HWDecoderUtil$Decoder;

    return-object v0
.end method
