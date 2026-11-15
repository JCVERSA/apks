.class public Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;
.super Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/audiotagger/tag/id3/ID3v24Frame$StatusFlags;,
        Lcom/transsion/audiotagger/tag/id3/ID3v24Frame$EncodingFlags;
    }
.end annotation


# static fields
.field protected static final FRAME_DATA_LENGTH_SIZE:I = 0x4

.field protected static final FRAME_ENCRYPTION_INDICATOR_SIZE:I = 0x1

.field protected static final FRAME_FLAGS_SIZE:I = 0x2

.field protected static final FRAME_GROUPING_INDICATOR_SIZE:I = 0x1

.field protected static final FRAME_HEADER_SIZE:I = 0xa

.field protected static final FRAME_ID_SIZE:I = 0x4

.field protected static final FRAME_SIZE_SIZE:I = 0x4

.field private static validFrameIdentifier:Ljava/util/regex/Pattern;


# instance fields
.field private encryptionMethod:I

.field private groupIdentifier:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[A-Z][0-9A-Z]{3}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;->validFrameIdentifier:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/InvalidFrameException;
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;-><init>()V

    .line 13
    instance-of v0, p1, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;

    if-nez v0, :cond_4

    .line 14
    instance-of v0, p1, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;

    if-eqz v0, :cond_0

    .line 15
    new-instance v1, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame$StatusFlags;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getStatusFlags()Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    move-result-object v2

    check-cast v2, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$StatusFlags;

    invoke-direct {v1, p0, v2}, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame$StatusFlags;-><init>(Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$StatusFlags;)V

    iput-object v1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->statusFlags:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    .line 16
    new-instance v1, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame$EncodingFlags;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getEncodingFlags()Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->getFlags()B

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame$EncodingFlags;-><init>(Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;B)V

    iput-object v1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    goto :goto_0

    .line 17
    :cond_0
    instance-of v1, p1, Lcom/transsion/audiotagger/tag/id3/ID3v22Frame;

    if-eqz v1, :cond_1

    .line 18
    new-instance v1, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame$StatusFlags;

    invoke-direct {v1, p0}, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame$StatusFlags;-><init>(Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;)V

    iput-object v1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->statusFlags:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    .line 19
    new-instance v1, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame$EncodingFlags;

    invoke-direct {v1, p0}, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame$EncodingFlags;-><init>(Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;)V

    iput-object v1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 20
    check-cast p1, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;->createV24FrameFromV23Frame(Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;)V

    goto :goto_1

    .line 21
    :cond_2
    instance-of v0, p1, Lcom/transsion/audiotagger/tag/id3/ID3v22Frame;

    if-eqz v0, :cond_3

    .line 22
    new-instance v0, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;

    invoke-direct {v0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;-><init>(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;)V

    .line 23
    invoke-direct {p0, v0}, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;->createV24FrameFromV23Frame(Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;)V

    .line 24
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    invoke-virtual {p1, p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;)V

    return-void

    .line 25
    :cond_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Copy Constructor not called. Please type cast the argument"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/InvalidFrameException;
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;-><init>()V

    .line 9
    iput-object p2, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 10
    new-instance p2, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame$StatusFlags;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;->getStatusFlags()Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    move-result-object v0

    check-cast v0, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$StatusFlags;

    invoke-direct {p2, p0, v0}, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame$StatusFlags;-><init>(Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;Lcom/transsion/audiotagger/tag/id3/ID3v23Frame$StatusFlags;)V

    iput-object p2, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->statusFlags:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    .line 11
    new-instance p2, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame$EncodingFlags;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;->getEncodingFlags()Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->getFlags()B

    move-result p1

    invoke-direct {p2, p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame$EncodingFlags;-><init>(Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;B)V

    iput-object p2, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;)V
    .locals 2

    .line 5
    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;-><init>(Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;)V

    .line 6
    new-instance v0, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame$StatusFlags;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;->getStatusFlags()Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;->getOriginalFlags()B

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame$StatusFlags;-><init>(Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;B)V

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->statusFlags:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    .line 7
    new-instance v0, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame$EncodingFlags;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;->getEncodingFlags()Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->getFlags()B

    move-result p1

    invoke-direct {v0, p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame$EncodingFlags;-><init>(Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;B)V

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2Field;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/InvalidTagException;
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;-><init>()V

    .line 27
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/lyrics3/Lyrics3v2Field;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 28
    const-string v1, "IND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 29
    const-string v1, "LYR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "ENG"

    const-string v3, ""

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 30
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyLYR;

    .line 31
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyLYR;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 32
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyLYR;->hasTimeStamp()Z

    move-result p1

    .line 33
    new-instance v1, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodySYLT;

    const-string v10, ""

    new-array v11, v4, [B

    const/4 v6, 0x0

    const-string v7, "ENG"

    const/4 v8, 0x2

    const/4 v9, 0x1

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodySYLT;-><init>(ILjava/lang/String;IILjava/lang/String;[B)V

    .line 34
    new-instance v5, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyUSLT;

    invoke-direct {v5, v4, v2, v3, v3}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyUSLT;-><init>(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/audiotagger/tag/datatype/Lyrics3Line;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v5, v2}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyUSLT;->addLyric(Lcom/transsion/audiotagger/tag/datatype/Lyrics3Line;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 38
    iput-object v1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    .line 39
    invoke-virtual {v1, p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;)V

    goto/16 :goto_1

    .line 40
    :cond_2
    iput-object v5, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    .line 41
    invoke-virtual {v5, p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;)V

    goto/16 :goto_1

    .line 42
    :cond_3
    const-string v1, "INF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 43
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyINF;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyINF;->getAdditionalInformation()Ljava/lang/String;

    move-result-object p1

    .line 44
    new-instance v0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyCOMM;

    invoke-direct {v0, v4, v2, v3, p1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyCOMM;-><init>(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    .line 45
    invoke-virtual {v0, p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;)V

    goto/16 :goto_1

    .line 46
    :cond_4
    const-string v1, "AUT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 47
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyAUT;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyAUT;->getAuthor()Ljava/lang/String;

    move-result-object p1

    .line 48
    new-instance v0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTCOM;

    invoke-direct {v0, v4, p1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTCOM;-><init>(BLjava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    .line 49
    invoke-virtual {v0, p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;)V

    goto :goto_1

    .line 50
    :cond_5
    const-string v1, "EAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 51
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyEAL;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyEAL;->getAlbum()Ljava/lang/String;

    move-result-object p1

    .line 52
    new-instance v0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTALB;

    invoke-direct {v0, v4, p1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTALB;-><init>(BLjava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    .line 53
    invoke-virtual {v0, p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;)V

    goto :goto_1

    .line 54
    :cond_6
    const-string v1, "EAR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 55
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyEAR;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyEAR;->getArtist()Ljava/lang/String;

    move-result-object p1

    .line 56
    new-instance v0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTPE1;

    invoke-direct {v0, v4, p1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTPE1;-><init>(BLjava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    .line 57
    invoke-virtual {v0, p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;)V

    goto :goto_1

    .line 58
    :cond_7
    const-string v1, "ETT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 59
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyETT;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/lyrics3/FieldFrameBodyETT;->getTitle()Ljava/lang/String;

    move-result-object p1

    .line 60
    new-instance v0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTIT2;

    invoke-direct {v0, v4, p1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTIT2;-><init>(BLjava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    .line 61
    invoke-virtual {v0, p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;)V

    :goto_1
    return-void

    .line 62
    :cond_8
    const-string p0, "IMG"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 63
    new-instance p0, Lcom/transsion/audiotagger/tag/InvalidTagException;

    const-string p1, "Cannot create ID3v2.40 frame from Lyrics3 image field."

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/InvalidTagException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 64
    :cond_9
    new-instance p0, Lcom/transsion/audiotagger/tag/InvalidTagException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot caret ID3v2.40 frame from "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Lyrics3 field"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/InvalidTagException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 65
    :cond_a
    new-instance p0, Lcom/transsion/audiotagger/tag/InvalidTagException;

    const-string p1, "Cannot create ID3v2.40 frame from Lyrics3 indications field."

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/InvalidTagException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance p1, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame$StatusFlags;

    invoke-direct {p1, p0}, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame$StatusFlags;-><init>(Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;)V

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->statusFlags:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    .line 4
    new-instance p1, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame$EncodingFlags;

    invoke-direct {p1, p0}, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame$EncodingFlags;-><init>(Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;)V

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/InvalidFrameException;,
            Lcom/transsion/audiotagger/tag/InvalidDataTypeException;
        }
    .end annotation

    .line 69
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/InvalidFrameException;,
            Lcom/transsion/audiotagger/tag/InvalidDataTypeException;
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;-><init>()V

    .line 67
    invoke-virtual {p0, p2}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->setLoggingFilename(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;->read(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private checkIfFrameSizeThatIsNotSyncSafe(Ljava/nio/ByteBuffer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/InvalidFrameException;
        }
    .end annotation

    iget v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->frameSize:I

    const/16 v1, 0x7f

    if-le v0, v1, :cond_8

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;->getFrameIdSize()I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;->getFrameIdSize()I

    move-result v2

    sub-int v2, v0, v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static {p1}, Lcom/transsion/audiotagger/tag/id3/ID3SyncSafeInteger;->isBufferNotSyncSafe(Ljava/nio/ByteBuffer;)Z

    move-result v2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    if-eqz v2, :cond_1

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":Frame size is NOT stored as a sync safe integer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result p1

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;->getFrameFlagsSize()I

    move-result v0

    neg-int v0, v0

    sub-int/2addr p1, v0

    if-gt v1, p1, :cond_0

    iput v1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->frameSize:I

    goto/16 :goto_0

    :cond_0
    sget-object p1, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":Invalid Frame size larger than size before mp3 audio:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    new-instance p1, Lcom/transsion/audiotagger/tag/InvalidFrameException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is invalid frame"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/transsion/audiotagger/tag/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;->getFrameIdSize()I

    move-result v2

    new-array v2, v2, [B

    iget v3, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->frameSize:I

    add-int/2addr v3, v0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;->getFrameFlagsSize()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;->getFrameIdSize()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;->getFrameIdSize()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, v3}, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;->isValidID3v2FrameIdentifier(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_0

    :cond_3
    invoke-static {v2}, Lcom/transsion/audiotagger/tag/id3/ID3SyncSafeInteger;->isBufferEmpty([B)Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;->getFrameFlagsSize()I

    move-result v3

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_5

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;->getFrameIdSize()I

    move-result v2

    new-array v2, v2, [B

    add-int v3, v0, v1

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;->getFrameFlagsSize()I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;->getFrameIdSize()I

    move-result v5

    if-lt v3, v5, :cond_7

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;->getFrameIdSize()I

    move-result v3

    invoke-virtual {p1, v2, v4, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0, v3}, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;->isValidID3v2FrameIdentifier(Ljava/lang/String;)Z

    move-result p1

    const-string v0, ":Assuming frame size is NOT stored as a sync safe integer:"

    if-eqz p1, :cond_6

    iput v1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->frameSize:I

    sget-object p1, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    invoke-static {v2}, Lcom/transsion/audiotagger/tag/id3/ID3SyncSafeInteger;->isBufferEmpty([B)Z

    move-result p1

    if-eqz p1, :cond_8

    iput v1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->frameSize:I

    sget-object p1, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result p1

    if-nez p1, :cond_8

    iput v1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->frameSize:I

    :cond_8
    :goto_0
    return-void
.end method

.method private createV24FrameFromV23Frame(Lcom/transsion/audiotagger/tag/id3/ID3v23Frame;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/InvalidFrameException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/audiotagger/tag/id3/ID3Tags;->convertFrameID23To24(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating V24frame from v23:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    instance-of v0, v0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyUnsupported;

    const-string v1, ":New id is:"

    if-eqz v0, :cond_0

    new-instance v0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyUnsupported;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v2

    check-cast v2, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyUnsupported;

    invoke-direct {v0, v2}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyUnsupported;-><init>(Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyUnsupported;)V

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v0, p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;)V

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "V3:UnsupportedBody:Orig id is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    const-string v2, "V3:Orig id is:"

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    const-string v3, "TXXX"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTXXX;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTXXX;->getDescription()Ljava/lang/String;

    move-result-object v0

    const-string v3, "MOOD"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTMOO;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTXXX;

    invoke-direct {v0, p1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTMOO;-><init>(Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyTXXX;)V

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v0, p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;)V

    iget-object p1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1
    sget-object v0, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/audiotagger/tag/id3/ID3Tags;->copyObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    invoke-virtual {p1, p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/audiotagger/tag/id3/ID3Tags;->isID3v23FrameIdentifier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/audiotagger/tag/id3/ID3Tags;->forceFrameID23To24(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;

    invoke-virtual {p0, v0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->readBody(Ljava/lang/String;Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;)Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    invoke-virtual {p1, p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyDeprecated;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v2

    check-cast v2, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;

    invoke-direct {v0, v2}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyDeprecated;-><init>(Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;)V

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v0, p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;)V

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "V3:Deprecated:Orig id is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyUnsupported;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v2

    check-cast v2, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyUnsupported;

    invoke-direct {v0, v2}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyUnsupported;-><init>(Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyUnsupported;)V

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v0, p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setHeader(Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;)V

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "V3:Unknown:Orig id is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private getFrameSize(Ljava/nio/ByteBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/InvalidFrameException;
        }
    .end annotation

    invoke-static {p1}, Lcom/transsion/audiotagger/tag/id3/ID3SyncSafeInteger;->bufferToValue(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->frameSize:I

    const-string v1, " is invalid frame"

    if-ltz v0, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    if-gt v0, v2, :cond_0

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;->checkIfFrameSizeThatIsNotSyncSafe(Ljava/nio/ByteBuffer;)V

    return-void

    :cond_0
    sget-object p1, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":Invalid Frame size larger than size before mp3 audio:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    new-instance p1, Lcom/transsion/audiotagger/tag/InvalidFrameException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/transsion/audiotagger/tag/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    sget-object v0, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":Empty Frame:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    new-instance p1, Lcom/transsion/audiotagger/tag/EmptyFrameException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is empty frame"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/transsion/audiotagger/tag/EmptyFrameException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    sget-object p1, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":Invalid Frame size:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    new-instance p1, Lcom/transsion/audiotagger/tag/InvalidFrameException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/transsion/audiotagger/tag/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public createStructure()V
    .locals 4

    invoke-static {}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getStructureFormatter()Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    const-string v2, "frame"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;->openHeadingElement(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getStructureFormatter()Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "frameSize"

    iget v3, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->frameSize:I

    invoke-virtual {v0, v1, v3}, Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->statusFlags:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;->createStructure()V

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->createStructure()V

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->createStructure()V

    invoke-static {}, Lcom/transsion/audiotagger/audio/mp3/MP3File;->getStructureFormatter()Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/transsion/audiotagger/logging/AbstractTagDisplayFormatter;->closeHeadingElement(Ljava/lang/String;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;

    iget-object v1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->statusFlags:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    iget-object v3, p1, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->statusFlags:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    invoke-static {v1, v3}, Lcom/transsion/audiotagger/utils/EqualsUtil;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    iget-object v3, p1, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    invoke-static {v1, v3}, Lcom/transsion/audiotagger/utils/EqualsUtil;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-super {p0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getEncodingFlags()Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    return-object p0
.end method

.method public getEncryptionMethod()I
    .locals 0

    iget p0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;->encryptionMethod:I

    return p0
.end method

.method public getFrameFlagsSize()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getFrameHeaderSize()I
    .locals 0

    const/16 p0, 0xa

    return p0
.end method

.method public getFrameIdSize()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public getFrameSizeSize()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public getGroupIdentifier()I
    .locals 0

    iget p0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;->groupIdentifier:I

    return p0
.end method

.method public getSize()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->getSize()I

    move-result p0

    add-int/lit8 p0, p0, 0xa

    return p0
.end method

.method public getStatusFlags()Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->statusFlags:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    return-object p0
.end method

.method public isBinary()Z
    .locals 1

    invoke-static {}, Lcom/transsion/audiotagger/tag/id3/ID3v24Frames;->getInstanceOf()Lcom/transsion/audiotagger/tag/id3/ID3v24Frames;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/audiotagger/tag/id3/ID3Frames;->isBinary(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isCommon()Z
    .locals 1

    invoke-static {}, Lcom/transsion/audiotagger/tag/id3/ID3v24Frames;->getInstanceOf()Lcom/transsion/audiotagger/tag/id3/ID3v24Frames;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/audiotagger/tag/id3/ID3Frames;->isCommon(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isValidID3v2FrameIdentifier(Ljava/lang/String;)Z
    .locals 0

    sget-object p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;->validFrameIdentifier:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public read(Ljava/nio/ByteBuffer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/tag/InvalidFrameException;,
            Lcom/transsion/audiotagger/tag/InvalidDataTypeException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->readIdentifier(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;->isValidID3v2FrameIdentifier(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_8

    invoke-direct {p0, p1}, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;->getFrameSize(Ljava/nio/ByteBuffer;)V

    new-instance v1, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame$StatusFlags;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-direct {v1, p0, v3}, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame$StatusFlags;-><init>(Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;B)V

    iput-object v1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->statusFlags:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    new-instance v1, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame$EncodingFlags;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-direct {v1, p0, v3}, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame$EncodingFlags;-><init>(Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;B)V

    iput-object v1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame$EncodingFlags;->isGrouping()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput v1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;->groupIdentifier:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    check-cast v1, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame$EncodingFlags;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame$EncodingFlags;->isEncryption()Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput v1, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;->encryptionMethod:I

    :cond_1
    iget-object v1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    check-cast v1, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame$EncodingFlags;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame$EncodingFlags;->isDataLengthIndicator()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Lcom/transsion/audiotagger/tag/id3/ID3SyncSafeInteger;->bufferToValue(Ljava/nio/ByteBuffer;)I

    move-result v1

    add-int/lit8 v2, v2, 0x4

    sget-object v3, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":Frame Size Is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->frameSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " Data Length Size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v1, -0x1

    :goto_1
    iget v3, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->frameSize:I

    sub-int/2addr v3, v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v4, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    check-cast v4, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame$EncodingFlags;

    invoke-virtual {v4}, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame$EncodingFlags;->isUnsynchronised()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v2}, Lcom/transsion/audiotagger/tag/id3/ID3Unsynchronization;->synchronize(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result v4

    sget-object v5, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":Frame Size After Syncing is:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move v4, v3

    :goto_2
    :try_start_0
    iget-object v5, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    check-cast v5, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame$EncodingFlags;

    invoke-virtual {v5}, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame$EncodingFlags;->isCompression()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p1, v1, v3}, Lcom/transsion/audiotagger/tag/id3/ID3Compression;->uncompress(Ljava/lang/String;Ljava/lang/String;Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v4, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    check-cast v4, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame$EncodingFlags;

    invoke-virtual {v4}, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame$EncodingFlags;->isEncryption()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0, v0, v2, v1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->readEncryptedBody(Ljava/lang/String;Ljava/nio/ByteBuffer;I)Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_4
    invoke-virtual {p0, v0, v2, v1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->readBody(Ljava/lang/String;Ljava/nio/ByteBuffer;I)Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    check-cast v1, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame$EncodingFlags;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame$EncodingFlags;->isEncryption()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget v1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->frameSize:I

    invoke-virtual {p0, v0, p1, v1}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->readEncryptedBody(Ljava/lang/String;Ljava/nio/ByteBuffer;I)Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    goto :goto_3

    :cond_6
    invoke-virtual {p0, v0, v2, v4}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->readBody(Ljava/lang/String;Ljava/nio/ByteBuffer;I)Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    :goto_3
    iget-object v1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    instance-of v1, v1, Lcom/transsion/audiotagger/tag/id3/framebody/ID3v24FrameBody;

    if-nez v1, :cond_7

    sget-object v1, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":Converted frame body with:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to deprecated framebody"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyDeprecated;

    iget-object v1, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    check-cast v1, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;

    invoke-direct {v0, v1}, Lcom/transsion/audiotagger/tag/id3/framebody/FrameBodyDeprecated;-><init>(Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;)V

    iput-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p0

    add-int/2addr p0, v3

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :goto_4
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    throw p0

    :cond_8
    sget-object v1, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":Invalid identifier:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v1

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;->getFrameIdSize()I

    move-result v3

    sub-int/2addr v3, v2

    sub-int/2addr v1, v3

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-instance p1, Lcom/transsion/audiotagger/tag/InvalidFrameIdentifierException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":is not a valid ID3v2.30 frame"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/transsion/audiotagger/tag/InvalidFrameIdentifierException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setEncoding(Ljava/nio/charset/Charset;)V
    .locals 2

    invoke-static {}, Lcom/transsion/audiotagger/tag/id3/valuepair/TextEncoding;->getInstanceOf()Lcom/transsion/audiotagger/tag/id3/valuepair/TextEncoding;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/audiotagger/tag/id3/valuepair/TextEncoding;->getIdForCharset(Ljava/nio/charset/Charset;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->getBody()Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Integer;->byteValue()B

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;->setTextEncoding(B)V

    :cond_0
    return-void
.end method

.method public write(Ljava/io/ByteArrayOutputStream;)V
    .locals 7

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing frame to file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v2, p0, Lcom/transsion/audiotagger/tag/id3/AbstractTagFrame;->frameBody:Lcom/transsion/audiotagger/tag/id3/AbstractTagFrameBody;

    check-cast v2, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;

    invoke-virtual {v2, v1}, Lcom/transsion/audiotagger/tag/id3/framebody/AbstractID3v2FrameBody;->write(Ljava/io/ByteArrayOutputStream;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->getInstance()Lcom/transsion/audiotagger/tag/TagOptionSingleton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/audiotagger/tag/TagOptionSingleton;->isUnsyncTags()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/transsion/audiotagger/tag/id3/ID3Unsynchronization;->requiresUnsynchronization([B)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/transsion/audiotagger/tag/id3/ID3Unsynchronization;->unsynchronize([B)[B

    move-result-object v1

    sget-object v4, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bodybytebuffer:sizeafterunsynchronisation:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/transsion/audiotagger/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v0, v4, v3, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    array-length v3, v1

    sget-object v4, Lcom/transsion/audiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Frame Size Is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/transsion/audiotagger/tag/id3/ID3SyncSafeInteger;->valueToBuffer(I)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->statusFlags:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$StatusFlags;->getWriteFlags()B

    move-result v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    check-cast v3, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame$EncodingFlags;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame$EncodingFlags;->unsetNonStandardFlags()V

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    check-cast v2, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame$EncodingFlags;

    invoke-virtual {v2}, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame$EncodingFlags;->setUnsynchronised()V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    check-cast v2, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame$EncodingFlags;

    invoke-virtual {v2}, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame$EncodingFlags;->unsetUnsynchronised()V

    :goto_1
    iget-object v2, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    check-cast v2, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame$EncodingFlags;

    invoke-virtual {v2}, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame$EncodingFlags;->unsetCompression()V

    iget-object v2, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    check-cast v2, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame$EncodingFlags;

    invoke-virtual {v2}, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame$EncodingFlags;->unsetDataLengthIndicator()V

    iget-object v2, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    invoke-virtual {v2}, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->getFlags()B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :try_start_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    check-cast v0, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame$EncodingFlags;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame$EncodingFlags;->isEncryption()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;->encryptionMethod:I

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame;->encodingFlags:Lcom/transsion/audiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;

    check-cast v0, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame$EncodingFlags;

    invoke-virtual {v0}, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame$EncodingFlags;->isGrouping()Z

    move-result v0

    if-eqz v0, :cond_5

    iget p0, p0, Lcom/transsion/audiotagger/tag/id3/ID3v24Frame;->groupIdentifier:I

    invoke-virtual {p1, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_5
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_3
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
