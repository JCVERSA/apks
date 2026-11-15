.class public final Lhjj;
.super Lurf;
.source "SourceFile"


# instance fields
.field public i:I

.field public j:I

.field public k:Z

.field public l:I

.field public m:[B

.field public n:I

.field public o:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lurf;-><init>()V

    sget-object v0, Lkfh;->c:[B

    iput-object v0, p0, Lhjj;->m:[B

    return-void
.end method


# virtual methods
.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 8

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    sub-int v2, v1, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget v3, p0, Lhjj;->l:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-wide v4, p0, Lhjj;->o:J

    iget-object v6, p0, Lurf;->b:Lcpf;

    iget v6, v6, Lcpf;->d:I

    div-int v6, v3, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lhjj;->o:J

    iget v4, p0, Lhjj;->l:I

    sub-int/2addr v4, v3

    iput v4, p0, Lhjj;->l:I

    add-int/2addr v0, v3

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v0, p0, Lhjj;->l:I

    if-gtz v0, :cond_1

    sub-int/2addr v2, v3

    iget v0, p0, Lhjj;->n:I

    add-int/2addr v0, v2

    iget-object v3, p0, Lhjj;->m:[B

    array-length v3, v3

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lurf;->d(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget v4, p0, Lhjj;->n:I

    sget v5, Lkfh;->a:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v6, p0, Lhjj;->m:[B

    invoke-virtual {v3, v6, v5, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v0, v4

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v6

    add-int/2addr v6, v0

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    sub-int/2addr v2, v0

    iget v0, p0, Lhjj;->n:I

    sub-int/2addr v0, v4

    iput v0, p0, Lhjj;->n:I

    iget-object v1, p0, Lhjj;->m:[B

    invoke-static {v1, v4, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lhjj;->m:[B

    iget v1, p0, Lhjj;->n:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget p1, p0, Lhjj;->n:I

    add-int/2addr p1, v2

    iput p1, p0, Lhjj;->n:I

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :cond_1
    :goto_0
    return-void
.end method

.method public final c(Lcpf;)Lcpf;
    .locals 2

    iget v0, p1, Lcpf;->c:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/ads/zzcm;

    const-string v0, "Unhandled input format:"

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzcm;-><init>(Ljava/lang/String;Lcpf;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhjj;->k:Z

    iget v0, p0, Lhjj;->i:I

    if-nez v0, :cond_3

    iget p0, p0, Lhjj;->j:I

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    sget-object p0, Lcpf;->e:Lcpf;

    return-object p0

    :cond_3
    :goto_1
    return-object p1
.end method

.method public final e()V
    .locals 3

    iget-boolean v0, p0, Lhjj;->k:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lhjj;->k:Z

    iget v0, p0, Lhjj;->j:I

    iget-object v2, p0, Lurf;->b:Lcpf;

    iget v2, v2, Lcpf;->d:I

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    iput-object v0, p0, Lhjj;->m:[B

    iget v0, p0, Lhjj;->i:I

    mul-int/2addr v0, v2

    iput v0, p0, Lhjj;->l:I

    :cond_0
    iput v1, p0, Lhjj;->n:I

    return-void
.end method

.method public final f()V
    .locals 5

    iget-boolean v0, p0, Lhjj;->k:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lhjj;->n:I

    if-lez v0, :cond_0

    iget-wide v1, p0, Lhjj;->o:J

    iget-object v3, p0, Lurf;->b:Lcpf;

    iget v3, v3, Lcpf;->d:I

    div-int/2addr v0, v3

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lhjj;->o:J

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lhjj;->n:I

    :cond_1
    return-void
.end method

.method public final g()V
    .locals 1

    sget-object v0, Lkfh;->c:[B

    iput-object v0, p0, Lhjj;->m:[B

    return-void
.end method

.method public final i()J
    .locals 2

    iget-wide v0, p0, Lhjj;->o:J

    return-wide v0
.end method

.method public final j()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lhjj;->o:J

    return-void
.end method

.method public final k(II)V
    .locals 0

    iput p1, p0, Lhjj;->i:I

    iput p2, p0, Lhjj;->j:I

    return-void
.end method

.method public final zzb()Ljava/nio/ByteBuffer;
    .locals 4

    invoke-super {p0}, Lurf;->zzh()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lhjj;->n:I

    if-lez v0, :cond_0

    invoke-virtual {p0, v0}, Lurf;->d(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lhjj;->m:[B

    iget v2, p0, Lhjj;->n:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iput v3, p0, Lhjj;->n:I

    :cond_0
    invoke-super {p0}, Lurf;->zzb()Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public final zzh()Z
    .locals 1

    invoke-super {p0}, Lurf;->zzh()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lhjj;->n:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
