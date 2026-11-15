.class public Lcom/transsion/audiotagger/audio/mp4/atom/Mp4MvhdBox;
.super Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;
.source "SourceFile"


# static fields
.field public static final CREATED_DATE_LONG_LENGTH:I = 0x8

.field public static final CREATED_DATE_LONG_POS:I = 0x4

.field public static final CREATED_DATE_SHORT_LENGTH:I = 0x4

.field public static final CREATED_DATE_SHORT_POS:I = 0x4

.field public static final DURATION_LONG_LENGTH:I = 0x8

.field public static final DURATION_LONG_POS:I = 0x18

.field public static final DURATION_SHORT_LENGTH:I = 0x4

.field public static final DURATION_SHORT_POS:I = 0x10

.field private static final LONG_FORMAT:I = 0x1

.field public static final MODIFIED_DATE_LONG_LENGTH:I = 0x8

.field public static final MODIFIED_DATE_LONG_POS:I = 0xc

.field public static final MODIFIED_DATE_SHORT_LENGTH:I = 0x4

.field public static final MODIFIED_DATE_SHORT_POS:I = 0x8

.field public static final OTHER_FLAG_LENGTH:I = 0x3

.field public static final OTHER_FLAG_POS:I = 0x1

.field public static final TIMESCALE_LENGTH:I = 0x4

.field public static final TIMESCALE_LONG_POS:I = 0x14

.field public static final TIMESCALE_SHORT_POS:I = 0xc

.field public static final VERSION_FLAG_LENGTH:I = 0x1

.field public static final VERSION_FLAG_POS:I


# instance fields
.field private timeLength:J

.field private timeScale:I


# direct methods
.method public constructor <init>(Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;-><init>()V

    iput-object p1, p0, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->header:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    sget-object p1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/16 p1, 0x14

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4MvhdBox;->timeScale:I

    const/16 p1, 0x18

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4MvhdBox;->timeLength:J

    goto :goto_0

    :cond_0
    const/16 p1, 0xc

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4MvhdBox;->timeScale:I

    const/16 p1, 0x10

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    invoke-static {p1}, Lcom/transsion/audiotagger/audio/generic/Utils;->u(I)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4MvhdBox;->timeLength:J

    :goto_0
    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 4

    iget-wide v0, p0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4MvhdBox;->timeLength:J

    iget p0, p0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4MvhdBox;->timeScale:I

    int-to-long v2, p0

    div-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method
