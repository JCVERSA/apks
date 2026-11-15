.class public final Lzpj;
.super Loqj;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final f:I

.field public final g:Z

.field public final h:Ljava/lang/String;

.field public final i:Lhqj;

.field public final j:Z

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:Z

.field public final o:I

.field public final p:I

.field public final q:Z

.field public final r:I

.field public final s:I

.field public final t:I

.field public final u:I

.field public final v:Z

.field public final w:Z

.field public final x:Z


# direct methods
.method public constructor <init>(ILn5f;ILhqj;IZLw2i;I)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p5

    const/16 v3, 0x40

    invoke-direct/range {p0 .. p3}, Loqj;-><init>(ILn5f;I)V

    iput-object v1, v0, Lzpj;->i:Lhqj;

    iget-boolean v4, v1, Lhqj;->O:Z

    const/16 v5, 0x18

    const/4 v6, 0x1

    if-eq v6, v4, :cond_0

    const/16 v4, 0x10

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    iget-object v7, v0, Loqj;->e:Lerj;

    iget-object v7, v7, Lerj;->d:Ljava/lang/String;

    invoke-static {v7}, Lrqj;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lzpj;->h:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v2, v7}, Ly9j;->a(IZ)Z

    move-result v8

    iput-boolean v8, v0, Lzpj;->j:Z

    move v8, v7

    :goto_1
    iget-object v9, v1, Lz8f;->p:Lcom/google/android/gms/internal/ads/zzfww;

    invoke-virtual {v9}, Ljava/util/AbstractCollection;->size()I

    move-result v9

    const v10, 0x7fffffff

    if-ge v8, v9, :cond_2

    iget-object v9, v0, Loqj;->e:Lerj;

    iget-object v11, v1, Lz8f;->p:Lcom/google/android/gms/internal/ads/zzfww;

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v9, v11, v7}, Lrqj;->m(Lerj;Ljava/lang/String;Z)I

    move-result v9

    if-lez v9, :cond_1

    goto :goto_2

    :cond_1
    add-int/2addr v8, v6

    goto :goto_1

    :cond_2
    move v9, v7

    move v8, v10

    :goto_2
    iput v8, v0, Lzpj;->l:I

    iput v9, v0, Lzpj;->k:I

    iget-object v8, v0, Loqj;->e:Lerj;

    iget v8, v8, Lerj;->f:I

    invoke-static {v8, v7}, Lrqj;->l(II)I

    move-result v8

    iput v8, v0, Lzpj;->m:I

    iget-object v8, v0, Loqj;->e:Lerj;

    iget v9, v8, Lerj;->f:I

    if-eqz v9, :cond_3

    and-int/2addr v9, v6

    if-eqz v9, :cond_4

    :cond_3
    move v9, v6

    goto :goto_3

    :cond_4
    move v9, v7

    :goto_3
    iput-boolean v9, v0, Lzpj;->n:Z

    iget v9, v8, Lerj;->e:I

    and-int/2addr v9, v6

    if-eq v6, v9, :cond_5

    move v9, v7

    goto :goto_4

    :cond_5
    move v9, v6

    :goto_4
    iput-boolean v9, v0, Lzpj;->q:Z

    iget-object v9, v8, Lerj;->o:Ljava/lang/String;

    const/4 v11, 0x2

    const/4 v12, -0x1

    if-nez v9, :cond_6

    :goto_5
    move v9, v7

    goto :goto_8

    :cond_6
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v13

    const v14, -0x7e929daa

    if-eq v13, v14, :cond_9

    const v14, 0xb269699

    if-eq v13, v14, :cond_8

    const v14, 0x59afdf4a

    if-eq v13, v14, :cond_7

    goto :goto_6

    :cond_7
    const-string v13, "audio/iamf"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    move v9, v11

    goto :goto_7

    :cond_8
    const-string v13, "audio/ac4"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    move v9, v6

    goto :goto_7

    :cond_9
    const-string v13, "audio/eac3-joc"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    move v9, v7

    goto :goto_7

    :cond_a
    :goto_6
    move v9, v12

    :goto_7
    if-eqz v9, :cond_b

    if-eq v9, v6, :cond_b

    if-eq v9, v11, :cond_b

    goto :goto_5

    :cond_b
    move v9, v6

    :goto_8
    iput-boolean v9, v0, Lzpj;->x:Z

    iget v9, v8, Lerj;->E:I

    iput v9, v0, Lzpj;->r:I

    iget v13, v8, Lerj;->F:I

    iput v13, v0, Lzpj;->s:I

    iget v13, v8, Lerj;->j:I

    iput v13, v0, Lzpj;->t:I

    if-eq v13, v12, :cond_d

    iget v14, v1, Lz8f;->s:I

    if-gt v13, v14, :cond_c

    goto :goto_9

    :cond_c
    move v8, v7

    goto :goto_a

    :cond_d
    :goto_9
    if-eq v9, v12, :cond_e

    iget v13, v1, Lz8f;->r:I

    if-gt v9, v13, :cond_c

    :cond_e
    move-object/from16 v9, p7

    invoke-interface {v9, v8}, Lw2i;->zza(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    move v8, v6

    :goto_a
    iput-boolean v8, v0, Lzpj;->g:Z

    sget v8, Lkfh;->a:I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    sget v9, Lkfh;->a:I

    if-lt v9, v5, :cond_f

    invoke-virtual {v8}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v5

    const-string v8, ","

    invoke-virtual {v5, v8, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    goto :goto_b

    :cond_f
    new-array v5, v6, [Ljava/lang/String;

    iget-object v8, v8, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v8}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    :goto_b
    move v8, v7

    :goto_c
    array-length v9, v5

    if-ge v8, v9, :cond_10

    aget-object v9, v5, v8

    invoke-static {v9}, Lkfh;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v8

    add-int/2addr v8, v6

    goto :goto_c

    :cond_10
    move v8, v7

    :goto_d
    array-length v9, v5

    if-ge v8, v9, :cond_12

    iget-object v9, v0, Loqj;->e:Lerj;

    aget-object v13, v5, v8

    invoke-static {v9, v13, v7}, Lrqj;->m(Lerj;Ljava/lang/String;Z)I

    move-result v9

    if-lez v9, :cond_11

    goto :goto_e

    :cond_11
    add-int/2addr v8, v6

    goto :goto_d

    :cond_12
    move v9, v7

    move v8, v10

    :goto_e
    iput v8, v0, Lzpj;->o:I

    iput v9, v0, Lzpj;->p:I

    move v5, v7

    :goto_f
    iget-object v8, v1, Lz8f;->t:Lcom/google/android/gms/internal/ads/zzfww;

    invoke-virtual {v8}, Ljava/util/AbstractCollection;->size()I

    move-result v8

    if-ge v5, v8, :cond_14

    iget-object v8, v0, Loqj;->e:Lerj;

    iget-object v8, v8, Lerj;->o:Ljava/lang/String;

    if-eqz v8, :cond_13

    iget-object v9, v1, Lz8f;->t:Lcom/google/android/gms/internal/ads/zzfww;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    move v10, v5

    goto :goto_10

    :cond_13
    add-int/2addr v5, v6

    goto :goto_f

    :cond_14
    :goto_10
    iput v10, v0, Lzpj;->u:I

    and-int/lit16 v1, v2, 0x180

    const/16 v5, 0x80

    if-ne v1, v5, :cond_15

    move v1, v6

    goto :goto_11

    :cond_15
    move v1, v7

    :goto_11
    iput-boolean v1, v0, Lzpj;->v:Z

    and-int/lit8 v1, v2, 0x40

    if-ne v1, v3, :cond_16

    move v1, v6

    goto :goto_12

    :cond_16
    move v1, v7

    :goto_12
    iput-boolean v1, v0, Lzpj;->w:Z

    iget-object v1, v0, Lzpj;->i:Lhqj;

    iget-boolean v3, v1, Lhqj;->Q:Z

    invoke-static {v2, v3}, Ly9j;->a(IZ)Z

    move-result v3

    if-nez v3, :cond_17

    :goto_13
    move v6, v7

    goto :goto_14

    :cond_17
    iget-boolean v3, v0, Lzpj;->g:Z

    if-nez v3, :cond_18

    iget-boolean v5, v1, Lhqj;->J:Z

    if-nez v5, :cond_18

    goto :goto_13

    :cond_18
    iget-object v5, v1, Lz8f;->u:Lf8f;

    iget v5, v5, Lf8f;->a:I

    invoke-static {v2, v7}, Ly9j;->a(IZ)Z

    move-result v5

    if-eqz v5, :cond_1a

    if-eqz v3, :cond_1a

    iget-object v3, v0, Loqj;->e:Lerj;

    iget v3, v3, Lerj;->j:I

    if-eq v3, v12, :cond_1a

    iget-boolean v1, v1, Lhqj;->S:Z

    if-nez v1, :cond_19

    if-nez p6, :cond_1a

    :cond_19
    and-int v1, v2, v4

    if-eqz v1, :cond_1a

    move v6, v11

    :cond_1a
    :goto_14
    iput v6, v0, Lzpj;->f:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lzpj;->f:I

    return p0
.end method

.method public final bridge synthetic b(Loqj;)Z
    .locals 5

    iget-object v0, p0, Lzpj;->i:Lhqj;

    check-cast p1, Lzpj;

    iget-boolean v0, v0, Lhqj;->M:Z

    iget-object v0, p0, Loqj;->e:Lerj;

    iget v1, v0, Lerj;->E:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v3, p1, Loqj;->e:Lerj;

    iget v4, v3, Lerj;->E:I

    if-ne v1, v4, :cond_0

    iget-object v1, v0, Lerj;->o:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v4, v3, Lerj;->o:Ljava/lang/String;

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v0, v0, Lerj;->F:I

    if-eq v0, v2, :cond_0

    iget v1, v3, Lerj;->F:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lzpj;->v:Z

    iget-boolean v1, p1, Lzpj;->v:Z

    if-ne v0, v1, :cond_0

    iget-boolean p0, p0, Lzpj;->w:Z

    iget-boolean p1, p1, Lzpj;->w:Z

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lzpj;

    invoke-virtual {p0, p1}, Lzpj;->d(Lzpj;)I

    move-result p0

    return p0
.end method

.method public final d(Lzpj;)I
    .locals 6

    iget-boolean v0, p0, Lzpj;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lzpj;->j:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lrqj;->o()Lcom/google/android/gms/internal/ads/zzfyh;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lrqj;->o()Lcom/google/android/gms/internal/ads/zzfyh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfyh;->zza()Lcom/google/android/gms/internal/ads/zzfyh;

    move-result-object v1

    :goto_0
    iget-boolean v2, p0, Lzpj;->j:Z

    invoke-static {}, Lf4i;->i()Lf4i;

    move-result-object v3

    iget-boolean v4, p1, Lzpj;->j:Z

    invoke-virtual {v3, v2, v4}, Lf4i;->d(ZZ)Lf4i;

    move-result-object v2

    iget v3, p0, Lzpj;->l:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p1, Lzpj;->l:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyh;->zzc()Lcom/google/android/gms/internal/ads/zzfyh;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzfyh;->zza()Lcom/google/android/gms/internal/ads/zzfyh;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lf4i;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lf4i;

    move-result-object v2

    iget v3, p0, Lzpj;->k:I

    iget v4, p1, Lzpj;->k:I

    invoke-virtual {v2, v3, v4}, Lf4i;->b(II)Lf4i;

    move-result-object v2

    iget v3, p0, Lzpj;->m:I

    iget v4, p1, Lzpj;->m:I

    invoke-virtual {v2, v3, v4}, Lf4i;->b(II)Lf4i;

    move-result-object v2

    iget-boolean v3, p0, Lzpj;->q:Z

    iget-boolean v4, p1, Lzpj;->q:Z

    invoke-virtual {v2, v3, v4}, Lf4i;->d(ZZ)Lf4i;

    move-result-object v2

    iget-boolean v3, p0, Lzpj;->n:Z

    iget-boolean v4, p1, Lzpj;->n:Z

    invoke-virtual {v2, v3, v4}, Lf4i;->d(ZZ)Lf4i;

    move-result-object v2

    iget v3, p0, Lzpj;->o:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p1, Lzpj;->o:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyh;->zzc()Lcom/google/android/gms/internal/ads/zzfyh;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzfyh;->zza()Lcom/google/android/gms/internal/ads/zzfyh;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lf4i;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lf4i;

    move-result-object v2

    iget v3, p0, Lzpj;->p:I

    iget v4, p1, Lzpj;->p:I

    invoke-virtual {v2, v3, v4}, Lf4i;->b(II)Lf4i;

    move-result-object v2

    iget-boolean v3, p1, Lzpj;->g:Z

    invoke-virtual {v2, v0, v3}, Lf4i;->d(ZZ)Lf4i;

    move-result-object v0

    iget v2, p0, Lzpj;->u:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lzpj;->u:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyh;->zzc()Lcom/google/android/gms/internal/ads/zzfyh;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfyh;->zza()Lcom/google/android/gms/internal/ads/zzfyh;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lf4i;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lf4i;

    move-result-object v0

    iget-object v2, p0, Lzpj;->i:Lhqj;

    iget-boolean v2, v2, Lz8f;->B:Z

    iget-boolean v2, p0, Lzpj;->v:Z

    iget-boolean v3, p1, Lzpj;->v:Z

    invoke-virtual {v0, v2, v3}, Lf4i;->d(ZZ)Lf4i;

    move-result-object v0

    iget-boolean v2, p0, Lzpj;->w:Z

    iget-boolean v3, p1, Lzpj;->w:Z

    invoke-virtual {v0, v2, v3}, Lf4i;->d(ZZ)Lf4i;

    move-result-object v0

    iget-boolean v2, p0, Lzpj;->x:Z

    iget-boolean v3, p1, Lzpj;->x:Z

    invoke-virtual {v0, v2, v3}, Lf4i;->d(ZZ)Lf4i;

    move-result-object v0

    iget v2, p0, Lzpj;->r:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lzpj;->r:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lf4i;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lf4i;

    move-result-object v0

    iget v2, p0, Lzpj;->s:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lzpj;->s:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lf4i;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lf4i;

    move-result-object v0

    iget-object v2, p0, Lzpj;->h:Ljava/lang/String;

    iget-object v3, p1, Lzpj;->h:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget p0, p0, Lzpj;->t:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iget p1, p1, Lzpj;->t:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1, v1}, Lf4i;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lf4i;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Lf4i;->a()I

    move-result p0

    return p0
.end method
