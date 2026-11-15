.class public final Laof;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzfww;

.field public final b:Ljava/util/List;

.field public c:[Ljava/nio/ByteBuffer;

.field public d:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfww;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laof;->a:Lcom/google/android/gms/internal/ads/zzfww;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Laof;->b:Ljava/util/List;

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Laof;->c:[Ljava/nio/ByteBuffer;

    sget-object v0, Lcpf;->e:Lcpf;

    iput-boolean p1, p0, Laof;->d:Z

    return-void
.end method


# virtual methods
.method public final a(Lcpf;)Lcpf;
    .locals 4

    sget-object v0, Lcpf;->e:Lcpf;

    invoke-virtual {p1, v0}, Lcpf;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Laof;->a:Lcom/google/android/gms/internal/ads/zzfww;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvqf;

    invoke-interface {v2, p1}, Lvqf;->b(Lcpf;)Lcpf;

    move-result-object v3

    invoke-interface {v2}, Lvqf;->zzg()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v3, v0}, Lcpf;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ln7g;->f(Z)V

    move-object p1, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p1

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/ads/zzcm;

    const-string v0, "Unhandled input format:"

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzcm;-><init>(Ljava/lang/String;Lcpf;)V

    throw p0
.end method

.method public final b()Ljava/nio/ByteBuffer;
    .locals 2

    invoke-virtual {p0}, Laof;->h()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lvqf;->a:Ljava/nio/ByteBuffer;

    return-object p0

    :cond_0
    iget-object v0, p0, Laof;->c:[Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Laof;->i()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Lvqf;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Laof;->j(Ljava/nio/ByteBuffer;)V

    iget-object v0, p0, Laof;->c:[Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Laof;->i()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public final c()V
    .locals 5

    iget-object v0, p0, Laof;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Laof;->d:Z

    move v2, v1

    :goto_0
    iget-object v3, p0, Laof;->a:Lcom/google/android/gms/internal/ads/zzfww;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvqf;

    invoke-interface {v3}, Lvqf;->zzc()V

    invoke-interface {v3}, Lvqf;->zzg()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/nio/ByteBuffer;

    iput-object v2, p0, Laof;->c:[Ljava/nio/ByteBuffer;

    :goto_1
    invoke-virtual {p0}, Laof;->i()I

    move-result v2

    if-gt v1, v2, :cond_2

    iget-object v2, p0, Laof;->c:[Ljava/nio/ByteBuffer;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvqf;

    invoke-interface {v3}, Lvqf;->zzb()Ljava/nio/ByteBuffer;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final d()V
    .locals 1

    invoke-virtual {p0}, Laof;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Laof;->d:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Laof;->d:Z

    iget-object p0, p0, Laof;->b:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lvqf;

    invoke-interface {p0}, Lvqf;->zzd()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final e(Ljava/nio/ByteBuffer;)V
    .locals 1

    invoke-virtual {p0}, Laof;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Laof;->d:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Laof;->j(Ljava/nio/ByteBuffer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Laof;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Laof;

    iget-object p0, p0, Laof;->a:Lcom/google/android/gms/internal/ads/zzfww;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    iget-object p1, p1, Laof;->a:Lcom/google/android/gms/internal/ads/zzfww;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    if-ne v1, v3, :cond_4

    move v1, v2

    :goto_0
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    return v2
.end method

.method public final f()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Laof;->a:Lcom/google/android/gms/internal/ads/zzfww;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvqf;

    invoke-interface {v2}, Lvqf;->zzc()V

    invoke-interface {v2}, Lvqf;->zzf()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-array v1, v0, [Ljava/nio/ByteBuffer;

    iput-object v1, p0, Laof;->c:[Ljava/nio/ByteBuffer;

    sget-object v1, Lcpf;->e:Lcpf;

    iput-boolean v0, p0, Laof;->d:Z

    return-void
.end method

.method public final g()Z
    .locals 2

    iget-boolean v0, p0, Laof;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Laof;->b:Ljava/util/List;

    invoke-virtual {p0}, Laof;->i()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvqf;

    invoke-interface {v0}, Lvqf;->zzh()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Laof;->c:[Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Laof;->i()I

    move-result p0

    aget-object p0, v0, p0

    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final h()Z
    .locals 0

    iget-object p0, p0, Laof;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Laof;->a:Lcom/google/android/gms/internal/ads/zzfww;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfww;->hashCode()I

    move-result p0

    return p0
.end method

.method public final i()I
    .locals 0

    iget-object p0, p0, Laof;->c:[Ljava/nio/ByteBuffer;

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public final j(Ljava/nio/ByteBuffer;)V
    .locals 8

    const/4 v0, 0x0

    :goto_0
    move v1, v0

    move v2, v1

    :goto_1
    invoke-virtual {p0}, Laof;->i()I

    move-result v3

    if-gt v1, v3, :cond_6

    iget-object v3, p0, Laof;->c:[Ljava/nio/ByteBuffer;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Laof;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvqf;

    invoke-interface {v4}, Lvqf;->zzh()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v4, p0, Laof;->c:[Ljava/nio/ByteBuffer;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {p0}, Laof;->i()I

    move-result v4

    if-ge v1, v4, :cond_5

    add-int/lit8 v4, v1, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvqf;

    invoke-interface {v3}, Lvqf;->zzd()V

    goto :goto_4

    :cond_0
    if-lez v1, :cond_1

    iget-object v3, p0, Laof;->c:[Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v1, -0x1

    aget-object v3, v3, v5

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, p1

    goto :goto_2

    :cond_2
    sget-object v3, Lvqf;->a:Ljava/nio/ByteBuffer;

    :goto_2
    invoke-virtual {v3}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    int-to-long v5, v5

    invoke-interface {v4, v3}, Lvqf;->a(Ljava/nio/ByteBuffer;)V

    iget-object v7, p0, Laof;->c:[Ljava/nio/ByteBuffer;

    invoke-interface {v4}, Lvqf;->zzb()Ljava/nio/ByteBuffer;

    move-result-object v4

    aput-object v4, v7, v1

    invoke-virtual {v3}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v5, v3

    const-wide/16 v3, 0x0

    cmp-long v3, v5, v3

    const/4 v4, 0x1

    if-gtz v3, :cond_4

    iget-object v3, p0, Laof;->c:[Ljava/nio/ByteBuffer;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    move v4, v0

    :cond_4
    :goto_3
    or-int/2addr v2, v4

    :cond_5
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    if-eqz v2, :cond_7

    goto :goto_0

    :cond_7
    return-void
.end method
