.class public abstract Lh3/j;
.super Landroidx/media3/decoder/SimpleDecoder;
.source "source.java"

# interfaces
.implements Lh3/l;


# instance fields
.field private final o:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [Lh3/o;

    .line 3
    .line 4
    new-array v0, v0, [Lh3/p;

    .line 5
    .line 6
    invoke-direct {p0, v1, v0}, Landroidx/media3/decoder/SimpleDecoder;-><init>([Landroidx/media3/decoder/DecoderInputBuffer;[Landroidx/media3/decoder/h;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lh3/j;->o:Ljava/lang/String;

    .line 10
    .line 11
    const/16 p1, 0x400

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/media3/decoder/SimpleDecoder;->s(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method static synthetic t(Lh3/j;Landroidx/media3/decoder/h;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/media3/decoder/SimpleDecoder;->p(Landroidx/media3/decoder/h;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected bridge synthetic e()Landroidx/media3/decoder/DecoderInputBuffer;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lh3/j;->u()Lh3/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method protected bridge synthetic f()Landroidx/media3/decoder/h;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lh3/j;->v()Lh3/p;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method protected bridge synthetic g(Ljava/lang/Throwable;)Landroidx/media3/decoder/DecoderException;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lh3/j;->w(Ljava/lang/Throwable;)Landroidx/media3/extractor/text/SubtitleDecoderException;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lh3/j;->o:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method protected bridge synthetic h(Landroidx/media3/decoder/DecoderInputBuffer;Landroidx/media3/decoder/h;Z)Landroidx/media3/decoder/DecoderException;
    .locals 0

    .line 1
    check-cast p1, Lh3/o;

    .line 2
    .line 3
    check-cast p2, Lh3/p;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lh3/j;->x(Lh3/o;Lh3/p;Z)Landroidx/media3/extractor/text/SubtitleDecoderException;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public setPositionUs(J)V
    .locals 0

    .line 1
    return-void
.end method

.method protected final u()Lh3/o;
    .locals 1

    .line 1
    new-instance v0, Lh3/o;

    .line 2
    .line 3
    invoke-direct {v0}, Lh3/o;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method protected final v()Lh3/p;
    .locals 1

    .line 1
    new-instance v0, Lh3/j$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lh3/j$a;-><init>(Lh3/j;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method protected final w(Ljava/lang/Throwable;)Landroidx/media3/extractor/text/SubtitleDecoderException;
    .locals 2

    .line 1
    new-instance v0, Landroidx/media3/extractor/text/SubtitleDecoderException;

    .line 2
    .line 3
    const-string v1, "Unexpected decode error"

    .line 4
    .line 5
    invoke-direct {v0, v1, p1}, Landroidx/media3/extractor/text/SubtitleDecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method protected final x(Lh3/o;Lh3/p;Z)Landroidx/media3/extractor/text/SubtitleDecoderException;
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p1, Landroidx/media3/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p0, v1, v0, p3}, Lh3/j;->y([BIZ)Lh3/k;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    iget-wide v3, p1, Landroidx/media3/decoder/DecoderInputBuffer;->e:J

    .line 22
    .line 23
    iget-wide v6, p1, Lh3/o;->i:J

    .line 24
    .line 25
    move-object v2, p2

    .line 26
    invoke-virtual/range {v2 .. v7}, Lh3/p;->a(JLh3/k;J)V

    .line 27
    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p2, Landroidx/media3/decoder/h;->shouldBeSkipped:Z
    :try_end_0
    .catch Landroidx/media3/extractor/text/SubtitleDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    return-object p1

    .line 34
    :catch_0
    move-exception p1

    .line 35
    return-object p1
.end method

.method protected abstract y([BIZ)Lh3/k;
.end method
