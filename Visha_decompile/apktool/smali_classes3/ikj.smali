.class public final Likj;
.super Lxzi;
.source "SourceFile"


# instance fields
.field public i:J

.field public j:I

.field public k:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lxzi;-><init>(II)V

    const/16 v0, 0x20

    iput v0, p0, Likj;->k:I

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    invoke-super {p0}, Lxzi;->b()V

    const/4 v0, 0x0

    iput v0, p0, Likj;->j:I

    return-void
.end method

.method public final n()I
    .locals 0

    iget p0, p0, Likj;->j:I

    return p0
.end method

.method public final o()J
    .locals 2

    iget-wide v0, p0, Likj;->i:J

    return-wide v0
.end method

.method public final p(I)V
    .locals 0

    iput p1, p0, Likj;->k:I

    return-void
.end method

.method public final q(Lxzi;)Z
    .locals 4

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p1, v0}, Lezi;->d(I)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Ln7g;->d(Z)V

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Lezi;->d(I)Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-static {v0}, Ln7g;->d(Z)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lezi;->d(I)Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-static {v0}, Ln7g;->d(Z)V

    invoke-virtual {p0}, Likj;->r()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Likj;->j:I

    iget v2, p0, Likj;->k:I

    if-lt v0, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lxzi;->d:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lxzi;->d:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result v2

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    add-int/2addr v2, v0

    const v0, 0x2ee000

    if-le v2, v0, :cond_2

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_1
    iget v0, p0, Likj;->j:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Likj;->j:I

    if-nez v0, :cond_3

    iget-wide v2, p1, Lxzi;->f:J

    iput-wide v2, p0, Lxzi;->f:J

    invoke-virtual {p1, v1}, Lezi;->d(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v1}, Lezi;->c(I)V

    :cond_3
    iget-object v0, p1, Lxzi;->d:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-virtual {p0, v2}, Lxzi;->j(I)V

    iget-object v2, p0, Lxzi;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :cond_4
    iget-wide v2, p1, Lxzi;->f:J

    iput-wide v2, p0, Likj;->i:J

    return v1
.end method

.method public final r()Z
    .locals 0

    iget p0, p0, Likj;->j:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
