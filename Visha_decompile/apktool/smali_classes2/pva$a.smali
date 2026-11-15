.class public Lpva$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpva;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:Z

.field public l:Lcom/google/common/collect/ImmutableList;

.field public m:I

.field public n:Lcom/google/common/collect/ImmutableList;

.field public o:I

.field public p:I

.field public q:I

.field public r:Lcom/google/common/collect/ImmutableList;

.field public s:Lcom/google/common/collect/ImmutableList;

.field public t:I

.field public u:I

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Ljava/util/HashMap;

.field public z:Ljava/util/HashSet;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 2
    iput v0, p0, Lpva$a;->a:I

    .line 3
    iput v0, p0, Lpva$a;->b:I

    .line 4
    iput v0, p0, Lpva$a;->c:I

    .line 5
    iput v0, p0, Lpva$a;->d:I

    .line 6
    iput v0, p0, Lpva$a;->i:I

    .line 7
    iput v0, p0, Lpva$a;->j:I

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lpva$a;->k:Z

    .line 9
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iput-object v1, p0, Lpva$a;->l:Lcom/google/common/collect/ImmutableList;

    const/4 v1, 0x0

    .line 10
    iput v1, p0, Lpva$a;->m:I

    .line 11
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    iput-object v2, p0, Lpva$a;->n:Lcom/google/common/collect/ImmutableList;

    .line 12
    iput v1, p0, Lpva$a;->o:I

    .line 13
    iput v0, p0, Lpva$a;->p:I

    .line 14
    iput v0, p0, Lpva$a;->q:I

    .line 15
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lpva$a;->r:Lcom/google/common/collect/ImmutableList;

    .line 16
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lpva$a;->s:Lcom/google/common/collect/ImmutableList;

    .line 17
    iput v1, p0, Lpva$a;->t:I

    .line 18
    iput v1, p0, Lpva$a;->u:I

    .line 19
    iput-boolean v1, p0, Lpva$a;->v:Z

    .line 20
    iput-boolean v1, p0, Lpva$a;->w:Z

    .line 21
    iput-boolean v1, p0, Lpva$a;->x:Z

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lpva$a;->y:Ljava/util/HashMap;

    .line 23
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lpva$a;->z:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Lpva$a;-><init>()V

    .line 25
    invoke-virtual {p0, p1}, Lpva$a;->E(Landroid/content/Context;)Lpva$a;

    const/4 v0, 0x1

    .line 26
    invoke-virtual {p0, p1, v0}, Lpva$a;->H(Landroid/content/Context;Z)Lpva$a;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 6

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    .line 30
    invoke-static {v0}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lpva;->B:Lpva;

    iget v2, v1, Lpva;->b:I

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lpva$a;->a:I

    const/4 v0, 0x7

    .line 31
    invoke-static {v0}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lpva;->c:I

    .line 32
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lpva$a;->b:I

    const/16 v0, 0x8

    .line 33
    invoke-static {v0}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lpva;->d:I

    .line 34
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lpva$a;->c:I

    const/16 v0, 0x9

    .line 35
    invoke-static {v0}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lpva;->e:I

    .line 36
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lpva$a;->d:I

    const/16 v0, 0xa

    .line 37
    invoke-static {v0}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lpva;->f:I

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lpva$a;->e:I

    const/16 v0, 0xb

    .line 38
    invoke-static {v0}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lpva;->g:I

    .line 39
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lpva$a;->f:I

    const/16 v0, 0xc

    .line 40
    invoke-static {v0}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lpva;->h:I

    .line 41
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lpva$a;->g:I

    const/16 v0, 0xd

    .line 42
    invoke-static {v0}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lpva;->i:I

    .line 43
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lpva$a;->h:I

    const/16 v0, 0xe

    .line 44
    invoke-static {v0}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lpva;->j:I

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lpva$a;->i:I

    const/16 v0, 0xf

    .line 45
    invoke-static {v0}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lpva;->k:I

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lpva$a;->j:I

    const/16 v0, 0x10

    .line 46
    invoke-static {v0}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, v1, Lpva;->l:Z

    .line 47
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lpva$a;->k:Z

    const/16 v0, 0x11

    .line 48
    invoke-static {v0}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    .line 49
    invoke-static {v0, v3}, Lzq6;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 50
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lpva$a;->l:Lcom/google/common/collect/ImmutableList;

    const/16 v0, 0x19

    .line 51
    invoke-static {v0}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v0

    iget v3, v1, Lpva;->n:I

    .line 52
    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lpva$a;->m:I

    const/4 v0, 0x1

    .line 53
    invoke-static {v0}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/String;

    .line 54
    invoke-static {v0, v3}, Lzq6;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 55
    invoke-static {v0}, Lpva$a;->C([Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lpva$a;->n:Lcom/google/common/collect/ImmutableList;

    const/4 v0, 0x2

    .line 56
    invoke-static {v0}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v0

    iget v3, v1, Lpva;->p:I

    .line 57
    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lpva$a;->o:I

    const/16 v0, 0x12

    .line 58
    invoke-static {v0}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v0

    iget v3, v1, Lpva;->q:I

    .line 59
    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lpva$a;->p:I

    const/16 v0, 0x13

    .line 60
    invoke-static {v0}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v0

    iget v3, v1, Lpva;->r:I

    .line 61
    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lpva$a;->q:I

    const/16 v0, 0x14

    .line 62
    invoke-static {v0}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/String;

    .line 63
    invoke-static {v0, v3}, Lzq6;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 64
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lpva$a;->r:Lcom/google/common/collect/ImmutableList;

    const/4 v0, 0x3

    .line 65
    invoke-static {v0}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/String;

    .line 66
    invoke-static {v0, v3}, Lzq6;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 67
    invoke-static {v0}, Lpva$a;->C([Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lpva$a;->s:Lcom/google/common/collect/ImmutableList;

    const/4 v0, 0x4

    .line 68
    invoke-static {v0}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v0

    iget v3, v1, Lpva;->u:I

    .line 69
    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lpva$a;->t:I

    const/16 v0, 0x1a

    .line 70
    invoke-static {v0}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v0

    iget v3, v1, Lpva;->v:I

    .line 71
    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lpva$a;->u:I

    const/4 v0, 0x5

    .line 72
    invoke-static {v0}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v0

    iget-boolean v3, v1, Lpva;->w:Z

    .line 73
    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lpva$a;->v:Z

    const/16 v0, 0x15

    .line 74
    invoke-static {v0}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v0

    iget-boolean v3, v1, Lpva;->x:Z

    .line 75
    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lpva$a;->w:Z

    const/16 v0, 0x16

    .line 76
    invoke-static {v0}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, v1, Lpva;->y:Z

    .line 77
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lpva$a;->x:Z

    const/16 v0, 0x17

    .line 78
    invoke-static {v0}, Lpva;->b(I)Ljava/lang/String;

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
    sget-object v1, Llva;->d:Lcom/google/android/exoplayer2/e$a;

    invoke-static {v1, v0}, Lxn0;->b(Lcom/google/android/exoplayer2/e$a;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 81
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lpva$a;->y:Ljava/util/HashMap;

    move v1, v2

    .line 82
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 83
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llva;

    .line 84
    iget-object v4, p0, Lpva$a;->y:Ljava/util/HashMap;

    iget-object v5, v3, Llva;->b:Lzua;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/16 v0, 0x18

    .line 85
    invoke-static {v0}, Lpva;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p1

    new-array v0, v2, [I

    invoke-static {p1, v0}, Lzq6;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    .line 86
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lpva$a;->z:Ljava/util/HashSet;

    .line 87
    array-length v0, p1

    :goto_2
    if-ge v2, v0, :cond_2

    aget v1, p1, v2

    .line 88
    iget-object v3, p0, Lpva$a;->z:Ljava/util/HashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public constructor <init>(Lpva;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p0, p1}, Lpva$a;->B(Lpva;)V

    return-void
.end method

.method public static C([Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;
    .locals 4

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$a;

    move-result-object v0

    invoke-static {p0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    invoke-static {v3}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lblb;->v0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableList$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$a;->n()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lpva$a;)I
    .locals 0

    iget p0, p0, Lpva$a;->a:I

    return p0
.end method

.method public static synthetic b(Lpva$a;)I
    .locals 0

    iget p0, p0, Lpva$a;->b:I

    return p0
.end method

.method public static synthetic c(Lpva$a;)Z
    .locals 0

    iget-boolean p0, p0, Lpva$a;->k:Z

    return p0
.end method

.method public static synthetic d(Lpva$a;)Lcom/google/common/collect/ImmutableList;
    .locals 0

    iget-object p0, p0, Lpva$a;->l:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method public static synthetic e(Lpva$a;)I
    .locals 0

    iget p0, p0, Lpva$a;->m:I

    return p0
.end method

.method public static synthetic f(Lpva$a;)Lcom/google/common/collect/ImmutableList;
    .locals 0

    iget-object p0, p0, Lpva$a;->n:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method public static synthetic g(Lpva$a;)I
    .locals 0

    iget p0, p0, Lpva$a;->o:I

    return p0
.end method

.method public static synthetic h(Lpva$a;)I
    .locals 0

    iget p0, p0, Lpva$a;->p:I

    return p0
.end method

.method public static synthetic i(Lpva$a;)I
    .locals 0

    iget p0, p0, Lpva$a;->q:I

    return p0
.end method

.method public static synthetic j(Lpva$a;)Lcom/google/common/collect/ImmutableList;
    .locals 0

    iget-object p0, p0, Lpva$a;->r:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method public static synthetic k(Lpva$a;)Lcom/google/common/collect/ImmutableList;
    .locals 0

    iget-object p0, p0, Lpva$a;->s:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method public static synthetic l(Lpva$a;)I
    .locals 0

    iget p0, p0, Lpva$a;->t:I

    return p0
.end method

.method public static synthetic m(Lpva$a;)I
    .locals 0

    iget p0, p0, Lpva$a;->c:I

    return p0
.end method

.method public static synthetic n(Lpva$a;)I
    .locals 0

    iget p0, p0, Lpva$a;->u:I

    return p0
.end method

.method public static synthetic o(Lpva$a;)Z
    .locals 0

    iget-boolean p0, p0, Lpva$a;->v:Z

    return p0
.end method

.method public static synthetic p(Lpva$a;)Z
    .locals 0

    iget-boolean p0, p0, Lpva$a;->w:Z

    return p0
.end method

.method public static synthetic q(Lpva$a;)Z
    .locals 0

    iget-boolean p0, p0, Lpva$a;->x:Z

    return p0
.end method

.method public static synthetic r(Lpva$a;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lpva$a;->y:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic s(Lpva$a;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lpva$a;->z:Ljava/util/HashSet;

    return-object p0
.end method

.method public static synthetic t(Lpva$a;)I
    .locals 0

    iget p0, p0, Lpva$a;->d:I

    return p0
.end method

.method public static synthetic u(Lpva$a;)I
    .locals 0

    iget p0, p0, Lpva$a;->e:I

    return p0
.end method

.method public static synthetic v(Lpva$a;)I
    .locals 0

    iget p0, p0, Lpva$a;->f:I

    return p0
.end method

.method public static synthetic w(Lpva$a;)I
    .locals 0

    iget p0, p0, Lpva$a;->g:I

    return p0
.end method

.method public static synthetic x(Lpva$a;)I
    .locals 0

    iget p0, p0, Lpva$a;->h:I

    return p0
.end method

.method public static synthetic y(Lpva$a;)I
    .locals 0

    iget p0, p0, Lpva$a;->i:I

    return p0
.end method

.method public static synthetic z(Lpva$a;)I
    .locals 0

    iget p0, p0, Lpva$a;->j:I

    return p0
.end method


# virtual methods
.method public A()Lpva;
    .locals 1

    new-instance v0, Lpva;

    invoke-direct {v0, p0}, Lpva;-><init>(Lpva$a;)V

    return-object v0
.end method

.method public final B(Lpva;)V
    .locals 2

    iget v0, p1, Lpva;->b:I

    iput v0, p0, Lpva$a;->a:I

    iget v0, p1, Lpva;->c:I

    iput v0, p0, Lpva$a;->b:I

    iget v0, p1, Lpva;->d:I

    iput v0, p0, Lpva$a;->c:I

    iget v0, p1, Lpva;->e:I

    iput v0, p0, Lpva$a;->d:I

    iget v0, p1, Lpva;->f:I

    iput v0, p0, Lpva$a;->e:I

    iget v0, p1, Lpva;->g:I

    iput v0, p0, Lpva$a;->f:I

    iget v0, p1, Lpva;->h:I

    iput v0, p0, Lpva$a;->g:I

    iget v0, p1, Lpva;->i:I

    iput v0, p0, Lpva$a;->h:I

    iget v0, p1, Lpva;->j:I

    iput v0, p0, Lpva$a;->i:I

    iget v0, p1, Lpva;->k:I

    iput v0, p0, Lpva$a;->j:I

    iget-boolean v0, p1, Lpva;->l:Z

    iput-boolean v0, p0, Lpva$a;->k:Z

    iget-object v0, p1, Lpva;->m:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lpva$a;->l:Lcom/google/common/collect/ImmutableList;

    iget v0, p1, Lpva;->n:I

    iput v0, p0, Lpva$a;->m:I

    iget-object v0, p1, Lpva;->o:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lpva$a;->n:Lcom/google/common/collect/ImmutableList;

    iget v0, p1, Lpva;->p:I

    iput v0, p0, Lpva$a;->o:I

    iget v0, p1, Lpva;->q:I

    iput v0, p0, Lpva$a;->p:I

    iget v0, p1, Lpva;->r:I

    iput v0, p0, Lpva$a;->q:I

    iget-object v0, p1, Lpva;->s:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lpva$a;->r:Lcom/google/common/collect/ImmutableList;

    iget-object v0, p1, Lpva;->t:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lpva$a;->s:Lcom/google/common/collect/ImmutableList;

    iget v0, p1, Lpva;->u:I

    iput v0, p0, Lpva$a;->t:I

    iget v0, p1, Lpva;->v:I

    iput v0, p0, Lpva$a;->u:I

    iget-boolean v0, p1, Lpva;->w:Z

    iput-boolean v0, p0, Lpva$a;->v:Z

    iget-boolean v0, p1, Lpva;->x:Z

    iput-boolean v0, p0, Lpva$a;->w:Z

    iget-boolean v0, p1, Lpva;->y:Z

    iput-boolean v0, p0, Lpva$a;->x:Z

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p1, Lpva;->A:Lcom/google/common/collect/ImmutableSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lpva$a;->z:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    iget-object p1, p1, Lpva;->z:Lcom/google/common/collect/ImmutableMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lpva$a;->y:Ljava/util/HashMap;

    return-void
.end method

.method public D(Lpva;)Lpva$a;
    .locals 0

    invoke-virtual {p0, p1}, Lpva$a;->B(Lpva;)V

    return-object p0
.end method

.method public E(Landroid/content/Context;)Lpva$a;
    .locals 2

    sget v0, Lblb;->a:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lpva$a;->F(Landroid/content/Context;)V

    :cond_0
    return-object p0
.end method

.method public final F(Landroid/content/Context;)V
    .locals 2

    sget v0, Lblb;->a:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "captioning"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/CaptioningManager;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x440

    iput v0, p0, Lpva$a;->t:I

    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {p1}, Lblb;->R(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lpva$a;->s:Lcom/google/common/collect/ImmutableList;

    :cond_2
    :goto_0
    return-void
.end method

.method public G(IIZ)Lpva$a;
    .locals 0

    iput p1, p0, Lpva$a;->i:I

    iput p2, p0, Lpva$a;->j:I

    iput-boolean p3, p0, Lpva$a;->k:Z

    return-object p0
.end method

.method public H(Landroid/content/Context;Z)Lpva$a;
    .locals 1

    invoke-static {p1}, Lblb;->I(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p1

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0, p1, p2}, Lpva$a;->G(IIZ)Lpva$a;

    move-result-object p0

    return-object p0
.end method
