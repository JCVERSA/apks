.class public final Lfv9;
.super Ljm9;
.source "SourceFile"


# instance fields
.field public final a:Lqw7;

.field public final b:Lpw7;

.field public c:Lpoa;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljm9;-><init>()V

    new-instance v0, Lqw7;

    invoke-direct {v0}, Lqw7;-><init>()V

    iput-object v0, p0, Lfv9;->a:Lqw7;

    new-instance v0, Lpw7;

    invoke-direct {v0}, Lpw7;-><init>()V

    iput-object v0, p0, Lfv9;->b:Lpw7;

    return-void
.end method


# virtual methods
.method public b(Leo6;Ljava/nio/ByteBuffer;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lfv9;->c:Lpoa;

    if-eqz v2, :cond_0

    iget-wide v3, p1, Leo6;->j:J

    invoke-virtual {v2}, Lpoa;->e()J

    move-result-wide v5

    cmp-long v2, v3, v5

    if-eqz v2, :cond_1

    :cond_0
    new-instance v2, Lpoa;

    iget-wide v3, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->f:J

    invoke-direct {v2, v3, v4}, Lpoa;-><init>(J)V

    iput-object v2, p0, Lfv9;->c:Lpoa;

    iget-wide v3, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->f:J

    iget-wide v5, p1, Leo6;->j:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lpoa;->a(J)J

    :cond_1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    move-result p2

    iget-object v2, p0, Lfv9;->a:Lqw7;

    invoke-virtual {v2, p1, p2}, Lqw7;->M([BI)V

    iget-object v2, p0, Lfv9;->b:Lpw7;

    invoke-virtual {v2, p1, p2}, Lpw7;->o([BI)V

    iget-object p1, p0, Lfv9;->b:Lpw7;

    const/16 p2, 0x27

    invoke-virtual {p1, p2}, Lpw7;->r(I)V

    iget-object p1, p0, Lfv9;->b:Lpw7;

    invoke-virtual {p1, v1}, Lpw7;->h(I)I

    move-result p1

    int-to-long p1, p1

    const/16 v2, 0x20

    shl-long/2addr p1, v2

    iget-object v3, p0, Lfv9;->b:Lpw7;

    invoke-virtual {v3, v2}, Lpw7;->h(I)I

    move-result v2

    int-to-long v2, v2

    or-long/2addr p1, v2

    iget-object v2, p0, Lfv9;->b:Lpw7;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Lpw7;->r(I)V

    iget-object v2, p0, Lfv9;->b:Lpw7;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lpw7;->h(I)I

    move-result v2

    iget-object v3, p0, Lfv9;->b:Lpw7;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lpw7;->h(I)I

    move-result v3

    iget-object v4, p0, Lfv9;->a:Lqw7;

    const/16 v5, 0xe

    invoke-virtual {v4, v5}, Lqw7;->P(I)V

    if-eqz v3, :cond_6

    const/16 v4, 0xff

    if-eq v3, v4, :cond_5

    const/4 v2, 0x4

    if-eq v3, v2, :cond_4

    const/4 v2, 0x5

    if-eq v3, v2, :cond_3

    const/4 v2, 0x6

    if-eq v3, v2, :cond_2

    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lfv9;->a:Lqw7;

    iget-object p0, p0, Lfv9;->c:Lpoa;

    invoke-static {v2, p1, p2, p0}, Lcom/google/android/exoplayer2/metadata/scte35/TimeSignalCommand;->parseFromSection(Lqw7;JLpoa;)Lcom/google/android/exoplayer2/metadata/scte35/TimeSignalCommand;

    move-result-object p0

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lfv9;->a:Lqw7;

    iget-object p0, p0, Lfv9;->c:Lpoa;

    invoke-static {v2, p1, p2, p0}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand;->parseFromSection(Lqw7;JLpoa;)Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand;

    move-result-object p0

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lfv9;->a:Lqw7;

    invoke-static {p0}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand;->parseFromSection(Lqw7;)Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand;

    move-result-object p0

    goto :goto_0

    :cond_5
    iget-object p0, p0, Lfv9;->a:Lqw7;

    invoke-static {p0, v2, p1, p2}, Lcom/google/android/exoplayer2/metadata/scte35/PrivateCommand;->parseFromSection(Lqw7;IJ)Lcom/google/android/exoplayer2/metadata/scte35/PrivateCommand;

    move-result-object p0

    goto :goto_0

    :cond_6
    new-instance p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceNullCommand;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceNullCommand;-><init>()V

    :goto_0
    if-nez p0, :cond_7

    new-instance p0, Lcom/google/android/exoplayer2/metadata/Metadata;

    new-array p1, v0, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    goto :goto_1

    :cond_7
    new-instance p1, Lcom/google/android/exoplayer2/metadata/Metadata;

    new-array p2, v1, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    aput-object p0, p2, v0

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    move-object p0, p1

    :goto_1
    return-object p0
.end method
