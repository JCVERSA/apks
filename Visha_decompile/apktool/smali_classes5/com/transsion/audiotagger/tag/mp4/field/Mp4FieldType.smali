.class public final enum Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

.field public static final enum COVERART_BMP:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

.field public static final enum COVERART_GIF:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

.field public static final enum COVERART_JPEG:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

.field public static final enum COVERART_PNG:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

.field public static final enum DATETIME:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

.field public static final enum DURATION:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

.field public static final enum GENRES:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

.field public static final enum GUID:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

.field public static final enum HTML:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

.field public static final enum IMPLICIT:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

.field public static final enum INTEGER:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

.field public static final enum ISRC:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

.field public static final enum MI3P:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

.field public static final enum RIAAPA:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

.field public static final enum TEXT:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

.field public static final enum TEXT_JAPANESE:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

.field public static final enum TEXT_UTF16BE:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

.field public static final enum UPC:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

.field public static final enum URL:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

.field public static final enum XML:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

.field private static coverArtTypes:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;",
            ">;"
        }
    .end annotation
.end field

.field private static final fileClassIdFiedTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fileClassId:I


# direct methods
.method private static synthetic $values()[Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;
    .locals 20

    sget-object v0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->IMPLICIT:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    sget-object v1, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->TEXT:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->TEXT_UTF16BE:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    sget-object v3, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->TEXT_JAPANESE:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    sget-object v4, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->HTML:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    sget-object v5, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->XML:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    sget-object v6, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->GUID:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    sget-object v7, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->ISRC:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    sget-object v8, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->MI3P:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    sget-object v9, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->COVERART_GIF:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    sget-object v10, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->COVERART_JPEG:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    sget-object v11, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->COVERART_PNG:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    sget-object v12, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->URL:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    sget-object v13, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->DURATION:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    sget-object v14, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->DATETIME:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    sget-object v15, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->GENRES:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    sget-object v16, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->INTEGER:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    sget-object v17, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->RIAAPA:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    sget-object v18, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->UPC:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    sget-object v19, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->COVERART_BMP:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    filled-new-array/range {v0 .. v19}, [Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    const-string v1, "IMPLICIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->IMPLICIT:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    new-instance v0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    const-string v1, "TEXT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->TEXT:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    new-instance v0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    const-string v1, "TEXT_UTF16BE"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v3}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->TEXT_UTF16BE:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    new-instance v0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    const-string v1, "TEXT_JAPANESE"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v3}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->TEXT_JAPANESE:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    new-instance v0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    const-string v1, "HTML"

    const/4 v3, 0x4

    const/4 v4, 0x6

    invoke-direct {v0, v1, v3, v4}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->HTML:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    new-instance v0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    const-string v1, "XML"

    const/4 v3, 0x5

    const/4 v5, 0x7

    invoke-direct {v0, v1, v3, v5}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->XML:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    new-instance v0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    const-string v1, "GUID"

    const/16 v3, 0x8

    invoke-direct {v0, v1, v4, v3}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->GUID:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    new-instance v0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    const-string v1, "ISRC"

    const/16 v4, 0x9

    invoke-direct {v0, v1, v5, v4}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->ISRC:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    new-instance v0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    const-string v1, "MI3P"

    const/16 v5, 0xa

    invoke-direct {v0, v1, v3, v5}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->MI3P:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    new-instance v0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    const-string v1, "COVERART_GIF"

    const/16 v3, 0xc

    invoke-direct {v0, v1, v4, v3}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->COVERART_GIF:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    new-instance v0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    const-string v1, "COVERART_JPEG"

    const/16 v4, 0xd

    invoke-direct {v0, v1, v5, v4}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->COVERART_JPEG:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    new-instance v0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    const-string v1, "COVERART_PNG"

    const/16 v5, 0xb

    const/16 v6, 0xe

    invoke-direct {v0, v1, v5, v6}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->COVERART_PNG:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    new-instance v0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    const-string v1, "URL"

    const/16 v5, 0xf

    invoke-direct {v0, v1, v3, v5}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->URL:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    new-instance v0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    const-string v1, "DURATION"

    const/16 v3, 0x10

    invoke-direct {v0, v1, v4, v3}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->DURATION:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    new-instance v0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    const-string v1, "DATETIME"

    const/16 v4, 0x11

    invoke-direct {v0, v1, v6, v4}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->DATETIME:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    new-instance v0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    const-string v1, "GENRES"

    const/16 v6, 0x12

    invoke-direct {v0, v1, v5, v6}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->GENRES:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    new-instance v0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    const-string v1, "INTEGER"

    const/16 v5, 0x15

    invoke-direct {v0, v1, v3, v5}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->INTEGER:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    new-instance v0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    const-string v1, "RIAAPA"

    const/16 v3, 0x18

    invoke-direct {v0, v1, v4, v3}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->RIAAPA:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    new-instance v0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    const-string v1, "UPC"

    const/16 v3, 0x19

    invoke-direct {v0, v1, v6, v3}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->UPC:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    new-instance v0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    const/16 v1, 0x13

    const/16 v3, 0x1b

    const-string v4, "COVERART_BMP"

    invoke-direct {v0, v4, v1, v3}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->COVERART_BMP:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    invoke-static {}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->$values()[Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->$VALUES:[Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    new-instance v0, Ljava/util/HashMap;

    invoke-static {}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->values()[Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->fileClassIdFiedTypeMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->values()[Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->fileClassIdFiedTypeMap:Ljava/util/HashMap;

    iget v5, v3, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->fileClassId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->COVERART_GIF:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    sget-object v1, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->COVERART_JPEG:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    sget-object v2, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->COVERART_PNG:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    sget-object v3, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->COVERART_BMP:Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    invoke-static {v0, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->coverArtTypes:Ljava/util/EnumSet;

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

    iput p3, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->fileClassId:I

    return-void
.end method

.method public static getFieldType(I)Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->fileClassIdFiedTypeMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    return-object p0
.end method

.method public static isCoverArtType(Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;)Z
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->coverArtTypes:Ljava/util/EnumSet;

    invoke-virtual {v0, p0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;
    .locals 1

    const-class v0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->$VALUES:[Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    invoke-virtual {v0}, [Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;

    return-object v0
.end method


# virtual methods
.method public getFileClassId()I
    .locals 0

    iget p0, p0, Lcom/transsion/audiotagger/tag/mp4/field/Mp4FieldType;->fileClassId:I

    return p0
.end method
