.class public final Lmqj;
.super Loqj;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final f:I

.field public final g:Z

.field public final h:Z

.field public final i:Z

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:Z


# direct methods
.method public constructor <init>(ILn5f;ILhqj;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Loqj;-><init>(ILn5f;I)V

    const/4 p1, 0x0

    invoke-static {p5, p1}, Ly9j;->a(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lmqj;->g:Z

    iget-object p2, p0, Loqj;->e:Lerj;

    iget p2, p2, Lerj;->e:I

    iget p3, p4, Lz8f;->y:I

    and-int/lit8 p3, p2, 0x1

    const/4 v0, 0x1

    if-eq v0, p3, :cond_0

    move p3, p1

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_0
    iput-boolean p3, p0, Lmqj;->h:Z

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    move p2, v0

    goto :goto_1

    :cond_1
    move p2, p1

    :goto_1
    iput-boolean p2, p0, Lmqj;->i:Z

    if-eqz p7, :cond_2

    invoke-static {p7}, Lcom/google/android/gms/internal/ads/zzfww;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p2

    goto :goto_2

    :cond_2
    iget-object p2, p4, Lz8f;->v:Lcom/google/android/gms/internal/ads/zzfww;

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, ""

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzfww;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p2

    goto :goto_2

    :cond_3
    iget-object p2, p4, Lz8f;->v:Lcom/google/android/gms/internal/ads/zzfww;

    :goto_2
    move p3, p1

    :goto_3
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ge p3, v1, :cond_5

    iget-object v1, p0, Loqj;->e:Lerj;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2, p1}, Lrqj;->m(Lerj;Ljava/lang/String;Z)I

    move-result v1

    if-lez v1, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_5
    const p3, 0x7fffffff

    move v1, p1

    :goto_4
    iput p3, p0, Lmqj;->j:I

    iput v1, p0, Lmqj;->k:I

    const/16 p2, 0x440

    if-eqz p7, :cond_6

    move p3, p2

    goto :goto_5

    :cond_6
    move p3, p1

    :goto_5
    iget-object p7, p0, Loqj;->e:Lerj;

    iget p7, p7, Lerj;->f:I

    invoke-static {p7, p3}, Lrqj;->l(II)I

    move-result p3

    iput p3, p0, Lmqj;->l:I

    iget-object p7, p0, Loqj;->e:Lerj;

    iget p7, p7, Lerj;->f:I

    and-int/2addr p2, p7

    if-eqz p2, :cond_7

    move p2, v0

    goto :goto_6

    :cond_7
    move p2, p1

    :goto_6
    iput-boolean p2, p0, Lmqj;->n:Z

    invoke-static {p6}, Lrqj;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_8

    move p2, v0

    goto :goto_7

    :cond_8
    move p2, p1

    :goto_7
    iget-object p7, p0, Loqj;->e:Lerj;

    invoke-static {p7, p6, p2}, Lrqj;->m(Lerj;Ljava/lang/String;Z)I

    move-result p2

    iput p2, p0, Lmqj;->m:I

    if-gtz v1, :cond_9

    iget-object p6, p4, Lz8f;->v:Lcom/google/android/gms/internal/ads/zzfww;

    invoke-virtual {p6}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p6

    if-eqz p6, :cond_a

    if-gtz p3, :cond_9

    goto :goto_9

    :cond_9
    :goto_8
    move p2, v0

    goto :goto_a

    :cond_a
    :goto_9
    iget-boolean p3, p0, Lmqj;->h:Z

    if-nez p3, :cond_9

    iget-boolean p3, p0, Lmqj;->i:Z

    if-eqz p3, :cond_b

    if-lez p2, :cond_b

    goto :goto_8

    :cond_b
    move p2, p1

    :goto_a
    iget-boolean p3, p4, Lhqj;->Q:Z

    invoke-static {p5, p3}, Ly9j;->a(IZ)Z

    move-result p3

    if-eqz p3, :cond_c

    if-eqz p2, :cond_c

    move p1, v0

    :cond_c
    iput p1, p0, Lmqj;->f:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lmqj;->f:I

    return p0
.end method

.method public final bridge synthetic b(Loqj;)Z
    .locals 0

    check-cast p1, Lmqj;

    const/4 p0, 0x0

    return p0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lmqj;

    invoke-virtual {p0, p1}, Lmqj;->d(Lmqj;)I

    move-result p0

    return p0
.end method

.method public final d(Lmqj;)I
    .locals 5

    invoke-static {}, Lf4i;->i()Lf4i;

    move-result-object v0

    iget-boolean v1, p0, Lmqj;->g:Z

    iget-boolean v2, p1, Lmqj;->g:Z

    invoke-virtual {v0, v1, v2}, Lf4i;->d(ZZ)Lf4i;

    move-result-object v0

    iget v1, p0, Lmqj;->j:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lmqj;->j:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyh;->zzc()Lcom/google/android/gms/internal/ads/zzfyh;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfyh;->zza()Lcom/google/android/gms/internal/ads/zzfyh;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lf4i;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lf4i;

    move-result-object v0

    iget v1, p0, Lmqj;->k:I

    iget v2, p1, Lmqj;->k:I

    invoke-virtual {v0, v1, v2}, Lf4i;->b(II)Lf4i;

    move-result-object v0

    iget v2, p0, Lmqj;->l:I

    iget v3, p1, Lmqj;->l:I

    invoke-virtual {v0, v2, v3}, Lf4i;->b(II)Lf4i;

    move-result-object v0

    iget-boolean v3, p0, Lmqj;->h:Z

    iget-boolean v4, p1, Lmqj;->h:Z

    invoke-virtual {v0, v3, v4}, Lf4i;->d(ZZ)Lf4i;

    move-result-object v0

    iget-boolean v3, p0, Lmqj;->i:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, p1, Lmqj;->i:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyh;->zzc()Lcom/google/android/gms/internal/ads/zzfyh;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyh;->zzc()Lcom/google/android/gms/internal/ads/zzfyh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfyh;->zza()Lcom/google/android/gms/internal/ads/zzfyh;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v3, v4, v1}, Lf4i;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lf4i;

    move-result-object v0

    iget v1, p0, Lmqj;->m:I

    iget v3, p1, Lmqj;->m:I

    invoke-virtual {v0, v1, v3}, Lf4i;->b(II)Lf4i;

    move-result-object v0

    if-nez v2, :cond_1

    iget-boolean p0, p0, Lmqj;->n:Z

    iget-boolean p1, p1, Lmqj;->n:Z

    invoke-virtual {v0, p0, p1}, Lf4i;->e(ZZ)Lf4i;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Lf4i;->a()I

    move-result p0

    return p0
.end method
