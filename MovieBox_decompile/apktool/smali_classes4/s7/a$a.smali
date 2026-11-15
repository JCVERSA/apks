.class public Ls7/a$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls7/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Z

.field private h:Lw7/b;

.field private i:Lz7/b;

.field private j:Ly7/b;

.field private k:Lb8/b;

.field private l:La8/b;

.field private m:Lv7/a;

.field private n:Ljava/util/Map;

.field private o:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    .line 2
    iput v0, p0, Ls7/a$a;->a:I

    .line 3
    const-string v0, "X-LOG"

    iput-object v0, p0, Ls7/a$a;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ls7/a;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    .line 5
    iput v0, p0, Ls7/a$a;->a:I

    .line 6
    const-string v0, "X-LOG"

    iput-object v0, p0, Ls7/a$a;->b:Ljava/lang/String;

    .line 7
    iget v0, p1, Ls7/a;->a:I

    iput v0, p0, Ls7/a$a;->a:I

    .line 8
    iget-object v0, p1, Ls7/a;->b:Ljava/lang/String;

    iput-object v0, p0, Ls7/a$a;->b:Ljava/lang/String;

    .line 9
    iget-boolean v0, p1, Ls7/a;->c:Z

    iput-boolean v0, p0, Ls7/a$a;->c:Z

    .line 10
    iget-boolean v0, p1, Ls7/a;->d:Z

    iput-boolean v0, p0, Ls7/a$a;->d:Z

    .line 11
    iget-object v0, p1, Ls7/a;->e:Ljava/lang/String;

    iput-object v0, p0, Ls7/a$a;->e:Ljava/lang/String;

    .line 12
    iget v0, p1, Ls7/a;->f:I

    iput v0, p0, Ls7/a$a;->f:I

    .line 13
    iget-boolean v0, p1, Ls7/a;->g:Z

    iput-boolean v0, p0, Ls7/a$a;->g:Z

    .line 14
    iget-object v0, p1, Ls7/a;->h:Lw7/b;

    iput-object v0, p0, Ls7/a$a;->h:Lw7/b;

    .line 15
    iget-object v0, p1, Ls7/a;->i:Lz7/b;

    iput-object v0, p0, Ls7/a$a;->i:Lz7/b;

    .line 16
    iget-object v0, p1, Ls7/a;->j:Ly7/b;

    iput-object v0, p0, Ls7/a$a;->j:Ly7/b;

    .line 17
    iget-object v0, p1, Ls7/a;->k:Lb8/b;

    iput-object v0, p0, Ls7/a$a;->k:Lb8/b;

    .line 18
    iget-object v0, p1, Ls7/a;->l:La8/b;

    iput-object v0, p0, Ls7/a$a;->l:La8/b;

    .line 19
    iget-object v0, p1, Ls7/a;->m:Lv7/a;

    iput-object v0, p0, Ls7/a$a;->m:Lv7/a;

    .line 20
    invoke-static {p1}, Ls7/a;->a(Ls7/a;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-static {p1}, Ls7/a;->a(Ls7/a;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Ls7/a$a;->n:Ljava/util/Map;

    .line 22
    :cond_0
    iget-object v0, p1, Ls7/a;->o:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    iget-object p1, p1, Ls7/a;->o:Ljava/util/List;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ls7/a$a;->o:Ljava/util/List;

    :cond_1
    return-void
.end method

.method static synthetic a(Ls7/a$a;)I
    .locals 0

    .line 1
    iget p0, p0, Ls7/a$a;->a:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic b(Ls7/a$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Ls7/a$a;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Ls7/a$a;)Lb8/b;
    .locals 0

    .line 1
    iget-object p0, p0, Ls7/a$a;->k:Lb8/b;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Ls7/a$a;)La8/b;
    .locals 0

    .line 1
    iget-object p0, p0, Ls7/a$a;->l:La8/b;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Ls7/a$a;)Lv7/a;
    .locals 0

    .line 1
    iget-object p0, p0, Ls7/a$a;->m:Lv7/a;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Ls7/a$a;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Ls7/a$a;->n:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g(Ls7/a$a;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Ls7/a$a;->o:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic h(Ls7/a$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Ls7/a$a;->c:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic i(Ls7/a$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Ls7/a$a;->d:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic j(Ls7/a$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Ls7/a$a;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic k(Ls7/a$a;)I
    .locals 0

    .line 1
    iget p0, p0, Ls7/a$a;->f:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic l(Ls7/a$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Ls7/a$a;->g:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic m(Ls7/a$a;)Lw7/b;
    .locals 0

    .line 1
    iget-object p0, p0, Ls7/a$a;->h:Lw7/b;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic n(Ls7/a$a;)Lz7/b;
    .locals 0

    .line 1
    iget-object p0, p0, Ls7/a$a;->i:Lz7/b;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic o(Ls7/a$a;)Ly7/b;
    .locals 0

    .line 1
    iget-object p0, p0, Ls7/a$a;->j:Ly7/b;

    .line 2
    .line 3
    return-object p0
.end method

.method private y()V
    .locals 2

    .line 1
    iget-object v0, p0, Ls7/a$a;->h:Lw7/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ld8/a;->h()Lw7/b;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Ls7/a$a;->h:Lw7/b;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Ls7/a$a;->i:Lz7/b;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-static {}, Ld8/a;->n()Lz7/b;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Ls7/a$a;->i:Lz7/b;

    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Ls7/a$a;->j:Ly7/b;

    .line 22
    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    invoke-static {}, Ld8/a;->l()Ly7/b;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Ls7/a$a;->j:Ly7/b;

    .line 30
    .line 31
    :cond_2
    iget-object v0, p0, Ls7/a$a;->k:Lb8/b;

    .line 32
    .line 33
    if-nez v0, :cond_3

    .line 34
    .line 35
    invoke-static {}, Ld8/a;->k()Lb8/b;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Ls7/a$a;->k:Lb8/b;

    .line 40
    .line 41
    :cond_3
    iget-object v0, p0, Ls7/a$a;->l:La8/b;

    .line 42
    .line 43
    if-nez v0, :cond_4

    .line 44
    .line 45
    invoke-static {}, Ld8/a;->j()La8/b;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iput-object v0, p0, Ls7/a$a;->l:La8/b;

    .line 50
    .line 51
    :cond_4
    iget-object v0, p0, Ls7/a$a;->m:Lv7/a;

    .line 52
    .line 53
    if-nez v0, :cond_5

    .line 54
    .line 55
    invoke-static {}, Ld8/a;->c()Lv7/a;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Ls7/a$a;->m:Lv7/a;

    .line 60
    .line 61
    :cond_5
    iget-object v0, p0, Ls7/a$a;->n:Ljava/util/Map;

    .line 62
    .line 63
    if-nez v0, :cond_6

    .line 64
    .line 65
    new-instance v0, Ljava/util/HashMap;

    .line 66
    .line 67
    invoke-static {}, Ld8/a;->a()Ljava/util/Map;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 72
    .line 73
    .line 74
    iput-object v0, p0, Ls7/a$a;->n:Ljava/util/Map;

    .line 75
    .line 76
    :cond_6
    return-void
.end method


# virtual methods
.method public A(Lw7/b;)Ls7/a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Ls7/a$a;->h:Lw7/b;

    .line 2
    .line 3
    return-object p0
.end method

.method public B(I)Ls7/a$a;
    .locals 0

    .line 1
    iput p1, p0, Ls7/a$a;->a:I

    .line 2
    .line 3
    return-object p0
.end method

.method C(Ljava/util/Map;)Ls7/a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Ls7/a$a;->n:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public D(La8/b;)Ls7/a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Ls7/a$a;->l:La8/b;

    .line 2
    .line 3
    return-object p0
.end method

.method public E(Ljava/lang/String;)Ls7/a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Ls7/a$a;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public F(Lb8/b;)Ls7/a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Ls7/a$a;->k:Lb8/b;

    .line 2
    .line 3
    return-object p0
.end method

.method public G(Ly7/b;)Ls7/a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Ls7/a$a;->j:Ly7/b;

    .line 2
    .line 3
    return-object p0
.end method

.method public H(Lz7/b;)Ls7/a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Ls7/a$a;->i:Lz7/b;

    .line 2
    .line 3
    return-object p0
.end method

.method public p(Lc8/a;)Ls7/a$a;
    .locals 1

    .line 1
    iget-object v0, p0, Ls7/a$a;->o:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Ls7/a$a;->o:Ljava/util/List;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Ls7/a$a;->o:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method public q(Lv7/a;)Ls7/a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Ls7/a$a;->m:Lv7/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public r()Ls7/a;
    .locals 1

    .line 1
    invoke-direct {p0}, Ls7/a$a;->y()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ls7/a;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Ls7/a;-><init>(Ls7/a$a;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public s()Ls7/a$a;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ls7/a$a;->g:Z

    .line 3
    .line 4
    return-object p0
.end method

.method public t()Ls7/a$a;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ls7/a$a;->d:Z

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Ls7/a$a;->e:Ljava/lang/String;

    .line 6
    .line 7
    iput v0, p0, Ls7/a$a;->f:I

    .line 8
    .line 9
    return-object p0
.end method

.method public u()Ls7/a$a;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ls7/a$a;->c:Z

    .line 3
    .line 4
    return-object p0
.end method

.method public v()Ls7/a$a;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ls7/a$a;->g:Z

    .line 3
    .line 4
    return-object p0
.end method

.method public w(Ljava/lang/String;I)Ls7/a$a;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ls7/a$a;->d:Z

    .line 3
    .line 4
    iput-object p1, p0, Ls7/a$a;->e:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Ls7/a$a;->f:I

    .line 7
    .line 8
    return-object p0
.end method

.method public x()Ls7/a$a;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ls7/a$a;->c:Z

    .line 3
    .line 4
    return-object p0
.end method

.method z(Ljava/util/List;)Ls7/a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Ls7/a$a;->o:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method
