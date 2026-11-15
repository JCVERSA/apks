.class public final Lpqj;
.super Loqj;
.source "SourceFile"


# instance fields
.field public final f:Z

.field public final g:Lhqj;

.field public final h:Z

.field public final i:Z

.field public final j:Z

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:I

.field public final o:I

.field public final p:I

.field public final q:Z

.field public final r:I

.field public final s:I

.field public final t:Z

.field public final u:Z

.field public final v:I


# direct methods
.method public constructor <init>(ILn5f;ILhqj;ILjava/lang/String;IZ)V
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Loqj;-><init>(ILn5f;I)V

    iput-object p4, p0, Lpqj;->g:Lhqj;

    iget-boolean p1, p4, Lhqj;->H:Z

    const/4 p2, 0x1

    if-eq p2, p1, :cond_0

    const/16 p1, 0x10

    goto :goto_0

    :cond_0
    const/16 p1, 0x18

    :goto_0
    const/high16 p3, -0x40800000    # -1.0f

    const/4 p7, -0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_1

    iget-object v1, p0, Loqj;->e:Lerj;

    iget v2, v1, Lerj;->v:I

    if-eq v2, p7, :cond_2

    iget v3, p4, Lz8f;->a:I

    if-gt v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    goto :goto_2

    :cond_2
    :goto_1
    iget v2, v1, Lerj;->w:I

    if-eq v2, p7, :cond_3

    iget v3, p4, Lz8f;->b:I

    if-gt v2, v3, :cond_1

    :cond_3
    iget v2, v1, Lerj;->x:F

    cmpl-float v3, v2, p3

    if-eqz v3, :cond_4

    iget v3, p4, Lz8f;->c:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    :cond_4
    iget v1, v1, Lerj;->j:I

    if-eq v1, p7, :cond_5

    iget v2, p4, Lz8f;->d:I

    if-gt v1, v2, :cond_1

    :cond_5
    move v1, p2

    :goto_2
    iput-boolean v1, p0, Lpqj;->f:Z

    if-eqz p8, :cond_6

    iget-object p8, p0, Loqj;->e:Lerj;

    iget v1, p8, Lerj;->v:I

    if-eq v1, p7, :cond_7

    if-ltz v1, :cond_6

    goto :goto_3

    :cond_6
    move p8, v0

    goto :goto_4

    :cond_7
    :goto_3
    iget v1, p8, Lerj;->w:I

    if-eq v1, p7, :cond_8

    if-ltz v1, :cond_6

    :cond_8
    iget v1, p8, Lerj;->x:F

    cmpl-float v2, v1, p3

    if-eqz v2, :cond_9

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_6

    :cond_9
    iget p8, p8, Lerj;->j:I

    if-eq p8, p7, :cond_a

    if-ltz p8, :cond_6

    :cond_a
    move p8, p2

    :goto_4
    iput-boolean p8, p0, Lpqj;->h:Z

    invoke-static {p5, v0}, Ly9j;->a(IZ)Z

    move-result p8

    iput-boolean p8, p0, Lpqj;->i:Z

    iget-object p8, p0, Loqj;->e:Lerj;

    iget v1, p8, Lerj;->x:F

    cmpl-float p3, v1, p3

    if-eqz p3, :cond_b

    const/high16 p3, 0x41200000    # 10.0f

    cmpl-float p3, v1, p3

    if-ltz p3, :cond_b

    move p3, p2

    goto :goto_5

    :cond_b
    move p3, v0

    :goto_5
    iput-boolean p3, p0, Lpqj;->j:Z

    iget p3, p8, Lerj;->j:I

    iput p3, p0, Lpqj;->k:I

    invoke-virtual {p8}, Lerj;->a()I

    move-result p3

    iput p3, p0, Lpqj;->l:I

    move p3, v0

    :goto_6
    iget-object p8, p4, Lz8f;->n:Lcom/google/android/gms/internal/ads/zzfww;

    invoke-virtual {p8}, Ljava/util/AbstractCollection;->size()I

    move-result p8

    const v1, 0x7fffffff

    if-ge p3, p8, :cond_d

    iget-object p8, p0, Loqj;->e:Lerj;

    iget-object v2, p4, Lz8f;->n:Lcom/google/android/gms/internal/ads/zzfww;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p8, v2, v0}, Lrqj;->m(Lerj;Ljava/lang/String;Z)I

    move-result p8

    if-lez p8, :cond_c

    goto :goto_7

    :cond_c
    add-int/lit8 p3, p3, 0x1

    goto :goto_6

    :cond_d
    move p8, v0

    move p3, v1

    :goto_7
    iput p3, p0, Lpqj;->n:I

    iput p8, p0, Lpqj;->o:I

    iget-object p3, p0, Loqj;->e:Lerj;

    iget p3, p3, Lerj;->f:I

    invoke-static {p3, v0}, Lrqj;->l(II)I

    move-result p3

    iput p3, p0, Lpqj;->p:I

    iget-object p3, p0, Loqj;->e:Lerj;

    iget p3, p3, Lerj;->f:I

    if-eqz p3, :cond_e

    and-int/2addr p3, p2

    if-eqz p3, :cond_f

    :cond_e
    move p3, p2

    goto :goto_8

    :cond_f
    move p3, v0

    :goto_8
    iput-boolean p3, p0, Lpqj;->q:Z

    invoke-static {p6}, Lrqj;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_10

    move p3, p2

    goto :goto_9

    :cond_10
    move p3, v0

    :goto_9
    iget-object p8, p0, Loqj;->e:Lerj;

    invoke-static {p8, p6, p3}, Lrqj;->m(Lerj;Ljava/lang/String;Z)I

    move-result p3

    iput p3, p0, Lpqj;->r:I

    move p3, v0

    :goto_a
    iget-object p6, p4, Lz8f;->m:Lcom/google/android/gms/internal/ads/zzfww;

    invoke-virtual {p6}, Ljava/util/AbstractCollection;->size()I

    move-result p6

    if-ge p3, p6, :cond_12

    iget-object p6, p0, Loqj;->e:Lerj;

    iget-object p6, p6, Lerj;->o:Ljava/lang/String;

    if-eqz p6, :cond_11

    iget-object p8, p4, Lz8f;->m:Lcom/google/android/gms/internal/ads/zzfww;

    invoke-interface {p8, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p8

    invoke-virtual {p6, p8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_11

    move v1, p3

    goto :goto_b

    :cond_11
    add-int/lit8 p3, p3, 0x1

    goto :goto_a

    :cond_12
    :goto_b
    iput v1, p0, Lpqj;->m:I

    and-int/lit16 p3, p5, 0x180

    const/16 p4, 0x80

    if-ne p3, p4, :cond_13

    move p3, p2

    goto :goto_c

    :cond_13
    move p3, v0

    :goto_c
    iput-boolean p3, p0, Lpqj;->t:Z

    and-int/lit8 p3, p5, 0x40

    const/16 p4, 0x40

    if-ne p3, p4, :cond_14

    move p3, p2

    goto :goto_d

    :cond_14
    move p3, v0

    :goto_d
    iput-boolean p3, p0, Lpqj;->u:Z

    iget-object p3, p0, Loqj;->e:Lerj;

    iget-object p4, p3, Lerj;->o:Ljava/lang/String;

    const/4 p6, 0x2

    if-nez p4, :cond_15

    :goto_e
    move v1, v0

    goto/16 :goto_11

    :cond_15
    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result p8

    const/4 v1, 0x4

    const/4 v2, 0x3

    sparse-switch p8, :sswitch_data_0

    goto :goto_f

    :sswitch_0
    const-string p8, "video/x-vnd.on2.vp9"

    invoke-virtual {p4, p8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_16

    move p4, v2

    goto :goto_10

    :sswitch_1
    const-string p8, "video/avc"

    invoke-virtual {p4, p8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_16

    move p4, v1

    goto :goto_10

    :sswitch_2
    const-string p8, "video/hevc"

    invoke-virtual {p4, p8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_16

    move p4, p6

    goto :goto_10

    :sswitch_3
    const-string p8, "video/av01"

    invoke-virtual {p4, p8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_16

    move p4, p2

    goto :goto_10

    :sswitch_4
    const-string p8, "video/dolby-vision"

    invoke-virtual {p4, p8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_16

    move p4, v0

    goto :goto_10

    :cond_16
    :goto_f
    move p4, p7

    :goto_10
    if-eqz p4, :cond_1a

    if-eq p4, p2, :cond_1b

    if-eq p4, p6, :cond_19

    if-eq p4, v2, :cond_18

    if-eq p4, v1, :cond_17

    goto :goto_e

    :cond_17
    move v1, p2

    goto :goto_11

    :cond_18
    move v1, p6

    goto :goto_11

    :cond_19
    move v1, v2

    goto :goto_11

    :cond_1a
    const/4 v1, 0x5

    :cond_1b
    :goto_11
    iput v1, p0, Lpqj;->v:I

    iget p4, p3, Lerj;->f:I

    and-int/lit16 p4, p4, 0x4000

    if-eqz p4, :cond_1c

    :goto_12
    move p2, v0

    goto :goto_13

    :cond_1c
    iget-object p4, p0, Lpqj;->g:Lhqj;

    iget-boolean p8, p4, Lhqj;->Q:Z

    invoke-static {p5, p8}, Ly9j;->a(IZ)Z

    move-result p8

    if-nez p8, :cond_1d

    goto :goto_12

    :cond_1d
    iget-boolean p8, p0, Lpqj;->f:Z

    if-nez p8, :cond_1e

    iget-boolean p4, p4, Lhqj;->F:Z

    if-nez p4, :cond_1e

    goto :goto_12

    :cond_1e
    invoke-static {p5, v0}, Ly9j;->a(IZ)Z

    move-result p4

    if-eqz p4, :cond_1f

    iget-boolean p4, p0, Lpqj;->h:Z

    if-eqz p4, :cond_1f

    if-eqz p8, :cond_1f

    iget p3, p3, Lerj;->j:I

    if-eq p3, p7, :cond_1f

    and-int/2addr p1, p5

    if-eqz p1, :cond_1f

    move p2, p6

    :cond_1f
    :goto_13
    iput p2, p0, Lpqj;->s:I

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6e5534ef -> :sswitch_4
        -0x631b55f6 -> :sswitch_3
        -0x63185e82 -> :sswitch_2
        0x4f62373a -> :sswitch_1
        0x5f50bed9 -> :sswitch_0
    .end sparse-switch
.end method

.method public static synthetic d(Lpqj;Lpqj;)I
    .locals 4

    iget-boolean v0, p0, Lpqj;->f:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lpqj;->i:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lrqj;->o()Lcom/google/android/gms/internal/ads/zzfyh;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lrqj;->o()Lcom/google/android/gms/internal/ads/zzfyh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfyh;->zza()Lcom/google/android/gms/internal/ads/zzfyh;

    move-result-object v0

    :goto_0
    invoke-static {}, Lf4i;->i()Lf4i;

    move-result-object v1

    iget-object v2, p0, Lpqj;->g:Lhqj;

    iget-boolean v2, v2, Lz8f;->B:Z

    iget v2, p0, Lpqj;->l:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lpqj;->l:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lf4i;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lf4i;

    move-result-object v1

    iget p0, p0, Lpqj;->k:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iget p1, p1, Lpqj;->k:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p0, p1, v0}, Lf4i;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lf4i;

    move-result-object p0

    invoke-virtual {p0}, Lf4i;->a()I

    move-result p0

    return p0
.end method

.method public static synthetic e(Lpqj;Lpqj;)I
    .locals 4

    invoke-static {}, Lf4i;->i()Lf4i;

    move-result-object v0

    iget-boolean v1, p0, Lpqj;->i:Z

    iget-boolean v2, p1, Lpqj;->i:Z

    invoke-virtual {v0, v1, v2}, Lf4i;->d(ZZ)Lf4i;

    move-result-object v0

    iget v1, p0, Lpqj;->n:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lpqj;->n:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyh;->zzc()Lcom/google/android/gms/internal/ads/zzfyh;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfyh;->zza()Lcom/google/android/gms/internal/ads/zzfyh;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lf4i;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lf4i;

    move-result-object v0

    iget v1, p0, Lpqj;->o:I

    iget v2, p1, Lpqj;->o:I

    invoke-virtual {v0, v1, v2}, Lf4i;->b(II)Lf4i;

    move-result-object v0

    iget v1, p0, Lpqj;->p:I

    iget v2, p1, Lpqj;->p:I

    invoke-virtual {v0, v1, v2}, Lf4i;->b(II)Lf4i;

    move-result-object v0

    iget-boolean v1, p0, Lpqj;->q:Z

    iget-boolean v2, p1, Lpqj;->q:Z

    invoke-virtual {v0, v1, v2}, Lf4i;->d(ZZ)Lf4i;

    move-result-object v0

    iget v1, p0, Lpqj;->r:I

    iget v2, p1, Lpqj;->r:I

    invoke-virtual {v0, v1, v2}, Lf4i;->b(II)Lf4i;

    move-result-object v0

    iget-boolean v1, p0, Lpqj;->j:Z

    iget-boolean v2, p1, Lpqj;->j:Z

    invoke-virtual {v0, v1, v2}, Lf4i;->d(ZZ)Lf4i;

    move-result-object v0

    iget-boolean v1, p0, Lpqj;->f:Z

    iget-boolean v2, p1, Lpqj;->f:Z

    invoke-virtual {v0, v1, v2}, Lf4i;->d(ZZ)Lf4i;

    move-result-object v0

    iget-boolean v1, p0, Lpqj;->h:Z

    iget-boolean v2, p1, Lpqj;->h:Z

    invoke-virtual {v0, v1, v2}, Lf4i;->d(ZZ)Lf4i;

    move-result-object v0

    iget v1, p0, Lpqj;->m:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lpqj;->m:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyh;->zzc()Lcom/google/android/gms/internal/ads/zzfyh;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfyh;->zza()Lcom/google/android/gms/internal/ads/zzfyh;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lf4i;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lf4i;

    move-result-object v0

    iget-boolean v1, p0, Lpqj;->t:Z

    iget-boolean v2, p1, Lpqj;->t:Z

    invoke-virtual {v0, v1, v2}, Lf4i;->d(ZZ)Lf4i;

    move-result-object v0

    iget-boolean v2, p0, Lpqj;->u:Z

    iget-boolean v3, p1, Lpqj;->u:Z

    invoke-virtual {v0, v2, v3}, Lf4i;->d(ZZ)Lf4i;

    move-result-object v0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget p0, p0, Lpqj;->v:I

    iget p1, p1, Lpqj;->v:I

    invoke-virtual {v0, p0, p1}, Lf4i;->b(II)Lf4i;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Lf4i;->a()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lpqj;->s:I

    return p0
.end method

.method public final bridge synthetic b(Loqj;)Z
    .locals 2

    check-cast p1, Lpqj;

    iget-object v0, p0, Loqj;->e:Lerj;

    iget-object v0, v0, Lerj;->o:Ljava/lang/String;

    iget-object v1, p1, Loqj;->e:Lerj;

    iget-object v1, v1, Lerj;->o:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpqj;->g:Lhqj;

    iget-boolean v0, v0, Lhqj;->I:Z

    iget-boolean v0, p0, Lpqj;->t:Z

    iget-boolean v1, p1, Lpqj;->t:Z

    if-ne v0, v1, :cond_0

    iget-boolean p0, p0, Lpqj;->u:Z

    iget-boolean p1, p1, Lpqj;->u:Z

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
