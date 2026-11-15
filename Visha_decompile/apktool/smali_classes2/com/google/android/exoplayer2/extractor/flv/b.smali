.class public final Lcom/google/android/exoplayer2/extractor/flv/b;
.super Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;
.source "SourceFile"


# instance fields
.field public final b:Lqw7;

.field public final c:Lqw7;

.field public d:I

.field public e:Z

.field public f:Z

.field public g:I


# direct methods
.method public constructor <init>(Lfva;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;-><init>(Lfva;)V

    new-instance p1, Lqw7;

    sget-object v0, Lay6;->a:[B

    invoke-direct {p1, v0}, Lqw7;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->b:Lqw7;

    new-instance p1, Lqw7;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Lqw7;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->c:Lqw7;

    return-void
.end method


# virtual methods
.method public b(Lqw7;)Z
    .locals 2

    invoke-virtual {p1}, Lqw7;->C()I

    move-result p1

    shr-int/lit8 v0, p1, 0x4

    and-int/lit8 v0, v0, 0xf

    and-int/lit8 p1, p1, 0xf

    const/4 v1, 0x7

    if-ne p1, v1, :cond_1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->g:I

    const/4 p0, 0x5

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    new-instance p0, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader$UnsupportedFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Video format not supported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader$UnsupportedFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public c(Lqw7;J)Z
    .locals 10

    invoke-virtual {p1}, Lqw7;->C()I

    move-result v0

    invoke-virtual {p1}, Lqw7;->o()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    add-long v4, p2, v1

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->e:Z

    if-nez v1, :cond_0

    new-instance v0, Lqw7;

    invoke-virtual {p1}, Lqw7;->a()I

    move-result v1

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lqw7;-><init>([B)V

    invoke-virtual {v0}, Lqw7;->d()[B

    move-result-object v1

    invoke-virtual {p1}, Lqw7;->a()I

    move-result v2

    invoke-virtual {p1, v1, p3, v2}, Lqw7;->j([BII)V

    invoke-static {v0}, Lr30;->b(Lqw7;)Lr30;

    move-result-object p1

    iget v0, p1, Lr30;->b:I

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->d:I

    new-instance v0, Lcom/google/android/exoplayer2/k$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/k$b;-><init>()V

    const-string/jumbo v1, "video/avc"

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/k$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/k$b;

    move-result-object v0

    iget-object v1, p1, Lr30;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/k$b;->I(Ljava/lang/String;)Lcom/google/android/exoplayer2/k$b;

    move-result-object v0

    iget v1, p1, Lr30;->c:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/k$b;->j0(I)Lcom/google/android/exoplayer2/k$b;

    move-result-object v0

    iget v1, p1, Lr30;->d:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/k$b;->Q(I)Lcom/google/android/exoplayer2/k$b;

    move-result-object v0

    iget v1, p1, Lr30;->e:F

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/k$b;->a0(F)Lcom/google/android/exoplayer2/k$b;

    move-result-object v0

    iget-object p1, p1, Lr30;->a:Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/k$b;->T(Ljava/util/List;)Lcom/google/android/exoplayer2/k$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/k$b;->E()Lcom/google/android/exoplayer2/k;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;->a:Lfva;

    invoke-interface {v0, p1}, Lfva;->b(Lcom/google/android/exoplayer2/k;)V

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->e:Z

    return p3

    :cond_0
    if-ne v0, p2, :cond_4

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->e:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->g:I

    if-ne v0, p2, :cond_1

    move v6, p2

    goto :goto_0

    :cond_1
    move v6, p3

    :goto_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->f:Z

    if-nez v0, :cond_2

    if-nez v6, :cond_2

    return p3

    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->c:Lqw7;

    invoke-virtual {v0}, Lqw7;->d()[B

    move-result-object v0

    aput-byte p3, v0, p3

    aput-byte p3, v0, p2

    const/4 v1, 0x2

    aput-byte p3, v0, v1

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->d:I

    const/4 v1, 0x4

    rsub-int/lit8 v0, v0, 0x4

    move v7, p3

    :goto_1
    invoke-virtual {p1}, Lqw7;->a()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->c:Lqw7;

    invoke-virtual {v2}, Lqw7;->d()[B

    move-result-object v2

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->d:I

    invoke-virtual {p1, v2, v0, v3}, Lqw7;->j([BII)V

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->c:Lqw7;

    invoke-virtual {v2, p3}, Lqw7;->O(I)V

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->c:Lqw7;

    invoke-virtual {v2}, Lqw7;->G()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->b:Lqw7;

    invoke-virtual {v3, p3}, Lqw7;->O(I)V

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;->a:Lfva;

    iget-object v8, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->b:Lqw7;

    invoke-interface {v3, v8, v1}, Lfva;->d(Lqw7;I)V

    add-int/lit8 v7, v7, 0x4

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;->a:Lfva;

    invoke-interface {v3, p1, v2}, Lfva;->d(Lqw7;I)V

    add-int/2addr v7, v2

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;->a:Lfva;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lfva;->e(JIIILfva$a;)V

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/extractor/flv/b;->f:Z

    return p2

    :cond_4
    return p3
.end method
