.class public final enum Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;

.field public static final enum APPLICATION:Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;

.field public static final enum CUESHEET:Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;

.field public static final enum PADDING:Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;

.field public static final enum PICTURE:Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;

.field public static final enum SEEKTABLE:Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;

.field public static final enum STREAMINFO:Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;

.field public static final enum VORBIS_COMMENT:Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;


# instance fields
.field private id:I


# direct methods
.method private static synthetic $values()[Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;
    .locals 7

    sget-object v0, Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;->STREAMINFO:Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;

    sget-object v1, Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;->PADDING:Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;

    sget-object v2, Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;->APPLICATION:Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;

    sget-object v3, Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;->SEEKTABLE:Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;

    sget-object v4, Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;->VORBIS_COMMENT:Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;

    sget-object v5, Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;->CUESHEET:Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;

    sget-object v6, Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;->PICTURE:Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;

    filled-new-array/range {v0 .. v6}, [Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;

    const-string v1, "STREAMINFO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;->STREAMINFO:Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;

    new-instance v0, Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;

    const-string v1, "PADDING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;->PADDING:Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;

    new-instance v0, Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;

    const-string v1, "APPLICATION"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;->APPLICATION:Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;

    new-instance v0, Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;

    const-string v1, "SEEKTABLE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;->SEEKTABLE:Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;

    new-instance v0, Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;

    const-string v1, "VORBIS_COMMENT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;->VORBIS_COMMENT:Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;

    new-instance v0, Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;

    const-string v1, "CUESHEET"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;->CUESHEET:Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;

    new-instance v0, Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;

    const-string v1, "PICTURE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;->PICTURE:Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;

    invoke-static {}, Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;->$values()[Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;->$VALUES:[Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;
    .locals 1

    const-class v0, Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;->$VALUES:[Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;

    invoke-virtual {v0}, [Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 0

    iget p0, p0, Lcom/transsion/audiotagger/audio/flac/metadatablock/BlockType;->id:I

    return p0
.end method
