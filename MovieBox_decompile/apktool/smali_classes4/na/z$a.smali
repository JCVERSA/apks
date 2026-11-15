.class public Lna/z$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lna/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Z

.field private l:Lcom/google/common/collect/ImmutableList;

.field private m:I

.field private n:Lcom/google/common/collect/ImmutableList;

.field private o:I

.field private p:I

.field private q:I

.field private r:Lcom/google/common/collect/ImmutableList;

.field private s:Lcom/google/common/collect/ImmutableList;

.field private t:I

.field private u:I

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Ljava/util/HashMap;

.field private z:Ljava/util/HashSet;


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 2
    iput v0, p0, Lna/z$a;->a:I

    .line 3
    iput v0, p0, Lna/z$a;->b:I

    .line 4
    iput v0, p0, Lna/z$a;->c:I

    .line 5
    iput v0, p0, Lna/z$a;->d:I

    .line 6
    iput v0, p0, Lna/z$a;->i:I

    .line 7
    iput v0, p0, Lna/z$a;->j:I

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lna/z$a;->k:Z

    .line 9
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iput-object v1, p0, Lna/z$a;->l:Lcom/google/common/collect/ImmutableList;

    const/4 v1, 0x0

    .line 10
    iput v1, p0, Lna/z$a;->m:I

    .line 11
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    iput-object v2, p0, Lna/z$a;->n:Lcom/google/common/collect/ImmutableList;

    .line 12
    iput v1, p0, Lna/z$a;->o:I

    .line 13
    iput v0, p0, Lna/z$a;->p:I

    .line 14
    iput v0, p0, Lna/z$a;->q:I

    .line 15
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lna/z$a;->r:Lcom/google/common/collect/ImmutableList;

    .line 16
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lna/z$a;->s:Lcom/google/common/collect/ImmutableList;

    .line 17
    iput v1, p0, Lna/z$a;->t:I

    .line 18
    iput v1, p0, Lna/z$a;->u:I

    .line 19
    iput-boolean v1, p0, Lna/z$a;->v:Z

    .line 20
    iput-boolean v1, p0, Lna/z$a;->w:Z

    .line 21
    iput-boolean v1, p0, Lna/z$a;->x:Z

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lna/z$a;->y:Ljava/util/HashMap;

    .line 23
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lna/z$a;->z:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Lna/z$a;-><init>()V

    .line 25
    invoke-virtual {p0, p1}, Lna/z$a;->H(Landroid/content/Context;)Lna/z$a;

    const/4 v0, 0x1

    .line 26
    invoke-virtual {p0, p1, v0}, Lna/z$a;->L(Landroid/content/Context;Z)Lna/z$a;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Bundle;)V
    .locals 6

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    .line 30
    invoke-static {v0}, Lna/z;->c(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lna/z;->A:Lna/z;

    iget v2, v1, Lna/z;->a:I

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lna/z$a;->a:I

    const/4 v0, 0x7

    .line 31
    invoke-static {v0}, Lna/z;->c(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lna/z;->b:I

    .line 32
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lna/z$a;->b:I

    const/16 v0, 0x8

    .line 33
    invoke-static {v0}, Lna/z;->c(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lna/z;->c:I

    .line 34
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lna/z$a;->c:I

    const/16 v0, 0x9

    .line 35
    invoke-static {v0}, Lna/z;->c(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lna/z;->d:I

    .line 36
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lna/z$a;->d:I

    const/16 v0, 0xa

    .line 37
    invoke-static {v0}, Lna/z;->c(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lna/z;->e:I

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lna/z$a;->e:I

    const/16 v0, 0xb

    .line 38
    invoke-static {v0}, Lna/z;->c(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lna/z;->f:I

    .line 39
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lna/z$a;->f:I

    const/16 v0, 0xc

    .line 40
    invoke-static {v0}, Lna/z;->c(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lna/z;->g:I

    .line 41
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lna/z$a;->g:I

    const/16 v0, 0xd

    .line 42
    invoke-static {v0}, Lna/z;->c(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lna/z;->h:I

    .line 43
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lna/z$a;->h:I

    const/16 v0, 0xe

    .line 44
    invoke-static {v0}, Lna/z;->c(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lna/z;->i:I

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lna/z$a;->i:I

    const/16 v0, 0xf

    .line 45
    invoke-static {v0}, Lna/z;->c(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lna/z;->j:I

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lna/z$a;->j:I

    const/16 v0, 0x10

    .line 46
    invoke-static {v0}, Lna/z;->c(I)Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, v1, Lna/z;->k:Z

    .line 47
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lna/z$a;->k:Z

    const/16 v0, 0x11

    .line 48
    invoke-static {v0}, Lna/z;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    .line 49
    invoke-static {v0, v3}, Lcom/google/common/base/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 50
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lna/z$a;->l:Lcom/google/common/collect/ImmutableList;

    const/16 v0, 0x19

    .line 51
    invoke-static {v0}, Lna/z;->c(I)Ljava/lang/String;

    move-result-object v0

    iget v3, v1, Lna/z;->m:I

    .line 52
    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lna/z$a;->m:I

    const/4 v0, 0x1

    .line 53
    invoke-static {v0}, Lna/z;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/String;

    .line 54
    invoke-static {v0, v3}, Lcom/google/common/base/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 55
    invoke-static {v0}, Lna/z$a;->D([Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lna/z$a;->n:Lcom/google/common/collect/ImmutableList;

    const/4 v0, 0x2

    .line 56
    invoke-static {v0}, Lna/z;->c(I)Ljava/lang/String;

    move-result-object v0

    iget v3, v1, Lna/z;->o:I

    .line 57
    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lna/z$a;->o:I

    const/16 v0, 0x12

    .line 58
    invoke-static {v0}, Lna/z;->c(I)Ljava/lang/String;

    move-result-object v0

    iget v3, v1, Lna/z;->p:I

    .line 59
    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lna/z$a;->p:I

    const/16 v0, 0x13

    .line 60
    invoke-static {v0}, Lna/z;->c(I)Ljava/lang/String;

    move-result-object v0

    iget v3, v1, Lna/z;->q:I

    .line 61
    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lna/z$a;->q:I

    const/16 v0, 0x14

    .line 62
    invoke-static {v0}, Lna/z;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/String;

    .line 63
    invoke-static {v0, v3}, Lcom/google/common/base/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 64
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lna/z$a;->r:Lcom/google/common/collect/ImmutableList;

    const/4 v0, 0x3

    .line 65
    invoke-static {v0}, Lna/z;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/String;

    .line 66
    invoke-static {v0, v3}, Lcom/google/common/base/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 67
    invoke-static {v0}, Lna/z$a;->D([Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lna/z$a;->s:Lcom/google/common/collect/ImmutableList;

    const/4 v0, 0x4

    .line 68
    invoke-static {v0}, Lna/z;->c(I)Ljava/lang/String;

    move-result-object v0

    iget v3, v1, Lna/z;->t:I

    .line 69
    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lna/z$a;->t:I

    const/16 v0, 0x1a

    .line 70
    invoke-static {v0}, Lna/z;->c(I)Ljava/lang/String;

    move-result-object v0

    iget v3, v1, Lna/z;->u:I

    .line 71
    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lna/z$a;->u:I

    const/4 v0, 0x5

    .line 72
    invoke-static {v0}, Lna/z;->c(I)Ljava/lang/String;

    move-result-object v0

    iget-boolean v3, v1, Lna/z;->v:Z

    .line 73
    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lna/z$a;->v:Z

    const/16 v0, 0x15

    .line 74
    invoke-static {v0}, Lna/z;->c(I)Ljava/lang/String;

    move-result-object v0

    iget-boolean v3, v1, Lna/z;->w:Z

    .line 75
    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lna/z$a;->w:Z

    const/16 v0, 0x16

    .line 76
    invoke-static {v0}, Lna/z;->c(I)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, v1, Lna/z;->x:Z

    .line 77
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lna/z$a;->x:Z

    const/16 v0, 0x17

    .line 78
    invoke-static {v0}, Lna/z;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 79
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0

    .line 80
    :cond_0
    sget-object v1, Lna/x;->c:Lcom/google/android/exoplayer2/k$a;

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/d;->b(Lcom/google/android/exoplayer2/k$a;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 81
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lna/z$a;->y:Ljava/util/HashMap;

    move v1, v2

    .line 82
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 83
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lna/x;

    .line 84
    iget-object v4, p0, Lna/z$a;->y:Ljava/util/HashMap;

    iget-object v5, v3, Lna/x;->a:Lv9/w;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/16 v0, 0x18

    .line 85
    invoke-static {v0}, Lna/z;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p1

    new-array v0, v2, [I

    invoke-static {p1, v0}, Lcom/google/common/base/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    .line 86
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lna/z$a;->z:Ljava/util/HashSet;

    .line 87
    array-length v0, p1

    :goto_2
    if-ge v2, v0, :cond_2

    aget v1, p1, v2

    .line 88
    iget-object v3, p0, Lna/z$a;->z:Ljava/util/HashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method protected constructor <init>(Lna/z;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-direct {p0, p1}, Lna/z$a;->C(Lna/z;)V

    return-void
.end method

.method private C(Lna/z;)V
    .locals 2

    .line 1
    iget v0, p1, Lna/z;->a:I

    .line 2
    .line 3
    iput v0, p0, Lna/z$a;->a:I

    .line 4
    .line 5
    iget v0, p1, Lna/z;->b:I

    .line 6
    .line 7
    iput v0, p0, Lna/z$a;->b:I

    .line 8
    .line 9
    iget v0, p1, Lna/z;->c:I

    .line 10
    .line 11
    iput v0, p0, Lna/z$a;->c:I

    .line 12
    .line 13
    iget v0, p1, Lna/z;->d:I

    .line 14
    .line 15
    iput v0, p0, Lna/z$a;->d:I

    .line 16
    .line 17
    iget v0, p1, Lna/z;->e:I

    .line 18
    .line 19
    iput v0, p0, Lna/z$a;->e:I

    .line 20
    .line 21
    iget v0, p1, Lna/z;->f:I

    .line 22
    .line 23
    iput v0, p0, Lna/z$a;->f:I

    .line 24
    .line 25
    iget v0, p1, Lna/z;->g:I

    .line 26
    .line 27
    iput v0, p0, Lna/z$a;->g:I

    .line 28
    .line 29
    iget v0, p1, Lna/z;->h:I

    .line 30
    .line 31
    iput v0, p0, Lna/z$a;->h:I

    .line 32
    .line 33
    iget v0, p1, Lna/z;->i:I

    .line 34
    .line 35
    iput v0, p0, Lna/z$a;->i:I

    .line 36
    .line 37
    iget v0, p1, Lna/z;->j:I

    .line 38
    .line 39
    iput v0, p0, Lna/z$a;->j:I

    .line 40
    .line 41
    iget-boolean v0, p1, Lna/z;->k:Z

    .line 42
    .line 43
    iput-boolean v0, p0, Lna/z$a;->k:Z

    .line 44
    .line 45
    iget-object v0, p1, Lna/z;->l:Lcom/google/common/collect/ImmutableList;

    .line 46
    .line 47
    iput-object v0, p0, Lna/z$a;->l:Lcom/google/common/collect/ImmutableList;

    .line 48
    .line 49
    iget v0, p1, Lna/z;->m:I

    .line 50
    .line 51
    iput v0, p0, Lna/z$a;->m:I

    .line 52
    .line 53
    iget-object v0, p1, Lna/z;->n:Lcom/google/common/collect/ImmutableList;

    .line 54
    .line 55
    iput-object v0, p0, Lna/z$a;->n:Lcom/google/common/collect/ImmutableList;

    .line 56
    .line 57
    iget v0, p1, Lna/z;->o:I

    .line 58
    .line 59
    iput v0, p0, Lna/z$a;->o:I

    .line 60
    .line 61
    iget v0, p1, Lna/z;->p:I

    .line 62
    .line 63
    iput v0, p0, Lna/z$a;->p:I

    .line 64
    .line 65
    iget v0, p1, Lna/z;->q:I

    .line 66
    .line 67
    iput v0, p0, Lna/z$a;->q:I

    .line 68
    .line 69
    iget-object v0, p1, Lna/z;->r:Lcom/google/common/collect/ImmutableList;

    .line 70
    .line 71
    iput-object v0, p0, Lna/z$a;->r:Lcom/google/common/collect/ImmutableList;

    .line 72
    .line 73
    iget-object v0, p1, Lna/z;->s:Lcom/google/common/collect/ImmutableList;

    .line 74
    .line 75
    iput-object v0, p0, Lna/z$a;->s:Lcom/google/common/collect/ImmutableList;

    .line 76
    .line 77
    iget v0, p1, Lna/z;->t:I

    .line 78
    .line 79
    iput v0, p0, Lna/z$a;->t:I

    .line 80
    .line 81
    iget v0, p1, Lna/z;->u:I

    .line 82
    .line 83
    iput v0, p0, Lna/z$a;->u:I

    .line 84
    .line 85
    iget-boolean v0, p1, Lna/z;->v:Z

    .line 86
    .line 87
    iput-boolean v0, p0, Lna/z$a;->v:Z

    .line 88
    .line 89
    iget-boolean v0, p1, Lna/z;->w:Z

    .line 90
    .line 91
    iput-boolean v0, p0, Lna/z$a;->w:Z

    .line 92
    .line 93
    iget-boolean v0, p1, Lna/z;->x:Z

    .line 94
    .line 95
    iput-boolean v0, p0, Lna/z$a;->x:Z

    .line 96
    .line 97
    new-instance v0, Ljava/util/HashSet;

    .line 98
    .line 99
    iget-object v1, p1, Lna/z;->z:Lcom/google/common/collect/ImmutableSet;

    .line 100
    .line 101
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 102
    .line 103
    .line 104
    iput-object v0, p0, Lna/z$a;->z:Ljava/util/HashSet;

    .line 105
    .line 106
    new-instance v0, Ljava/util/HashMap;

    .line 107
    .line 108
    iget-object p1, p1, Lna/z;->y:Lcom/google/common/collect/ImmutableMap;

    .line 109
    .line 110
    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 111
    .line 112
    .line 113
    iput-object v0, p0, Lna/z$a;->y:Ljava/util/HashMap;

    .line 114
    .line 115
    return-void
.end method

.method private static D([Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, [Ljava/lang/String;

    .line 10
    .line 11
    array-length v1, p0

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, v1, :cond_0

    .line 14
    .line 15
    aget-object v3, p0, v2

    .line 16
    .line 17
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/p0;->D0(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableList$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    .line 28
    .line 29
    .line 30
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$a;->n()Lcom/google/common/collect/ImmutableList;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method

.method private I(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget v0, Lcom/google/android/exoplayer2/util/p0;->a:I

    .line 2
    .line 3
    const/16 v1, 0x17

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const-string v0, "captioning"

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Landroid/view/accessibility/CaptioningManager;

    .line 21
    .line 22
    if-eqz p1, :cond_2

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/16 v0, 0x440

    .line 32
    .line 33
    iput v0, p0, Lna/z$a;->t:I

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/p0;->Y(Ljava/util/Locale;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iput-object p1, p0, Lna/z$a;->s:Lcom/google/common/collect/ImmutableList;

    .line 50
    .line 51
    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic a(Lna/z$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lna/z$a;->a:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic b(Lna/z$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lna/z$a;->b:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic c(Lna/z$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lna/z$a;->k:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic d(Lna/z$a;)Lcom/google/common/collect/ImmutableList;
    .locals 0

    .line 1
    iget-object p0, p0, Lna/z$a;->l:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lna/z$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lna/z$a;->m:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic f(Lna/z$a;)Lcom/google/common/collect/ImmutableList;
    .locals 0

    .line 1
    iget-object p0, p0, Lna/z$a;->n:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g(Lna/z$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lna/z$a;->o:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic h(Lna/z$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lna/z$a;->p:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic i(Lna/z$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lna/z$a;->q:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic j(Lna/z$a;)Lcom/google/common/collect/ImmutableList;
    .locals 0

    .line 1
    iget-object p0, p0, Lna/z$a;->r:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic k(Lna/z$a;)Lcom/google/common/collect/ImmutableList;
    .locals 0

    .line 1
    iget-object p0, p0, Lna/z$a;->s:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic l(Lna/z$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lna/z$a;->t:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic m(Lna/z$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lna/z$a;->c:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic n(Lna/z$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lna/z$a;->u:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic o(Lna/z$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lna/z$a;->v:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic p(Lna/z$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lna/z$a;->w:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic q(Lna/z$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lna/z$a;->x:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic r(Lna/z$a;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lna/z$a;->y:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic s(Lna/z$a;)Ljava/util/HashSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lna/z$a;->z:Ljava/util/HashSet;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic t(Lna/z$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lna/z$a;->d:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic u(Lna/z$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lna/z$a;->e:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic v(Lna/z$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lna/z$a;->f:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic w(Lna/z$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lna/z$a;->g:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic x(Lna/z$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lna/z$a;->h:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic y(Lna/z$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lna/z$a;->i:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic z(Lna/z$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lna/z$a;->j:I

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public A()Lna/z;
    .locals 1

    .line 1
    new-instance v0, Lna/z;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lna/z;-><init>(Lna/z$a;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public B(I)Lna/z$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lna/z$a;->y:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lna/x;

    .line 22
    .line 23
    invoke-virtual {v1}, Lna/x;->b()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-ne v1, p1, :cond_0

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    return-object p0
.end method

.method protected E(Lna/z;)Lna/z$a;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lna/z$a;->C(Lna/z;)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public F(I)Lna/z$a;
    .locals 0

    .line 1
    iput p1, p0, Lna/z$a;->u:I

    .line 2
    .line 3
    return-object p0
.end method

.method public G(Lna/x;)Lna/z$a;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lna/x;->b()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lna/z$a;->B(I)Lna/z$a;

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lna/z$a;->y:Ljava/util/HashMap;

    .line 9
    .line 10
    iget-object v1, p1, Lna/x;->a:Lv9/w;

    .line 11
    .line 12
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public H(Landroid/content/Context;)Lna/z$a;
    .locals 2

    .line 1
    sget v0, Lcom/google/android/exoplayer2/util/p0;->a:I

    .line 2
    .line 3
    const/16 v1, 0x13

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lna/z$a;->I(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-object p0
.end method

.method public J(IZ)Lna/z$a;
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Lna/z$a;->z:Ljava/util/HashSet;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p2, p0, Lna/z$a;->z:Ljava/util/HashSet;

    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    :goto_0
    return-object p0
.end method

.method public K(IIZ)Lna/z$a;
    .locals 0

    .line 1
    iput p1, p0, Lna/z$a;->i:I

    .line 2
    .line 3
    iput p2, p0, Lna/z$a;->j:I

    .line 4
    .line 5
    iput-boolean p3, p0, Lna/z$a;->k:Z

    .line 6
    .line 7
    return-object p0
.end method

.method public L(Landroid/content/Context;Z)Lna/z$a;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/p0;->O(Landroid/content/Context;)Landroid/graphics/Point;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget v0, p1, Landroid/graphics/Point;->x:I

    .line 6
    .line 7
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 8
    .line 9
    invoke-virtual {p0, v0, p1, p2}, Lna/z$a;->K(IIZ)Lna/z$a;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
