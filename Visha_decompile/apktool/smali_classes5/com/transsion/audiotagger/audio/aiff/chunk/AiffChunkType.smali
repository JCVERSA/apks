.class public final enum Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;

.field public static final enum ANNOTATION:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;

.field public static final enum APPLICATION:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;

.field public static final enum AUTHOR:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;

.field private static final CODE_TYPE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum COMMENTS:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;

.field public static final enum COMMON:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;

.field public static final enum COPYRIGHT:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;

.field public static final enum CORRUPT_TAG_EARLY:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;

.field public static final enum CORRUPT_TAG_LATE:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;

.field public static final enum FORMAT_VERSION:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;

.field public static final enum NAME:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;

.field public static final enum SOUND:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;

.field public static final enum TAG:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;


# instance fields
.field private code:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;
    .locals 12

    sget-object v0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;->FORMAT_VERSION:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;

    sget-object v1, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;->APPLICATION:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;

    sget-object v2, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;->SOUND:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;

    sget-object v3, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;->COMMON:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;

    sget-object v4, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;->COMMENTS:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;

    sget-object v5, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;->NAME:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;

    sget-object v6, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;->AUTHOR:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;

    sget-object v7, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;->COPYRIGHT:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;

    sget-object v8, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;->ANNOTATION:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;

    sget-object v9, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;->TAG:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;

    sget-object v10, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;->CORRUPT_TAG_LATE:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;

    sget-object v11, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;->CORRUPT_TAG_EARLY:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;

    filled-new-array/range {v0 .. v11}, [Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;

    const/4 v1, 0x0

    const-string v2, "FVER"

    const-string v3, "FORMAT_VERSION"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;->FORMAT_VERSION:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;

    new-instance v0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;

    const/4 v1, 0x1

    const-string v2, "APPL"

    const-string v3, "APPLICATION"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;->APPLICATION:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;

    new-instance v0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;

    const/4 v1, 0x2

    const-string v2, "SSND"

    const-string v3, "SOUND"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;->SOUND:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;

    new-instance v0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;

    const/4 v1, 0x3

    const-string v2, "COMM"

    const-string v3, "COMMON"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;->COMMON:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;

    new-instance v0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;

    const/4 v1, 0x4

    const-string v2, "COMT"

    const-string v3, "COMMENTS"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;->COMMENTS:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;

    new-instance v0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;

    const-string v1, "NAME"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v1}, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;->NAME:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;

    new-instance v0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;

    const/4 v1, 0x6

    const-string v2, "AUTH"

    const-string v3, "AUTHOR"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;->AUTHOR:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;

    new-instance v0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;

    const/4 v1, 0x7

    const-string v2, "(c) "

    const-string v3, "COPYRIGHT"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;->COPYRIGHT:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;

    new-instance v0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;

    const/16 v1, 0x8

    const-string v2, "ANNO"

    const-string v3, "ANNOTATION"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;->ANNOTATION:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;

    new-instance v0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;

    const/16 v1, 0x9

    const-string v2, "ID3 "

    const-string v3, "TAG"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;->TAG:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;

    new-instance v0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;

    const/16 v1, 0xa

    const-string v2, "D3 \u0000"

    const-string v3, "CORRUPT_TAG_LATE"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;->CORRUPT_TAG_LATE:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;

    new-instance v0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;

    const/16 v1, 0xb

    const-string v2, "\u0000ID3"

    const-string v3, "CORRUPT_TAG_EARLY"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;->CORRUPT_TAG_EARLY:Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;

    invoke-static {}, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;->$values()[Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;->$VALUES:[Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;->CODE_TYPE_MAP:Ljava/util/Map;

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

    iput-object p3, p0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;->code:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized get(Ljava/lang/String;)Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;
    .locals 7

    const-class v0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;->CODE_TYPE_MAP:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;->values()[Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    sget-object v5, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;->CODE_TYPE_MAP:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;->CODE_TYPE_MAP:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;
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

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;
    .locals 1

    const-class v0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;->$VALUES:[Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;

    invoke-virtual {v0}, [Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/aiff/chunk/AiffChunkType;->code:Ljava/lang/String;

    return-object p0
.end method
