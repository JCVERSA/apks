.class public Lcom/transsion/audiotagger/tag/id3/valuepair/ImageFormats;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MIME_TYPE_BMP:Ljava/lang/String; = "image/bmp"

.field public static final MIME_TYPE_GIF:Ljava/lang/String; = "image/gif"

.field public static final MIME_TYPE_JPEG:Ljava/lang/String; = "image/jpeg"

.field public static final MIME_TYPE_JPG:Ljava/lang/String; = "image/jpg"

.field public static final MIME_TYPE_PDF:Ljava/lang/String; = "image/pdf"

.field public static final MIME_TYPE_PICT:Ljava/lang/String; = "image/x-pict"

.field public static final MIME_TYPE_PNG:Ljava/lang/String; = "image/png"

.field public static final MIME_TYPE_TIFF:Ljava/lang/String; = "image/tiff"

.field public static final V22_BMP_FORMAT:Ljava/lang/String; = "BMP"

.field public static final V22_GIF_FORMAT:Ljava/lang/String; = "GIF"

.field public static final V22_JPG_FORMAT:Ljava/lang/String; = "JPG"

.field public static final V22_PDF_FORMAT:Ljava/lang/String; = "PDF"

.field public static final V22_PIC_FORMAT:Ljava/lang/String; = "PIC"

.field public static final V22_PNG_FORMAT:Ljava/lang/String; = "PNG"

.field public static final V22_TIF_FORMAT:Ljava/lang/String; = "TIF"

.field private static imageFormatsToMimeType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static imageMimeTypeToFormat:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/transsion/audiotagger/tag/id3/valuepair/ImageFormats;->imageFormatsToMimeType:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/transsion/audiotagger/tag/id3/valuepair/ImageFormats;->imageMimeTypeToFormat:Ljava/util/Map;

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/valuepair/ImageFormats;->imageFormatsToMimeType:Ljava/util/Map;

    const-string v1, "image/jpeg"

    const-string v2, "JPG"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/valuepair/ImageFormats;->imageFormatsToMimeType:Ljava/util/Map;

    const-string v1, "PNG"

    const-string v3, "image/png"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/valuepair/ImageFormats;->imageFormatsToMimeType:Ljava/util/Map;

    const-string v1, "GIF"

    const-string v3, "image/gif"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/valuepair/ImageFormats;->imageFormatsToMimeType:Ljava/util/Map;

    const-string v1, "BMP"

    const-string v3, "image/bmp"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/valuepair/ImageFormats;->imageFormatsToMimeType:Ljava/util/Map;

    const-string v1, "TIF"

    const-string v3, "image/tiff"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/valuepair/ImageFormats;->imageFormatsToMimeType:Ljava/util/Map;

    const-string v1, "PDF"

    const-string v3, "image/pdf"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/valuepair/ImageFormats;->imageFormatsToMimeType:Ljava/util/Map;

    const-string v1, "PIC"

    const-string v3, "image/x-pict"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/valuepair/ImageFormats;->imageFormatsToMimeType:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v3, Lcom/transsion/audiotagger/tag/id3/valuepair/ImageFormats;->imageFormatsToMimeType:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Lcom/transsion/audiotagger/tag/id3/valuepair/ImageFormats;->imageMimeTypeToFormat:Ljava/util/Map;

    invoke-interface {v4, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/transsion/audiotagger/tag/id3/valuepair/ImageFormats;->imageMimeTypeToFormat:Ljava/util/Map;

    const-string v1, "image/jpg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binaryDataIsBmpFormat([B)Z
    .locals 3

    array-length v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    aget-byte v0, p0, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x42

    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    const/16 v1, 0x4d

    if-ne v1, p0, :cond_1

    move v2, v0

    :cond_1
    return v2
.end method

.method public static binaryDataIsGifFormat([B)Z
    .locals 4

    array-length v0, p0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    aget-byte v0, p0, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x47

    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    const/16 v3, 0x49

    if-ne v3, v1, :cond_1

    const/4 v1, 0x2

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    const/16 v1, 0x46

    if-ne v1, p0, :cond_1

    move v2, v0

    :cond_1
    return v2
.end method

.method public static binaryDataIsJpgFormat([B)Z
    .locals 5

    array-length v0, p0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    aget-byte v0, p0, v2

    const/16 v1, 0xff

    and-int/2addr v0, v1

    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    aget-byte v3, p0, v0

    and-int/2addr v3, v1

    const/16 v4, 0xd8

    if-ne v4, v3, :cond_1

    const/4 v3, 0x2

    aget-byte v3, p0, v3

    and-int/2addr v3, v1

    if-ne v1, v3, :cond_1

    const/4 v3, 0x3

    aget-byte p0, p0, v3

    and-int/2addr p0, v1

    const/16 v1, 0xdb

    if-gt v1, p0, :cond_1

    move v2, v0

    :cond_1
    return v2
.end method

.method public static binaryDataIsPdfFormat([B)Z
    .locals 4

    array-length v0, p0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    aget-byte v0, p0, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x25

    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    const/16 v3, 0x50

    if-ne v3, v1, :cond_1

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v3, 0x44

    if-ne v3, v1, :cond_1

    const/4 v1, 0x3

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    const/16 v1, 0x46

    if-ne v1, p0, :cond_1

    move v2, v0

    :cond_1
    return v2
.end method

.method public static binaryDataIsPngFormat([B)Z
    .locals 4

    array-length v0, p0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    aget-byte v0, p0, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x89

    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    const/16 v3, 0x50

    if-ne v3, v1, :cond_1

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v3, 0x4e

    if-ne v3, v1, :cond_1

    const/4 v1, 0x3

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    const/16 v1, 0x47

    if-ne v1, p0, :cond_1

    move v2, v0

    :cond_1
    return v2
.end method

.method public static binaryDataIsTiffFormat([B)Z
    .locals 8

    array-length v0, p0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    aget-byte v0, p0, v2

    and-int/lit16 v1, v0, 0xff

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/16 v5, 0x2a

    const/16 v6, 0x49

    const/4 v7, 0x1

    if-ne v6, v1, :cond_1

    aget-byte v1, p0, v7

    and-int/lit16 v1, v1, 0xff

    if-ne v6, v1, :cond_1

    aget-byte v1, p0, v4

    and-int/lit16 v1, v1, 0xff

    if-ne v5, v1, :cond_1

    aget-byte v1, p0, v3

    and-int/lit16 v1, v1, 0xff

    if-eqz v1, :cond_2

    :cond_1
    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x4d

    if-ne v1, v0, :cond_3

    aget-byte v0, p0, v7

    and-int/lit16 v0, v0, 0xff

    if-ne v1, v0, :cond_3

    aget-byte v0, p0, v4

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_3

    aget-byte p0, p0, v3

    and-int/lit16 p0, p0, 0xff

    if-ne v5, p0, :cond_3

    :cond_2
    move v2, v7

    :cond_3
    return v2
.end method

.method public static getFormatForMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/valuepair/ImageFormats;->imageMimeTypeToFormat:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getMimeTypeForBinarySignature([B)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/transsion/audiotagger/tag/id3/valuepair/ImageFormats;->binaryDataIsPngFormat([B)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "image/png"

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/transsion/audiotagger/tag/id3/valuepair/ImageFormats;->binaryDataIsJpgFormat([B)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "image/jpeg"

    return-object p0

    :cond_1
    invoke-static {p0}, Lcom/transsion/audiotagger/tag/id3/valuepair/ImageFormats;->binaryDataIsGifFormat([B)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "image/gif"

    return-object p0

    :cond_2
    invoke-static {p0}, Lcom/transsion/audiotagger/tag/id3/valuepair/ImageFormats;->binaryDataIsBmpFormat([B)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "image/bmp"

    return-object p0

    :cond_3
    invoke-static {p0}, Lcom/transsion/audiotagger/tag/id3/valuepair/ImageFormats;->binaryDataIsPdfFormat([B)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "image/pdf"

    return-object p0

    :cond_4
    invoke-static {p0}, Lcom/transsion/audiotagger/tag/id3/valuepair/ImageFormats;->binaryDataIsTiffFormat([B)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "image/tiff"

    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getMimeTypeForFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/valuepair/ImageFormats;->imageFormatsToMimeType:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static isPortableFormat([B)Z
    .locals 1

    invoke-static {p0}, Lcom/transsion/audiotagger/tag/id3/valuepair/ImageFormats;->binaryDataIsPngFormat([B)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/transsion/audiotagger/tag/id3/valuepair/ImageFormats;->binaryDataIsJpgFormat([B)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/transsion/audiotagger/tag/id3/valuepair/ImageFormats;->binaryDataIsGifFormat([B)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
