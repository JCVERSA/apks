.class public Lorg/apache/tools/zip/ZipOutputStream;
.super Ljava/io/FilterOutputStream;
.source "source.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x200

.field private static final BYTE_MASK:I = 0xff

.field protected static final CFH_SIG:[B

.field protected static final DD_SIG:[B

.field public static final DEFAULT_COMPRESSION:I = -0x1

.field public static final DEFLATED:I = 0x8

.field private static final DOS_TIME_MIN:[B

.field protected static final EOCD_SIG:[B

.field protected static final LFH_SIG:[B

.field private static final LZERO:[B

.field private static final SHORT:I = 0x2

.field public static final STORED:I = 0x0

.field private static final WORD:I = 0x4

.field private static final ZERO:[B


# instance fields
.field protected buf:[B

.field private cdLength:J

.field private cdOffset:J

.field private comment:Ljava/lang/String;

.field private crc:Ljava/util/zip/CRC32;

.field private dataStart:J

.field protected def:Ljava/util/zip/Deflater;

.field private encoding:Ljava/lang/String;

.field private entries:Ljava/util/Vector;

.field private entry:Lorg/apache/tools/zip/ZipEntry;

.field private hasCompressionLevelChanged:Z

.field private level:I

.field private localDataStart:J

.field private method:I

.field private offsets:Ljava/util/Hashtable;

.field private raf:Ljava/io/RandomAccessFile;

.field private written:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Lorg/apache/tools/zip/ZipOutputStream;->ZERO:[B

    .line 8
    .line 9
    const/4 v0, 0x4

    .line 10
    new-array v0, v0, [B

    .line 11
    .line 12
    fill-array-data v0, :array_1

    .line 13
    .line 14
    .line 15
    sput-object v0, Lorg/apache/tools/zip/ZipOutputStream;->LZERO:[B

    .line 16
    .line 17
    const-wide/32 v0, 0x4034b50

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Lorg/apache/tools/zip/ZipLong;->getBytes(J)[B

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Lorg/apache/tools/zip/ZipOutputStream;->LFH_SIG:[B

    .line 25
    .line 26
    const-wide/32 v0, 0x8074b50

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v1}, Lorg/apache/tools/zip/ZipLong;->getBytes(J)[B

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lorg/apache/tools/zip/ZipOutputStream;->DD_SIG:[B

    .line 34
    .line 35
    const-wide/32 v0, 0x2014b50    # 1.6619997E-316

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v1}, Lorg/apache/tools/zip/ZipLong;->getBytes(J)[B

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    sput-object v0, Lorg/apache/tools/zip/ZipOutputStream;->CFH_SIG:[B

    .line 43
    .line 44
    const-wide/32 v0, 0x6054b50

    .line 45
    .line 46
    .line 47
    invoke-static {v0, v1}, Lorg/apache/tools/zip/ZipLong;->getBytes(J)[B

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    sput-object v0, Lorg/apache/tools/zip/ZipOutputStream;->EOCD_SIG:[B

    .line 52
    .line 53
    const-wide/16 v0, 0x2100

    .line 54
    .line 55
    invoke-static {v0, v1}, Lorg/apache/tools/zip/ZipLong;->getBytes(J)[B

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    sput-object v0, Lorg/apache/tools/zip/ZipOutputStream;->DOS_TIME_MIN:[B

    .line 60
    .line 61
    return-void

    .line 62
    nop

    .line 63
    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    nop

    .line 69
    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, v0}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 19
    const-string v1, ""

    iput-object v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->comment:Ljava/lang/String;

    const/4 v1, -0x1

    .line 20
    iput v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->level:I

    const/4 v1, 0x0

    .line 21
    iput-boolean v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->hasCompressionLevelChanged:Z

    const/16 v1, 0x8

    .line 22
    iput v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->method:I

    .line 23
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->entries:Ljava/util/Vector;

    .line 24
    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    const-wide/16 v1, 0x0

    .line 25
    iput-wide v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    .line 26
    iput-wide v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->dataStart:J

    .line 27
    iput-wide v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->localDataStart:J

    .line 28
    iput-wide v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->cdOffset:J

    .line 29
    iput-wide v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->cdLength:J

    .line 30
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    iput-object v3, p0, Lorg/apache/tools/zip/ZipOutputStream;->offsets:Ljava/util/Hashtable;

    .line 31
    iput-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->encoding:Ljava/lang/String;

    .line 32
    new-instance v3, Ljava/util/zip/Deflater;

    iget v4, p0, Lorg/apache/tools/zip/ZipOutputStream;->level:I

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object v3, p0, Lorg/apache/tools/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    const/16 v3, 0x200

    .line 33
    new-array v3, v3, [B

    iput-object v3, p0, Lorg/apache/tools/zip/ZipOutputStream;->buf:[B

    .line 34
    iput-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    .line 35
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v3, p1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lorg/apache/tools/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    .line 36
    invoke-virtual {v3, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 37
    :catch_0
    iget-object v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_0

    .line 38
    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 39
    :catch_1
    iput-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    .line 40
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2
    const-string p1, ""

    iput-object p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->comment:Ljava/lang/String;

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->level:I

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->hasCompressionLevelChanged:Z

    const/16 p1, 0x8

    .line 5
    iput p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->method:I

    .line 6
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->entries:Ljava/util/Vector;

    .line 7
    new-instance p1, Ljava/util/zip/CRC32;

    invoke-direct {p1}, Ljava/util/zip/CRC32;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    const-wide/16 v0, 0x0

    .line 8
    iput-wide v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    .line 9
    iput-wide v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->dataStart:J

    .line 10
    iput-wide v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->localDataStart:J

    .line 11
    iput-wide v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->cdOffset:J

    .line 12
    iput-wide v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->cdLength:J

    .line 13
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->offsets:Ljava/util/Hashtable;

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->encoding:Ljava/lang/String;

    .line 15
    new-instance v0, Ljava/util/zip/Deflater;

    iget v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->level:I

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    const/16 v0, 0x200

    .line 16
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->buf:[B

    .line 17
    iput-object p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    return-void
.end method

.method protected static adjustToLong(I)J
    .locals 4

    .line 1
    if-gez p0, :cond_0

    .line 2
    .line 3
    const-wide v0, 0x100000000L

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    int-to-long v2, p0

    .line 9
    add-long/2addr v2, v0

    .line 10
    return-wide v2

    .line 11
    :cond_0
    int-to-long v0, p0

    .line 12
    return-wide v0
.end method

.method protected static toDosTime(Ljava/util/Date;)Lorg/apache/tools/zip/ZipLong;
    .locals 3

    .line 1
    new-instance v0, Lorg/apache/tools/zip/ZipLong;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/tools/zip/ZipOutputStream;->toDosTime(J)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/tools/zip/ZipLong;-><init>([B)V

    return-object v0
.end method

.method protected static toDosTime(J)[B
    .locals 2

    .line 2
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 3
    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result p0

    add-int/lit16 p1, p0, 0x76c

    const/16 v1, 0x7bc

    if-ge p1, v1, :cond_0

    .line 4
    sget-object p0, Lorg/apache/tools/zip/ZipOutputStream;->DOS_TIME_MIN:[B

    return-object p0

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p0, p0, -0x50

    shl-int/lit8 p0, p0, 0x19

    shl-int/lit8 p1, p1, 0x15

    or-int/2addr p0, p1

    .line 6
    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result p1

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result p1

    shl-int/lit8 p1, p1, 0xb

    or-int/2addr p0, p1

    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result p1

    shl-int/lit8 p1, p1, 0x5

    or-int/2addr p0, p1

    invoke-virtual {v0}, Ljava/util/Date;->getSeconds()I

    move-result p1

    shr-int/lit8 p1, p1, 0x1

    or-int/2addr p0, p1

    int-to-long p0, p0

    .line 7
    invoke-static {p0, p1}, Lorg/apache/tools/zip/ZipLong;->getBytes(J)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipOutputStream;->finish()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method public closeEntry()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipEntry;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    iget-object v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->reset()V

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipEntry;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getMethod()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/16 v3, 0x8

    .line 24
    .line 25
    if-ne v2, v3, :cond_2

    .line 26
    .line 27
    iget-object v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/util/zip/Deflater;->finish()V

    .line 30
    .line 31
    .line 32
    :goto_0
    iget-object v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/util/zip/Deflater;->finished()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-nez v2, :cond_1

    .line 39
    .line 40
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipOutputStream;->deflate()V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget-object v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipEntry;

    .line 45
    .line 46
    iget-object v3, p0, Lorg/apache/tools/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/util/zip/Deflater;->getTotalIn()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    invoke-static {v3}, Lorg/apache/tools/zip/ZipOutputStream;->adjustToLong(I)J

    .line 53
    .line 54
    .line 55
    move-result-wide v3

    .line 56
    invoke-virtual {v2, v3, v4}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 57
    .line 58
    .line 59
    iget-object v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipEntry;

    .line 60
    .line 61
    iget-object v3, p0, Lorg/apache/tools/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/util/zip/Deflater;->getTotalOut()I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    invoke-static {v3}, Lorg/apache/tools/zip/ZipOutputStream;->adjustToLong(I)J

    .line 68
    .line 69
    .line 70
    move-result-wide v3

    .line 71
    invoke-virtual {v2, v3, v4}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    .line 72
    .line 73
    .line 74
    iget-object v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipEntry;

    .line 75
    .line 76
    invoke-virtual {v2, v0, v1}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->reset()V

    .line 82
    .line 83
    .line 84
    iget-wide v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    .line 85
    .line 86
    iget-object v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipEntry;

    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    .line 89
    .line 90
    .line 91
    move-result-wide v2

    .line 92
    add-long/2addr v0, v2

    .line 93
    iput-wide v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    .line 94
    .line 95
    goto/16 :goto_1

    .line 96
    .line 97
    :cond_2
    iget-object v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    .line 98
    .line 99
    if-nez v2, :cond_5

    .line 100
    .line 101
    iget-object v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipEntry;

    .line 102
    .line 103
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getCrc()J

    .line 104
    .line 105
    .line 106
    move-result-wide v2

    .line 107
    cmp-long v2, v2, v0

    .line 108
    .line 109
    const-string v3, " instead of "

    .line 110
    .line 111
    const-string v4, ": "

    .line 112
    .line 113
    if-nez v2, :cond_4

    .line 114
    .line 115
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipEntry;

    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getSize()J

    .line 118
    .line 119
    .line 120
    move-result-wide v0

    .line 121
    iget-wide v5, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    .line 122
    .line 123
    iget-wide v7, p0, Lorg/apache/tools/zip/ZipOutputStream;->dataStart:J

    .line 124
    .line 125
    sub-long/2addr v5, v7

    .line 126
    cmp-long v0, v0, v5

    .line 127
    .line 128
    if-nez v0, :cond_3

    .line 129
    .line 130
    goto/16 :goto_1

    .line 131
    .line 132
    :cond_3
    new-instance v0, Ljava/util/zip/ZipException;

    .line 133
    .line 134
    new-instance v1, Ljava/lang/StringBuffer;

    .line 135
    .line 136
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 137
    .line 138
    .line 139
    const-string v2, "bad size for entry "

    .line 140
    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    .line 143
    .line 144
    iget-object v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipEntry;

    .line 145
    .line 146
    invoke-virtual {v2}, Lorg/apache/tools/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    .line 155
    .line 156
    iget-object v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipEntry;

    .line 157
    .line 158
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getSize()J

    .line 159
    .line 160
    .line 161
    move-result-wide v4

    .line 162
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    .line 167
    .line 168
    iget-wide v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    .line 169
    .line 170
    iget-wide v4, p0, Lorg/apache/tools/zip/ZipOutputStream;->dataStart:J

    .line 171
    .line 172
    sub-long/2addr v2, v4

    .line 173
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    throw v0

    .line 184
    :cond_4
    new-instance v2, Ljava/util/zip/ZipException;

    .line 185
    .line 186
    new-instance v5, Ljava/lang/StringBuffer;

    .line 187
    .line 188
    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 189
    .line 190
    .line 191
    const-string v6, "bad CRC checksum for entry "

    .line 192
    .line 193
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 194
    .line 195
    .line 196
    iget-object v6, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipEntry;

    .line 197
    .line 198
    invoke-virtual {v6}, Lorg/apache/tools/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v6

    .line 202
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 206
    .line 207
    .line 208
    iget-object v4, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipEntry;

    .line 209
    .line 210
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getCrc()J

    .line 211
    .line 212
    .line 213
    move-result-wide v6

    .line 214
    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v4

    .line 218
    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 222
    .line 223
    .line 224
    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    invoke-direct {v2, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    throw v2

    .line 239
    :cond_5
    iget-wide v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    .line 240
    .line 241
    iget-wide v4, p0, Lorg/apache/tools/zip/ZipOutputStream;->dataStart:J

    .line 242
    .line 243
    sub-long/2addr v2, v4

    .line 244
    iget-object v4, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipEntry;

    .line 245
    .line 246
    invoke-virtual {v4, v2, v3}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 247
    .line 248
    .line 249
    iget-object v4, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipEntry;

    .line 250
    .line 251
    invoke-virtual {v4, v2, v3}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    .line 252
    .line 253
    .line 254
    iget-object v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipEntry;

    .line 255
    .line 256
    invoke-virtual {v2, v0, v1}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    .line 257
    .line 258
    .line 259
    :goto_1
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    .line 260
    .line 261
    if-eqz v0, :cond_6

    .line 262
    .line 263
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 264
    .line 265
    .line 266
    move-result-wide v0

    .line 267
    iget-object v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    .line 268
    .line 269
    iget-wide v3, p0, Lorg/apache/tools/zip/ZipOutputStream;->localDataStart:J

    .line 270
    .line 271
    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 272
    .line 273
    .line 274
    iget-object v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipEntry;

    .line 275
    .line 276
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getCrc()J

    .line 277
    .line 278
    .line 279
    move-result-wide v2

    .line 280
    invoke-static {v2, v3}, Lorg/apache/tools/zip/ZipLong;->getBytes(J)[B

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    invoke-virtual {p0, v2}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 285
    .line 286
    .line 287
    iget-object v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipEntry;

    .line 288
    .line 289
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    .line 290
    .line 291
    .line 292
    move-result-wide v2

    .line 293
    invoke-static {v2, v3}, Lorg/apache/tools/zip/ZipLong;->getBytes(J)[B

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    invoke-virtual {p0, v2}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 298
    .line 299
    .line 300
    iget-object v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipEntry;

    .line 301
    .line 302
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getSize()J

    .line 303
    .line 304
    .line 305
    move-result-wide v2

    .line 306
    invoke-static {v2, v3}, Lorg/apache/tools/zip/ZipLong;->getBytes(J)[B

    .line 307
    .line 308
    .line 309
    move-result-object v2

    .line 310
    invoke-virtual {p0, v2}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 311
    .line 312
    .line 313
    iget-object v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    .line 314
    .line 315
    invoke-virtual {v2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 316
    .line 317
    .line 318
    :cond_6
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipEntry;

    .line 319
    .line 320
    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->writeDataDescriptor(Lorg/apache/tools/zip/ZipEntry;)V

    .line 321
    .line 322
    .line 323
    const/4 v0, 0x0

    .line 324
    iput-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipEntry;

    .line 325
    .line 326
    return-void
.end method

.method protected final deflate()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->buf:[B

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-virtual {v0, v1, v3, v2}, Ljava/util/zip/Deflater;->deflate([BII)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->buf:[B

    .line 14
    .line 15
    invoke-virtual {p0, v1, v3, v0}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([BII)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipOutputStream;->closeEntry()V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    .line 5
    .line 6
    iput-wide v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->cdOffset:J

    .line 7
    .line 8
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entries:Ljava/util/Vector;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    :goto_0
    if-ge v1, v0, :cond_0

    .line 16
    .line 17
    iget-object v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->entries:Ljava/util/Vector;

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lorg/apache/tools/zip/ZipEntry;

    .line 24
    .line 25
    invoke-virtual {p0, v2}, Lorg/apache/tools/zip/ZipOutputStream;->writeCentralFileHeader(Lorg/apache/tools/zip/ZipEntry;)V

    .line 26
    .line 27
    .line 28
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-wide v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    .line 32
    .line 33
    iget-wide v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->cdOffset:J

    .line 34
    .line 35
    sub-long/2addr v0, v2

    .line 36
    iput-wide v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->cdLength:J

    .line 37
    .line 38
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipOutputStream;->writeCentralDirectoryEnd()V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->offsets:Ljava/util/Hashtable;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entries:Ljava/util/Vector;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method protected getBytes(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->encoding:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 11
    .line 12
    .line 13
    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    return-object p1

    .line 15
    :catch_0
    move-exception p1

    .line 16
    new-instance v0, Ljava/util/zip/ZipException;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-direct {v0, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->encoding:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isSeekable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public putNextEntry(Lorg/apache/tools/zip/ZipEntry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipOutputStream;->closeEntry()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipEntry;

    .line 5
    .line 6
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entries:Ljava/util/Vector;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipEntry;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getMethod()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const/4 v0, -0x1

    .line 18
    if-ne p1, v0, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipEntry;

    .line 21
    .line 22
    iget v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->method:I

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipEntry;

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getTime()J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    const-wide/16 v2, -0x1

    .line 34
    .line 35
    cmp-long p1, v0, v2

    .line 36
    .line 37
    if-nez p1, :cond_1

    .line 38
    .line 39
    iget-object p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipEntry;

    .line 40
    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 42
    .line 43
    .line 44
    move-result-wide v0

    .line 45
    invoke-virtual {p1, v0, v1}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 46
    .line 47
    .line 48
    :cond_1
    iget-object p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipEntry;

    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getMethod()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-nez p1, :cond_4

    .line 55
    .line 56
    iget-object p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    .line 57
    .line 58
    if-nez p1, :cond_4

    .line 59
    .line 60
    iget-object p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipEntry;

    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    .line 63
    .line 64
    .line 65
    move-result-wide v0

    .line 66
    cmp-long p1, v0, v2

    .line 67
    .line 68
    if-eqz p1, :cond_3

    .line 69
    .line 70
    iget-object p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipEntry;

    .line 71
    .line 72
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCrc()J

    .line 73
    .line 74
    .line 75
    move-result-wide v0

    .line 76
    cmp-long p1, v0, v2

    .line 77
    .line 78
    if-eqz p1, :cond_2

    .line 79
    .line 80
    iget-object p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipEntry;

    .line 81
    .line 82
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    .line 83
    .line 84
    .line 85
    move-result-wide v0

    .line 86
    invoke-virtual {p1, v0, v1}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_2
    new-instance p1, Ljava/util/zip/ZipException;

    .line 91
    .line 92
    const-string v0, "crc checksum is required for STORED method when not writing to a file"

    .line 93
    .line 94
    invoke-direct {p1, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p1

    .line 98
    :cond_3
    new-instance p1, Ljava/util/zip/ZipException;

    .line 99
    .line 100
    const-string v0, "uncompressed size is required for STORED method when not writing to a file"

    .line 101
    .line 102
    invoke-direct {p1, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw p1

    .line 106
    :cond_4
    :goto_0
    iget-object p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipEntry;

    .line 107
    .line 108
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getMethod()I

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    const/16 v0, 0x8

    .line 113
    .line 114
    if-ne p1, v0, :cond_5

    .line 115
    .line 116
    iget-boolean p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->hasCompressionLevelChanged:Z

    .line 117
    .line 118
    if-eqz p1, :cond_5

    .line 119
    .line 120
    iget-object p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    .line 121
    .line 122
    iget v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->level:I

    .line 123
    .line 124
    invoke-virtual {p1, v0}, Ljava/util/zip/Deflater;->setLevel(I)V

    .line 125
    .line 126
    .line 127
    const/4 p1, 0x0

    .line 128
    iput-boolean p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->hasCompressionLevelChanged:Z

    .line 129
    .line 130
    :cond_5
    iget-object p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipEntry;

    .line 131
    .line 132
    invoke-virtual {p0, p1}, Lorg/apache/tools/zip/ZipOutputStream;->writeLocalFileHeader(Lorg/apache/tools/zip/ZipEntry;)V

    .line 133
    .line 134
    .line 135
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->comment:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->encoding:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setLevel(I)V
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    if-lt p1, v0, :cond_1

    .line 3
    .line 4
    const/16 v0, 0x9

    .line 5
    .line 6
    if-gt p1, v0, :cond_1

    .line 7
    .line 8
    iget v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->level:I

    .line 9
    .line 10
    if-eq v0, p1, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    iput-boolean v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->hasCompressionLevelChanged:Z

    .line 16
    .line 17
    iput p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->level:I

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuffer;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v2, "Invalid compression level: "

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v0
.end method

.method public setMethod(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->method:I

    .line 2
    .line 3
    return-void
.end method

.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v0, 0x1

    .line 9
    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    .line 10
    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/tools/zip/ZipOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    if-lez p3, :cond_1

    .line 2
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 4
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipOutputStream;->deflate()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([BII)V

    .line 7
    iget-wide v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    .line 8
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    return-void
.end method

.method protected writeCentralDirectoryEnd()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/tools/zip/ZipOutputStream;->EOCD_SIG:[B

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lorg/apache/tools/zip/ZipOutputStream;->ZERO:[B

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->entries:Ljava/util/Vector;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-static {v0}, Lorg/apache/tools/zip/ZipShort;->getBytes(I)[B

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 28
    .line 29
    .line 30
    iget-wide v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->cdLength:J

    .line 31
    .line 32
    invoke-static {v0, v1}, Lorg/apache/tools/zip/ZipLong;->getBytes(J)[B

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 37
    .line 38
    .line 39
    iget-wide v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->cdOffset:J

    .line 40
    .line 41
    invoke-static {v0, v1}, Lorg/apache/tools/zip/ZipLong;->getBytes(J)[B

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->comment:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->getBytes(Ljava/lang/String;)[B

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    array-length v1, v0

    .line 55
    invoke-static {v1}, Lorg/apache/tools/zip/ZipShort;->getBytes(I)[B

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {p0, v1}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method protected writeCentralFileHeader(Lorg/apache/tools/zip/ZipEntry;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/tools/zip/ZipOutputStream;->CFH_SIG:[B

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    .line 7
    .line 8
    const-wide/16 v2, 0x4

    .line 9
    .line 10
    add-long/2addr v0, v2

    .line 11
    iput-wide v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    .line 12
    .line 13
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getPlatform()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/16 v1, 0x8

    .line 18
    .line 19
    shl-int/2addr v0, v1

    .line 20
    const/16 v4, 0x14

    .line 21
    .line 22
    or-int/2addr v0, v4

    .line 23
    invoke-static {v0}, Lorg/apache/tools/zip/ZipShort;->getBytes(I)[B

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 28
    .line 29
    .line 30
    iget-wide v5, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    .line 31
    .line 32
    const-wide/16 v7, 0x2

    .line 33
    .line 34
    add-long/2addr v5, v7

    .line 35
    iput-wide v5, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getMethod()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-ne v0, v1, :cond_0

    .line 42
    .line 43
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    .line 44
    .line 45
    if-nez v0, :cond_0

    .line 46
    .line 47
    invoke-static {v4}, Lorg/apache/tools/zip/ZipShort;->getBytes(I)[B

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 52
    .line 53
    .line 54
    invoke-static {v1}, Lorg/apache/tools/zip/ZipShort;->getBytes(I)[B

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    const/16 v0, 0xa

    .line 63
    .line 64
    invoke-static {v0}, Lorg/apache/tools/zip/ZipShort;->getBytes(I)[B

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 69
    .line 70
    .line 71
    sget-object v0, Lorg/apache/tools/zip/ZipOutputStream;->ZERO:[B

    .line 72
    .line 73
    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 74
    .line 75
    .line 76
    :goto_0
    iget-wide v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    .line 77
    .line 78
    add-long/2addr v0, v2

    .line 79
    iput-wide v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getMethod()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    invoke-static {v0}, Lorg/apache/tools/zip/ZipShort;->getBytes(I)[B

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 90
    .line 91
    .line 92
    iget-wide v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    .line 93
    .line 94
    add-long/2addr v0, v7

    .line 95
    iput-wide v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    .line 96
    .line 97
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getTime()J

    .line 98
    .line 99
    .line 100
    move-result-wide v0

    .line 101
    invoke-static {v0, v1}, Lorg/apache/tools/zip/ZipOutputStream;->toDosTime(J)[B

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 106
    .line 107
    .line 108
    iget-wide v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    .line 109
    .line 110
    add-long/2addr v0, v2

    .line 111
    iput-wide v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    .line 112
    .line 113
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCrc()J

    .line 114
    .line 115
    .line 116
    move-result-wide v0

    .line 117
    invoke-static {v0, v1}, Lorg/apache/tools/zip/ZipLong;->getBytes(J)[B

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    .line 125
    .line 126
    .line 127
    move-result-wide v0

    .line 128
    invoke-static {v0, v1}, Lorg/apache/tools/zip/ZipLong;->getBytes(J)[B

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    .line 136
    .line 137
    .line 138
    move-result-wide v0

    .line 139
    invoke-static {v0, v1}, Lorg/apache/tools/zip/ZipLong;->getBytes(J)[B

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 144
    .line 145
    .line 146
    iget-wide v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    .line 147
    .line 148
    const-wide/16 v4, 0xc

    .line 149
    .line 150
    add-long/2addr v0, v4

    .line 151
    iput-wide v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    .line 152
    .line 153
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->getBytes(Ljava/lang/String;)[B

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    array-length v1, v0

    .line 162
    invoke-static {v1}, Lorg/apache/tools/zip/ZipShort;->getBytes(I)[B

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    invoke-virtual {p0, v1}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 167
    .line 168
    .line 169
    iget-wide v4, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    .line 170
    .line 171
    add-long/2addr v4, v7

    .line 172
    iput-wide v4, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    .line 173
    .line 174
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getCentralDirectoryExtra()[B

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    array-length v4, v1

    .line 179
    invoke-static {v4}, Lorg/apache/tools/zip/ZipShort;->getBytes(I)[B

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    invoke-virtual {p0, v4}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 184
    .line 185
    .line 186
    iget-wide v4, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    .line 187
    .line 188
    add-long/2addr v4, v7

    .line 189
    iput-wide v4, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    .line 190
    .line 191
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getComment()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    if-nez v4, :cond_1

    .line 196
    .line 197
    const-string v4, ""

    .line 198
    .line 199
    :cond_1
    invoke-virtual {p0, v4}, Lorg/apache/tools/zip/ZipOutputStream;->getBytes(Ljava/lang/String;)[B

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    array-length v5, v4

    .line 204
    invoke-static {v5}, Lorg/apache/tools/zip/ZipShort;->getBytes(I)[B

    .line 205
    .line 206
    .line 207
    move-result-object v5

    .line 208
    invoke-virtual {p0, v5}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 209
    .line 210
    .line 211
    iget-wide v5, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    .line 212
    .line 213
    add-long/2addr v5, v7

    .line 214
    iput-wide v5, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    .line 215
    .line 216
    sget-object v5, Lorg/apache/tools/zip/ZipOutputStream;->ZERO:[B

    .line 217
    .line 218
    invoke-virtual {p0, v5}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 219
    .line 220
    .line 221
    iget-wide v5, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    .line 222
    .line 223
    add-long/2addr v5, v7

    .line 224
    iput-wide v5, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    .line 225
    .line 226
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getInternalAttributes()I

    .line 227
    .line 228
    .line 229
    move-result v5

    .line 230
    invoke-static {v5}, Lorg/apache/tools/zip/ZipShort;->getBytes(I)[B

    .line 231
    .line 232
    .line 233
    move-result-object v5

    .line 234
    invoke-virtual {p0, v5}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 235
    .line 236
    .line 237
    iget-wide v5, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    .line 238
    .line 239
    add-long/2addr v5, v7

    .line 240
    iput-wide v5, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    .line 241
    .line 242
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getExternalAttributes()J

    .line 243
    .line 244
    .line 245
    move-result-wide v5

    .line 246
    invoke-static {v5, v6}, Lorg/apache/tools/zip/ZipLong;->getBytes(J)[B

    .line 247
    .line 248
    .line 249
    move-result-object v5

    .line 250
    invoke-virtual {p0, v5}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 251
    .line 252
    .line 253
    iget-wide v5, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    .line 254
    .line 255
    add-long/2addr v5, v2

    .line 256
    iput-wide v5, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    .line 257
    .line 258
    iget-object v5, p0, Lorg/apache/tools/zip/ZipOutputStream;->offsets:Ljava/util/Hashtable;

    .line 259
    .line 260
    invoke-virtual {v5, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    check-cast p1, [B

    .line 265
    .line 266
    invoke-virtual {p0, p1}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 267
    .line 268
    .line 269
    iget-wide v5, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    .line 270
    .line 271
    add-long/2addr v5, v2

    .line 272
    iput-wide v5, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    .line 273
    .line 274
    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 275
    .line 276
    .line 277
    iget-wide v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    .line 278
    .line 279
    array-length p1, v0

    .line 280
    int-to-long v5, p1

    .line 281
    add-long/2addr v2, v5

    .line 282
    iput-wide v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    .line 283
    .line 284
    invoke-virtual {p0, v1}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 285
    .line 286
    .line 287
    iget-wide v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    .line 288
    .line 289
    array-length p1, v1

    .line 290
    int-to-long v0, p1

    .line 291
    add-long/2addr v2, v0

    .line 292
    iput-wide v2, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    .line 293
    .line 294
    invoke-virtual {p0, v4}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 295
    .line 296
    .line 297
    iget-wide v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    .line 298
    .line 299
    array-length p1, v4

    .line 300
    int-to-long v2, p1

    .line 301
    add-long/2addr v0, v2

    .line 302
    iput-wide v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    .line 303
    .line 304
    return-void
.end method

.method protected writeDataDescriptor(Lorg/apache/tools/zip/ZipEntry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getMethod()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/16 v0, 0x8

    .line 6
    .line 7
    if-ne p1, v0, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object p1, Lorg/apache/tools/zip/ZipOutputStream;->DD_SIG:[B

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipEntry;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCrc()J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    invoke-static {v0, v1}, Lorg/apache/tools/zip/ZipLong;->getBytes(J)[B

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0, p1}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipEntry;

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    .line 35
    .line 36
    .line 37
    move-result-wide v0

    .line 38
    invoke-static {v0, v1}, Lorg/apache/tools/zip/ZipLong;->getBytes(J)[B

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p0, p1}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lorg/apache/tools/zip/ZipOutputStream;->entry:Lorg/apache/tools/zip/ZipEntry;

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    .line 48
    .line 49
    .line 50
    move-result-wide v0

    .line 51
    invoke-static {v0, v1}, Lorg/apache/tools/zip/ZipLong;->getBytes(J)[B

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p0, p1}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 56
    .line 57
    .line 58
    iget-wide v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    .line 59
    .line 60
    const-wide/16 v2, 0x10

    .line 61
    .line 62
    add-long/2addr v0, v2

    .line 63
    iput-wide v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    .line 64
    .line 65
    :cond_1
    :goto_0
    return-void
.end method

.method protected writeLocalFileHeader(Lorg/apache/tools/zip/ZipEntry;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->offsets:Ljava/util/Hashtable;

    .line 2
    .line 3
    iget-wide v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    .line 4
    .line 5
    invoke-static {v1, v2}, Lorg/apache/tools/zip/ZipLong;->getBytes(J)[B

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    sget-object v0, Lorg/apache/tools/zip/ZipOutputStream;->LFH_SIG:[B

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 15
    .line 16
    .line 17
    iget-wide v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    .line 18
    .line 19
    const-wide/16 v2, 0x4

    .line 20
    .line 21
    add-long/2addr v0, v2

    .line 22
    iput-wide v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getMethod()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/16 v1, 0x8

    .line 29
    .line 30
    if-ne v0, v1, :cond_0

    .line 31
    .line 32
    iget-object v4, p0, Lorg/apache/tools/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    .line 33
    .line 34
    if-nez v4, :cond_0

    .line 35
    .line 36
    const/16 v4, 0x14

    .line 37
    .line 38
    invoke-static {v4}, Lorg/apache/tools/zip/ZipShort;->getBytes(I)[B

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {p0, v4}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 43
    .line 44
    .line 45
    invoke-static {v1}, Lorg/apache/tools/zip/ZipShort;->getBytes(I)[B

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {p0, v4}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const/16 v4, 0xa

    .line 54
    .line 55
    invoke-static {v4}, Lorg/apache/tools/zip/ZipShort;->getBytes(I)[B

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {p0, v4}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 60
    .line 61
    .line 62
    sget-object v4, Lorg/apache/tools/zip/ZipOutputStream;->ZERO:[B

    .line 63
    .line 64
    invoke-virtual {p0, v4}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 65
    .line 66
    .line 67
    :goto_0
    iget-wide v4, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    .line 68
    .line 69
    add-long/2addr v4, v2

    .line 70
    iput-wide v4, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    .line 71
    .line 72
    invoke-static {v0}, Lorg/apache/tools/zip/ZipShort;->getBytes(I)[B

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-virtual {p0, v4}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 77
    .line 78
    .line 79
    iget-wide v4, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    .line 80
    .line 81
    const-wide/16 v6, 0x2

    .line 82
    .line 83
    add-long/2addr v4, v6

    .line 84
    iput-wide v4, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getTime()J

    .line 87
    .line 88
    .line 89
    move-result-wide v4

    .line 90
    invoke-static {v4, v5}, Lorg/apache/tools/zip/ZipOutputStream;->toDosTime(J)[B

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    invoke-virtual {p0, v4}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 95
    .line 96
    .line 97
    iget-wide v4, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    .line 98
    .line 99
    add-long/2addr v4, v2

    .line 100
    iput-wide v4, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    .line 101
    .line 102
    iput-wide v4, p0, Lorg/apache/tools/zip/ZipOutputStream;->localDataStart:J

    .line 103
    .line 104
    if-eq v0, v1, :cond_2

    .line 105
    .line 106
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    .line 107
    .line 108
    if-eqz v0, :cond_1

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_1
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCrc()J

    .line 112
    .line 113
    .line 114
    move-result-wide v0

    .line 115
    invoke-static {v0, v1}, Lorg/apache/tools/zip/ZipLong;->getBytes(J)[B

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    .line 123
    .line 124
    .line 125
    move-result-wide v0

    .line 126
    invoke-static {v0, v1}, Lorg/apache/tools/zip/ZipLong;->getBytes(J)[B

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    .line 134
    .line 135
    .line 136
    move-result-wide v0

    .line 137
    invoke-static {v0, v1}, Lorg/apache/tools/zip/ZipLong;->getBytes(J)[B

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 142
    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_2
    :goto_1
    sget-object v0, Lorg/apache/tools/zip/ZipOutputStream;->LZERO:[B

    .line 146
    .line 147
    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 154
    .line 155
    .line 156
    :goto_2
    iget-wide v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    .line 157
    .line 158
    const-wide/16 v2, 0xc

    .line 159
    .line 160
    add-long/2addr v0, v2

    .line 161
    iput-wide v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    .line 162
    .line 163
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->getBytes(Ljava/lang/String;)[B

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    array-length v1, v0

    .line 172
    invoke-static {v1}, Lorg/apache/tools/zip/ZipShort;->getBytes(I)[B

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {p0, v1}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 177
    .line 178
    .line 179
    iget-wide v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    .line 180
    .line 181
    add-long/2addr v1, v6

    .line 182
    iput-wide v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    .line 183
    .line 184
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getLocalFileDataExtra()[B

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    array-length v1, p1

    .line 189
    invoke-static {v1}, Lorg/apache/tools/zip/ZipShort;->getBytes(I)[B

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-virtual {p0, v1}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 194
    .line 195
    .line 196
    iget-wide v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    .line 197
    .line 198
    add-long/2addr v1, v6

    .line 199
    iput-wide v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    .line 200
    .line 201
    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 202
    .line 203
    .line 204
    iget-wide v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    .line 205
    .line 206
    array-length v0, v0

    .line 207
    int-to-long v3, v0

    .line 208
    add-long/2addr v1, v3

    .line 209
    iput-wide v1, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    .line 210
    .line 211
    invoke-virtual {p0, p1}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([B)V

    .line 212
    .line 213
    .line 214
    iget-wide v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    .line 215
    .line 216
    array-length p1, p1

    .line 217
    int-to-long v2, p1

    .line 218
    add-long/2addr v0, v2

    .line 219
    iput-wide v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->written:J

    .line 220
    .line 221
    iput-wide v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->dataStart:J

    .line 222
    .line 223
    return-void
.end method

.method protected final writeOut([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/tools/zip/ZipOutputStream;->writeOut([BII)V

    return-void
.end method

.method protected final writeOut([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/apache/tools/zip/ZipOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    :goto_0
    return-void
.end method
