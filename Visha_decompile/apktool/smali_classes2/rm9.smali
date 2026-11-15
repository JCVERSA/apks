.class public abstract Lrm9;
.super Lcom/google/android/exoplayer2/decoder/SimpleDecoder;
.source "SourceFile"

# interfaces
.implements Lo2a;


# instance fields
.field public final n:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    new-array v1, v0, [Ly4a;

    new-array v0, v0, [Lk5a;

    invoke-direct {p0, v1, v0}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;-><init>([Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;[Lku1;)V

    iput-object p1, p0, Lrm9;->n:Ljava/lang/String;

    const/16 p1, 0x400

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->q(I)V

    return-void
.end method

.method public static synthetic r(Lrm9;Lku1;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/decoder/SimpleDecoder;->n(Lku1;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic c()Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;
    .locals 0

    invoke-virtual {p0}, Lrm9;->s()Ly4a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic d()Lku1;
    .locals 0

    invoke-virtual {p0}, Lrm9;->t()Lk5a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic e(Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/decoder/DecoderException;
    .locals 0

    invoke-virtual {p0, p1}, Lrm9;->u(Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic f(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lku1;Z)Lcom/google/android/exoplayer2/decoder/DecoderException;
    .locals 0

    check-cast p1, Ly4a;

    check-cast p2, Lk5a;

    invoke-virtual {p0, p1, p2, p3}, Lrm9;->w(Ly4a;Lk5a;Z)Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    move-result-object p0

    return-object p0
.end method

.method public final s()Ly4a;
    .locals 0

    new-instance p0, Ly4a;

    invoke-direct {p0}, Ly4a;-><init>()V

    return-object p0
.end method

.method public setPositionUs(J)V
    .locals 0

    return-void
.end method

.method public final t()Lk5a;
    .locals 1

    new-instance v0, Lrm9$a;

    invoke-direct {v0, p0}, Lrm9$a;-><init>(Lrm9;)V

    return-object v0
.end method

.method public final u(Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
    .locals 1

    new-instance p0, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    const-string v0, "Unexpected decode error"

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p0
.end method

.method public abstract v([BIZ)Ll2a;
.end method

.method public final w(Ly4a;Lk5a;Z)Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
    .locals 8

    :try_start_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->d:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-virtual {p0, v1, v0, p3}, Lrm9;->v([BIZ)Ll2a;

    move-result-object v5

    iget-wide v3, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->f:J

    iget-wide v6, p1, Ly4a;->j:J

    move-object v2, p2

    invoke-virtual/range {v2 .. v7}, Lk5a;->m(JLl2a;J)V

    const/high16 p0, -0x80000000

    invoke-virtual {p2, p0}, Lwk0;->d(I)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/text/SubtitleDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return-object p0

    :catch_0
    move-exception p0

    return-object p0
.end method
