.class public Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;
.super Lcom/transsion/audiotagger/tag/id3/AbstractID3v1Tag;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audiotagger/tag/Tag;


# static fields
.field protected static final BYTE_TO_UNSIGNED:I = 0xff

.field protected static final FIELD_COMMENT_LENGTH:I = 0x1e

.field protected static final FIELD_COMMENT_POS:I = 0x61

.field protected static final GENRE_UNDEFINED:I = 0xff

.field private static final MAJOR_VERSION:B = 0x0t

.field private static final RELEASE:B = 0x1t

.field private static final REVISION:B = 0x0t

.field protected static final TYPE_COMMENT:Ljava/lang/String; = "comment"

.field static tagFieldToID3v1Field:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/transsion/audiotagger/tag/FieldKey;",
            "Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected album:Ljava/lang/String;

.field protected artist:Ljava/lang/String;

.field protected comment:Ljava/lang/String;

.field protected genre:B

.field protected title:Ljava/lang/String;

.field protected year:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/transsion/audiotagger/tag/FieldKey;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->tagFieldToID3v1Field:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ARTIST:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;->ARTIST:Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->tagFieldToID3v1Field:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->ALBUM:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;->ALBUM:Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->tagFieldToID3v1Field:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->TITLE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;->TITLE:Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->tagFieldToID3v1Field:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->TRACK:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;->TRACK:Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->tagFieldToID3v1Field:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->YEAR:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;->YEAR:Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->tagFieldToID3v1Field:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->GENRE:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;->GENRE:Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->tagFieldToID3v1Field:Ljava/util/EnumMap;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->COMMENT:Lcom/transsion/audiotagger/tag/FieldKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;->COMMENT:Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v1Tag;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    const/4 v0, -0x1

    .line 7
    iput-byte v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->genre:B

    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/tag/id3/AbstractTag;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v1Tag;-><init>()V

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    const/4 v0, -0x1

    .line 27
    iput-byte v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->genre:B

    if-eqz p1, :cond_2

    .line 28
    instance-of v0, p1, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;

    if-nez v0, :cond_1

    .line 29
    instance-of v0, p1, Lcom/transsion/audiotagger/tag/id3/ID3v11Tag;

    if-eqz v0, :cond_0

    .line 30
    check-cast p1, Lcom/transsion/audiotagger/tag/id3/ID3v11Tag;

    goto :goto_0

    .line 31
    :cond_0
    new-instance v0, Lcom/transsion/audiotagger/tag/id3/ID3v11Tag;

    invoke-direct {v0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v11Tag;-><init>(Lcom/transsion/audiotagger/tag/id3/AbstractTag;)V

    move-object p1, v0

    .line 32
    :goto_0
    iget-object v0, p1, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    .line 33
    iget-object v0, p1, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    .line 34
    iget-object v0, p1, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    .line 35
    iget-object v0, p1, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    .line 36
    iget-object v0, p1, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    .line 37
    iget-byte p1, p1, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->genre:B

    iput-byte p1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->genre:B

    goto :goto_1

    .line 38
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Copy Constructor not called. Please type cast the argument"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;)V
    .locals 1

    .line 8
    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v1Tag;-><init>(Lcom/transsion/audiotagger/tag/id3/AbstractID3v1Tag;)V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    const/4 v0, -0x1

    .line 14
    iput-byte v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->genre:B

    .line 15
    iget-object v0, p1, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    .line 16
    iget-object v0, p1, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    .line 17
    iget-object v0, p1, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    .line 18
    iget-object v0, p1, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    .line 19
    iget-object v0, p1, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    .line 20
    iget-byte p1, p1, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->genre:B

    iput-byte p1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->genre:B

    return-void
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/TagNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;-><init>(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/TagNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v1Tag;-><init>()V

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    const/4 v0, -0x1

    .line 45
    iput-byte v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->genre:B

    .line 46
    invoke-virtual {p0, p2}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->setLoggingFilename(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p2

    .line 48
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x80

    sub-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    const/16 p1, 0x80

    .line 49
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 50
    invoke-virtual {p2, p1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 51
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 52
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->read(Ljava/nio/ByteBuffer;)V

    return-void
.end method


# virtual methods
.method public varargs addField(Lcom/transsion/audiotagger/tag/FieldKey;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;,
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->setField(Lcom/transsion/audiotagger/tag/FieldKey;[Ljava/lang/String;)V

    return-void
.end method

.method public addField(Lcom/transsion/audiotagger/tag/TagField;)V
    .locals 0

    .line 1
    return-void
.end method

.method public addField(Lcom/transsion/audiotagger/tag/images/Artwork;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    .line 3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->GENERIC_NOT_SUPPORTED:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createCompilationField(Z)Lcom/transsion/audiotagger/tag/TagField;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;,
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->GENERIC_NOT_SUPPORTED:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public varargs createField(Lcom/transsion/audiotagger/tag/FieldKey;[Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;
    .locals 0

    const/4 p0, 0x0

    .line 1
    aget-object p0, p2, p0

    if-eqz p1, :cond_1

    .line 2
    sget-object p2, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->tagFieldToID3v1Field:Ljava/util/EnumMap;

    invoke-virtual {p2, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;

    if-eqz p2, :cond_0

    .line 3
    new-instance p1, Lcom/transsion/audiotagger/tag/id3/ID3v1TagField;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/transsion/audiotagger/tag/id3/ID3v1TagField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 4
    :cond_0
    new-instance p0, Lcom/transsion/audiotagger/tag/KeyNotFoundException;

    sget-object p2, Lcom/transsion/audiotagger/logging/ErrorMessage;->INVALID_FIELD_FOR_ID3V1TAG:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/KeyNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createField(Lcom/transsion/audiotagger/tag/images/Artwork;)Lcom/transsion/audiotagger/tag/TagField;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    .line 6
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->GENERIC_NOT_SUPPORTED:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createStructure()V
    .locals 4

    invoke-static {}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getStructureFormatter()Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tag"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;->openHeadingElement(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getStructureFormatter()Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "title"

    iget-object v3, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getStructureFormatter()Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "artist"

    iget-object v3, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getStructureFormatter()Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "album"

    iget-object v3, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getStructureFormatter()Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "year"

    iget-object v3, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getStructureFormatter()Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "comment"

    iget-object v3, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getStructureFormatter()Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "genre"

    iget-byte p0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->genre:B

    invoke-virtual {v0, v1, p0}, Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    invoke-static {}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getStructureFormatter()Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;->closeHeadingElement(Ljava/lang/String;)V

    return-void
.end method

.method public deleteArtworkField()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    sget-object v0, Lcom/transsion/audiotagger/logging/ErrorMessage;->GENERIC_NOT_SUPPORTED:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public deleteField(Lcom/transsion/audiotagger/tag/FieldKey;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag$1;->$SwitchMap$com$transsion$audiotagger$tag$FieldKey:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const-string v0, ""

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->setComment(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->setYear(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :pswitch_2
    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->setGenre(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :pswitch_3
    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :pswitch_4
    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->setAlbum(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :pswitch_5
    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->setArtist(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public deleteField(Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-static {p1}, Lcom/transsion/audiotagger/tag/FieldKey;->valueOf(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/FieldKey;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->deleteField(Lcom/transsion/audiotagger/tag/FieldKey;)V

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;

    iget-object v2, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    iget-object v3, v0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    iget-object v3, v0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    iget-object v3, v0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-byte v2, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->genre:B

    iget-byte v3, v0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->genre:B

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    iget-object v3, v0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    iget-object v0, v0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-super {p0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTag;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const/4 v1, 0x1

    :cond_6
    return v1
.end method

.method public getAlbum()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/tag/TagField;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->getFirstAlbum()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lcom/transsion/audiotagger/tag/id3/ID3v1TagField;

    sget-object v1, Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;->ALBUM:Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->getFirstAlbum()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/transsion/audiotagger/tag/id3/ID3v1TagField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->returnFieldToList(Lcom/transsion/audiotagger/tag/id3/ID3v1TagField;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getAll(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/audiotagger/tag/FieldKey;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getArtist()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/tag/TagField;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->getFirstArtist()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lcom/transsion/audiotagger/tag/id3/ID3v1TagField;

    sget-object v1, Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;->ARTIST:Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->getFirstArtist()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/transsion/audiotagger/tag/id3/ID3v1TagField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->returnFieldToList(Lcom/transsion/audiotagger/tag/id3/ID3v1TagField;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getArtworkList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/tag/images/Artwork;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getComment()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/tag/TagField;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->getFirstComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lcom/transsion/audiotagger/tag/id3/ID3v1TagField;

    sget-object v1, Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;->COMMENT:Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->getFirstComment()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/transsion/audiotagger/tag/id3/ID3v1TagField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->returnFieldToList(Lcom/transsion/audiotagger/tag/id3/ID3v1TagField;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getEncoding()Ljava/nio/charset/Charset;
    .locals 0

    sget-object p0, Lcom/transsion/audiotagger/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method public getFieldCount()I
    .locals 0

    const/4 p0, 0x6

    return p0
.end method

.method public getFieldCountIncludingSubValues()I
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->getFieldCount()I

    move-result p0

    return p0
.end method

.method public getFields()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/transsion/audiotagger/tag/TagField;",
            ">;"
        }
    .end annotation

    .line 14
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "TODO:Not done yet"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getFields(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/audiotagger/tag/FieldKey;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/tag/TagField;",
            ">;"
        }
    .end annotation

    .line 15
    sget-object v0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag$1;->$SwitchMap$com$transsion$audiotagger$tag$FieldKey:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 16
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 17
    :pswitch_0
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->getComment()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 18
    :pswitch_1
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->getYear()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 19
    :pswitch_2
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->getGenre()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 20
    :pswitch_3
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->getTitle()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 21
    :pswitch_4
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->getAlbum()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 22
    :pswitch_5
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->getArtist()Ljava/util/List;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getFields(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/tag/TagField;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->ARTIST:Lcom/transsion/audiotagger/tag/FieldKey;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->getArtist()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->ALBUM:Lcom/transsion/audiotagger/tag/FieldKey;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->getAlbum()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->TITLE:Lcom/transsion/audiotagger/tag/FieldKey;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->getTitle()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 7
    :cond_2
    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->GENRE:Lcom/transsion/audiotagger/tag/FieldKey;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->getGenre()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 9
    :cond_3
    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->YEAR:Lcom/transsion/audiotagger/tag/FieldKey;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->getYear()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 11
    :cond_4
    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->COMMENT:Lcom/transsion/audiotagger/tag/FieldKey;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 12
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->getComment()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 13
    :cond_5
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getFirst(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/lang/String;
    .locals 1

    .line 4
    sget-object v0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag$1;->$SwitchMap$com$transsion$audiotagger$tag$FieldKey:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 5
    const-string p0, ""

    return-object p0

    .line 6
    :pswitch_0
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->getFirstComment()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7
    :pswitch_1
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->getFirstYear()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 8
    :pswitch_2
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->getFirstGenre()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 9
    :pswitch_3
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->getFirstTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 10
    :pswitch_4
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->getFirstAlbum()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 11
    :pswitch_5
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->getFirstArtist()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getFirst(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/transsion/audiotagger/tag/FieldKey;->valueOf(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/FieldKey;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->getFirst(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public getFirstAlbum()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    return-object p0
.end method

.method public getFirstArtist()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    return-object p0
.end method

.method public getFirstArtwork()Lcom/transsion/audiotagger/tag/images/Artwork;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFirstComment()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    return-object p0
.end method

.method public getFirstField(Lcom/transsion/audiotagger/tag/FieldKey;)Lcom/transsion/audiotagger/tag/TagField;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->getFields(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/util/List;

    move-result-object p0

    .line 16
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/TagField;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getFirstField(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->ARTIST:Lcom/transsion/audiotagger/tag/FieldKey;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->getArtist()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->ALBUM:Lcom/transsion/audiotagger/tag/FieldKey;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->getAlbum()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->TITLE:Lcom/transsion/audiotagger/tag/FieldKey;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->getTitle()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    .line 7
    :cond_2
    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->GENRE:Lcom/transsion/audiotagger/tag/FieldKey;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->getGenre()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    .line 9
    :cond_3
    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->YEAR:Lcom/transsion/audiotagger/tag/FieldKey;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->getYear()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    .line 11
    :cond_4
    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->COMMENT:Lcom/transsion/audiotagger/tag/FieldKey;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 12
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->getComment()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_5
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_6

    .line 13
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_6

    const/4 p1, 0x0

    .line 14
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/TagField;

    return-object p0

    :cond_6
    return-object v1
.end method

.method public getFirstGenre()Ljava/lang/String;
    .locals 1

    iget-byte p0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->genre:B

    and-int/lit16 p0, p0, 0xff

    invoke-static {}, Lcom/transsion/audiotagger/tag/reference/GenreTypes;->getInstanceOf()Lcom/transsion/audiotagger/tag/reference/GenreTypes;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/audiotagger/tag/datatype/AbstractIntStringValuePair;->getValueForId(I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public getFirstTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    return-object p0
.end method

.method public getFirstTrack()Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "ID3v10 cannot store track numbers"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getFirstYear()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    return-object p0
.end method

.method public getGenre()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/tag/TagField;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->GENRE:Lcom/transsion/audiotagger/tag/FieldKey;

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->getFirst(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Lcom/transsion/audiotagger/tag/id3/ID3v1TagField;

    sget-object v2, Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;->GENRE:Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->getFirst(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/transsion/audiotagger/tag/id3/ID3v1TagField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->returnFieldToList(Lcom/transsion/audiotagger/tag/id3/ID3v1TagField;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getMajorVersion()B
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getRelease()B
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getRevision()B
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSubValue(Lcom/transsion/audiotagger/tag/FieldKey;II)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->getValue(Lcom/transsion/audiotagger/tag/FieldKey;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/tag/TagField;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->TITLE:Lcom/transsion/audiotagger/tag/FieldKey;

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->getFirst(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Lcom/transsion/audiotagger/tag/id3/ID3v1TagField;

    sget-object v2, Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;->TITLE:Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->getFirst(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/transsion/audiotagger/tag/id3/ID3v1TagField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->returnFieldToList(Lcom/transsion/audiotagger/tag/id3/ID3v1TagField;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getTrack()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/tag/TagField;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "ID3v10 cannot store track numbers"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getValue(Lcom/transsion/audiotagger/tag/FieldKey;I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->getFirst(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getYear()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/tag/TagField;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->YEAR:Lcom/transsion/audiotagger/tag/FieldKey;

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->getFirst(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Lcom/transsion/audiotagger/tag/id3/ID3v1TagField;

    sget-object v2, Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;->YEAR:Lcom/transsion/audiotagger/tag/id3/ID3v1FieldKey;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->getFirst(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/transsion/audiotagger/tag/id3/ID3v1TagField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->returnFieldToList(Lcom/transsion/audiotagger/tag/id3/ID3v1TagField;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public hasCommonFields()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public hasField(Lcom/transsion/audiotagger/tag/FieldKey;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->getFirst(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasField(Ljava/lang/String;)Z
    .locals 0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/audiotagger/tag/FieldKey;->valueOf(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/FieldKey;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->hasField(Lcom/transsion/audiotagger/tag/FieldKey;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public isEmpty()Z
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->TITLE:Lcom/transsion/audiotagger/tag/FieldKey;

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->getFirst(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->getFirstArtist()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->getFirstAlbum()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->GENRE:Lcom/transsion/audiotagger/tag/FieldKey;

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->getFirst(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->YEAR:Lcom/transsion/audiotagger/tag/FieldKey;

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->getFirst(Lcom/transsion/audiotagger/tag/FieldKey;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->getFirstComment()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/transsion/audiotagger/tag/id3/ID3v1Iterator;

    invoke-direct {v0, p0}, Lcom/transsion/audiotagger/tag/id3/ID3v1Iterator;-><init>(Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;)V

    return-object v0
.end method

.method public read(Ljava/nio/ByteBuffer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/TagNotFoundException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->seek(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v1Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":Reading v1 tag"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    const/16 v0, 0x80

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    new-instance p1, Ljava/lang/String;

    sget-object v0, Lcom/transsion/audiotagger/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    const/4 v3, 0x3

    const/16 v4, 0x1e

    invoke-direct {p1, v1, v3, v4, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    sget-object v3, Lcom/transsion/audiotagger/tag/id3/AbstractID3v1Tag;->endofStringPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    move-result p1

    invoke-virtual {v3, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    :cond_0
    new-instance p1, Ljava/lang/String;

    const/16 v3, 0x21

    invoke-direct {p1, v1, v3, v4, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    sget-object v3, Lcom/transsion/audiotagger/tag/id3/AbstractID3v1Tag;->endofStringPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    move-result p1

    invoke-virtual {v3, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    :cond_1
    new-instance p1, Ljava/lang/String;

    const/16 v3, 0x3f

    invoke-direct {p1, v1, v3, v4, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    sget-object v3, Lcom/transsion/audiotagger/tag/id3/AbstractID3v1Tag;->endofStringPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    sget-object v3, Lcom/transsion/audiotagger/tag/id3/AbstractID3v1Tag;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":Orig Album is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    move-result p1

    invoke-virtual {v3, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    sget-object p1, Lcom/transsion/audiotagger/tag/id3/AbstractID3v1Tag;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":Album is:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    :cond_2
    new-instance p1, Ljava/lang/String;

    const/16 v3, 0x5d

    const/4 v5, 0x4

    invoke-direct {p1, v1, v3, v5, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    sget-object v3, Lcom/transsion/audiotagger/tag/id3/AbstractID3v1Tag;->endofStringPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    move-result p1

    invoke-virtual {v3, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    :cond_3
    new-instance p1, Ljava/lang/String;

    const/16 v3, 0x61

    invoke-direct {p1, v1, v3, v4, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v1Tag;->endofStringPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v1Tag;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":Orig Comment is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    move-result p1

    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    sget-object p1, Lcom/transsion/audiotagger/tag/id3/AbstractID3v1Tag;->logger:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":Comment is:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    :cond_4
    const/16 p1, 0x7f

    aget-byte p1, v1, p1

    iput-byte p1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->genre:B

    return-void

    :cond_5
    new-instance p1, Lcom/transsion/audiotagger/tag/TagNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":ID3v1 tag not found"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/transsion/audiotagger/tag/TagNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public returnFieldToList(Lcom/transsion/audiotagger/tag/id3/ID3v1TagField;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/audiotagger/tag/id3/ID3v1TagField;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/audiotagger/tag/TagField;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public seek(Ljava/nio/ByteBuffer;)Z
    .locals 2

    const/4 p0, 0x3

    new-array v0, p0, [B

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    sget-object p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v1Tag;->TAG_ID:[B

    invoke-static {v0, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method public setAlbum(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const/16 v0, 0x1e

    invoke-static {p1, v0}, Lcom/transsion/audiotagger/tag/id3/ID3Tags;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const/16 v0, 0x1e

    invoke-static {p1, v0}, Lcom/transsion/audiotagger/tag/id3/ID3Tags;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const/16 v0, 0x1e

    invoke-static {p1, v0}, Lcom/transsion/audiotagger/tag/id3/ID3Tags;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setEncoding(Ljava/nio/charset/Charset;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public varargs setField(Lcom/transsion/audiotagger/tag/FieldKey;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/KeyNotFoundException;,
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->createField(Lcom/transsion/audiotagger/tag/FieldKey;[Ljava/lang/String;)Lcom/transsion/audiotagger/tag/TagField;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->setField(Lcom/transsion/audiotagger/tag/TagField;)V

    return-void
.end method

.method public setField(Lcom/transsion/audiotagger/tag/TagField;)V
    .locals 2

    .line 3
    invoke-interface {p1}, Lcom/transsion/audiotagger/tag/TagField;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/audiotagger/tag/FieldKey;->valueOf(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/FieldKey;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag$1;->$SwitchMap$com$transsion$audiotagger$tag$FieldKey:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 5
    :pswitch_0
    invoke-interface {p1}, Lcom/transsion/audiotagger/tag/TagField;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->setComment(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :pswitch_1
    invoke-interface {p1}, Lcom/transsion/audiotagger/tag/TagField;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->setYear(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :pswitch_2
    invoke-interface {p1}, Lcom/transsion/audiotagger/tag/TagField;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->setGenre(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :pswitch_3
    invoke-interface {p1}, Lcom/transsion/audiotagger/tag/TagField;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :pswitch_4
    invoke-interface {p1}, Lcom/transsion/audiotagger/tag/TagField;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->setAlbum(Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :pswitch_5
    invoke-interface {p1}, Lcom/transsion/audiotagger/tag/TagField;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->setArtist(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setField(Lcom/transsion/audiotagger/tag/images/Artwork;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    .line 11
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->GENERIC_NOT_SUPPORTED:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setGenre(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/transsion/audiotagger/tag/reference/GenreTypes;->getInstanceOf()Lcom/transsion/audiotagger/tag/reference/GenreTypes;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/audiotagger/tag/datatype/AbstractIntStringValuePair;->getIdForValue(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->byteValue()B

    move-result p1

    iput-byte p1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->genre:B

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    iput-byte p1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->genre:B

    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const/16 v0, 0x1e

    invoke-static {p1, v0}, Lcom/transsion/audiotagger/tag/id3/ID3Tags;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object p1, Lcom/transsion/audiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lcom/transsion/audiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setYear(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/transsion/audiotagger/tag/id3/ID3Tags;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    return-void
.end method

.method public write(Ljava/io/RandomAccessFile;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v1Tag;->logger:Ljava/util/logging/Logger;

    const-string v1, "Saving ID3v1 tag to file"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    const/16 v0, 0x80

    new-array v0, v0, [B

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v1Tag;->delete(Ljava/io/RandomAccessFile;)V

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    sget-object v1, Lcom/transsion/audiotagger/tag/id3/AbstractID3v1Tag;->TAG_ID:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getInstance()Lcom/transsion/audiotagger/tag/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->isId3v1SaveTitle()Z

    move-result v1

    const/16 v2, 0x1e

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/transsion/audiotagger/tag/id3/ID3Tags;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    move v4, v3

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    add-int/lit8 v5, v4, 0x3

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getInstance()Lcom/transsion/audiotagger/tag/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->isId3v1SaveArtist()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/transsion/audiotagger/tag/id3/ID3Tags;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    move v4, v3

    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    add-int/lit8 v5, v4, 0x21

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getInstance()Lcom/transsion/audiotagger/tag/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->isId3v1SaveAlbum()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/transsion/audiotagger/tag/id3/ID3Tags;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    move v4, v3

    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    add-int/lit8 v5, v4, 0x3f

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getInstance()Lcom/transsion/audiotagger/tag/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->isId3v1SaveYear()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    const/4 v4, 0x4

    invoke-static {v1, v4}, Lcom/transsion/audiotagger/tag/id3/ID3Tags;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    move v4, v3

    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_3

    add-int/lit8 v5, v4, 0x5d

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    invoke-static {}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getInstance()Lcom/transsion/audiotagger/tag/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->isId3v1SaveComment()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/transsion/audiotagger/tag/id3/ID3Tags;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v3, v2, :cond_4

    add-int/lit8 v2, v3, 0x61

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    invoke-static {}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getInstance()Lcom/transsion/audiotagger/tag/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->isId3v1SaveGenre()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-byte p0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v1Tag;->genre:B

    const/16 v1, 0x7f

    aput-byte p0, v0, v1

    :cond_5
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    sget-object p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v1Tag;->logger:Ljava/util/logging/Logger;

    const-string p1, "Saved ID3v1 tag to file"

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    return-void
.end method
