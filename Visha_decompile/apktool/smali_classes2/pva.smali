.class public Lpva;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpva$a;
    }
.end annotation


# static fields
.field public static final B:Lpva;

.field public static final C:Lpva;

.field public static final D:Lcom/google/android/exoplayer2/e$a;


# instance fields
.field public final A:Lcom/google/common/collect/ImmutableSet;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:Z

.field public final m:Lcom/google/common/collect/ImmutableList;

.field public final n:I

.field public final o:Lcom/google/common/collect/ImmutableList;

.field public final p:I

.field public final q:I

.field public final r:I

.field public final s:Lcom/google/common/collect/ImmutableList;

.field public final t:Lcom/google/common/collect/ImmutableList;

.field public final u:I

.field public final v:I

.field public final w:Z

.field public final x:Z

.field public final y:Z

.field public final z:Lcom/google/common/collect/ImmutableMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lpva$a;

    invoke-direct {v0}, Lpva$a;-><init>()V

    invoke-virtual {v0}, Lpva$a;->A()Lpva;

    move-result-object v0

    sput-object v0, Lpva;->B:Lpva;

    sput-object v0, Lpva;->C:Lpva;

    new-instance v0, Lmva;

    invoke-direct {v0}, Lmva;-><init>()V

    sput-object v0, Lpva;->D:Lcom/google/android/exoplayer2/e$a;

    return-void
.end method

.method public constructor <init>(Lpva$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lpva$a;->a(Lpva$a;)I

    move-result v0

    iput v0, p0, Lpva;->b:I

    invoke-static {p1}, Lpva$a;->b(Lpva$a;)I

    move-result v0

    iput v0, p0, Lpva;->c:I

    invoke-static {p1}, Lpva$a;->m(Lpva$a;)I

    move-result v0

    iput v0, p0, Lpva;->d:I

    invoke-static {p1}, Lpva$a;->t(Lpva$a;)I

    move-result v0

    iput v0, p0, Lpva;->e:I

    invoke-static {p1}, Lpva$a;->u(Lpva$a;)I

    move-result v0

    iput v0, p0, Lpva;->f:I

    invoke-static {p1}, Lpva$a;->v(Lpva$a;)I

    move-result v0

    iput v0, p0, Lpva;->g:I

    invoke-static {p1}, Lpva$a;->w(Lpva$a;)I

    move-result v0

    iput v0, p0, Lpva;->h:I

    invoke-static {p1}, Lpva$a;->x(Lpva$a;)I

    move-result v0

    iput v0, p0, Lpva;->i:I

    invoke-static {p1}, Lpva$a;->y(Lpva$a;)I

    move-result v0

    iput v0, p0, Lpva;->j:I

    invoke-static {p1}, Lpva$a;->z(Lpva$a;)I

    move-result v0

    iput v0, p0, Lpva;->k:I

    invoke-static {p1}, Lpva$a;->c(Lpva$a;)Z

    move-result v0

    iput-boolean v0, p0, Lpva;->l:Z

    invoke-static {p1}, Lpva$a;->d(Lpva$a;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lpva;->m:Lcom/google/common/collect/ImmutableList;

    invoke-static {p1}, Lpva$a;->e(Lpva$a;)I

    move-result v0

    iput v0, p0, Lpva;->n:I

    invoke-static {p1}, Lpva$a;->f(Lpva$a;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lpva;->o:Lcom/google/common/collect/ImmutableList;

    invoke-static {p1}, Lpva$a;->g(Lpva$a;)I

    move-result v0

    iput v0, p0, Lpva;->p:I

    invoke-static {p1}, Lpva$a;->h(Lpva$a;)I

    move-result v0

    iput v0, p0, Lpva;->q:I

    invoke-static {p1}, Lpva$a;->i(Lpva$a;)I

    move-result v0

    iput v0, p0, Lpva;->r:I

    invoke-static {p1}, Lpva$a;->j(Lpva$a;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lpva;->s:Lcom/google/common/collect/ImmutableList;

    invoke-static {p1}, Lpva$a;->k(Lpva$a;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lpva;->t:Lcom/google/common/collect/ImmutableList;

    invoke-static {p1}, Lpva$a;->l(Lpva$a;)I

    move-result v0

    iput v0, p0, Lpva;->u:I

    invoke-static {p1}, Lpva$a;->n(Lpva$a;)I

    move-result v0

    iput v0, p0, Lpva;->v:I

    invoke-static {p1}, Lpva$a;->o(Lpva$a;)Z

    move-result v0

    iput-boolean v0, p0, Lpva;->w:Z

    invoke-static {p1}, Lpva$a;->p(Lpva$a;)Z

    move-result v0

    iput-boolean v0, p0, Lpva;->x:Z

    invoke-static {p1}, Lpva$a;->q(Lpva$a;)Z

    move-result v0

    iput-boolean v0, p0, Lpva;->y:Z

    invoke-static {p1}, Lpva$a;->r(Lpva$a;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lpva;->z:Lcom/google/common/collect/ImmutableMap;

    invoke-static {p1}, Lpva$a;->s(Lpva$a;)Ljava/util/HashSet;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    iput-object p1, p0, Lpva;->A:Lcom/google/common/collect/ImmutableSet;

    return-void
.end method

.method public static a(Landroid/os/Bundle;)Lpva;
    .locals 1

    new-instance v0, Lpva$a;

    invoke-direct {v0, p0}, Lpva$a;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lpva$a;->A()Lpva;

    move-result-object p0

    return-object p0
.end method

.method public static b(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    :cond_1
    check-cast p1, Lpva;

    iget v2, p0, Lpva;->b:I

    iget v3, p1, Lpva;->b:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lpva;->c:I

    iget v3, p1, Lpva;->c:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lpva;->d:I

    iget v3, p1, Lpva;->d:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lpva;->e:I

    iget v3, p1, Lpva;->e:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lpva;->f:I

    iget v3, p1, Lpva;->f:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lpva;->g:I

    iget v3, p1, Lpva;->g:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lpva;->h:I

    iget v3, p1, Lpva;->h:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lpva;->i:I

    iget v3, p1, Lpva;->i:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lpva;->l:Z

    iget-boolean v3, p1, Lpva;->l:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Lpva;->j:I

    iget v3, p1, Lpva;->j:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lpva;->k:I

    iget v3, p1, Lpva;->k:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lpva;->m:Lcom/google/common/collect/ImmutableList;

    iget-object v3, p1, Lpva;->m:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lpva;->n:I

    iget v3, p1, Lpva;->n:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lpva;->o:Lcom/google/common/collect/ImmutableList;

    iget-object v3, p1, Lpva;->o:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lpva;->p:I

    iget v3, p1, Lpva;->p:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lpva;->q:I

    iget v3, p1, Lpva;->q:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lpva;->r:I

    iget v3, p1, Lpva;->r:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lpva;->s:Lcom/google/common/collect/ImmutableList;

    iget-object v3, p1, Lpva;->s:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lpva;->t:Lcom/google/common/collect/ImmutableList;

    iget-object v3, p1, Lpva;->t:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lpva;->u:I

    iget v3, p1, Lpva;->u:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lpva;->v:I

    iget v3, p1, Lpva;->v:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lpva;->w:Z

    iget-boolean v3, p1, Lpva;->w:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lpva;->x:Z

    iget-boolean v3, p1, Lpva;->x:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lpva;->y:Z

    iget-boolean v3, p1, Lpva;->y:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lpva;->z:Lcom/google/common/collect/ImmutableMap;

    iget-object v3, p1, Lpva;->z:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableMap;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lpva;->A:Lcom/google/common/collect/ImmutableSet;

    iget-object p1, p1, Lpva;->A:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSet;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lpva;->b:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget v2, p0, Lpva;->c:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lpva;->d:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lpva;->e:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lpva;->f:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lpva;->g:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lpva;->h:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lpva;->i:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lpva;->l:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lpva;->j:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lpva;->k:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lpva;->m:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lpva;->n:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lpva;->o:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lpva;->p:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lpva;->q:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lpva;->r:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lpva;->s:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lpva;->t:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lpva;->u:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lpva;->v:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lpva;->w:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lpva;->x:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lpva;->y:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lpva;->z:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableMap;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Lpva;->A:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x6

    invoke-static {v1}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lpva;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x7

    invoke-static {v1}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lpva;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x8

    invoke-static {v1}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lpva;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x9

    invoke-static {v1}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lpva;->e:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0xa

    invoke-static {v1}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lpva;->f:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0xb

    invoke-static {v1}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lpva;->g:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0xc

    invoke-static {v1}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lpva;->h:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0xd

    invoke-static {v1}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lpva;->i:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0xe

    invoke-static {v1}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lpva;->j:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0xf

    invoke-static {v1}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lpva;->k:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x10

    invoke-static {v1}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lpva;->l:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x11

    invoke-static {v1}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lpva;->m:Lcom/google/common/collect/ImmutableList;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/google/common/collect/ImmutableCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v1, 0x19

    invoke-static {v1}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lpva;->n:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x1

    invoke-static {v1}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lpva;->o:Lcom/google/common/collect/ImmutableList;

    new-array v4, v3, [Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/google/common/collect/ImmutableCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-static {v1}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lpva;->p:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x12

    invoke-static {v1}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lpva;->q:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x13

    invoke-static {v1}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lpva;->r:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x14

    invoke-static {v1}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lpva;->s:Lcom/google/common/collect/ImmutableList;

    new-array v4, v3, [Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/google/common/collect/ImmutableCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-static {v1}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lpva;->t:Lcom/google/common/collect/ImmutableList;

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-static {v1}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lpva;->u:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x1a

    invoke-static {v1}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lpva;->v:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x5

    invoke-static {v1}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lpva;->w:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x15

    invoke-static {v1}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lpva;->x:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x16

    invoke-static {v1}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lpva;->y:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x17

    invoke-static {v1}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lpva;->z:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableMap;->values()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v2

    invoke-static {v2}, Lxn0;->d(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const/16 v1, 0x18

    invoke-static {v1}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lpva;->A:Lcom/google/common/collect/ImmutableSet;

    invoke-static {p0}, Lcom/google/common/primitives/Ints;->o(Ljava/util/Collection;)[I

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    return-object v0
.end method
