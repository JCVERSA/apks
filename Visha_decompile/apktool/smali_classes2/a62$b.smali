.class public final La62$b;
.super La62$h;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La62;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final f:I

.field public final g:Z

.field public final h:Ljava/lang/String;

.field public final i:La62$d;

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


# direct methods
.method public constructor <init>(ILzua;ILa62$d;IZLhe8;)V
    .locals 5

    invoke-direct {p0, p1, p2, p3}, La62$h;-><init>(ILzua;I)V

    iput-object p4, p0, La62$b;->i:La62$d;

    iget-object p1, p0, La62$h;->e:Lcom/google/android/exoplayer2/k;

    iget-object p1, p1, Lcom/google/android/exoplayer2/k;->d:Ljava/lang/String;

    invoke-static {p1}, La62;->Q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, La62$b;->h:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-static {p5, p1}, La62;->I(IZ)Z

    move-result p2

    iput-boolean p2, p0, La62$b;->j:Z

    move p2, p1

    :goto_0
    iget-object p3, p4, Lpva;->o:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p3}, Ljava/util/AbstractCollection;->size()I

    move-result p3

    const v0, 0x7fffffff

    if-ge p2, p3, :cond_1

    iget-object p3, p0, La62$h;->e:Lcom/google/android/exoplayer2/k;

    iget-object v1, p4, Lpva;->o:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p3, v1, p1}, La62;->B(Lcom/google/android/exoplayer2/k;Ljava/lang/String;Z)I

    move-result p3

    if-lez p3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    move p3, p1

    move p2, v0

    :goto_1
    iput p2, p0, La62$b;->l:I

    iput p3, p0, La62$b;->k:I

    iget-object p2, p0, La62$h;->e:Lcom/google/android/exoplayer2/k;

    iget p2, p2, Lcom/google/android/exoplayer2/k;->f:I

    iget p3, p4, Lpva;->p:I

    invoke-static {p2, p3}, La62;->t(II)I

    move-result p2

    iput p2, p0, La62$b;->m:I

    iget-object p2, p0, La62$h;->e:Lcom/google/android/exoplayer2/k;

    iget p3, p2, Lcom/google/android/exoplayer2/k;->f:I

    const/4 v1, 0x1

    if-eqz p3, :cond_3

    and-int/2addr p3, v1

    if-eqz p3, :cond_2

    goto :goto_2

    :cond_2
    move p3, p1

    goto :goto_3

    :cond_3
    :goto_2
    move p3, v1

    :goto_3
    iput-boolean p3, p0, La62$b;->n:Z

    iget p3, p2, Lcom/google/android/exoplayer2/k;->e:I

    and-int/2addr p3, v1

    if-eqz p3, :cond_4

    move p3, v1

    goto :goto_4

    :cond_4
    move p3, p1

    :goto_4
    iput-boolean p3, p0, La62$b;->q:Z

    iget p3, p2, Lcom/google/android/exoplayer2/k;->z:I

    iput p3, p0, La62$b;->r:I

    iget v2, p2, Lcom/google/android/exoplayer2/k;->A:I

    iput v2, p0, La62$b;->s:I

    iget v2, p2, Lcom/google/android/exoplayer2/k;->i:I

    iput v2, p0, La62$b;->t:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    iget v4, p4, Lpva;->r:I

    if-gt v2, v4, :cond_7

    :cond_5
    if-eq p3, v3, :cond_6

    iget v2, p4, Lpva;->q:I

    if-gt p3, v2, :cond_7

    :cond_6
    invoke-interface {p7, p2}, Lhe8;->apply(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    move p2, v1

    goto :goto_5

    :cond_7
    move p2, p1

    :goto_5
    iput-boolean p2, p0, La62$b;->g:Z

    invoke-static {}, Lblb;->a0()[Ljava/lang/String;

    move-result-object p2

    move p3, p1

    :goto_6
    array-length p7, p2

    if-ge p3, p7, :cond_9

    iget-object p7, p0, La62$h;->e:Lcom/google/android/exoplayer2/k;

    aget-object v2, p2, p3

    invoke-static {p7, v2, p1}, La62;->B(Lcom/google/android/exoplayer2/k;Ljava/lang/String;Z)I

    move-result p7

    if-lez p7, :cond_8

    goto :goto_7

    :cond_8
    add-int/lit8 p3, p3, 0x1

    goto :goto_6

    :cond_9
    move p7, p1

    move p3, v0

    :goto_7
    iput p3, p0, La62$b;->o:I

    iput p7, p0, La62$b;->p:I

    move p2, p1

    :goto_8
    iget-object p3, p4, Lpva;->s:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p3}, Ljava/util/AbstractCollection;->size()I

    move-result p3

    if-ge p2, p3, :cond_b

    iget-object p3, p0, La62$h;->e:Lcom/google/android/exoplayer2/k;

    iget-object p3, p3, Lcom/google/android/exoplayer2/k;->m:Ljava/lang/String;

    if-eqz p3, :cond_a

    iget-object p7, p4, Lpva;->s:Lcom/google/common/collect/ImmutableList;

    invoke-interface {p7, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p7

    invoke-virtual {p3, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_a

    move v0, p2

    goto :goto_9

    :cond_a
    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    :cond_b
    :goto_9
    iput v0, p0, La62$b;->u:I

    invoke-static {p5}, Lks8;->getDecoderSupport(I)I

    move-result p2

    const/16 p3, 0x80

    if-ne p2, p3, :cond_c

    move p2, v1

    goto :goto_a

    :cond_c
    move p2, p1

    :goto_a
    iput-boolean p2, p0, La62$b;->v:Z

    invoke-static {p5}, Lks8;->getHardwareAccelerationSupport(I)I

    move-result p2

    const/16 p3, 0x40

    if-ne p2, p3, :cond_d

    move p1, v1

    :cond_d
    iput-boolean p1, p0, La62$b;->w:Z

    invoke-virtual {p0, p5, p6}, La62$b;->g(IZ)I

    move-result p1

    iput p1, p0, La62$b;->f:I

    return-void
.end method

.method public static d(Ljava/util/List;Ljava/util/List;)I
    .locals 0

    invoke-static {p0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, La62$b;

    invoke-static {p1}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La62$b;

    invoke-virtual {p0, p1}, La62$b;->e(La62$b;)I

    move-result p0

    return p0
.end method

.method public static f(ILzua;La62$d;[IZLhe8;)Lcom/google/common/collect/ImmutableList;
    .locals 12

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$a;

    move-result-object v0

    const/4 v1, 0x0

    move-object v10, p1

    :goto_0
    iget v2, v10, Lzua;->b:I

    if-ge v1, v2, :cond_0

    new-instance v11, La62$b;

    aget v7, p3, v1

    move-object v2, v11

    move v3, p0

    move-object v4, p1

    move v5, v1

    move-object v6, p2

    move/from16 v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v2 .. v9}, La62$b;-><init>(ILzua;ILa62$d;IZLhe8;)V

    invoke-virtual {v0, v11}, Lcom/google/common/collect/ImmutableList$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$a;->n()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 0

    iget p0, p0, La62$b;->f:I

    return p0
.end method

.method public bridge synthetic b(La62$h;)Z
    .locals 0

    check-cast p1, La62$b;

    invoke-virtual {p0, p1}, La62$b;->h(La62$b;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, La62$b;

    invoke-virtual {p0, p1}, La62$b;->e(La62$b;)I

    move-result p0

    return p0
.end method

.method public e(La62$b;)I
    .locals 5

    iget-boolean v0, p0, La62$b;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, La62$b;->j:Z

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

    iget-boolean v2, p0, La62$b;->j:Z

    iget-boolean v3, p1, La62$b;->j:Z

    invoke-virtual {v1, v2, v3}, Lcb1;->h(ZZ)Lcb1;

    move-result-object v1

    iget v2, p0, La62$b;->l:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, La62$b;->l:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcb1;->g(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcb1;

    move-result-object v1

    iget v2, p0, La62$b;->k:I

    iget v3, p1, La62$b;->k:I

    invoke-virtual {v1, v2, v3}, Lcb1;->d(II)Lcb1;

    move-result-object v1

    iget v2, p0, La62$b;->m:I

    iget v3, p1, La62$b;->m:I

    invoke-virtual {v1, v2, v3}, Lcb1;->d(II)Lcb1;

    move-result-object v1

    iget-boolean v2, p0, La62$b;->q:Z

    iget-boolean v3, p1, La62$b;->q:Z

    invoke-virtual {v1, v2, v3}, Lcb1;->h(ZZ)Lcb1;

    move-result-object v1

    iget-boolean v2, p0, La62$b;->n:Z

    iget-boolean v3, p1, La62$b;->n:Z

    invoke-virtual {v1, v2, v3}, Lcb1;->h(ZZ)Lcb1;

    move-result-object v1

    iget v2, p0, La62$b;->o:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, La62$b;->o:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcb1;->g(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcb1;

    move-result-object v1

    iget v2, p0, La62$b;->p:I

    iget v3, p1, La62$b;->p:I

    invoke-virtual {v1, v2, v3}, Lcb1;->d(II)Lcb1;

    move-result-object v1

    iget-boolean v2, p0, La62$b;->g:Z

    iget-boolean v3, p1, La62$b;->g:Z

    invoke-virtual {v1, v2, v3}, Lcb1;->h(ZZ)Lcb1;

    move-result-object v1

    iget v2, p0, La62$b;->u:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, La62$b;->u:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcb1;->g(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcb1;

    move-result-object v1

    iget v2, p0, La62$b;->t:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, La62$b;->t:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, La62$b;->i:La62$d;

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

    iget-boolean v2, p0, La62$b;->v:Z

    iget-boolean v3, p1, La62$b;->v:Z

    invoke-virtual {v1, v2, v3}, Lcb1;->h(ZZ)Lcb1;

    move-result-object v1

    iget-boolean v2, p0, La62$b;->w:Z

    iget-boolean v3, p1, La62$b;->w:Z

    invoke-virtual {v1, v2, v3}, Lcb1;->h(ZZ)Lcb1;

    move-result-object v1

    iget v2, p0, La62$b;->r:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, La62$b;->r:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcb1;->g(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcb1;

    move-result-object v1

    iget v2, p0, La62$b;->s:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, La62$b;->s:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcb1;->g(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcb1;

    move-result-object v1

    iget v2, p0, La62$b;->t:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, La62$b;->t:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object p0, p0, La62$b;->h:Ljava/lang/String;

    iget-object p1, p1, La62$b;->h:Ljava/lang/String;

    invoke-static {p0, p1}, Lblb;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {}, La62;->w()Lcom/google/common/collect/Ordering;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v2, v3, v0}, Lcb1;->g(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcb1;

    move-result-object p0

    invoke-virtual {p0}, Lcb1;->j()I

    move-result p0

    return p0
.end method

.method public final g(IZ)I
    .locals 2

    iget-object v0, p0, La62$b;->i:La62$d;

    iget-boolean v0, v0, La62$d;->O:Z

    invoke-static {p1, v0}, La62;->I(IZ)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, La62$b;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, La62$b;->i:La62$d;

    iget-boolean v0, v0, La62$d;->I:Z

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-static {p1, v1}, La62;->I(IZ)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, La62$b;->g:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, La62$h;->e:Lcom/google/android/exoplayer2/k;

    iget p1, p1, Lcom/google/android/exoplayer2/k;->i:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    iget-object p0, p0, La62$b;->i:La62$d;

    iget-boolean p1, p0, Lpva;->y:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lpva;->x:Z

    if-nez p1, :cond_3

    iget-boolean p0, p0, La62$d;->Q:Z

    if-nez p0, :cond_2

    if-nez p2, :cond_3

    :cond_2
    const/4 p0, 0x2

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public h(La62$b;)Z
    .locals 4

    iget-object v0, p0, La62$b;->i:La62$d;

    iget-boolean v1, v0, La62$d;->L:Z

    const/4 v2, -0x1

    if-nez v1, :cond_0

    iget-object v1, p0, La62$h;->e:Lcom/google/android/exoplayer2/k;

    iget v1, v1, Lcom/google/android/exoplayer2/k;->z:I

    if-eq v1, v2, :cond_3

    iget-object v3, p1, La62$h;->e:Lcom/google/android/exoplayer2/k;

    iget v3, v3, Lcom/google/android/exoplayer2/k;->z:I

    if-ne v1, v3, :cond_3

    :cond_0
    iget-boolean v0, v0, La62$d;->J:Z

    if-nez v0, :cond_1

    iget-object v0, p0, La62$h;->e:Lcom/google/android/exoplayer2/k;

    iget-object v0, v0, Lcom/google/android/exoplayer2/k;->m:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v1, p1, La62$h;->e:Lcom/google/android/exoplayer2/k;

    iget-object v1, v1, Lcom/google/android/exoplayer2/k;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, La62$b;->i:La62$d;

    iget-boolean v1, v0, La62$d;->K:Z

    if-nez v1, :cond_2

    iget-object v1, p0, La62$h;->e:Lcom/google/android/exoplayer2/k;

    iget v1, v1, Lcom/google/android/exoplayer2/k;->A:I

    if-eq v1, v2, :cond_3

    iget-object v2, p1, La62$h;->e:Lcom/google/android/exoplayer2/k;

    iget v2, v2, Lcom/google/android/exoplayer2/k;->A:I

    if-ne v1, v2, :cond_3

    :cond_2
    iget-boolean v0, v0, La62$d;->M:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, La62$b;->v:Z

    iget-boolean v1, p1, La62$b;->v:Z

    if-ne v0, v1, :cond_3

    iget-boolean p0, p0, La62$b;->w:Z

    iget-boolean p1, p1, La62$b;->w:Z

    if-ne p0, p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
