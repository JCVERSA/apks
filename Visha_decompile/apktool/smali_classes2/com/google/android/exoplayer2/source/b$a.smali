.class public final Lcom/google/android/exoplayer2/source/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh19;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:Lh19;

.field public b:Z

.field public final synthetic c:Lcom/google/android/exoplayer2/source/b;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/b;Lh19;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/b$a;->c:Lcom/google/android/exoplayer2/source/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/b$a;->a:Lh19;

    return-void
.end method


# virtual methods
.method public a(Lo44;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I
    .locals 10

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b$a;->c:Lcom/google/android/exoplayer2/source/b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/b;->f()Z

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/b$a;->b:Z

    const/4 v2, 0x4

    const/4 v3, -0x4

    if-eqz v0, :cond_1

    invoke-virtual {p2, v2}, Lwk0;->k(I)V

    return v3

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b$a;->a:Lh19;

    invoke-interface {v0, p1, p2, p3}, Lh19;->a(Lo44;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I

    move-result p3

    const/4 v0, -0x5

    const-wide/high16 v4, -0x8000000000000000L

    if-ne p3, v0, :cond_6

    iget-object p2, p1, Lo44;->b:Lcom/google/android/exoplayer2/k;

    invoke-static {p2}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/k;

    iget p3, p2, Lcom/google/android/exoplayer2/k;->C:I

    if-nez p3, :cond_2

    iget v1, p2, Lcom/google/android/exoplayer2/k;->D:I

    if-eqz v1, :cond_5

    :cond_2
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/b$a;->c:Lcom/google/android/exoplayer2/source/b;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/b;->f:J

    const-wide/16 v6, 0x0

    cmp-long v1, v1, v6

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    move p3, v2

    :cond_3
    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/b;->g:J

    cmp-long p0, v6, v4

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    iget v2, p2, Lcom/google/android/exoplayer2/k;->D:I

    :goto_0
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/k;->b()Lcom/google/android/exoplayer2/k$b;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/k$b;->N(I)Lcom/google/android/exoplayer2/k$b;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/k$b;->O(I)Lcom/google/android/exoplayer2/k$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/k$b;->E()Lcom/google/android/exoplayer2/k;

    move-result-object p0

    iput-object p0, p1, Lo44;->b:Lcom/google/android/exoplayer2/k;

    :cond_5
    return v0

    :cond_6
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/b$a;->c:Lcom/google/android/exoplayer2/source/b;

    iget-wide v6, p1, Lcom/google/android/exoplayer2/source/b;->g:J

    cmp-long v0, v6, v4

    if-eqz v0, :cond_9

    if-ne p3, v3, :cond_7

    iget-wide v8, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->f:J

    cmp-long v0, v8, v6

    if-gez v0, :cond_8

    :cond_7
    if-ne p3, v1, :cond_9

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/b;->getBufferedPositionUs()J

    move-result-wide v0

    cmp-long p1, v0, v4

    if-nez p1, :cond_9

    iget-boolean p1, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->e:Z

    if-nez p1, :cond_9

    :cond_8
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->b()V

    invoke-virtual {p2, v2}, Lwk0;->k(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/b$a;->b:Z

    return v3

    :cond_9
    return p3
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/b$a;->b:Z

    return-void
.end method

.method public isReady()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b$a;->c:Lcom/google/android/exoplayer2/source/b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/b;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/b$a;->a:Lh19;

    invoke-interface {p0}, Lh19;->isReady()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public maybeThrowError()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/b$a;->a:Lh19;

    invoke-interface {p0}, Lh19;->maybeThrowError()V

    return-void
.end method

.method public skipData(J)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b$a;->c:Lcom/google/android/exoplayer2/source/b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x3

    return p0

    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/b$a;->a:Lh19;

    invoke-interface {p0, p1, p2}, Lh19;->skipData(J)I

    move-result p0

    return p0
.end method
