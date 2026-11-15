.class public Lcom/transsion/audiotagger/audio/asf/io/ContentDescriptionReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audiotagger/audio/asf/io/ChunkReader;


# static fields
.field private static final APPLYING:[Lcom/transsion/audiotagger/audio/asf/data/GUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/audio/asf/data/GUID;->GUID_CONTENTDESCRIPTION:Lcom/transsion/audiotagger/audio/asf/data/GUID;

    filled-new-array {v0}, [Lcom/transsion/audiotagger/audio/asf/data/GUID;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/audio/asf/io/ContentDescriptionReader;->APPLYING:[Lcom/transsion/audiotagger/audio/asf/data/GUID;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getStringSizes(Ljava/io/InputStream;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x5

    new-array v0, p0, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    invoke-static {p1}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public canFail()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getApplyingIds()[Lcom/transsion/audiotagger/audio/asf/data/GUID;
    .locals 0

    sget-object p0, Lcom/transsion/audiotagger/audio/asf/io/ContentDescriptionReader;->APPLYING:[Lcom/transsion/audiotagger/audio/asf/data/GUID;

    invoke-virtual {p0}, [Lcom/transsion/audiotagger/audio/asf/data/GUID;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/transsion/audiotagger/audio/asf/data/GUID;

    return-object p0
.end method

.method public read(Lcom/transsion/audiotagger/audio/asf/data/GUID;Ljava/io/InputStream;J)Lcom/transsion/audiotagger/audio/asf/data/Chunk;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readBig64(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/transsion/audiotagger/audio/asf/io/ContentDescriptionReader;->getStringSizes(Ljava/io/InputStream;)[I

    move-result-object p0

    array-length v0, p0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    aget v4, p0, v3

    if-lez v4, :cond_0

    invoke-static {p2, v4}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->readFixedSizeUTF16Str(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance p2, Lcom/transsion/audiotagger/audio/asf/data/ContentDescription;

    invoke-direct {p2, p3, p4, p1}, Lcom/transsion/audiotagger/audio/asf/data/ContentDescription;-><init>(JLjava/math/BigInteger;)V

    aget p1, p0, v2

    if-lez p1, :cond_2

    aget-object p1, v1, v2

    invoke-virtual {p2, p1}, Lcom/transsion/audiotagger/audio/asf/data/ContentDescription;->setTitle(Ljava/lang/String;)V

    :cond_2
    const/4 p1, 0x1

    aget p3, p0, p1

    if-lez p3, :cond_3

    aget-object p1, v1, p1

    invoke-virtual {p2, p1}, Lcom/transsion/audiotagger/audio/asf/data/ContentDescription;->setAuthor(Ljava/lang/String;)V

    :cond_3
    const/4 p1, 0x2

    aget p3, p0, p1

    if-lez p3, :cond_4

    aget-object p1, v1, p1

    invoke-virtual {p2, p1}, Lcom/transsion/audiotagger/audio/asf/data/ContentDescription;->setCopyright(Ljava/lang/String;)V

    :cond_4
    const/4 p1, 0x3

    aget p3, p0, p1

    if-lez p3, :cond_5

    aget-object p1, v1, p1

    invoke-virtual {p2, p1}, Lcom/transsion/audiotagger/audio/asf/data/ContentDescription;->setComment(Ljava/lang/String;)V

    :cond_5
    const/4 p1, 0x4

    aget p0, p0, p1

    if-lez p0, :cond_6

    aget-object p0, v1, p1

    invoke-virtual {p2, p0}, Lcom/transsion/audiotagger/audio/asf/data/ContentDescription;->setRating(Ljava/lang/String;)V

    :cond_6
    return-object p2
.end method
