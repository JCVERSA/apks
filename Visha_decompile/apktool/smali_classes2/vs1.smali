.class public final Lvs1;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public final b:Lcom/google/android/exoplayer2/upstream/a;

.field public final c:Lcom/google/android/exoplayer2/upstream/b;

.field public final d:[B

.field public e:Z

.field public f:Z

.field public g:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/a;Lcom/google/android/exoplayer2/upstream/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lvs1;->e:Z

    iput-boolean v0, p0, Lvs1;->f:Z

    iput-object p1, p0, Lvs1;->b:Lcom/google/android/exoplayer2/upstream/a;

    iput-object p2, p0, Lvs1;->c:Lcom/google/android/exoplayer2/upstream/b;

    const/4 p1, 0x1

    new-array p1, p1, [B

    iput-object p1, p0, Lvs1;->d:[B

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    iget-boolean v0, p0, Lvs1;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lvs1;->b:Lcom/google/android/exoplayer2/upstream/a;

    iget-object v1, p0, Lvs1;->c:Lcom/google/android/exoplayer2/upstream/b;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/upstream/a;->a(Lcom/google/android/exoplayer2/upstream/b;)J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lvs1;->e:Z

    :cond_0
    return-void
.end method

.method public close()V
    .locals 1

    iget-boolean v0, p0, Lvs1;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lvs1;->b:Lcom/google/android/exoplayer2/upstream/a;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/a;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lvs1;->f:Z

    :cond_0
    return-void
.end method

.method public d()V
    .locals 0

    invoke-virtual {p0}, Lvs1;->b()V

    return-void
.end method

.method public read()I
    .locals 2

    .line 1
    iget-object v0, p0, Lvs1;->d:[B

    invoke-virtual {p0, v0}, Lvs1;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lvs1;->d:[B

    const/4 v0, 0x0

    aget-byte p0, p0, v0

    and-int/lit16 v1, p0, 0xff

    :goto_0
    return v1
.end method

.method public read([B)I
    .locals 2

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lvs1;->read([BII)I

    move-result p0

    return p0
.end method

.method public read([BII)I
    .locals 2

    .line 4
    iget-boolean v0, p0, Lvs1;->f:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lzi;->g(Z)V

    .line 5
    invoke-virtual {p0}, Lvs1;->b()V

    .line 6
    iget-object v0, p0, Lvs1;->b:Lcom/google/android/exoplayer2/upstream/a;

    invoke-interface {v0, p1, p2, p3}, Lms1;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return p2

    .line 7
    :cond_0
    iget-wide p2, p0, Lvs1;->g:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lvs1;->g:J

    return p1
.end method
