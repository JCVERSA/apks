.class public Landroidx/media3/common/h0$c;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Ljava/util/HashMap;

.field private E:Ljava/util/HashSet;

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

.field private l:Z

.field private m:Lcom/google/common/collect/ImmutableList;

.field private n:Lcom/google/common/collect/ImmutableList;

.field private o:I

.field private p:Lcom/google/common/collect/ImmutableList;

.field private q:I

.field private r:I

.field private s:I

.field private t:Lcom/google/common/collect/ImmutableList;

.field private u:Landroidx/media3/common/h0$b;

.field private v:Lcom/google/common/collect/ImmutableList;

.field private w:I

.field private x:Z

.field private y:I

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 2
    iput v0, p0, Landroidx/media3/common/h0$c;->a:I

    .line 3
    iput v0, p0, Landroidx/media3/common/h0$c;->b:I

    .line 4
    iput v0, p0, Landroidx/media3/common/h0$c;->c:I

    .line 5
    iput v0, p0, Landroidx/media3/common/h0$c;->d:I

    .line 6
    iput v0, p0, Landroidx/media3/common/h0$c;->i:I

    .line 7
    iput v0, p0, Landroidx/media3/common/h0$c;->j:I

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Landroidx/media3/common/h0$c;->k:Z

    .line 9
    iput-boolean v1, p0, Landroidx/media3/common/h0$c;->l:Z

    .line 10
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/common/h0$c;->m:Lcom/google/common/collect/ImmutableList;

    .line 11
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/common/h0$c;->n:Lcom/google/common/collect/ImmutableList;

    const/4 v2, 0x0

    .line 12
    iput v2, p0, Landroidx/media3/common/h0$c;->o:I

    .line 13
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    iput-object v3, p0, Landroidx/media3/common/h0$c;->p:Lcom/google/common/collect/ImmutableList;

    .line 14
    iput v2, p0, Landroidx/media3/common/h0$c;->q:I

    .line 15
    iput v0, p0, Landroidx/media3/common/h0$c;->r:I

    .line 16
    iput v0, p0, Landroidx/media3/common/h0$c;->s:I

    .line 17
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/h0$c;->t:Lcom/google/common/collect/ImmutableList;

    .line 18
    sget-object v0, Landroidx/media3/common/h0$b;->d:Landroidx/media3/common/h0$b;

    iput-object v0, p0, Landroidx/media3/common/h0$c;->u:Landroidx/media3/common/h0$b;

    .line 19
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/h0$c;->v:Lcom/google/common/collect/ImmutableList;

    .line 20
    iput v2, p0, Landroidx/media3/common/h0$c;->w:I

    .line 21
    iput-boolean v1, p0, Landroidx/media3/common/h0$c;->x:Z

    .line 22
    iput v2, p0, Landroidx/media3/common/h0$c;->y:I

    .line 23
    iput-boolean v2, p0, Landroidx/media3/common/h0$c;->z:Z

    .line 24
    iput-boolean v2, p0, Landroidx/media3/common/h0$c;->A:Z

    .line 25
    iput-boolean v2, p0, Landroidx/media3/common/h0$c;->B:Z

    .line 26
    iput-boolean v2, p0, Landroidx/media3/common/h0$c;->C:Z

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/media3/common/h0$c;->D:Ljava/util/HashMap;

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/media3/common/h0$c;->E:Ljava/util/HashSet;

    return-void
.end method

.method protected constructor <init>(Landroidx/media3/common/h0;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-direct {p0, p1}, Landroidx/media3/common/h0$c;->H(Landroidx/media3/common/h0;)V

    return-void
.end method

.method static synthetic A(Landroidx/media3/common/h0$c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/media3/common/h0$c;->A:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic B(Landroidx/media3/common/h0$c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/media3/common/h0$c;->B:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic C(Landroidx/media3/common/h0$c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/media3/common/h0$c;->C:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic D(Landroidx/media3/common/h0$c;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/common/h0$c;->D:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic E(Landroidx/media3/common/h0$c;)Ljava/util/HashSet;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/common/h0$c;->E:Ljava/util/HashSet;

    .line 2
    .line 3
    return-object p0
.end method

.method private H(Landroidx/media3/common/h0;)V
    .locals 2

    .line 1
    iget v0, p1, Landroidx/media3/common/h0;->a:I

    .line 2
    .line 3
    iput v0, p0, Landroidx/media3/common/h0$c;->a:I

    .line 4
    .line 5
    iget v0, p1, Landroidx/media3/common/h0;->b:I

    .line 6
    .line 7
    iput v0, p0, Landroidx/media3/common/h0$c;->b:I

    .line 8
    .line 9
    iget v0, p1, Landroidx/media3/common/h0;->c:I

    .line 10
    .line 11
    iput v0, p0, Landroidx/media3/common/h0$c;->c:I

    .line 12
    .line 13
    iget v0, p1, Landroidx/media3/common/h0;->d:I

    .line 14
    .line 15
    iput v0, p0, Landroidx/media3/common/h0$c;->d:I

    .line 16
    .line 17
    iget v0, p1, Landroidx/media3/common/h0;->e:I

    .line 18
    .line 19
    iput v0, p0, Landroidx/media3/common/h0$c;->e:I

    .line 20
    .line 21
    iget v0, p1, Landroidx/media3/common/h0;->f:I

    .line 22
    .line 23
    iput v0, p0, Landroidx/media3/common/h0$c;->f:I

    .line 24
    .line 25
    iget v0, p1, Landroidx/media3/common/h0;->g:I

    .line 26
    .line 27
    iput v0, p0, Landroidx/media3/common/h0$c;->g:I

    .line 28
    .line 29
    iget v0, p1, Landroidx/media3/common/h0;->h:I

    .line 30
    .line 31
    iput v0, p0, Landroidx/media3/common/h0$c;->h:I

    .line 32
    .line 33
    iget v0, p1, Landroidx/media3/common/h0;->i:I

    .line 34
    .line 35
    iput v0, p0, Landroidx/media3/common/h0$c;->i:I

    .line 36
    .line 37
    iget v0, p1, Landroidx/media3/common/h0;->j:I

    .line 38
    .line 39
    iput v0, p0, Landroidx/media3/common/h0$c;->j:I

    .line 40
    .line 41
    iget-boolean v0, p1, Landroidx/media3/common/h0;->k:Z

    .line 42
    .line 43
    iput-boolean v0, p0, Landroidx/media3/common/h0$c;->k:Z

    .line 44
    .line 45
    iget-boolean v0, p1, Landroidx/media3/common/h0;->l:Z

    .line 46
    .line 47
    iput-boolean v0, p0, Landroidx/media3/common/h0$c;->l:Z

    .line 48
    .line 49
    iget-object v0, p1, Landroidx/media3/common/h0;->m:Lcom/google/common/collect/ImmutableList;

    .line 50
    .line 51
    iput-object v0, p0, Landroidx/media3/common/h0$c;->m:Lcom/google/common/collect/ImmutableList;

    .line 52
    .line 53
    iget-object v0, p1, Landroidx/media3/common/h0;->n:Lcom/google/common/collect/ImmutableList;

    .line 54
    .line 55
    iput-object v0, p0, Landroidx/media3/common/h0$c;->n:Lcom/google/common/collect/ImmutableList;

    .line 56
    .line 57
    iget v0, p1, Landroidx/media3/common/h0;->o:I

    .line 58
    .line 59
    iput v0, p0, Landroidx/media3/common/h0$c;->o:I

    .line 60
    .line 61
    iget-object v0, p1, Landroidx/media3/common/h0;->p:Lcom/google/common/collect/ImmutableList;

    .line 62
    .line 63
    iput-object v0, p0, Landroidx/media3/common/h0$c;->p:Lcom/google/common/collect/ImmutableList;

    .line 64
    .line 65
    iget v0, p1, Landroidx/media3/common/h0;->q:I

    .line 66
    .line 67
    iput v0, p0, Landroidx/media3/common/h0$c;->q:I

    .line 68
    .line 69
    iget v0, p1, Landroidx/media3/common/h0;->r:I

    .line 70
    .line 71
    iput v0, p0, Landroidx/media3/common/h0$c;->r:I

    .line 72
    .line 73
    iget v0, p1, Landroidx/media3/common/h0;->s:I

    .line 74
    .line 75
    iput v0, p0, Landroidx/media3/common/h0$c;->s:I

    .line 76
    .line 77
    iget-object v0, p1, Landroidx/media3/common/h0;->t:Lcom/google/common/collect/ImmutableList;

    .line 78
    .line 79
    iput-object v0, p0, Landroidx/media3/common/h0$c;->t:Lcom/google/common/collect/ImmutableList;

    .line 80
    .line 81
    iget-object v0, p1, Landroidx/media3/common/h0;->u:Landroidx/media3/common/h0$b;

    .line 82
    .line 83
    iput-object v0, p0, Landroidx/media3/common/h0$c;->u:Landroidx/media3/common/h0$b;

    .line 84
    .line 85
    iget-object v0, p1, Landroidx/media3/common/h0;->v:Lcom/google/common/collect/ImmutableList;

    .line 86
    .line 87
    iput-object v0, p0, Landroidx/media3/common/h0$c;->v:Lcom/google/common/collect/ImmutableList;

    .line 88
    .line 89
    iget v0, p1, Landroidx/media3/common/h0;->w:I

    .line 90
    .line 91
    iput v0, p0, Landroidx/media3/common/h0$c;->w:I

    .line 92
    .line 93
    iget-boolean v0, p1, Landroidx/media3/common/h0;->x:Z

    .line 94
    .line 95
    iput-boolean v0, p0, Landroidx/media3/common/h0$c;->x:Z

    .line 96
    .line 97
    iget v0, p1, Landroidx/media3/common/h0;->y:I

    .line 98
    .line 99
    iput v0, p0, Landroidx/media3/common/h0$c;->y:I

    .line 100
    .line 101
    iget-boolean v0, p1, Landroidx/media3/common/h0;->z:Z

    .line 102
    .line 103
    iput-boolean v0, p0, Landroidx/media3/common/h0$c;->z:Z

    .line 104
    .line 105
    iget-boolean v0, p1, Landroidx/media3/common/h0;->A:Z

    .line 106
    .line 107
    iput-boolean v0, p0, Landroidx/media3/common/h0$c;->A:Z

    .line 108
    .line 109
    iget-boolean v0, p1, Landroidx/media3/common/h0;->B:Z

    .line 110
    .line 111
    iput-boolean v0, p0, Landroidx/media3/common/h0$c;->B:Z

    .line 112
    .line 113
    iget-boolean v0, p1, Landroidx/media3/common/h0;->C:Z

    .line 114
    .line 115
    iput-boolean v0, p0, Landroidx/media3/common/h0$c;->C:Z

    .line 116
    .line 117
    new-instance v0, Ljava/util/HashSet;

    .line 118
    .line 119
    iget-object v1, p1, Landroidx/media3/common/h0;->E:Lcom/google/common/collect/ImmutableSet;

    .line 120
    .line 121
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 122
    .line 123
    .line 124
    iput-object v0, p0, Landroidx/media3/common/h0$c;->E:Ljava/util/HashSet;

    .line 125
    .line 126
    new-instance v0, Ljava/util/HashMap;

    .line 127
    .line 128
    iget-object p1, p1, Landroidx/media3/common/h0;->D:Lcom/google/common/collect/ImmutableMap;

    .line 129
    .line 130
    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 131
    .line 132
    .line 133
    iput-object v0, p0, Landroidx/media3/common/h0$c;->D:Ljava/util/HashMap;

    .line 134
    .line 135
    return-void
.end method

.method private static I([Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-static {v3}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v3}, Landroidx/media3/common/util/a1;->U0(Ljava/lang/String;)Ljava/lang/String;

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

.method static synthetic a(Landroidx/media3/common/h0$c;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/common/h0$c;->a:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic b(Landroidx/media3/common/h0$c;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/common/h0$c;->b:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic c(Landroidx/media3/common/h0$c;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/common/h0$c;->c:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic d(Landroidx/media3/common/h0$c;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/common/h0$c;->d:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic e(Landroidx/media3/common/h0$c;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/common/h0$c;->e:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic f(Landroidx/media3/common/h0$c;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/common/h0$c;->f:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic g(Landroidx/media3/common/h0$c;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/common/h0$c;->g:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic h(Landroidx/media3/common/h0$c;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/common/h0$c;->h:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic i(Landroidx/media3/common/h0$c;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/common/h0$c;->i:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic j(Landroidx/media3/common/h0$c;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/common/h0$c;->j:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic k(Landroidx/media3/common/h0$c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/media3/common/h0$c;->k:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic l(Landroidx/media3/common/h0$c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/media3/common/h0$c;->l:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic m(Landroidx/media3/common/h0$c;)Lcom/google/common/collect/ImmutableList;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/common/h0$c;->m:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic n(Landroidx/media3/common/h0$c;)Lcom/google/common/collect/ImmutableList;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/common/h0$c;->n:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic o(Landroidx/media3/common/h0$c;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/common/h0$c;->o:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic p(Landroidx/media3/common/h0$c;)Lcom/google/common/collect/ImmutableList;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/common/h0$c;->p:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic q(Landroidx/media3/common/h0$c;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/common/h0$c;->q:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic r(Landroidx/media3/common/h0$c;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/common/h0$c;->r:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic s(Landroidx/media3/common/h0$c;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/common/h0$c;->s:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic t(Landroidx/media3/common/h0$c;)Lcom/google/common/collect/ImmutableList;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/common/h0$c;->t:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic u(Landroidx/media3/common/h0$c;)Landroidx/media3/common/h0$b;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/common/h0$c;->u:Landroidx/media3/common/h0$b;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic v(Landroidx/media3/common/h0$c;)Lcom/google/common/collect/ImmutableList;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/common/h0$c;->v:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic w(Landroidx/media3/common/h0$c;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/common/h0$c;->w:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic x(Landroidx/media3/common/h0$c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/media3/common/h0$c;->x:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic y(Landroidx/media3/common/h0$c;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/common/h0$c;->y:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic z(Landroidx/media3/common/h0$c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/media3/common/h0$c;->z:Z

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public F()Landroidx/media3/common/h0;
    .locals 1

    .line 1
    new-instance v0, Landroidx/media3/common/h0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/media3/common/h0;-><init>(Landroidx/media3/common/h0$c;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public G(I)Landroidx/media3/common/h0$c;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/common/h0$c;->D:Ljava/util/HashMap;

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
    check-cast v1, Landroidx/media3/common/g0;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroidx/media3/common/g0;->a()I

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

.method protected J(Landroidx/media3/common/h0;)Landroidx/media3/common/h0$c;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/common/h0$c;->H(Landroidx/media3/common/h0;)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public K(I)Landroidx/media3/common/h0$c;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/h0$c;->y:I

    .line 2
    .line 3
    return-object p0
.end method

.method public L(Landroidx/media3/common/g0;)Landroidx/media3/common/h0$c;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/media3/common/g0;->a()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Landroidx/media3/common/h0$c;->G(I)Landroidx/media3/common/h0$c;

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroidx/media3/common/h0$c;->D:Ljava/util/HashMap;

    .line 9
    .line 10
    iget-object v1, p1, Landroidx/media3/common/g0;->a:Landroidx/media3/common/f0;

    .line 11
    .line 12
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public M(Ljava/lang/String;)Landroidx/media3/common/h0$c;
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    new-array p1, p1, [Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroidx/media3/common/h0$c;->N([Ljava/lang/String;)Landroidx/media3/common/h0$c;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    filled-new-array {p1}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Landroidx/media3/common/h0$c;->N([Ljava/lang/String;)Landroidx/media3/common/h0$c;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    :goto_0
    return-object p1
.end method

.method public varargs N([Ljava/lang/String;)Landroidx/media3/common/h0$c;
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/media3/common/h0$c;->I([Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Landroidx/media3/common/h0$c;->v:Lcom/google/common/collect/ImmutableList;

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Landroidx/media3/common/h0$c;->x:Z

    .line 9
    .line 10
    return-object p0
.end method

.method public O(I)Landroidx/media3/common/h0$c;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/h0$c;->w:I

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Landroidx/media3/common/h0$c;->x:Z

    .line 5
    .line 6
    return-object p0
.end method

.method public P(IZ)Landroidx/media3/common/h0$c;
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Landroidx/media3/common/h0$c;->E:Ljava/util/HashSet;

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
    iget-object p2, p0, Landroidx/media3/common/h0$c;->E:Ljava/util/HashSet;

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
