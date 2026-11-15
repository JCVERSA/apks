.class public Lcom/transsion/audiotagger/audio/asf/data/FileHeader;
.super Lcom/transsion/audiotagger/audio/asf/data/Chunk;
.source "SourceFile"


# instance fields
.field private final duration:Ljava/math/BigInteger;

.field private final fileCreationTime:Ljava/util/Date;

.field private final fileSize:Ljava/math/BigInteger;

.field private final flags:J

.field private final maxPackageSize:J

.field private final minPackageSize:J

.field private final packageCount:Ljava/math/BigInteger;

.field private final timeEndPos:Ljava/math/BigInteger;

.field private final timeStartPos:Ljava/math/BigInteger;

.field private final uncompressedFrameSize:J


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;JJJJ)V
    .locals 3

    move-object v0, p0

    sget-object v1, Lcom/transsion/audiotagger/audio/asf/data/GUID;->GUID_FILE:Lcom/transsion/audiotagger/audio/asf/data/GUID;

    move-object v2, p1

    invoke-direct {p0, v1, p1}, Lcom/transsion/audiotagger/audio/asf/data/Chunk;-><init>(Lcom/transsion/audiotagger/audio/asf/data/GUID;Ljava/math/BigInteger;)V

    move-object v1, p2

    iput-object v1, v0, Lcom/transsion/audiotagger/audio/asf/data/FileHeader;->fileSize:Ljava/math/BigInteger;

    move-object v1, p4

    iput-object v1, v0, Lcom/transsion/audiotagger/audio/asf/data/FileHeader;->packageCount:Ljava/math/BigInteger;

    move-object v1, p5

    iput-object v1, v0, Lcom/transsion/audiotagger/audio/asf/data/FileHeader;->duration:Ljava/math/BigInteger;

    move-object v1, p6

    iput-object v1, v0, Lcom/transsion/audiotagger/audio/asf/data/FileHeader;->timeStartPos:Ljava/math/BigInteger;

    move-object v1, p7

    iput-object v1, v0, Lcom/transsion/audiotagger/audio/asf/data/FileHeader;->timeEndPos:Ljava/math/BigInteger;

    move-wide v1, p8

    iput-wide v1, v0, Lcom/transsion/audiotagger/audio/asf/data/FileHeader;->flags:J

    move-wide v1, p10

    iput-wide v1, v0, Lcom/transsion/audiotagger/audio/asf/data/FileHeader;->minPackageSize:J

    move-wide v1, p12

    iput-wide v1, v0, Lcom/transsion/audiotagger/audio/asf/data/FileHeader;->maxPackageSize:J

    move-wide/from16 v1, p14

    iput-wide v1, v0, Lcom/transsion/audiotagger/audio/asf/data/FileHeader;->uncompressedFrameSize:J

    invoke-static {p3}, Lcom/transsion/audiotagger/audio/asf/util/Utils;->getDateOf(Ljava/math/BigInteger;)Ljava/util/GregorianCalendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/audiotagger/audio/asf/data/FileHeader;->fileCreationTime:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public getDuration()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/asf/data/FileHeader;->duration:Ljava/math/BigInteger;

    return-object p0
.end method

.method public getDurationInSeconds()I
    .locals 2

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/asf/data/FileHeader;->duration:Ljava/math/BigInteger;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "10000000"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    return p0
.end method

.method public getFileCreationTime()Ljava/util/Date;
    .locals 3

    new-instance v0, Ljava/util/Date;

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/asf/data/FileHeader;->fileCreationTime:Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getFileSize()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/asf/data/FileHeader;->fileSize:Ljava/math/BigInteger;

    return-object p0
.end method

.method public getFlags()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/audiotagger/audio/asf/data/FileHeader;->flags:J

    return-wide v0
.end method

.method public getMaxPackageSize()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/audiotagger/audio/asf/data/FileHeader;->maxPackageSize:J

    return-wide v0
.end method

.method public getMinPackageSize()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/audiotagger/audio/asf/data/FileHeader;->minPackageSize:J

    return-wide v0
.end method

.method public getPackageCount()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/asf/data/FileHeader;->packageCount:Ljava/math/BigInteger;

    return-object p0
.end method

.method public getPreciseDuration()F
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/FileHeader;->getDuration()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v0

    const-wide v2, 0x416312d000000000L    # 1.0E7

    div-double/2addr v0, v2

    double-to-float p0, v0

    return p0
.end method

.method public getTimeEndPos()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/asf/data/FileHeader;->timeEndPos:Ljava/math/BigInteger;

    return-object p0
.end method

.method public getTimeStartPos()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/asf/data/FileHeader;->timeStartPos:Ljava/math/BigInteger;

    return-object p0
.end method

.method public getUncompressedFrameSize()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/audiotagger/audio/asf/data/FileHeader;->uncompressedFrameSize:J

    return-wide v0
.end method

.method public prettyPrint(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0, p1}, Lcom/transsion/audiotagger/audio/asf/data/Chunk;->prettyPrint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  |-> Filesize      = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/FileHeader;->getFileSize()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/transsion/audiotagger/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  |-> Media duration= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/FileHeader;->getDuration()Ljava/math/BigInteger;

    move-result-object v2

    new-instance v3, Ljava/math/BigInteger;

    const-string v4, "10000"

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  |-> Created at    = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/audio/asf/data/FileHeader;->getFileCreationTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
