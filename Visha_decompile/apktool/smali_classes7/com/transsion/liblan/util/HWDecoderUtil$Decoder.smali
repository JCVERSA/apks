.class public final enum Lcom/transsion/liblan/util/HWDecoderUtil$Decoder;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/liblan/util/HWDecoderUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Decoder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/liblan/util/HWDecoderUtil$Decoder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/liblan/util/HWDecoderUtil$Decoder;

.field public static final enum ALL:Lcom/transsion/liblan/util/HWDecoderUtil$Decoder;

.field public static final enum MEDIACODEC:Lcom/transsion/liblan/util/HWDecoderUtil$Decoder;

.field public static final enum NONE:Lcom/transsion/liblan/util/HWDecoderUtil$Decoder;

.field public static final enum OMX:Lcom/transsion/liblan/util/HWDecoderUtil$Decoder;

.field public static final enum UNKNOWN:Lcom/transsion/liblan/util/HWDecoderUtil$Decoder;


# direct methods
.method private static synthetic $values()[Lcom/transsion/liblan/util/HWDecoderUtil$Decoder;
    .locals 5

    sget-object v0, Lcom/transsion/liblan/util/HWDecoderUtil$Decoder;->UNKNOWN:Lcom/transsion/liblan/util/HWDecoderUtil$Decoder;

    sget-object v1, Lcom/transsion/liblan/util/HWDecoderUtil$Decoder;->NONE:Lcom/transsion/liblan/util/HWDecoderUtil$Decoder;

    sget-object v2, Lcom/transsion/liblan/util/HWDecoderUtil$Decoder;->OMX:Lcom/transsion/liblan/util/HWDecoderUtil$Decoder;

    sget-object v3, Lcom/transsion/liblan/util/HWDecoderUtil$Decoder;->MEDIACODEC:Lcom/transsion/liblan/util/HWDecoderUtil$Decoder;

    sget-object v4, Lcom/transsion/liblan/util/HWDecoderUtil$Decoder;->ALL:Lcom/transsion/liblan/util/HWDecoderUtil$Decoder;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/transsion/liblan/util/HWDecoderUtil$Decoder;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/liblan/util/HWDecoderUtil$Decoder;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/liblan/util/HWDecoderUtil$Decoder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/liblan/util/HWDecoderUtil$Decoder;->UNKNOWN:Lcom/transsion/liblan/util/HWDecoderUtil$Decoder;

    new-instance v0, Lcom/transsion/liblan/util/HWDecoderUtil$Decoder;

    const-string v1, "NONE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/liblan/util/HWDecoderUtil$Decoder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/liblan/util/HWDecoderUtil$Decoder;->NONE:Lcom/transsion/liblan/util/HWDecoderUtil$Decoder;

    new-instance v0, Lcom/transsion/liblan/util/HWDecoderUtil$Decoder;

    const-string v1, "OMX"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/liblan/util/HWDecoderUtil$Decoder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/liblan/util/HWDecoderUtil$Decoder;->OMX:Lcom/transsion/liblan/util/HWDecoderUtil$Decoder;

    new-instance v0, Lcom/transsion/liblan/util/HWDecoderUtil$Decoder;

    const-string v1, "MEDIACODEC"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/transsion/liblan/util/HWDecoderUtil$Decoder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/liblan/util/HWDecoderUtil$Decoder;->MEDIACODEC:Lcom/transsion/liblan/util/HWDecoderUtil$Decoder;

    new-instance v0, Lcom/transsion/liblan/util/HWDecoderUtil$Decoder;

    const-string v1, "ALL"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/transsion/liblan/util/HWDecoderUtil$Decoder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/liblan/util/HWDecoderUtil$Decoder;->ALL:Lcom/transsion/liblan/util/HWDecoderUtil$Decoder;

    invoke-static {}, Lcom/transsion/liblan/util/HWDecoderUtil$Decoder;->$values()[Lcom/transsion/liblan/util/HWDecoderUtil$Decoder;

    move-result-object v0

    sput-object v0, Lcom/transsion/liblan/util/HWDecoderUtil$Decoder;->$VALUES:[Lcom/transsion/liblan/util/HWDecoderUtil$Decoder;

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

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/liblan/util/HWDecoderUtil$Decoder;
    .locals 1

    const-class v0, Lcom/transsion/liblan/util/HWDecoderUtil$Decoder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/liblan/util/HWDecoderUtil$Decoder;

    return-object p0
.end method

.method public static values()[Lcom/transsion/liblan/util/HWDecoderUtil$Decoder;
    .locals 1

    sget-object v0, Lcom/transsion/liblan/util/HWDecoderUtil$Decoder;->$VALUES:[Lcom/transsion/liblan/util/HWDecoderUtil$Decoder;

    invoke-virtual {v0}, [Lcom/transsion/liblan/util/HWDecoderUtil$Decoder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/liblan/util/HWDecoderUtil$Decoder;

    return-object v0
.end method
