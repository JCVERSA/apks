.class public Lcom/transsion/audiotagger/audio/mp4/atom/Mp4StsdBox;
.super Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;
.source "SourceFile"


# static fields
.field public static final NO_OF_DESCRIPTIONS_POS:I = 0x4

.field public static final NO_OF_DESCRIPTIONS_POS_LENGTH:I = 0x4

.field public static final OTHER_FLAG_LENGTH:I = 0x3

.field public static final OTHER_FLAG_POS:I = 0x1

.field public static final VERSION_FLAG_LENGTH:I = 0x1

.field public static final VERSION_FLAG_POS:I


# direct methods
.method public constructor <init>(Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;-><init>()V

    iput-object p1, p0, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->header:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    iput-object p2, p0, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public processData()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/audiotagger/audio/exceptions/CannotReadException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method
