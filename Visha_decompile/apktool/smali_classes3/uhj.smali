.class public final Luhj;
.super Lurf;
.source "SourceFile"


# instance fields
.field public i:[I

.field public j:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lurf;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 9

    iget-object v0, p0, Luhj;->j:[I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v2

    sub-int v3, v2, v1

    iget-object v4, p0, Lurf;->b:Lcpf;

    iget v4, v4, Lcpf;->d:I

    div-int/2addr v3, v4

    iget-object v4, p0, Lurf;->c:Lcpf;

    iget v4, v4, Lcpf;->d:I

    mul-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lurf;->d(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    :goto_0
    if-ge v1, v2, :cond_3

    array-length v4, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    aget v6, v0, v5

    iget-object v7, p0, Lurf;->b:Lcpf;

    iget v7, v7, Lcpf;->c:I

    invoke-static {v7}, Lkfh;->F(I)I

    move-result v7

    mul-int/2addr v7, v6

    add-int/2addr v7, v1

    iget-object v6, p0, Lurf;->b:Lcpf;

    iget v6, v6, Lcpf;->c:I

    const/4 v8, 0x2

    if-eq v6, v8, :cond_1

    const/4 v8, 0x4

    if-ne v6, v8, :cond_0

    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    goto :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected encoding: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lurf;->b:Lcpf;

    iget v4, v4, Lcpf;->d:I

    add-int/2addr v1, v4

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method

.method public final c(Lcpf;)Lcpf;
    .locals 7

    iget-object p0, p0, Luhj;->i:[I

    if-nez p0, :cond_0

    sget-object p0, Lcpf;->e:Lcpf;

    return-object p0

    :cond_0
    iget v0, p1, Lcpf;->c:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzcm;

    const-string v0, "Unhandled input format:"

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzcm;-><init>(Ljava/lang/String;Lcpf;)V

    throw p0

    :cond_2
    :goto_0
    iget v1, p1, Lcpf;->b:I

    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_3

    move v2, v4

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    move v5, v3

    :goto_2
    array-length v6, p0

    if-ge v5, v6, :cond_6

    aget v6, p0, v5

    if-ge v6, v1, :cond_5

    if-eq v6, v5, :cond_4

    move v6, v4

    goto :goto_3

    :cond_4
    move v6, v3

    :goto_3
    or-int/2addr v2, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcm;

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Channel map ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") trying to access non-existent input channel."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzcm;-><init>(Ljava/lang/String;Lcpf;)V

    throw v0

    :cond_6
    if-eqz v2, :cond_7

    new-instance p0, Lcpf;

    iget p1, p1, Lcpf;->a:I

    invoke-direct {p0, p1, v6, v0}, Lcpf;-><init>(III)V

    goto :goto_4

    :cond_7
    sget-object p0, Lcpf;->e:Lcpf;

    :goto_4
    return-object p0
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Luhj;->i:[I

    iput-object v0, p0, Luhj;->j:[I

    return-void
.end method

.method public final g()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Luhj;->j:[I

    iput-object v0, p0, Luhj;->i:[I

    return-void
.end method

.method public final i([I)V
    .locals 0

    iput-object p1, p0, Luhj;->i:[I

    return-void
.end method
