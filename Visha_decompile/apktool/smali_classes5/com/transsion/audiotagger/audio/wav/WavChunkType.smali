.class public final enum Lcom/transsion/audiotagger/audio/wav/WavChunkType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/audiotagger/audio/wav/WavChunkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/audiotagger/audio/wav/WavChunkType;

.field private static final CODE_TYPE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/transsion/audiotagger/audio/wav/WavChunkType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum CORRUPT_ID3_EARLY:Lcom/transsion/audiotagger/audio/wav/WavChunkType;

.field public static final enum CORRUPT_ID3_LATE:Lcom/transsion/audiotagger/audio/wav/WavChunkType;

.field public static final enum CORRUPT_LIST:Lcom/transsion/audiotagger/audio/wav/WavChunkType;

.field public static final enum DATA:Lcom/transsion/audiotagger/audio/wav/WavChunkType;

.field public static final enum FACT:Lcom/transsion/audiotagger/audio/wav/WavChunkType;

.field public static final enum FORMAT:Lcom/transsion/audiotagger/audio/wav/WavChunkType;

.field public static final enum ID3:Lcom/transsion/audiotagger/audio/wav/WavChunkType;

.field public static final enum INFO:Lcom/transsion/audiotagger/audio/wav/WavChunkType;

.field public static final enum LIST:Lcom/transsion/audiotagger/audio/wav/WavChunkType;


# instance fields
.field private code:Ljava/lang/String;

.field private description:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/transsion/audiotagger/audio/wav/WavChunkType;
    .locals 9

    sget-object v0, Lcom/transsion/audiotagger/audio/wav/WavChunkType;->FORMAT:Lcom/transsion/audiotagger/audio/wav/WavChunkType;

    sget-object v1, Lcom/transsion/audiotagger/audio/wav/WavChunkType;->FACT:Lcom/transsion/audiotagger/audio/wav/WavChunkType;

    sget-object v2, Lcom/transsion/audiotagger/audio/wav/WavChunkType;->DATA:Lcom/transsion/audiotagger/audio/wav/WavChunkType;

    sget-object v3, Lcom/transsion/audiotagger/audio/wav/WavChunkType;->LIST:Lcom/transsion/audiotagger/audio/wav/WavChunkType;

    sget-object v4, Lcom/transsion/audiotagger/audio/wav/WavChunkType;->INFO:Lcom/transsion/audiotagger/audio/wav/WavChunkType;

    sget-object v5, Lcom/transsion/audiotagger/audio/wav/WavChunkType;->ID3:Lcom/transsion/audiotagger/audio/wav/WavChunkType;

    sget-object v6, Lcom/transsion/audiotagger/audio/wav/WavChunkType;->CORRUPT_LIST:Lcom/transsion/audiotagger/audio/wav/WavChunkType;

    sget-object v7, Lcom/transsion/audiotagger/audio/wav/WavChunkType;->CORRUPT_ID3_LATE:Lcom/transsion/audiotagger/audio/wav/WavChunkType;

    sget-object v8, Lcom/transsion/audiotagger/audio/wav/WavChunkType;->CORRUPT_ID3_EARLY:Lcom/transsion/audiotagger/audio/wav/WavChunkType;

    filled-new-array/range {v0 .. v8}, [Lcom/transsion/audiotagger/audio/wav/WavChunkType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/transsion/audiotagger/audio/wav/WavChunkType;

    const-string v1, "fmt "

    const-string v2, "Basic Audio Information"

    const-string v3, "FORMAT"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/audiotagger/audio/wav/WavChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/wav/WavChunkType;->FORMAT:Lcom/transsion/audiotagger/audio/wav/WavChunkType;

    new-instance v0, Lcom/transsion/audiotagger/audio/wav/WavChunkType;

    const-string v1, "fact"

    const-string v2, "Only strictly required for Non-PCM or compressed data"

    const-string v3, "FACT"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/audiotagger/audio/wav/WavChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/wav/WavChunkType;->FACT:Lcom/transsion/audiotagger/audio/wav/WavChunkType;

    new-instance v0, Lcom/transsion/audiotagger/audio/wav/WavChunkType;

    const-string v1, "data"

    const-string v2, "Stores the actual audio data"

    const-string v3, "DATA"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/audiotagger/audio/wav/WavChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/wav/WavChunkType;->DATA:Lcom/transsion/audiotagger/audio/wav/WavChunkType;

    new-instance v0, Lcom/transsion/audiotagger/audio/wav/WavChunkType;

    const-string v1, "LIST"

    const/4 v2, 0x3

    const-string v3, "List chunk, wraps round other chunks"

    invoke-direct {v0, v1, v2, v1, v3}, Lcom/transsion/audiotagger/audio/wav/WavChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/wav/WavChunkType;->LIST:Lcom/transsion/audiotagger/audio/wav/WavChunkType;

    new-instance v0, Lcom/transsion/audiotagger/audio/wav/WavChunkType;

    const/4 v1, 0x4

    const-string v2, "Original metadata implementation"

    const-string v4, "INFO"

    invoke-direct {v0, v4, v1, v4, v2}, Lcom/transsion/audiotagger/audio/wav/WavChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/wav/WavChunkType;->INFO:Lcom/transsion/audiotagger/audio/wav/WavChunkType;

    new-instance v0, Lcom/transsion/audiotagger/audio/wav/WavChunkType;

    const-string v1, "ID3"

    const/4 v2, 0x5

    const-string v4, "id3 "

    const-string v5, "Stores metadata in ID3 chunk"

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/transsion/audiotagger/audio/wav/WavChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/wav/WavChunkType;->ID3:Lcom/transsion/audiotagger/audio/wav/WavChunkType;

    new-instance v0, Lcom/transsion/audiotagger/audio/wav/WavChunkType;

    const/4 v1, 0x6

    const-string v2, "iLIS"

    const-string v4, "CORRUPT_LIST"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/transsion/audiotagger/audio/wav/WavChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/wav/WavChunkType;->CORRUPT_LIST:Lcom/transsion/audiotagger/audio/wav/WavChunkType;

    new-instance v0, Lcom/transsion/audiotagger/audio/wav/WavChunkType;

    const/4 v1, 0x7

    const-string v2, "d3 \u0000"

    const-string v3, "CORRUPT_ID3_LATE"

    invoke-direct {v0, v3, v1, v2, v5}, Lcom/transsion/audiotagger/audio/wav/WavChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/wav/WavChunkType;->CORRUPT_ID3_LATE:Lcom/transsion/audiotagger/audio/wav/WavChunkType;

    new-instance v0, Lcom/transsion/audiotagger/audio/wav/WavChunkType;

    const/16 v1, 0x8

    const-string v2, "\u0000id3"

    const-string v3, "CORRUPT_ID3_EARLY"

    invoke-direct {v0, v3, v1, v2, v5}, Lcom/transsion/audiotagger/audio/wav/WavChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/wav/WavChunkType;->CORRUPT_ID3_EARLY:Lcom/transsion/audiotagger/audio/wav/WavChunkType;

    invoke-static {}, Lcom/transsion/audiotagger/audio/wav/WavChunkType;->$values()[Lcom/transsion/audiotagger/audio/wav/WavChunkType;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/audio/wav/WavChunkType;->$VALUES:[Lcom/transsion/audiotagger/audio/wav/WavChunkType;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/transsion/audiotagger/audio/wav/WavChunkType;->CODE_TYPE_MAP:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/transsion/audiotagger/audio/wav/WavChunkType;->code:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsion/audiotagger/audio/wav/WavChunkType;->description:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized get(Ljava/lang/String;)Lcom/transsion/audiotagger/audio/wav/WavChunkType;
    .locals 7

    const-class v0, Lcom/transsion/audiotagger/audio/wav/WavChunkType;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/audiotagger/audio/wav/WavChunkType;->CODE_TYPE_MAP:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/transsion/audiotagger/audio/wav/WavChunkType;->values()[Lcom/transsion/audiotagger/audio/wav/WavChunkType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    sget-object v5, Lcom/transsion/audiotagger/audio/wav/WavChunkType;->CODE_TYPE_MAP:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/transsion/audiotagger/audio/wav/WavChunkType;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/transsion/audiotagger/audio/wav/WavChunkType;->CODE_TYPE_MAP:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/audio/wav/WavChunkType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/audiotagger/audio/wav/WavChunkType;
    .locals 1

    const-class v0, Lcom/transsion/audiotagger/audio/wav/WavChunkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/audio/wav/WavChunkType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/audiotagger/audio/wav/WavChunkType;
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/audio/wav/WavChunkType;->$VALUES:[Lcom/transsion/audiotagger/audio/wav/WavChunkType;

    invoke-virtual {v0}, [Lcom/transsion/audiotagger/audio/wav/WavChunkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/audiotagger/audio/wav/WavChunkType;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/wav/WavChunkType;->code:Ljava/lang/String;

    return-object p0
.end method
