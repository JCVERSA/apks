.class final Landroidx/media3/extractor/mp4/BoxParser$EsdsData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/mp4/BoxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EsdsData"
.end annotation


# instance fields
.field private final bitrate:J

.field private final initializationData:[B

.field private final mimeType:Ljava/lang/String;

.field private final peakBitrate:J


# direct methods
.method public constructor <init>(Ljava/lang/String;[BJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->mimeType:Ljava/lang/String;

    iput-object p2, p0, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->initializationData:[B

    iput-wide p3, p0, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->bitrate:J

    iput-wide p5, p0, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->peakBitrate:J

    return-void
.end method

.method public static synthetic access$1000(Landroidx/media3/extractor/mp4/BoxParser$EsdsData;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->mimeType:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1100(Landroidx/media3/extractor/mp4/BoxParser$EsdsData;)[B
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->initializationData:[B

    return-object p0
.end method

.method public static synthetic access$1400(Landroidx/media3/extractor/mp4/BoxParser$EsdsData;)J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->peakBitrate:J

    return-wide v0
.end method

.method public static synthetic access$1500(Landroidx/media3/extractor/mp4/BoxParser$EsdsData;)J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->bitrate:J

    return-wide v0
.end method
