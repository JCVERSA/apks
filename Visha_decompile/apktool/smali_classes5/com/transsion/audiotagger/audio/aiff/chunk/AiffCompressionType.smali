.class public final enum Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

.field public static final enum ALAW:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

.field public static final enum AL_AW:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

.field public static final enum FL32:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

.field public static final enum FL_32:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

.field public static final enum FL_64:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

.field public static final enum IN24:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

.field public static final enum IN32:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

.field public static final enum MAC3:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

.field public static final enum MAC6:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

.field public static final enum NONE:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

.field public static final enum RAW:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

.field public static final enum RT24:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

.field public static final enum RT29:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

.field public static final enum SOWT:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

.field public static final enum TWOS:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

.field public static final enum ULAW:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

.field public static final enum UL_AW:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

.field private static final lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final code:Ljava/lang/String;

.field private final compression:Ljava/lang/String;

.field private final dataType:Ljava/lang/String;

.field private final isLossless:Z

.field private final provider:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;
    .locals 17

    sget-object v0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;->NONE:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

    sget-object v1, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;->RAW:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

    sget-object v2, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;->TWOS:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

    sget-object v3, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;->SOWT:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

    sget-object v4, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;->FL_32:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

    sget-object v5, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;->FL_64:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

    sget-object v6, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;->IN24:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

    sget-object v7, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;->IN32:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

    sget-object v8, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;->AL_AW:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

    sget-object v9, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;->UL_AW:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

    sget-object v10, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;->MAC3:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

    sget-object v11, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;->MAC6:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

    sget-object v12, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;->ALAW:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

    sget-object v13, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;->ULAW:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

    sget-object v14, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;->FL32:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

    sget-object v15, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;->RT24:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

    sget-object v16, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;->RT29:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

    filled-new-array/range {v0 .. v16}, [Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 17

    new-instance v8, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

    const-string v6, "Apple"

    const/4 v7, 0x1

    const-string v1, "NONE"

    const/4 v2, 0x0

    const-string v3, "NONE"

    const-string v4, "not compressed"

    const-string v5, "big-endian"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v8, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;->NONE:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

    new-instance v0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

    const-string v15, "Apple"

    const/16 v16, 0x0

    const-string v10, "RAW"

    const/4 v11, 0x1

    const-string v12, "raw "

    const-string v13, "PCM 8-bit"

    const-string v14, "offset-binary"

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;->RAW:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

    new-instance v0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

    const-string v7, "Apple"

    const/4 v8, 0x0

    const-string v2, "TWOS"

    const/4 v3, 0x2

    const-string v4, "twos"

    const-string v5, "PCM 16-bit"

    const-string v6, "twos-complement little-endian"

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;->TWOS:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

    new-instance v0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

    const-string v15, "Apple"

    const/16 v16, 0x1

    const-string v10, "SOWT"

    const/4 v11, 0x3

    const-string v12, "sowt"

    const-string v13, "not compressed"

    const-string v14, "little-endian"

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;->SOWT:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

    new-instance v0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

    const-string v7, "Apple"

    const-string v2, "FL_32"

    const/4 v3, 0x4

    const-string v4, "fl32"

    const-string v5, "PCM 32-bit"

    const-string v6, "floating point,"

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;->FL_32:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

    new-instance v0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

    const-string v15, "Apple"

    const/16 v16, 0x0

    const-string v10, "FL_64"

    const/4 v11, 0x5

    const-string v12, "fl64"

    const-string v13, "PCM 64-bit"

    const-string v14, "floating point"

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;->FL_64:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

    new-instance v0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

    const-string v7, "Apple"

    const-string v2, "IN24"

    const/4 v3, 0x6

    const-string v4, "in24"

    const-string v5, "PCM 24-bit"

    const-string v6, "integer"

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;->IN24:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

    new-instance v0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

    const-string v15, "Apple"

    const-string v10, "IN32"

    const/4 v11, 0x7

    const-string v12, "in32"

    const-string v13, "PCM 32-bit"

    const-string v14, "integer"

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;->IN32:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

    new-instance v0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

    const-string v7, "Apple"

    const-string v2, "AL_AW"

    const/16 v3, 0x8

    const-string v4, "alaw"

    const-string v5, "Alaw 2:1"

    const-string v6, "8-bit ITU-T G.711 A-law"

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;->AL_AW:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

    new-instance v0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

    const-string v15, "Apple"

    const-string v10, "UL_AW"

    const/16 v11, 0x9

    const-string v12, "uluw"

    const-string v13, "\u00b5law 2:1"

    const-string v14, "8-bit ITU-T G.711 \u00b5-law"

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;->UL_AW:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

    new-instance v0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

    const-string v7, "Apple"

    const-string v2, "MAC3"

    const/16 v3, 0xa

    const-string v4, "MAC3"

    const-string v5, "MACE 3-to-1"

    const-string v6, ""

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;->MAC3:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

    new-instance v0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

    const-string v15, "Apple"

    const-string v10, "MAC6"

    const/16 v11, 0xb

    const-string v12, "MAC6"

    const-string v13, "MACE 6-to-1"

    const-string v14, ""

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;->MAC6:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

    new-instance v0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

    const-string v7, "SGI"

    const-string v2, "ALAW"

    const/16 v3, 0xc

    const-string v4, "ALAW"

    const-string v5, "CCITT G.711 A-law"

    const-string v6, "8-bit ITU-T G.711 A-law (64 kbit/s)"

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;->ALAW:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

    new-instance v0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

    const-string v15, "SGI"

    const-string v10, "ULAW"

    const/16 v11, 0xd

    const-string v12, "ULAW"

    const-string v13, "CCITT G.711 u-law"

    const-string v14, "8-bit ITU-T G.711 A-law (64 kbit/s)"

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;->ULAW:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

    new-instance v0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

    const-string v7, "SoundHack & Csound"

    const-string v2, "FL32"

    const/16 v3, 0xe

    const-string v4, "FL32"

    const-string v5, "Float 32"

    const-string v6, "IEEE 32-bit float"

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;->FL32:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

    new-instance v0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

    const-string v15, "Voxware"

    const-string v10, "RT24"

    const/16 v11, 0xf

    const-string v12, "rt24"

    const-string v13, "RT24 50:1"

    const-string v14, ""

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;->RT24:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

    new-instance v0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

    const-string v7, "Voxware"

    const-string v2, "RT29"

    const/16 v3, 0x10

    const-string v4, "rt29"

    const-string v5, "RT29 50:1"

    const-string v6, ""

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;->RT29:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

    invoke-static {}, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;->$values()[Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;->$VALUES:[Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;->lookup:Ljava/util/Map;

    invoke-static {}, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;->values()[Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;->lookup:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;->code:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;->compression:Ljava/lang/String;

    iput-object p5, p0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;->dataType:Ljava/lang/String;

    iput-object p6, p0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;->provider:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;->isLossless:Z

    return-void
.end method

.method public static getByCode(Ljava/lang/String;)Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;->lookup:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;
    .locals 1

    const-class v0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;->$VALUES:[Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

    invoke-virtual {v0}, [Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;->code:Ljava/lang/String;

    return-object p0
.end method

.method public getCompression()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;->compression:Ljava/lang/String;

    return-object p0
.end method

.method public getDataType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;->dataType:Ljava/lang/String;

    return-object p0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;->provider:Ljava/lang/String;

    return-object p0
.end method

.method public isLossless()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffCompressionType;->isLossless:Z

    return p0
.end method
