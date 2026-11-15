.class public Lcom/transsion/audiotagger/audio/mp3/XingFrame;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BYTE_1:I = 0x0

.field private static final BYTE_2:I = 0x1

.field private static final BYTE_3:I = 0x2

.field private static final BYTE_4:I = 0x3

.field public static final MAX_BUFFER_SIZE_NEEDED_TO_READ_XING:I = 0xc0

.field private static final MPEG_VERSION_1_MODE_MONO_OFFSET:I = 0x15

.field private static final MPEG_VERSION_1_MODE_STEREO_OFFSET:I = 0x24

.field private static final MPEG_VERSION_2_MODE_MONO_OFFSET:I = 0xd

.field private static final MPEG_VERSION_2_MODE_STEREO_OFFSET:I = 0x15

.field private static final XING_AUDIOSIZE_BUFFER_SIZE:I = 0x4

.field private static final XING_CBR_ID:[B

.field private static final XING_FLAG_BUFFER_SIZE:I = 0x4

.field private static final XING_FRAMECOUNT_BUFFER_SIZE:I = 0x4

.field private static final XING_HEADER_BUFFER_SIZE:I = 0x78

.field private static final XING_IDENTIFIER_BUFFER_SIZE:I = 0x4

.field private static final XING_VBR_ID:[B


# instance fields
.field private audioSize:I

.field private frameCount:I

.field private header:Ljava/nio/ByteBuffer;

.field private isAudioSizeEnabled:Z

.field private isFrameCountEnabled:Z

.field private lameFrame:Lcom/transsion/audiotagger/audio/mp3/LameFrame;

.field private vbr:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/transsion/audiotagger/audio/mp3/XingFrame;->XING_VBR_ID:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/transsion/audiotagger/audio/mp3/XingFrame;->XING_CBR_ID:[B

    return-void

    :array_0
    .array-data 1
        0x58t
        0x69t
        0x6et
        0x67t
    .end array-data

    :array_1
    .array-data 1
        0x49t
        0x6et
        0x66t
        0x6ft
    .end array-data
.end method

.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/audiotagger/audio/mp3/XingFrame;->vbr:Z

    iput-boolean v0, p0, Lcom/transsion/audiotagger/audio/mp3/XingFrame;->isFrameCountEnabled:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/transsion/audiotagger/audio/mp3/XingFrame;->frameCount:I

    iput-boolean v0, p0, Lcom/transsion/audiotagger/audio/mp3/XingFrame;->isAudioSizeEnabled:Z

    iput v1, p0, Lcom/transsion/audiotagger/audio/mp3/XingFrame;->audioSize:I

    iput-object p1, p0, Lcom/transsion/audiotagger/audio/mp3/XingFrame;->header:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-direct {p0}, Lcom/transsion/audiotagger/audio/mp3/XingFrame;->setVbr()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 v1, 0x3

    aget-byte v2, v0, v1

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/transsion/audiotagger/audio/mp3/XingFrame;->setFrameCount()V

    :cond_0
    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/transsion/audiotagger/audio/mp3/XingFrame;->setAudioSize()V

    :cond_1
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v0

    const/16 v1, 0x9c

    if-lt v0, v1, :cond_2

    const/16 v0, 0x78

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static {p1}, Lcom/transsion/audiotagger/audio/mp3/LameFrame;->parseLameFrame(Ljava/nio/ByteBuffer;)Lcom/transsion/audiotagger/audio/mp3/LameFrame;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/audio/mp3/XingFrame;->lameFrame:Lcom/transsion/audiotagger/audio/mp3/LameFrame;

    :cond_2
    return-void
.end method

.method public static isXingFrame(Ljava/nio/ByteBuffer;Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;)Ljava/nio/ByteBuffer;
    .locals 3

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;->getVersion()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;->getChannelMode()I

    move-result p1

    if-ne p1, v2, :cond_0

    add-int/lit8 p1, v0, 0x15

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    :cond_0
    add-int/lit8 p1, v0, 0x24

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/audiotagger/audio/mp3/MPEGFrameHeader;->getChannelMode()I

    move-result p1

    if-ne p1, v2, :cond_2

    add-int/lit8 p1, v0, 0xd

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    :cond_2
    add-int/lit8 p1, v0, 0x15

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 p0, 0x4

    new-array p0, p0, [B

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    sget-object v0, Lcom/transsion/audiotagger/audio/mp3/XingFrame;->XING_VBR_ID:[B

    invoke-static {p0, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/transsion/audiotagger/audio/mp3/XingFrame;->XING_CBR_ID:[B

    invoke-static {p0, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-nez p0, :cond_3

    const/4 p0, 0x0

    return-object p0

    :cond_3
    sget-object p0, Lcom/transsion/audiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    const-string v0, "Found Xing Frame"

    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    return-object p1
.end method

.method public static parseXingFrame(Ljava/nio/ByteBuffer;)Lcom/transsion/audiotagger/audio/mp3/XingFrame;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/InvalidAudioFrameException;
        }
    .end annotation

    new-instance v0, Lcom/transsion/audiotagger/audio/mp3/XingFrame;

    invoke-direct {v0, p0}, Lcom/transsion/audiotagger/audio/mp3/XingFrame;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method private setAudioSize()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/transsion/audiotagger/audio/mp3/XingFrame;->header:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/transsion/audiotagger/audio/mp3/XingFrame;->isAudioSizeEnabled:Z

    const/4 v2, 0x0

    aget-byte v2, v0, v2

    shl-int/lit8 v2, v2, 0x18

    const/high16 v3, -0x1000000

    and-int/2addr v2, v3

    aget-byte v1, v0, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v3, 0xff0000

    and-int/2addr v1, v3

    or-int/2addr v1, v2

    const/4 v2, 0x2

    aget-byte v2, v0, v2

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    const/4 v2, 0x3

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/audiotagger/audio/mp3/XingFrame;->audioSize:I

    return-void
.end method

.method private setFrameCount()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/transsion/audiotagger/audio/mp3/XingFrame;->header:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/transsion/audiotagger/audio/mp3/XingFrame;->isFrameCountEnabled:Z

    const/4 v2, 0x0

    aget-byte v2, v0, v2

    shl-int/lit8 v2, v2, 0x18

    const/high16 v3, -0x1000000

    and-int/2addr v2, v3

    aget-byte v1, v0, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v3, 0xff0000

    and-int/2addr v1, v3

    or-int/2addr v1, v2

    const/4 v2, 0x2

    aget-byte v2, v0, v2

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    const/4 v2, 0x3

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/audiotagger/audio/mp3/XingFrame;->frameCount:I

    return-void
.end method

.method private setVbr()V
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/transsion/audiotagger/audio/mp3/XingFrame;->header:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/transsion/audiotagger/audio/mp3/XingFrame;->XING_VBR_ID:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transsion/audiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    const-string v1, "Is Vbr"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/audiotagger/audio/mp3/XingFrame;->vbr:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final getAudioSize()I
    .locals 0

    iget p0, p0, Lcom/transsion/audiotagger/audio/mp3/XingFrame;->audioSize:I

    return p0
.end method

.method public final getFrameCount()I
    .locals 0

    iget p0, p0, Lcom/transsion/audiotagger/audio/mp3/XingFrame;->frameCount:I

    return p0
.end method

.method public getLameFrame()Lcom/transsion/audiotagger/audio/mp3/LameFrame;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/mp3/XingFrame;->lameFrame:Lcom/transsion/audiotagger/audio/mp3/LameFrame;

    return-object p0
.end method

.method public final isAudioSizeEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/audiotagger/audio/mp3/XingFrame;->isAudioSizeEnabled:Z

    return p0
.end method

.method public final isFrameCountEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/audiotagger/audio/mp3/XingFrame;->isFrameCountEnabled:Z

    return p0
.end method

.method public final isVbr()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/audiotagger/audio/mp3/XingFrame;->vbr:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xingheader vbr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/audiotagger/audio/mp3/XingFrame;->vbr:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " frameCountEnabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/audiotagger/audio/mp3/XingFrame;->isFrameCountEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " frameCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/audiotagger/audio/mp3/XingFrame;->frameCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " audioSizeEnabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/audiotagger/audio/mp3/XingFrame;->isAudioSizeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " audioFileSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/audiotagger/audio/mp3/XingFrame;->audioSize:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
