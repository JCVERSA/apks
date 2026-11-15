.class public final Lcb/n$b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcb/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:Lcb/e;

.field private b:Lcb/e;

.field private c:Lcb/e;

.field private d:Lcb/e;

.field private e:Lcb/d;

.field private f:Lcb/d;

.field private g:Lcb/d;

.field private h:Lcb/d;

.field private i:Lcb/g;

.field private j:Lcb/g;

.field private k:Lcb/g;

.field private l:Lcb/g;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcb/j;->b()Lcb/e;

    move-result-object v0

    iput-object v0, p0, Lcb/n$b;->a:Lcb/e;

    .line 3
    invoke-static {}, Lcb/j;->b()Lcb/e;

    move-result-object v0

    iput-object v0, p0, Lcb/n$b;->b:Lcb/e;

    .line 4
    invoke-static {}, Lcb/j;->b()Lcb/e;

    move-result-object v0

    iput-object v0, p0, Lcb/n$b;->c:Lcb/e;

    .line 5
    invoke-static {}, Lcb/j;->b()Lcb/e;

    move-result-object v0

    iput-object v0, p0, Lcb/n$b;->d:Lcb/e;

    .line 6
    new-instance v0, Lcb/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcb/a;-><init>(F)V

    iput-object v0, p0, Lcb/n$b;->e:Lcb/d;

    .line 7
    new-instance v0, Lcb/a;

    invoke-direct {v0, v1}, Lcb/a;-><init>(F)V

    iput-object v0, p0, Lcb/n$b;->f:Lcb/d;

    .line 8
    new-instance v0, Lcb/a;

    invoke-direct {v0, v1}, Lcb/a;-><init>(F)V

    iput-object v0, p0, Lcb/n$b;->g:Lcb/d;

    .line 9
    new-instance v0, Lcb/a;

    invoke-direct {v0, v1}, Lcb/a;-><init>(F)V

    iput-object v0, p0, Lcb/n$b;->h:Lcb/d;

    .line 10
    invoke-static {}, Lcb/j;->c()Lcb/g;

    move-result-object v0

    iput-object v0, p0, Lcb/n$b;->i:Lcb/g;

    .line 11
    invoke-static {}, Lcb/j;->c()Lcb/g;

    move-result-object v0

    iput-object v0, p0, Lcb/n$b;->j:Lcb/g;

    .line 12
    invoke-static {}, Lcb/j;->c()Lcb/g;

    move-result-object v0

    iput-object v0, p0, Lcb/n$b;->k:Lcb/g;

    .line 13
    invoke-static {}, Lcb/j;->c()Lcb/g;

    move-result-object v0

    iput-object v0, p0, Lcb/n$b;->l:Lcb/g;

    return-void
.end method

.method public constructor <init>(Lcb/n;)V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {}, Lcb/j;->b()Lcb/e;

    move-result-object v0

    iput-object v0, p0, Lcb/n$b;->a:Lcb/e;

    .line 16
    invoke-static {}, Lcb/j;->b()Lcb/e;

    move-result-object v0

    iput-object v0, p0, Lcb/n$b;->b:Lcb/e;

    .line 17
    invoke-static {}, Lcb/j;->b()Lcb/e;

    move-result-object v0

    iput-object v0, p0, Lcb/n$b;->c:Lcb/e;

    .line 18
    invoke-static {}, Lcb/j;->b()Lcb/e;

    move-result-object v0

    iput-object v0, p0, Lcb/n$b;->d:Lcb/e;

    .line 19
    new-instance v0, Lcb/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcb/a;-><init>(F)V

    iput-object v0, p0, Lcb/n$b;->e:Lcb/d;

    .line 20
    new-instance v0, Lcb/a;

    invoke-direct {v0, v1}, Lcb/a;-><init>(F)V

    iput-object v0, p0, Lcb/n$b;->f:Lcb/d;

    .line 21
    new-instance v0, Lcb/a;

    invoke-direct {v0, v1}, Lcb/a;-><init>(F)V

    iput-object v0, p0, Lcb/n$b;->g:Lcb/d;

    .line 22
    new-instance v0, Lcb/a;

    invoke-direct {v0, v1}, Lcb/a;-><init>(F)V

    iput-object v0, p0, Lcb/n$b;->h:Lcb/d;

    .line 23
    invoke-static {}, Lcb/j;->c()Lcb/g;

    move-result-object v0

    iput-object v0, p0, Lcb/n$b;->i:Lcb/g;

    .line 24
    invoke-static {}, Lcb/j;->c()Lcb/g;

    move-result-object v0

    iput-object v0, p0, Lcb/n$b;->j:Lcb/g;

    .line 25
    invoke-static {}, Lcb/j;->c()Lcb/g;

    move-result-object v0

    iput-object v0, p0, Lcb/n$b;->k:Lcb/g;

    .line 26
    invoke-static {}, Lcb/j;->c()Lcb/g;

    move-result-object v0

    iput-object v0, p0, Lcb/n$b;->l:Lcb/g;

    .line 27
    iget-object v0, p1, Lcb/n;->a:Lcb/e;

    iput-object v0, p0, Lcb/n$b;->a:Lcb/e;

    .line 28
    iget-object v0, p1, Lcb/n;->b:Lcb/e;

    iput-object v0, p0, Lcb/n$b;->b:Lcb/e;

    .line 29
    iget-object v0, p1, Lcb/n;->c:Lcb/e;

    iput-object v0, p0, Lcb/n$b;->c:Lcb/e;

    .line 30
    iget-object v0, p1, Lcb/n;->d:Lcb/e;

    iput-object v0, p0, Lcb/n$b;->d:Lcb/e;

    .line 31
    iget-object v0, p1, Lcb/n;->e:Lcb/d;

    iput-object v0, p0, Lcb/n$b;->e:Lcb/d;

    .line 32
    iget-object v0, p1, Lcb/n;->f:Lcb/d;

    iput-object v0, p0, Lcb/n$b;->f:Lcb/d;

    .line 33
    iget-object v0, p1, Lcb/n;->g:Lcb/d;

    iput-object v0, p0, Lcb/n$b;->g:Lcb/d;

    .line 34
    iget-object v0, p1, Lcb/n;->h:Lcb/d;

    iput-object v0, p0, Lcb/n$b;->h:Lcb/d;

    .line 35
    iget-object v0, p1, Lcb/n;->i:Lcb/g;

    iput-object v0, p0, Lcb/n$b;->i:Lcb/g;

    .line 36
    iget-object v0, p1, Lcb/n;->j:Lcb/g;

    iput-object v0, p0, Lcb/n$b;->j:Lcb/g;

    .line 37
    iget-object v0, p1, Lcb/n;->k:Lcb/g;

    iput-object v0, p0, Lcb/n$b;->k:Lcb/g;

    .line 38
    iget-object p1, p1, Lcb/n;->l:Lcb/g;

    iput-object p1, p0, Lcb/n$b;->l:Lcb/g;

    return-void
.end method

.method static synthetic a(Lcb/n$b;)Lcb/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcb/n$b;->a:Lcb/e;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcb/n$b;)Lcb/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcb/n$b;->j:Lcb/g;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcb/n$b;)Lcb/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcb/n$b;->k:Lcb/g;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcb/n$b;)Lcb/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcb/n$b;->l:Lcb/g;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lcb/n$b;)Lcb/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcb/n$b;->b:Lcb/e;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lcb/n$b;)Lcb/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcb/n$b;->c:Lcb/e;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g(Lcb/n$b;)Lcb/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcb/n$b;->d:Lcb/e;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic h(Lcb/n$b;)Lcb/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcb/n$b;->e:Lcb/d;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic i(Lcb/n$b;)Lcb/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcb/n$b;->f:Lcb/d;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic j(Lcb/n$b;)Lcb/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcb/n$b;->g:Lcb/d;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic k(Lcb/n$b;)Lcb/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcb/n$b;->h:Lcb/d;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic l(Lcb/n$b;)Lcb/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcb/n$b;->i:Lcb/g;

    .line 2
    .line 3
    return-object p0
.end method

.method private static n(Lcb/e;)F
    .locals 1

    .line 1
    instance-of v0, p0, Lcb/m;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lcb/m;

    .line 6
    .line 7
    iget p0, p0, Lcb/m;->a:F

    .line 8
    .line 9
    return p0

    .line 10
    :cond_0
    instance-of v0, p0, Lcb/f;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    check-cast p0, Lcb/f;

    .line 15
    .line 16
    iget p0, p0, Lcb/f;->a:F

    .line 17
    .line 18
    return p0

    .line 19
    :cond_1
    const/high16 p0, -0x40800000    # -1.0f

    .line 20
    .line 21
    return p0
.end method


# virtual methods
.method public A(Lcb/e;)Lcb/n$b;
    .locals 1

    .line 1
    iput-object p1, p0, Lcb/n$b;->c:Lcb/e;

    .line 2
    .line 3
    invoke-static {p1}, Lcb/n$b;->n(Lcb/e;)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/high16 v0, -0x40800000    # -1.0f

    .line 8
    .line 9
    cmpl-float v0, p1, v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcb/n$b;->B(F)Lcb/n$b;

    .line 14
    .line 15
    .line 16
    :cond_0
    return-object p0
.end method

.method public B(F)Lcb/n$b;
    .locals 1

    .line 1
    new-instance v0, Lcb/a;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcb/a;-><init>(F)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcb/n$b;->g:Lcb/d;

    .line 7
    .line 8
    return-object p0
.end method

.method public C(Lcb/d;)Lcb/n$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcb/n$b;->g:Lcb/d;

    .line 2
    .line 3
    return-object p0
.end method

.method public D(Lcb/g;)Lcb/n$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcb/n$b;->i:Lcb/g;

    .line 2
    .line 3
    return-object p0
.end method

.method public E(IF)Lcb/n$b;
    .locals 0

    .line 1
    invoke-static {p1}, Lcb/j;->a(I)Lcb/e;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcb/n$b;->G(Lcb/e;)Lcb/n$b;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1, p2}, Lcb/n$b;->H(F)Lcb/n$b;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public F(ILcb/d;)Lcb/n$b;
    .locals 0

    .line 1
    invoke-static {p1}, Lcb/j;->a(I)Lcb/e;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcb/n$b;->G(Lcb/e;)Lcb/n$b;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1, p2}, Lcb/n$b;->I(Lcb/d;)Lcb/n$b;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public G(Lcb/e;)Lcb/n$b;
    .locals 1

    .line 1
    iput-object p1, p0, Lcb/n$b;->a:Lcb/e;

    .line 2
    .line 3
    invoke-static {p1}, Lcb/n$b;->n(Lcb/e;)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/high16 v0, -0x40800000    # -1.0f

    .line 8
    .line 9
    cmpl-float v0, p1, v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcb/n$b;->H(F)Lcb/n$b;

    .line 14
    .line 15
    .line 16
    :cond_0
    return-object p0
.end method

.method public H(F)Lcb/n$b;
    .locals 1

    .line 1
    new-instance v0, Lcb/a;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcb/a;-><init>(F)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcb/n$b;->e:Lcb/d;

    .line 7
    .line 8
    return-object p0
.end method

.method public I(Lcb/d;)Lcb/n$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcb/n$b;->e:Lcb/d;

    .line 2
    .line 3
    return-object p0
.end method

.method public J(IF)Lcb/n$b;
    .locals 0

    .line 1
    invoke-static {p1}, Lcb/j;->a(I)Lcb/e;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcb/n$b;->L(Lcb/e;)Lcb/n$b;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1, p2}, Lcb/n$b;->M(F)Lcb/n$b;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public K(ILcb/d;)Lcb/n$b;
    .locals 0

    .line 1
    invoke-static {p1}, Lcb/j;->a(I)Lcb/e;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcb/n$b;->L(Lcb/e;)Lcb/n$b;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1, p2}, Lcb/n$b;->N(Lcb/d;)Lcb/n$b;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public L(Lcb/e;)Lcb/n$b;
    .locals 1

    .line 1
    iput-object p1, p0, Lcb/n$b;->b:Lcb/e;

    .line 2
    .line 3
    invoke-static {p1}, Lcb/n$b;->n(Lcb/e;)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/high16 v0, -0x40800000    # -1.0f

    .line 8
    .line 9
    cmpl-float v0, p1, v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcb/n$b;->M(F)Lcb/n$b;

    .line 14
    .line 15
    .line 16
    :cond_0
    return-object p0
.end method

.method public M(F)Lcb/n$b;
    .locals 1

    .line 1
    new-instance v0, Lcb/a;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcb/a;-><init>(F)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcb/n$b;->f:Lcb/d;

    .line 7
    .line 8
    return-object p0
.end method

.method public N(Lcb/d;)Lcb/n$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcb/n$b;->f:Lcb/d;

    .line 2
    .line 3
    return-object p0
.end method

.method public m()Lcb/n;
    .locals 2

    .line 1
    new-instance v0, Lcb/n;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcb/n;-><init>(Lcb/n$b;Lcb/n$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public o(F)Lcb/n$b;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcb/n$b;->H(F)Lcb/n$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcb/n$b;->M(F)Lcb/n$b;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Lcb/n$b;->B(F)Lcb/n$b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcb/n$b;->w(F)Lcb/n$b;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public p(Lcb/d;)Lcb/n$b;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcb/n$b;->I(Lcb/d;)Lcb/n$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcb/n$b;->N(Lcb/d;)Lcb/n$b;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Lcb/n$b;->C(Lcb/d;)Lcb/n$b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcb/n$b;->x(Lcb/d;)Lcb/n$b;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public q(IF)Lcb/n$b;
    .locals 0

    .line 1
    invoke-static {p1}, Lcb/j;->a(I)Lcb/e;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcb/n$b;->r(Lcb/e;)Lcb/n$b;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1, p2}, Lcb/n$b;->o(F)Lcb/n$b;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public r(Lcb/e;)Lcb/n$b;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcb/n$b;->G(Lcb/e;)Lcb/n$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcb/n$b;->L(Lcb/e;)Lcb/n$b;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Lcb/n$b;->A(Lcb/e;)Lcb/n$b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcb/n$b;->v(Lcb/e;)Lcb/n$b;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public s(Lcb/g;)Lcb/n$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcb/n$b;->k:Lcb/g;

    .line 2
    .line 3
    return-object p0
.end method

.method public t(IF)Lcb/n$b;
    .locals 0

    .line 1
    invoke-static {p1}, Lcb/j;->a(I)Lcb/e;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcb/n$b;->v(Lcb/e;)Lcb/n$b;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1, p2}, Lcb/n$b;->w(F)Lcb/n$b;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public u(ILcb/d;)Lcb/n$b;
    .locals 0

    .line 1
    invoke-static {p1}, Lcb/j;->a(I)Lcb/e;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcb/n$b;->v(Lcb/e;)Lcb/n$b;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1, p2}, Lcb/n$b;->x(Lcb/d;)Lcb/n$b;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public v(Lcb/e;)Lcb/n$b;
    .locals 1

    .line 1
    iput-object p1, p0, Lcb/n$b;->d:Lcb/e;

    .line 2
    .line 3
    invoke-static {p1}, Lcb/n$b;->n(Lcb/e;)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/high16 v0, -0x40800000    # -1.0f

    .line 8
    .line 9
    cmpl-float v0, p1, v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcb/n$b;->w(F)Lcb/n$b;

    .line 14
    .line 15
    .line 16
    :cond_0
    return-object p0
.end method

.method public w(F)Lcb/n$b;
    .locals 1

    .line 1
    new-instance v0, Lcb/a;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcb/a;-><init>(F)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcb/n$b;->h:Lcb/d;

    .line 7
    .line 8
    return-object p0
.end method

.method public x(Lcb/d;)Lcb/n$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcb/n$b;->h:Lcb/d;

    .line 2
    .line 3
    return-object p0
.end method

.method public y(IF)Lcb/n$b;
    .locals 0

    .line 1
    invoke-static {p1}, Lcb/j;->a(I)Lcb/e;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcb/n$b;->A(Lcb/e;)Lcb/n$b;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1, p2}, Lcb/n$b;->B(F)Lcb/n$b;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public z(ILcb/d;)Lcb/n$b;
    .locals 0

    .line 1
    invoke-static {p1}, Lcb/j;->a(I)Lcb/e;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcb/n$b;->A(Lcb/e;)Lcb/n$b;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1, p2}, Lcb/n$b;->C(Lcb/d;)Lcb/n$b;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
