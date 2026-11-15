.class public final La62$i;
.super La62$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La62;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
.end annotation


# instance fields
.field public final f:Z

.field public final g:La62$d;

.field public final h:Z

.field public final i:Z

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:Z

.field public final o:Z

.field public final p:I

.field public final q:Z

.field public final r:Z

.field public final s:I


# direct methods
.method public constructor <init>(ILzua;ILa62$d;IIZ)V
    .locals 4

    invoke-direct {p0, p1, p2, p3}, La62$h;-><init>(ILzua;I)V

    iput-object p4, p0, La62$i;->g:La62$d;

    iget-boolean p1, p4, La62$d;->G:Z

    if-eqz p1, :cond_0

    const/16 p1, 0x18

    goto :goto_0

    :cond_0
    const/16 p1, 0x10

    :goto_0
    iget-boolean p2, p4, La62$d;->F:Z

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    and-int p2, p6, p1

    if-eqz p2, :cond_1

    move p2, v0

    goto :goto_1

    :cond_1
    move p2, p3

    :goto_1
    iput-boolean p2, p0, La62$i;->o:Z

    const/high16 p2, -0x40800000    # -1.0f

    const/4 p6, -0x1

    if-eqz p7, :cond_6

    iget-object v1, p0, La62$h;->e:Lcom/google/android/exoplayer2/k;

    iget v2, v1, Lcom/google/android/exoplayer2/k;->r:I

    if-eq v2, p6, :cond_2

    iget v3, p4, Lpva;->b:I

    if-gt v2, v3, :cond_6

    :cond_2
    iget v2, v1, Lcom/google/android/exoplayer2/k;->s:I

    if-eq v2, p6, :cond_3

    iget v3, p4, Lpva;->c:I

    if-gt v2, v3, :cond_6

    :cond_3
    iget v2, v1, Lcom/google/android/exoplayer2/k;->t:F

    cmpl-float v3, v2, p2

    if-eqz v3, :cond_4

    iget v3, p4, Lpva;->d:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_6

    :cond_4
    iget v1, v1, Lcom/google/android/exoplayer2/k;->i:I

    if-eq v1, p6, :cond_5

    iget v2, p4, Lpva;->e:I

    if-gt v1, v2, :cond_6

    :cond_5
    move v1, v0

    goto :goto_2

    :cond_6
    move v1, p3

    :goto_2
    iput-boolean v1, p0, La62$i;->f:Z

    if-eqz p7, :cond_b

    iget-object p7, p0, La62$h;->e:Lcom/google/android/exoplayer2/k;

    iget v1, p7, Lcom/google/android/exoplayer2/k;->r:I

    if-eq v1, p6, :cond_7

    iget v2, p4, Lpva;->f:I

    if-lt v1, v2, :cond_b

    :cond_7
    iget v1, p7, Lcom/google/android/exoplayer2/k;->s:I

    if-eq v1, p6, :cond_8

    iget v2, p4, Lpva;->g:I

    if-lt v1, v2, :cond_b

    :cond_8
    iget v1, p7, Lcom/google/android/exoplayer2/k;->t:F

    cmpl-float p2, v1, p2

    if-eqz p2, :cond_9

    iget p2, p4, Lpva;->h:I

    int-to-float p2, p2

    cmpl-float p2, v1, p2

    if-ltz p2, :cond_b

    :cond_9
    iget p2, p7, Lcom/google/android/exoplayer2/k;->i:I

    if-eq p2, p6, :cond_a

    iget p6, p4, Lpva;->i:I

    if-lt p2, p6, :cond_b

    :cond_a
    move p2, v0

    goto :goto_3

    :cond_b
    move p2, p3

    :goto_3
    iput-boolean p2, p0, La62$i;->h:Z

    invoke-static {p5, p3}, La62;->I(IZ)Z

    move-result p2

    iput-boolean p2, p0, La62$i;->i:Z

    iget-object p2, p0, La62$h;->e:Lcom/google/android/exoplayer2/k;

    iget p6, p2, Lcom/google/android/exoplayer2/k;->i:I

    iput p6, p0, La62$i;->j:I

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/k;->f()I

    move-result p2

    iput p2, p0, La62$i;->k:I

    iget-object p2, p0, La62$h;->e:Lcom/google/android/exoplayer2/k;

    iget p2, p2, Lcom/google/android/exoplayer2/k;->f:I

    iget p6, p4, Lpva;->n:I

    invoke-static {p2, p6}, La62;->t(II)I

    move-result p2

    iput p2, p0, La62$i;->m:I

    iget-object p2, p0, La62$h;->e:Lcom/google/android/exoplayer2/k;

    iget p2, p2, Lcom/google/android/exoplayer2/k;->f:I

    if-eqz p2, :cond_d

    and-int/2addr p2, v0

    if-eqz p2, :cond_c

    goto :goto_4

    :cond_c
    move p2, p3

    goto :goto_5

    :cond_d
    :goto_4
    move p2, v0

    :goto_5
    iput-boolean p2, p0, La62$i;->n:Z

    move p2, p3

    :goto_6
    iget-object p6, p4, Lpva;->m:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p6}, Ljava/util/AbstractCollection;->size()I

    move-result p6

    if-ge p2, p6, :cond_f

    iget-object p6, p0, La62$h;->e:Lcom/google/android/exoplayer2/k;

    iget-object p6, p6, Lcom/google/android/exoplayer2/k;->m:Ljava/lang/String;

    if-eqz p6, :cond_e

    iget-object p7, p4, Lpva;->m:Lcom/google/common/collect/ImmutableList;

    invoke-interface {p7, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p7

    invoke-virtual {p6, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_e

    goto :goto_7

    :cond_e
    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    :cond_f
    const p2, 0x7fffffff

    :goto_7
    iput p2, p0, La62$i;->l:I

    invoke-static {p5}, Lks8;->getDecoderSupport(I)I

    move-result p2

    const/16 p4, 0x80

    if-ne p2, p4, :cond_10

    move p2, v0

    goto :goto_8

    :cond_10
    move p2, p3

    :goto_8
    iput-boolean p2, p0, La62$i;->q:Z

    invoke-static {p5}, Lks8;->getHardwareAccelerationSupport(I)I

    move-result p2

    const/16 p4, 0x40

    if-ne p2, p4, :cond_11

    move p3, v0

    :cond_11
    iput-boolean p3, p0, La62$i;->r:Z

    iget-object p2, p0, La62$h;->e:Lcom/google/android/exoplayer2/k;

    iget-object p2, p2, Lcom/google/android/exoplayer2/k;->m:Ljava/lang/String;

    invoke-static {p2}, La62;->u(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, La62$i;->s:I

    invoke-virtual {p0, p5, p1}, La62$i;->j(II)I

    move-result p1

    iput p1, p0, La62$i;->p:I

    return-void
.end method

.method public static synthetic d(La62$i;La62$i;)I
    .locals 0

    invoke-static {p0, p1}, La62$i;->g(La62$i;La62$i;)I

    move-result p0

    return p0
.end method

.method public static synthetic e(La62$i;La62$i;)I
    .locals 0

    invoke-static {p0, p1}, La62$i;->f(La62$i;La62$i;)I

    move-result p0

    return p0
.end method

.method public static f(La62$i;La62$i;)I
    .locals 4

    invoke-static {}, Lcb1;->k()Lcb1;

    move-result-object v0

    iget-boolean v1, p0, La62$i;->i:Z

    iget-boolean v2, p1, La62$i;->i:Z

    invoke-virtual {v0, v1, v2}, Lcb1;->h(ZZ)Lcb1;

    move-result-object v0

    iget v1, p0, La62$i;->m:I

    iget v2, p1, La62$i;->m:I

    invoke-virtual {v0, v1, v2}, Lcb1;->d(II)Lcb1;

    move-result-object v0

    iget-boolean v1, p0, La62$i;->n:Z

    iget-boolean v2, p1, La62$i;->n:Z

    invoke-virtual {v0, v1, v2}, Lcb1;->h(ZZ)Lcb1;

    move-result-object v0

    iget-boolean v1, p0, La62$i;->f:Z

    iget-boolean v2, p1, La62$i;->f:Z

    invoke-virtual {v0, v1, v2}, Lcb1;->h(ZZ)Lcb1;

    move-result-object v0

    iget-boolean v1, p0, La62$i;->h:Z

    iget-boolean v2, p1, La62$i;->h:Z

    invoke-virtual {v0, v1, v2}, Lcb1;->h(ZZ)Lcb1;

    move-result-object v0

    iget v1, p0, La62$i;->l:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, La62$i;->l:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcb1;->g(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcb1;

    move-result-object v0

    iget-boolean v1, p0, La62$i;->q:Z

    iget-boolean v2, p1, La62$i;->q:Z

    invoke-virtual {v0, v1, v2}, Lcb1;->h(ZZ)Lcb1;

    move-result-object v0

    iget-boolean v1, p0, La62$i;->r:Z

    iget-boolean v2, p1, La62$i;->r:Z

    invoke-virtual {v0, v1, v2}, Lcb1;->h(ZZ)Lcb1;

    move-result-object v0

    iget-boolean v1, p0, La62$i;->q:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, La62$i;->r:Z

    if-eqz v1, :cond_0

    iget p0, p0, La62$i;->s:I

    iget p1, p1, La62$i;->s:I

    invoke-virtual {v0, p0, p1}, Lcb1;->d(II)Lcb1;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Lcb1;->j()I

    move-result p0

    return p0
.end method

.method public static g(La62$i;La62$i;)I
    .locals 5

    iget-boolean v0, p0, La62$i;->f:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, La62$i;->i:Z

    if-eqz v0, :cond_0

    invoke-static {}, La62;->v()Lcom/google/common/collect/Ordering;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, La62;->v()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v0

    :goto_0
    invoke-static {}, Lcb1;->k()Lcb1;

    move-result-object v1

    iget v2, p0, La62$i;->j:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, La62$i;->j:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, La62$i;->g:La62$d;

    iget-boolean v4, v4, Lpva;->x:Z

    if-eqz v4, :cond_1

    invoke-static {}, La62;->v()Lcom/google/common/collect/Ordering;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v4

    goto :goto_1

    :cond_1
    invoke-static {}, La62;->w()Lcom/google/common/collect/Ordering;

    move-result-object v4

    :goto_1
    invoke-virtual {v1, v2, v3, v4}, Lcb1;->g(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcb1;

    move-result-object v1

    iget v2, p0, La62$i;->k:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, La62$i;->k:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcb1;->g(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcb1;

    move-result-object v1

    iget p0, p0, La62$i;->j:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iget p1, p1, La62$i;->j:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p0, p1, v0}, Lcb1;->g(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcb1;

    move-result-object p0

    invoke-virtual {p0}, Lcb1;->j()I

    move-result p0

    return p0
.end method

.method public static h(Ljava/util/List;Ljava/util/List;)I
    .locals 4

    invoke-static {}, Lcb1;->k()Lcb1;

    move-result-object v0

    new-instance v1, Lp62;

    invoke-direct {v1}, Lp62;-><init>()V

    invoke-static {p0, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La62$i;

    new-instance v2, Lp62;

    invoke-direct {v2}, Lp62;-><init>()V

    invoke-static {p1, v2}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La62$i;

    new-instance v3, Lp62;

    invoke-direct {v3}, Lp62;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcb1;->g(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcb1;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcb1;->d(II)Lcb1;

    move-result-object v0

    new-instance v1, Lq62;

    invoke-direct {v1}, Lq62;-><init>()V

    invoke-static {p0, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, La62$i;

    new-instance v1, Lq62;

    invoke-direct {v1}, Lq62;-><init>()V

    invoke-static {p1, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La62$i;

    new-instance v1, Lq62;

    invoke-direct {v1}, Lq62;-><init>()V

    invoke-virtual {v0, p0, p1, v1}, Lcb1;->g(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcb1;

    move-result-object p0

    invoke-virtual {p0}, Lcb1;->j()I

    move-result p0

    return p0
.end method

.method public static i(ILzua;La62$d;[II)Lcom/google/common/collect/ImmutableList;
    .locals 15

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    iget v0, v9, Lpva;->j:I

    iget v1, v9, Lpva;->k:I

    iget-boolean v2, v9, Lpva;->l:Z

    invoke-static {v8, v0, v1, v2}, La62;->s(Lzua;IIZ)I

    move-result v10

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$a;

    move-result-object v11

    const/4 v12, 0x0

    move v13, v12

    :goto_0
    iget v0, v8, Lzua;->b:I

    if-ge v13, v0, :cond_2

    invoke-virtual {v8, v13}, Lzua;->c(I)Lcom/google/android/exoplayer2/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/k;->f()I

    move-result v0

    const v1, 0x7fffffff

    if-eq v10, v1, :cond_1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-gt v0, v10, :cond_0

    goto :goto_1

    :cond_0
    move v7, v12

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v0, 0x1

    move v7, v0

    :goto_2
    new-instance v14, La62$i;

    aget v5, p3, v13

    move-object v0, v14

    move v1, p0

    move-object/from16 v2, p1

    move v3, v13

    move-object/from16 v4, p2

    move/from16 v6, p4

    invoke-direct/range {v0 .. v7}, La62$i;-><init>(ILzua;ILa62$d;IIZ)V

    invoke-virtual {v11, v14}, Lcom/google/common/collect/ImmutableList$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v11}, Lcom/google/common/collect/ImmutableList$a;->n()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 0

    iget p0, p0, La62$i;->p:I

    return p0
.end method

.method public bridge synthetic b(La62$h;)Z
    .locals 0

    check-cast p1, La62$i;

    invoke-virtual {p0, p1}, La62$i;->k(La62$i;)Z

    move-result p0

    return p0
.end method

.method public final j(II)I
    .locals 2

    iget-object v0, p0, La62$h;->e:Lcom/google/android/exoplayer2/k;

    iget v0, v0, Lcom/google/android/exoplayer2/k;->f:I

    and-int/lit16 v0, v0, 0x4000

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, La62$i;->g:La62$d;

    iget-boolean v0, v0, La62$d;->O:Z

    invoke-static {p1, v0}, La62;->I(IZ)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-boolean v0, p0, La62$i;->f:Z

    if-nez v0, :cond_2

    iget-object v0, p0, La62$i;->g:La62$d;

    iget-boolean v0, v0, La62$d;->E:Z

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-static {p1, v1}, La62;->I(IZ)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, La62$i;->h:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, La62$i;->f:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, La62$h;->e:Lcom/google/android/exoplayer2/k;

    iget v0, v0, Lcom/google/android/exoplayer2/k;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget-object p0, p0, La62$i;->g:La62$d;

    iget-boolean v0, p0, Lpva;->y:Z

    if-nez v0, :cond_3

    iget-boolean p0, p0, Lpva;->x:Z

    if-nez p0, :cond_3

    and-int p0, p1, p2

    if-eqz p0, :cond_3

    const/4 p0, 0x2

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public k(La62$i;)Z
    .locals 2

    iget-boolean v0, p0, La62$i;->o:Z

    if-nez v0, :cond_0

    iget-object v0, p0, La62$h;->e:Lcom/google/android/exoplayer2/k;

    iget-object v0, v0, Lcom/google/android/exoplayer2/k;->m:Ljava/lang/String;

    iget-object v1, p1, La62$h;->e:Lcom/google/android/exoplayer2/k;

    iget-object v1, v1, Lcom/google/android/exoplayer2/k;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Lblb;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, La62$i;->g:La62$d;

    iget-boolean v0, v0, La62$d;->H:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, La62$i;->q:Z

    iget-boolean v1, p1, La62$i;->q:Z

    if-ne v0, v1, :cond_1

    iget-boolean p0, p0, La62$i;->r:Z

    iget-boolean p1, p1, La62$i;->r:Z

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
