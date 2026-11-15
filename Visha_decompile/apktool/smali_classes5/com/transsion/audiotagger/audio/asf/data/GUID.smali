.class public final Lcom/transsion/audiotagger/audio/asf/data/GUID;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final GUID_AUDIOSTREAM:Lcom/transsion/audiotagger/audio/asf/data/GUID;

.field public static final GUID_AUDIO_ERROR_CONCEALEMENT_ABSENT:Lcom/transsion/audiotagger/audio/asf/data/GUID;

.field public static final GUID_AUDIO_ERROR_CONCEALEMENT_INTERLEAVED:Lcom/transsion/audiotagger/audio/asf/data/GUID;

.field public static final GUID_CONTENTDESCRIPTION:Lcom/transsion/audiotagger/audio/asf/data/GUID;

.field public static final GUID_CONTENT_BRANDING:Lcom/transsion/audiotagger/audio/asf/data/GUID;

.field public static final GUID_CONTENT_ENCRYPTION:Lcom/transsion/audiotagger/audio/asf/data/GUID;

.field public static final GUID_ENCODING:Lcom/transsion/audiotagger/audio/asf/data/GUID;

.field public static final GUID_EXTENDED_CONTENT_DESCRIPTION:Lcom/transsion/audiotagger/audio/asf/data/GUID;

.field public static final GUID_FILE:Lcom/transsion/audiotagger/audio/asf/data/GUID;

.field public static final GUID_HEADER:Lcom/transsion/audiotagger/audio/asf/data/GUID;

.field public static final GUID_HEADER_EXTENSION:Lcom/transsion/audiotagger/audio/asf/data/GUID;

.field public static final GUID_LANGUAGE_LIST:Lcom/transsion/audiotagger/audio/asf/data/GUID;

.field public static final GUID_LENGTH:I = 0x10

.field public static final GUID_METADATA:Lcom/transsion/audiotagger/audio/asf/data/GUID;

.field public static final GUID_METADATA_LIBRARY:Lcom/transsion/audiotagger/audio/asf/data/GUID;

.field private static final GUID_PATTERN:Ljava/util/regex/Pattern;

.field public static final GUID_STREAM:Lcom/transsion/audiotagger/audio/asf/data/GUID;

.field public static final GUID_STREAM_BITRATE_PROPERTIES:Lcom/transsion/audiotagger/audio/asf/data/GUID;

.field private static final GUID_TO_CONFIGURED:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/transsion/audiotagger/audio/asf/data/GUID;",
            "Lcom/transsion/audiotagger/audio/asf/data/GUID;",
            ">;"
        }
    .end annotation
.end field

.field public static final GUID_UNSPECIFIED:Lcom/transsion/audiotagger/audio/asf/data/GUID;

.field public static final GUID_VIDEOSTREAM:Lcom/transsion/audiotagger/audio/asf/data/GUID;

.field public static final KNOWN_GUIDS:[Lcom/transsion/audiotagger/audio/asf/data/GUID;

.field public static final SCRIPT_COMMAND_OBJECT:Lcom/transsion/audiotagger/audio/asf/data/GUID;


# instance fields
.field private description:Ljava/lang/String;

.field private guidData:[I

.field private hash:I


# direct methods
.method static constructor <clinit>()V
    .locals 21

    const/16 v0, 0x10

    new-instance v3, Lcom/transsion/audiotagger/audio/asf/data/GUID;

    move-object v2, v3

    new-array v4, v0, [I

    fill-array-data v4, :array_0

    const-string v5, "Audio error concealment absent."

    invoke-direct {v3, v4, v5}, Lcom/transsion/audiotagger/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    sput-object v3, Lcom/transsion/audiotagger/audio/asf/data/GUID;->GUID_AUDIO_ERROR_CONCEALEMENT_ABSENT:Lcom/transsion/audiotagger/audio/asf/data/GUID;

    new-instance v3, Lcom/transsion/audiotagger/audio/asf/data/GUID;

    new-array v4, v0, [I

    fill-array-data v4, :array_1

    const-string v5, "Interleaved audio error concealment."

    invoke-direct {v3, v4, v5}, Lcom/transsion/audiotagger/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    sput-object v3, Lcom/transsion/audiotagger/audio/asf/data/GUID;->GUID_AUDIO_ERROR_CONCEALEMENT_INTERLEAVED:Lcom/transsion/audiotagger/audio/asf/data/GUID;

    new-instance v3, Lcom/transsion/audiotagger/audio/asf/data/GUID;

    move-object v4, v3

    new-array v5, v0, [I

    fill-array-data v5, :array_2

    const-string v6, " Audio stream"

    invoke-direct {v3, v5, v6}, Lcom/transsion/audiotagger/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    sput-object v3, Lcom/transsion/audiotagger/audio/asf/data/GUID;->GUID_AUDIOSTREAM:Lcom/transsion/audiotagger/audio/asf/data/GUID;

    new-instance v3, Lcom/transsion/audiotagger/audio/asf/data/GUID;

    move-object v15, v3

    new-array v5, v0, [I

    fill-array-data v5, :array_3

    const-string v6, "Content Branding"

    invoke-direct {v3, v5, v6}, Lcom/transsion/audiotagger/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    sput-object v3, Lcom/transsion/audiotagger/audio/asf/data/GUID;->GUID_CONTENT_BRANDING:Lcom/transsion/audiotagger/audio/asf/data/GUID;

    new-instance v3, Lcom/transsion/audiotagger/audio/asf/data/GUID;

    move-object v14, v3

    new-array v5, v0, [I

    fill-array-data v5, :array_4

    const-string v6, "Content Encryption Object"

    invoke-direct {v3, v5, v6}, Lcom/transsion/audiotagger/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    sput-object v3, Lcom/transsion/audiotagger/audio/asf/data/GUID;->GUID_CONTENT_ENCRYPTION:Lcom/transsion/audiotagger/audio/asf/data/GUID;

    new-instance v5, Lcom/transsion/audiotagger/audio/asf/data/GUID;

    move-object v3, v5

    new-array v6, v0, [I

    fill-array-data v6, :array_5

    const-string v7, "Content Description"

    invoke-direct {v5, v6, v7}, Lcom/transsion/audiotagger/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    sput-object v5, Lcom/transsion/audiotagger/audio/asf/data/GUID;->GUID_CONTENTDESCRIPTION:Lcom/transsion/audiotagger/audio/asf/data/GUID;

    new-instance v6, Lcom/transsion/audiotagger/audio/asf/data/GUID;

    move-object v5, v6

    new-array v7, v0, [I

    fill-array-data v7, :array_6

    const-string v8, "Encoding description"

    invoke-direct {v6, v7, v8}, Lcom/transsion/audiotagger/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    sput-object v6, Lcom/transsion/audiotagger/audio/asf/data/GUID;->GUID_ENCODING:Lcom/transsion/audiotagger/audio/asf/data/GUID;

    new-instance v6, Lcom/transsion/audiotagger/audio/asf/data/GUID;

    move-object v9, v6

    new-array v7, v0, [I

    fill-array-data v7, :array_7

    const-string v8, "Extended Content Description"

    invoke-direct {v6, v7, v8}, Lcom/transsion/audiotagger/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    sput-object v6, Lcom/transsion/audiotagger/audio/asf/data/GUID;->GUID_EXTENDED_CONTENT_DESCRIPTION:Lcom/transsion/audiotagger/audio/asf/data/GUID;

    new-instance v7, Lcom/transsion/audiotagger/audio/asf/data/GUID;

    move-object v6, v7

    new-array v8, v0, [I

    fill-array-data v8, :array_8

    const-string v10, "File header"

    invoke-direct {v7, v8, v10}, Lcom/transsion/audiotagger/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    sput-object v7, Lcom/transsion/audiotagger/audio/asf/data/GUID;->GUID_FILE:Lcom/transsion/audiotagger/audio/asf/data/GUID;

    new-instance v8, Lcom/transsion/audiotagger/audio/asf/data/GUID;

    move-object v7, v8

    new-array v10, v0, [I

    fill-array-data v10, :array_9

    const-string v11, "Asf header"

    invoke-direct {v8, v10, v11}, Lcom/transsion/audiotagger/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    sput-object v8, Lcom/transsion/audiotagger/audio/asf/data/GUID;->GUID_HEADER:Lcom/transsion/audiotagger/audio/asf/data/GUID;

    new-instance v8, Lcom/transsion/audiotagger/audio/asf/data/GUID;

    move-object v11, v8

    new-array v10, v0, [I

    fill-array-data v10, :array_a

    const-string v12, "Header Extension"

    invoke-direct {v8, v10, v12}, Lcom/transsion/audiotagger/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    sput-object v8, Lcom/transsion/audiotagger/audio/asf/data/GUID;->GUID_HEADER_EXTENSION:Lcom/transsion/audiotagger/audio/asf/data/GUID;

    new-instance v8, Lcom/transsion/audiotagger/audio/asf/data/GUID;

    move-object/from16 v19, v8

    new-array v10, v0, [I

    fill-array-data v10, :array_b

    const-string v12, "Language List"

    invoke-direct {v8, v10, v12}, Lcom/transsion/audiotagger/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    sput-object v8, Lcom/transsion/audiotagger/audio/asf/data/GUID;->GUID_LANGUAGE_LIST:Lcom/transsion/audiotagger/audio/asf/data/GUID;

    new-instance v8, Lcom/transsion/audiotagger/audio/asf/data/GUID;

    move-object/from16 v18, v8

    new-array v10, v0, [I

    fill-array-data v10, :array_c

    const-string v12, "Metadata"

    invoke-direct {v8, v10, v12}, Lcom/transsion/audiotagger/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    sput-object v8, Lcom/transsion/audiotagger/audio/asf/data/GUID;->GUID_METADATA:Lcom/transsion/audiotagger/audio/asf/data/GUID;

    new-instance v8, Lcom/transsion/audiotagger/audio/asf/data/GUID;

    move-object/from16 v17, v8

    new-array v10, v0, [I

    fill-array-data v10, :array_d

    const-string v12, "Metadata Library"

    invoke-direct {v8, v10, v12}, Lcom/transsion/audiotagger/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    sput-object v8, Lcom/transsion/audiotagger/audio/asf/data/GUID;->GUID_METADATA_LIBRARY:Lcom/transsion/audiotagger/audio/asf/data/GUID;

    const-string v8, "[a-f0-9]{8}\\-[a-f0-9]{4}\\-[a-f0-9]{4}\\-[a-f0-9]{4}\\-[a-f0-9]{12}"

    const/4 v10, 0x2

    invoke-static {v8, v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v8

    sput-object v8, Lcom/transsion/audiotagger/audio/asf/data/GUID;->GUID_PATTERN:Ljava/util/regex/Pattern;

    new-instance v10, Lcom/transsion/audiotagger/audio/asf/data/GUID;

    move-object v8, v10

    new-array v12, v0, [I

    fill-array-data v12, :array_e

    const-string v13, "Stream"

    invoke-direct {v10, v12, v13}, Lcom/transsion/audiotagger/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    sput-object v10, Lcom/transsion/audiotagger/audio/asf/data/GUID;->GUID_STREAM:Lcom/transsion/audiotagger/audio/asf/data/GUID;

    new-instance v10, Lcom/transsion/audiotagger/audio/asf/data/GUID;

    move-object v12, v10

    new-array v13, v0, [I

    fill-array-data v13, :array_f

    const-string v1, "Stream bitrate properties"

    invoke-direct {v10, v13, v1}, Lcom/transsion/audiotagger/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    sput-object v10, Lcom/transsion/audiotagger/audio/asf/data/GUID;->GUID_STREAM_BITRATE_PROPERTIES:Lcom/transsion/audiotagger/audio/asf/data/GUID;

    new-instance v1, Lcom/transsion/audiotagger/audio/asf/data/GUID;

    move-object/from16 v16, v1

    new-array v10, v0, [I

    fill-array-data v10, :array_10

    const-string v13, "Unspecified"

    invoke-direct {v1, v10, v13}, Lcom/transsion/audiotagger/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    sput-object v1, Lcom/transsion/audiotagger/audio/asf/data/GUID;->GUID_UNSPECIFIED:Lcom/transsion/audiotagger/audio/asf/data/GUID;

    new-instance v1, Lcom/transsion/audiotagger/audio/asf/data/GUID;

    move-object v10, v1

    new-array v13, v0, [I

    fill-array-data v13, :array_11

    const-string v0, "Video stream"

    invoke-direct {v1, v13, v0}, Lcom/transsion/audiotagger/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    sput-object v1, Lcom/transsion/audiotagger/audio/asf/data/GUID;->GUID_VIDEOSTREAM:Lcom/transsion/audiotagger/audio/asf/data/GUID;

    new-instance v0, Lcom/transsion/audiotagger/audio/asf/data/GUID;

    move-object v13, v0

    const/16 v1, 0x10

    new-array v1, v1, [I

    fill-array-data v1, :array_12

    move-object/from16 v20, v2

    const-string v2, "Script Command Object"

    invoke-direct {v0, v1, v2}, Lcom/transsion/audiotagger/audio/asf/data/GUID;-><init>([ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/audio/asf/data/GUID;->SCRIPT_COMMAND_OBJECT:Lcom/transsion/audiotagger/audio/asf/data/GUID;

    move-object/from16 v2, v20

    filled-new-array/range {v2 .. v19}, [Lcom/transsion/audiotagger/audio/asf/data/GUID;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/audio/asf/data/GUID;->KNOWN_GUIDS:[Lcom/transsion/audiotagger/audio/asf/data/GUID;

    new-instance v1, Ljava/util/HashMap;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Lcom/transsion/audiotagger/audio/asf/data/GUID;->GUID_TO_CONFIGURED:Ljava/util/Map;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Lcom/transsion/audiotagger/audio/asf/data/GUID;->GUID_TO_CONFIGURED:Ljava/util/Map;

    invoke-interface {v4, v3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x40
        0xa4
        0xf1
        0x49
        0xce
        0x4e
        0xd0
        0x11
        0xa3
        0xac
        0x0
        0xa0
        0xc9
        0x3
        0x48
        0xf6
    .end array-data

    :array_1
    .array-data 4
        0x40
        0xa4
        0xf1
        0x49
        0xce
        0x4e
        0xd0
        0x11
        0xa3
        0xac
        0x0
        0xa0
        0xc9
        0x3
        0x48
        0xf6
    .end array-data

    :array_2
    .array-data 4
        0x40
        0x9e
        0x69
        0xf8
        0x4d
        0x5b
        0xcf
        0x11
        0xa8
        0xfd
        0x0
        0x80
        0x5f
        0x5c
        0x44
        0x2b
    .end array-data

    :array_3
    .array-data 4
        0xfa
        0xb3
        0x11
        0x22
        0x23
        0xbd
        0xd2
        0x11
        0xb4
        0xb7
        0x0
        0xa0
        0xc9
        0x55
        0xfc
        0x6e
    .end array-data

    :array_4
    .array-data 4
        0xfb
        0xb3
        0x11
        0x22
        0x23
        0xbd
        0xd2
        0x11
        0xb4
        0xb7
        0x0
        0xa0
        0xc9
        0x55
        0xfc
        0x6e
    .end array-data

    :array_5
    .array-data 4
        0x33
        0x26
        0xb2
        0x75
        0x8e
        0x66
        0xcf
        0x11
        0xa6
        0xd9
        0x0
        0xaa
        0x0
        0x62
        0xce
        0x6c
    .end array-data

    :array_6
    .array-data 4
        0x40
        0x52
        0xd1
        0x86
        0x1d
        0x31
        0xd0
        0x11
        0xa3
        0xa4
        0x0
        0xa0
        0xc9
        0x3
        0x48
        0xf6
    .end array-data

    :array_7
    .array-data 4
        0x40
        0xa4
        0xd0
        0xd2
        0x7
        0xe3
        0xd2
        0x11
        0x97
        0xf0
        0x0
        0xa0
        0xc9
        0x5e
        0xa8
        0x50
    .end array-data

    :array_8
    .array-data 4
        0xa1
        0xdc
        0xab
        0x8c
        0x47
        0xa9
        0xcf
        0x11
        0x8e
        0xe4
        0x0
        0xc0
        0xc
        0x20
        0x53
        0x65
    .end array-data

    :array_9
    .array-data 4
        0x30
        0x26
        0xb2
        0x75
        0x8e
        0x66
        0xcf
        0x11
        0xa6
        0xd9
        0x0
        0xaa
        0x0
        0x62
        0xce
        0x6c
    .end array-data

    :array_a
    .array-data 4
        0xb5
        0x3
        0xbf
        0x5f
        0x2e
        0xa9
        0xcf
        0x11
        0x8e
        0xe3
        0x0
        0xc0
        0xc
        0x20
        0x53
        0x65
    .end array-data

    :array_b
    .array-data 4
        0xa9
        0x46
        0x43
        0x7c
        0xe0
        0xef
        0xfc
        0x4b
        0xb2
        0x29
        0x39
        0x3e
        0xde
        0x41
        0x5c
        0x85
    .end array-data

    :array_c
    .array-data 4
        0xea
        0xcb
        0xf8
        0xc5
        0xaf
        0x5b
        0x77
        0x48
        0x84
        0x67
        0xaa
        0x8c
        0x44
        0xfa
        0x4c
        0xca
    .end array-data

    :array_d
    .array-data 4
        0x94
        0x1c
        0x23
        0x44
        0x98
        0x94
        0xd1
        0x49
        0xa1
        0x41
        0x1d
        0x13
        0x4e
        0x45
        0x70
        0x54
    .end array-data

    :array_e
    .array-data 4
        0x91
        0x7
        0xdc
        0xb7
        0xb7
        0xa9
        0xcf
        0x11
        0x8e
        0xe6
        0x0
        0xc0
        0xc
        0x20
        0x53
        0x65
    .end array-data

    :array_f
    .array-data 4
        0xce
        0x75
        0xf8
        0x7b
        0x8d
        0x46
        0xd1
        0x11
        0x8d
        0x82
        0x0
        0x60
        0x97
        0xc9
        0xa2
        0xb2
    .end array-data

    :array_10
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_11
    .array-data 4
        0xc0
        0xef
        0x19
        0xbc
        0x4d
        0x5b
        0xcf
        0x11
        0xa8
        0xfd
        0x0
        0x80
        0x5f
        0x5c
        0x44
        0x2b
    .end array-data

    :array_12
    .array-data 4
        0x30
        0x1a
        0xfb
        0x1e
        0x62
        0xb
        0xd0
        0x11
        0xa3
        0x9b
        0x0
        0xa0
        0xc9
        0x3
        0x48
        0xf6
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-static {p1}, Lcom/transsion/audiotagger/audio/asf/data/GUID;->parseGUID(Ljava/lang/String;)Lcom/transsion/audiotagger/audio/asf/data/GUID;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/asf/data/GUID;->getGUID()[I

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/audio/asf/data/GUID;-><init>([I)V

    if-eqz p2, :cond_0

    .line 16
    iput-object p2, p0, Lcom/transsion/audiotagger/audio/asf/data/GUID;->description:Ljava/lang/String;

    return-void

    .line 17
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Argument must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>([B)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/audiotagger/audio/asf/data/GUID;->description:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/transsion/audiotagger/audio/asf/data/GUID;->guidData:[I

    .line 4
    array-length v0, p1

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 5
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 6
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p0, v0}, Lcom/transsion/audiotagger/audio/asf/data/GUID;->setGUID([I)V

    return-void
.end method

.method public constructor <init>([I)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/audiotagger/audio/asf/data/GUID;->description:Ljava/lang/String;

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/transsion/audiotagger/audio/asf/data/GUID;->guidData:[I

    .line 11
    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/audio/asf/data/GUID;->setGUID([I)V

    return-void
.end method

.method public constructor <init>([ILjava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/audio/asf/data/GUID;-><init>([I)V

    if-eqz p2, :cond_0

    .line 13
    iput-object p2, p0, Lcom/transsion/audiotagger/audio/asf/data/GUID;->description:Ljava/lang/String;

    return-void

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Argument must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static assertGUID([I)Z
    .locals 1

    if-eqz p0, :cond_0

    array-length p0, p0

    const/16 v0, 0x10

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getConfigured(Lcom/transsion/audiotagger/audio/asf/data/GUID;)Lcom/transsion/audiotagger/audio/asf/data/GUID;
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/audio/asf/data/GUID;->GUID_TO_CONFIGURED:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/audio/asf/data/GUID;

    return-object p0
.end method

.method public static getGuidDescription(Lcom/transsion/audiotagger/audio/asf/data/GUID;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/transsion/audiotagger/audio/asf/data/GUID;->getConfigured(Lcom/transsion/audiotagger/audio/asf/data/GUID;)Lcom/transsion/audiotagger/audio/asf/data/GUID;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/transsion/audiotagger/audio/asf/data/GUID;->getConfigured(Lcom/transsion/audiotagger/audio/asf/data/GUID;)Lcom/transsion/audiotagger/audio/asf/data/GUID;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/GUID;->getDescription()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Argument must not be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getHex([B)[Ljava/lang/String;
    .locals 5

    array-length p0, p1

    new-array p0, p0, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const-string v3, "0"

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static parseGUID(Ljava/lang/String;)Lcom/transsion/audiotagger/audio/asf/data/GUID;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/asf/data/GUIDFormatException;
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x10

    if-eqz p0, :cond_3

    sget-object v2, Lcom/transsion/audiotagger/audio/asf/data/GUID;->GUID_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_2

    new-array v2, v1, [I

    new-array v3, v1, [I

    fill-array-data v3, :array_0

    move v4, v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v4, 0x1

    aget v4, v3, v4

    add-int/lit8 v6, v0, 0x2

    invoke-virtual {p0, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    aput v6, v2, v4

    add-int/lit8 v0, v0, 0x1

    move v4, v5

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/transsion/audiotagger/audio/asf/data/GUID;

    invoke-direct {p0, v2}, Lcom/transsion/audiotagger/audio/asf/data/GUID;-><init>([I)V

    return-object p0

    :cond_2
    new-instance p0, Lcom/transsion/audiotagger/audio/asf/data/GUIDFormatException;

    const-string v0, "Invalid guidData format."

    invoke-direct {p0, v0}, Lcom/transsion/audiotagger/audio/asf/data/GUIDFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lcom/transsion/audiotagger/audio/asf/data/GUIDFormatException;

    const-string v0, "null"

    invoke-direct {p0, v0}, Lcom/transsion/audiotagger/audio/asf/data/GUIDFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :array_0
    .array-data 4
        0x3
        0x2
        0x1
        0x0
        0x5
        0x4
        0x7
        0x6
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
    .end array-data
.end method

.method private setGUID([I)V
    .locals 2

    invoke-static {p1}, Lcom/transsion/audiotagger/audio/asf/data/GUID;->assertGUID([I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/transsion/audiotagger/audio/asf/data/GUID;->guidData:[I

    const/4 p0, 0x0

    invoke-static {p1, p0, v1, p0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The given guidData doesn\'t match the GUID specification."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/transsion/audiotagger/audio/asf/data/GUID;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/transsion/audiotagger/audio/asf/data/GUID;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/GUID;->getGUID()[I

    move-result-object p0

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/asf/data/GUID;->getGUID()[I

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getBytes()[B
    .locals 4

    iget-object v0, p0, Lcom/transsion/audiotagger/audio/asf/data/GUID;->guidData:[I

    array-length v0, v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/transsion/audiotagger/audio/asf/data/GUID;->guidData:[I

    aget v3, v3, v2

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/asf/data/GUID;->description:Ljava/lang/String;

    return-object p0
.end method

.method public getGUID()[I
    .locals 3

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/asf/data/GUID;->guidData:[I

    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    iget v0, p0, Lcom/transsion/audiotagger/audio/asf/data/GUID;->hash:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/GUID;->getGUID()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget v4, v0, v2

    mul-int/lit8 v3, v3, 0x1f

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput v3, p0, Lcom/transsion/audiotagger/audio/asf/data/GUID;->hash:I

    :cond_1
    iget p0, p0, Lcom/transsion/audiotagger/audio/asf/data/GUID;->hash:I

    return p0
.end method

.method public isValid()Z
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/GUID;->getGUID()[I

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/audiotagger/audio/asf/data/GUID;->assertGUID([I)Z

    move-result p0

    return p0
.end method

.method public prettyPrint()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/GUID;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/transsion/audiotagger/audio/asf/data/GUID;->getGuidDescription(Lcom/transsion/audiotagger/audio/asf/data/GUID;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-static {v1}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Description: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/transsion/audiotagger/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/GUID;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/GUID;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/transsion/audiotagger/audio/asf/data/GUID;->getHex([B)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x3

    aget-object v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    aget-object v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    aget-object v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    aget-object v2, p0, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    aget-object v2, p0, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x7

    aget-object v2, p0, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x6

    aget-object v2, p0, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0x8

    aget-object v2, p0, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x9

    aget-object v2, p0, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    aget-object v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xb

    aget-object v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xc

    aget-object v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xd

    aget-object v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xe

    aget-object v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xf

    aget-object p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
