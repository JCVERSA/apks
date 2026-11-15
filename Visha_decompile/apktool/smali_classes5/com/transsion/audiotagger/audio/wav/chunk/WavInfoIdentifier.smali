.class public final enum Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

.field public static final enum ALBUM:Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

.field public static final enum ALBUM_ARTIST:Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

.field public static final enum ALBUM_GAIN:Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

.field public static final enum ARTIST:Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

.field private static final CODE_TYPE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum COMMENTS:Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

.field public static final enum COMPOSER:Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

.field public static final enum CONDUCTOR:Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

.field public static final enum COPYRIGHT:Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

.field public static final enum ENCODER:Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

.field private static final FIELDKEY_TYPE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/transsion/audiotagger/tag/FieldKey;",
            "Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum GENRE:Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

.field public static final enum ISRC:Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

.field public static final enum LABEL:Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

.field public static final enum LYRICIST:Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

.field public static final enum RATING:Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

.field public static final enum TITLE:Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

.field public static final enum TRACKNO:Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

.field public static final enum TRACK_GAIN:Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

.field public static final enum TWONKY_TRACKNO:Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

.field public static final enum YEAR:Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;


# instance fields
.field private code:Ljava/lang/String;

.field private fieldKey:Lcom/transsion/audiotagger/tag/FieldKey;

.field private preferredWriteOrder:I


# direct methods
.method private static synthetic $values()[Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;
    .locals 19

    sget-object v0, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;->ARTIST:Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    sget-object v1, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;->ALBUM:Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    sget-object v2, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;->TITLE:Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    sget-object v3, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;->TRACKNO:Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    sget-object v4, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;->YEAR:Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    sget-object v5, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;->GENRE:Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    sget-object v6, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;->ALBUM_ARTIST:Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    sget-object v7, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;->COMMENTS:Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    sget-object v8, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;->COMPOSER:Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    sget-object v9, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;->CONDUCTOR:Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    sget-object v10, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;->LYRICIST:Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    sget-object v11, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;->ENCODER:Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    sget-object v12, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;->RATING:Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    sget-object v13, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;->ISRC:Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    sget-object v14, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;->LABEL:Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    sget-object v15, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;->TRACK_GAIN:Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    sget-object v16, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;->ALBUM_GAIN:Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    sget-object v17, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;->COPYRIGHT:Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    sget-object v18, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;->TWONKY_TRACKNO:Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    filled-new-array/range {v0 .. v18}, [Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 13

    new-instance v6, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    sget-object v4, Lcom/transsion/audiotagger/tag/FieldKey;->ARTIST:Lcom/transsion/audiotagger/tag/FieldKey;

    const/4 v5, 0x1

    const-string v1, "ARTIST"

    const/4 v2, 0x0

    const-string v3, "IART"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/transsion/audiotagger/tag/FieldKey;I)V

    sput-object v6, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;->ARTIST:Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    new-instance v0, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    sget-object v11, Lcom/transsion/audiotagger/tag/FieldKey;->ALBUM:Lcom/transsion/audiotagger/tag/FieldKey;

    const/4 v12, 0x2

    const-string v8, "ALBUM"

    const/4 v9, 0x1

    const-string v10, "IPRD"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/transsion/audiotagger/tag/FieldKey;I)V

    sput-object v0, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;->ALBUM:Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    new-instance v0, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    sget-object v5, Lcom/transsion/audiotagger/tag/FieldKey;->TITLE:Lcom/transsion/audiotagger/tag/FieldKey;

    const/4 v6, 0x3

    const-string v2, "TITLE"

    const/4 v3, 0x2

    const-string v4, "INAM"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/transsion/audiotagger/tag/FieldKey;I)V

    sput-object v0, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;->TITLE:Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    new-instance v0, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    sget-object v11, Lcom/transsion/audiotagger/tag/FieldKey;->TRACK:Lcom/transsion/audiotagger/tag/FieldKey;

    const/4 v12, 0x4

    const-string v8, "TRACKNO"

    const/4 v9, 0x3

    const-string v10, "ITRK"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/transsion/audiotagger/tag/FieldKey;I)V

    sput-object v0, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;->TRACKNO:Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    new-instance v0, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    sget-object v5, Lcom/transsion/audiotagger/tag/FieldKey;->YEAR:Lcom/transsion/audiotagger/tag/FieldKey;

    const/4 v6, 0x5

    const-string v2, "YEAR"

    const/4 v3, 0x4

    const-string v4, "ICRD"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/transsion/audiotagger/tag/FieldKey;I)V

    sput-object v0, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;->YEAR:Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    new-instance v0, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    sget-object v11, Lcom/transsion/audiotagger/tag/FieldKey;->GENRE:Lcom/transsion/audiotagger/tag/FieldKey;

    const/4 v12, 0x6

    const-string v8, "GENRE"

    const/4 v9, 0x5

    const-string v10, "IGNR"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/transsion/audiotagger/tag/FieldKey;I)V

    sput-object v0, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;->GENRE:Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    new-instance v0, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    sget-object v5, Lcom/transsion/audiotagger/tag/FieldKey;->ALBUM_ARTIST:Lcom/transsion/audiotagger/tag/FieldKey;

    const/4 v6, 0x7

    const-string v2, "ALBUM_ARTIST"

    const/4 v3, 0x6

    const-string v4, "iaar"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/transsion/audiotagger/tag/FieldKey;I)V

    sput-object v0, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;->ALBUM_ARTIST:Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    new-instance v0, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    sget-object v11, Lcom/transsion/audiotagger/tag/FieldKey;->COMMENT:Lcom/transsion/audiotagger/tag/FieldKey;

    const/16 v12, 0x8

    const-string v8, "COMMENTS"

    const/4 v9, 0x7

    const-string v10, "ICMT"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/transsion/audiotagger/tag/FieldKey;I)V

    sput-object v0, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;->COMMENTS:Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    new-instance v0, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    sget-object v5, Lcom/transsion/audiotagger/tag/FieldKey;->COMPOSER:Lcom/transsion/audiotagger/tag/FieldKey;

    const/16 v6, 0x9

    const-string v2, "COMPOSER"

    const/16 v3, 0x8

    const-string v4, "IMUS"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/transsion/audiotagger/tag/FieldKey;I)V

    sput-object v0, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;->COMPOSER:Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    new-instance v0, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    sget-object v11, Lcom/transsion/audiotagger/tag/FieldKey;->CONDUCTOR:Lcom/transsion/audiotagger/tag/FieldKey;

    const/16 v12, 0xa

    const-string v8, "CONDUCTOR"

    const/16 v9, 0x9

    const-string v10, "ITCH"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/transsion/audiotagger/tag/FieldKey;I)V

    sput-object v0, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;->CONDUCTOR:Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    new-instance v0, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    sget-object v5, Lcom/transsion/audiotagger/tag/FieldKey;->LYRICIST:Lcom/transsion/audiotagger/tag/FieldKey;

    const/16 v6, 0xb

    const-string v2, "LYRICIST"

    const/16 v3, 0xa

    const-string v4, "IWRI"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/transsion/audiotagger/tag/FieldKey;I)V

    sput-object v0, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;->LYRICIST:Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    new-instance v0, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    sget-object v11, Lcom/transsion/audiotagger/tag/FieldKey;->ENCODER:Lcom/transsion/audiotagger/tag/FieldKey;

    const/16 v12, 0xc

    const-string v8, "ENCODER"

    const/16 v9, 0xb

    const-string v10, "ISFT"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/transsion/audiotagger/tag/FieldKey;I)V

    sput-object v0, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;->ENCODER:Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    new-instance v0, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    sget-object v5, Lcom/transsion/audiotagger/tag/FieldKey;->RATING:Lcom/transsion/audiotagger/tag/FieldKey;

    const/16 v6, 0xd

    const-string v2, "RATING"

    const/16 v3, 0xc

    const-string v4, "IRTD"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/transsion/audiotagger/tag/FieldKey;I)V

    sput-object v0, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;->RATING:Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    new-instance v0, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    sget-object v11, Lcom/transsion/audiotagger/tag/FieldKey;->ISRC:Lcom/transsion/audiotagger/tag/FieldKey;

    const/16 v12, 0xe

    const-string v8, "ISRC"

    const/16 v9, 0xd

    const-string v10, "ISRC"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/transsion/audiotagger/tag/FieldKey;I)V

    sput-object v0, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;->ISRC:Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    new-instance v0, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    sget-object v5, Lcom/transsion/audiotagger/tag/FieldKey;->RECORD_LABEL:Lcom/transsion/audiotagger/tag/FieldKey;

    const/16 v6, 0xf

    const-string v2, "LABEL"

    const/16 v3, 0xe

    const-string v4, "ICMS"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/transsion/audiotagger/tag/FieldKey;I)V

    sput-object v0, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;->LABEL:Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    new-instance v0, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    const/4 v11, 0x0

    const/16 v12, 0x10

    const-string v8, "TRACK_GAIN"

    const/16 v9, 0xf

    const-string v10, "ITGL"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/transsion/audiotagger/tag/FieldKey;I)V

    sput-object v0, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;->TRACK_GAIN:Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    new-instance v0, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    const/4 v5, 0x0

    const/16 v6, 0x11

    const-string v2, "ALBUM_GAIN"

    const/16 v3, 0x10

    const-string v4, "IAGL"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/transsion/audiotagger/tag/FieldKey;I)V

    sput-object v0, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;->ALBUM_GAIN:Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    new-instance v0, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    const/16 v12, 0x12

    const-string v8, "COPYRIGHT"

    const/16 v9, 0x11

    const-string v10, "ICOP"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/transsion/audiotagger/tag/FieldKey;I)V

    sput-object v0, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;->COPYRIGHT:Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    new-instance v0, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    const/4 v6, 0x1

    const-string v2, "TWONKY_TRACKNO"

    const/16 v3, 0x12

    const-string v4, "itrk"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/transsion/audiotagger/tag/FieldKey;I)V

    sput-object v0, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;->TWONKY_TRACKNO:Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    invoke-static {}, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;->$values()[Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;->$VALUES:[Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;->CODE_TYPE_MAP:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;->FIELDKEY_TYPE_MAP:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/transsion/audiotagger/tag/FieldKey;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/transsion/audiotagger/tag/FieldKey;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;->code:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;->fieldKey:Lcom/transsion/audiotagger/tag/FieldKey;

    iput p5, p0, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;->preferredWriteOrder:I

    return-void
.end method

.method public static declared-synchronized getByByFieldKey(Lcom/transsion/audiotagger/tag/FieldKey;)Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;
    .locals 7

    const-class v0, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;->FIELDKEY_TYPE_MAP:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;->values()[Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;->getFieldKey()Lcom/transsion/audiotagger/tag/FieldKey;

    move-result-object v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;->FIELDKEY_TYPE_MAP:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;->getFieldKey()Lcom/transsion/audiotagger/tag/FieldKey;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;->FIELDKEY_TYPE_MAP:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized getByCode(Ljava/lang/String;)Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;
    .locals 7

    const-class v0, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;->CODE_TYPE_MAP:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;->values()[Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    sget-object v5, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;->CODE_TYPE_MAP:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;->CODE_TYPE_MAP:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;
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

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;
    .locals 1

    const-class v0, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    return-object p0
.end method

.method public static values()[Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;->$VALUES:[Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    invoke-virtual {v0}, [Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;->code:Ljava/lang/String;

    return-object p0
.end method

.method public getFieldKey()Lcom/transsion/audiotagger/tag/FieldKey;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;->fieldKey:Lcom/transsion/audiotagger/tag/FieldKey;

    return-object p0
.end method

.method public getPreferredWriteOrder()I
    .locals 0

    iget p0, p0, Lcom/transsion/audiotagger/audio/wav/chunk/WavInfoIdentifier;->preferredWriteOrder:I

    return p0
.end method
