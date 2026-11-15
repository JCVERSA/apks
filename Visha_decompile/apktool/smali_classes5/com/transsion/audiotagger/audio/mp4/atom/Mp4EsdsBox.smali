.class public Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox;
.super Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;,
        Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;
    }
.end annotation


# static fields
.field public static final AVERAGE_BITRATE_LENGTH:I = 0x4

.field public static final BUFFER_SIZE_LENGTH:I = 0x3

.field public static final CHANNEL_FLAGS_LENGTH:I = 0x1

.field public static final CONFIG_TYPE_LENGTH:I = 0x1

.field public static final DESCRIPTOR_OBJECT_TYPE_LENGTH:I = 0x1

.field public static final DESCRIPTOR_TYPE_LENGTH:I = 0x1

.field public static final ES_ID_LENGTH:I = 0x2

.field private static final FILLER_END:I = 0xfe

.field private static final FILLER_OTHER:I = 0x81

.field private static final FILLER_START:I = 0x80

.field public static final MAX_BITRATE_LENGTH:I = 0x4

.field public static final OBJECT_TYPE_LENGTH:I = 0x1

.field public static final OTHER_FLAG_LENGTH:I = 0x3

.field private static final SECTION_FIVE:I = 0x5

.field private static final SECTION_FOUR:I = 0x4

.field private static final SECTION_SIX:I = 0x6

.field private static final SECTION_THREE:I = 0x3

.field public static final STREAM_PRIORITY_LENGTH:I = 0x1

.field public static final STREAM_TYPE_LENGTH:I = 0x1

.field public static final VERSION_FLAG_LENGTH:I = 0x1

.field private static audioProfileMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;",
            ">;"
        }
    .end annotation
.end field

.field private static kindMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private audioProfile:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

.field private avgBitrate:I

.field private kind:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

.field private maxBitrate:I

.field private numberOfChannels:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox;->kindMap:Ljava/util/Map;

    invoke-static {}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;->values()[Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    sget-object v5, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox;->kindMap:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox;->audioProfileMap:Ljava/util/Map;

    invoke-static {}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->values()[Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    move-result-object v0

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    sget-object v4, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox;->audioProfileMap:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V
    .locals 3

    invoke-direct {p0}, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;-><init>()V

    iput-object p1, p0, Lcom/transsion/audiotagger/audio/mp4/atom/AbstractMp4Box;->header:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4BoxHeader;

    sget-object p1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result p1

    const/4 v0, 0x4

    add-int/2addr p1, v0

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    invoke-virtual {p0, p2}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox;->processSectionHeader(Ljava/nio/ByteBuffer;)I

    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result p1

    add-int/2addr p1, v1

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox;->processSectionHeader(Ljava/nio/ByteBuffer;)I

    sget-object p1, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox;->kindMap:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    iput-object p1, p0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox;->kind:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    iput p1, p0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox;->maxBitrate:I

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    iput p1, p0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox;->avgBitrate:I

    :cond_1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    const/4 v2, 0x5

    if-ne p1, v2, :cond_2

    invoke-virtual {p0, p2}, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox;->processSectionHeader(Ljava/nio/ByteBuffer;)I

    sget-object p1, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox;->audioProfileMap:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    shr-int/lit8 v1, v2, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    iput-object p1, p0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox;->audioProfile:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    shl-int/lit8 p1, p1, 0x1

    shr-int/2addr p1, v0

    iput p1, p0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox;->numberOfChannels:I

    :cond_2
    return-void
.end method


# virtual methods
.method public getAudioProfile()Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox;->audioProfile:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    return-object p0
.end method

.method public getAvgBitrate()I
    .locals 0

    iget p0, p0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox;->avgBitrate:I

    return p0
.end method

.method public getKind()Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox;->kind:Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    return-object p0
.end method

.method public getMaxBitrate()I
    .locals 0

    iget p0, p0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox;->maxBitrate:I

    return p0
.end method

.method public getNumberOfChannels()I
    .locals 0

    iget p0, p0, Lcom/transsion/audiotagger/audio/mp4/atom/Mp4EsdsBox;->numberOfChannels:I

    return p0
.end method

.method public processSectionHeader(Ljava/nio/ByteBuffer;)I
    .locals 2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    and-int/lit16 v0, p0, 0xff

    const/16 v1, 0x80

    if-eq v0, v1, :cond_1

    const/16 v1, 0x81

    if-eq v0, v1, :cond_1

    const/16 v1, 0xfe

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/transsion/audiotagger/audio/generic/Utils;->u(B)I

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    invoke-static {p0}, Lcom/transsion/audiotagger/audio/generic/Utils;->u(B)I

    move-result p0

    :goto_1
    return p0
.end method
