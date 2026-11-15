.class public final Landroidx/media3/common/r$b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private A:I

.field private B:Landroidx/media3/common/i;

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:I

.field private J:I

.field private K:I

.field private L:I

.field private M:I

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/List;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Landroidx/media3/common/x;

.field private l:Ljava/lang/Object;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:I

.field private p:I

.field private q:Ljava/util/List;

.field private r:Landroidx/media3/common/DrmInitData;

.field private s:J

.field private t:Z

.field private u:I

.field private v:I

.field private w:F

.field private x:I

.field private y:F

.field private z:[B


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/r$b;->c:Ljava/util/List;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Landroidx/media3/common/r$b;->h:I

    .line 5
    iput v0, p0, Landroidx/media3/common/r$b;->i:I

    .line 6
    iput v0, p0, Landroidx/media3/common/r$b;->o:I

    .line 7
    iput v0, p0, Landroidx/media3/common/r$b;->p:I

    const-wide v1, 0x7fffffffffffffffL

    .line 8
    iput-wide v1, p0, Landroidx/media3/common/r$b;->s:J

    .line 9
    iput v0, p0, Landroidx/media3/common/r$b;->u:I

    .line 10
    iput v0, p0, Landroidx/media3/common/r$b;->v:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 11
    iput v1, p0, Landroidx/media3/common/r$b;->w:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 12
    iput v1, p0, Landroidx/media3/common/r$b;->y:F

    .line 13
    iput v0, p0, Landroidx/media3/common/r$b;->A:I

    .line 14
    iput v0, p0, Landroidx/media3/common/r$b;->C:I

    .line 15
    iput v0, p0, Landroidx/media3/common/r$b;->D:I

    .line 16
    iput v0, p0, Landroidx/media3/common/r$b;->E:I

    .line 17
    iput v0, p0, Landroidx/media3/common/r$b;->F:I

    .line 18
    iput v0, p0, Landroidx/media3/common/r$b;->I:I

    const/4 v1, 0x1

    .line 19
    iput v1, p0, Landroidx/media3/common/r$b;->J:I

    .line 20
    iput v0, p0, Landroidx/media3/common/r$b;->K:I

    .line 21
    iput v0, p0, Landroidx/media3/common/r$b;->L:I

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Landroidx/media3/common/r$b;->M:I

    .line 23
    iput v0, p0, Landroidx/media3/common/r$b;->g:I

    return-void
.end method

.method private constructor <init>(Landroidx/media3/common/r;)V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iget-object v0, p1, Landroidx/media3/common/r;->a:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/common/r$b;->a:Ljava/lang/String;

    .line 26
    iget-object v0, p1, Landroidx/media3/common/r;->b:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/common/r$b;->b:Ljava/lang/String;

    .line 27
    iget-object v0, p1, Landroidx/media3/common/r;->c:Ljava/util/List;

    iput-object v0, p0, Landroidx/media3/common/r$b;->c:Ljava/util/List;

    .line 28
    iget-object v0, p1, Landroidx/media3/common/r;->d:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/common/r$b;->d:Ljava/lang/String;

    .line 29
    iget v0, p1, Landroidx/media3/common/r;->e:I

    iput v0, p0, Landroidx/media3/common/r$b;->e:I

    .line 30
    iget v0, p1, Landroidx/media3/common/r;->f:I

    iput v0, p0, Landroidx/media3/common/r$b;->f:I

    .line 31
    iget v0, p1, Landroidx/media3/common/r;->h:I

    iput v0, p0, Landroidx/media3/common/r$b;->h:I

    .line 32
    iget v0, p1, Landroidx/media3/common/r;->i:I

    iput v0, p0, Landroidx/media3/common/r$b;->i:I

    .line 33
    iget-object v0, p1, Landroidx/media3/common/r;->k:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/common/r$b;->j:Ljava/lang/String;

    .line 34
    iget-object v0, p1, Landroidx/media3/common/r;->l:Landroidx/media3/common/x;

    iput-object v0, p0, Landroidx/media3/common/r$b;->k:Landroidx/media3/common/x;

    .line 35
    iget-object v0, p1, Landroidx/media3/common/r;->m:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/media3/common/r$b;->l:Ljava/lang/Object;

    .line 36
    iget-object v0, p1, Landroidx/media3/common/r;->n:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/common/r$b;->m:Ljava/lang/String;

    .line 37
    iget-object v0, p1, Landroidx/media3/common/r;->o:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/common/r$b;->n:Ljava/lang/String;

    .line 38
    iget v0, p1, Landroidx/media3/common/r;->p:I

    iput v0, p0, Landroidx/media3/common/r$b;->o:I

    .line 39
    iget v0, p1, Landroidx/media3/common/r;->q:I

    iput v0, p0, Landroidx/media3/common/r$b;->p:I

    .line 40
    iget-object v0, p1, Landroidx/media3/common/r;->r:Ljava/util/List;

    iput-object v0, p0, Landroidx/media3/common/r$b;->q:Ljava/util/List;

    .line 41
    iget-object v0, p1, Landroidx/media3/common/r;->s:Landroidx/media3/common/DrmInitData;

    iput-object v0, p0, Landroidx/media3/common/r$b;->r:Landroidx/media3/common/DrmInitData;

    .line 42
    iget-wide v0, p1, Landroidx/media3/common/r;->t:J

    iput-wide v0, p0, Landroidx/media3/common/r$b;->s:J

    .line 43
    iget-boolean v0, p1, Landroidx/media3/common/r;->u:Z

    iput-boolean v0, p0, Landroidx/media3/common/r$b;->t:Z

    .line 44
    iget v0, p1, Landroidx/media3/common/r;->v:I

    iput v0, p0, Landroidx/media3/common/r$b;->u:I

    .line 45
    iget v0, p1, Landroidx/media3/common/r;->w:I

    iput v0, p0, Landroidx/media3/common/r$b;->v:I

    .line 46
    iget v0, p1, Landroidx/media3/common/r;->x:F

    iput v0, p0, Landroidx/media3/common/r$b;->w:F

    .line 47
    iget v0, p1, Landroidx/media3/common/r;->y:I

    iput v0, p0, Landroidx/media3/common/r$b;->x:I

    .line 48
    iget v0, p1, Landroidx/media3/common/r;->z:F

    iput v0, p0, Landroidx/media3/common/r$b;->y:F

    .line 49
    iget-object v0, p1, Landroidx/media3/common/r;->A:[B

    iput-object v0, p0, Landroidx/media3/common/r$b;->z:[B

    .line 50
    iget v0, p1, Landroidx/media3/common/r;->B:I

    iput v0, p0, Landroidx/media3/common/r$b;->A:I

    .line 51
    iget-object v0, p1, Landroidx/media3/common/r;->C:Landroidx/media3/common/i;

    iput-object v0, p0, Landroidx/media3/common/r$b;->B:Landroidx/media3/common/i;

    .line 52
    iget v0, p1, Landroidx/media3/common/r;->D:I

    iput v0, p0, Landroidx/media3/common/r$b;->C:I

    .line 53
    iget v0, p1, Landroidx/media3/common/r;->E:I

    iput v0, p0, Landroidx/media3/common/r$b;->D:I

    .line 54
    iget v0, p1, Landroidx/media3/common/r;->F:I

    iput v0, p0, Landroidx/media3/common/r$b;->E:I

    .line 55
    iget v0, p1, Landroidx/media3/common/r;->G:I

    iput v0, p0, Landroidx/media3/common/r$b;->F:I

    .line 56
    iget v0, p1, Landroidx/media3/common/r;->H:I

    iput v0, p0, Landroidx/media3/common/r$b;->G:I

    .line 57
    iget v0, p1, Landroidx/media3/common/r;->I:I

    iput v0, p0, Landroidx/media3/common/r$b;->H:I

    .line 58
    iget v0, p1, Landroidx/media3/common/r;->J:I

    iput v0, p0, Landroidx/media3/common/r$b;->I:I

    .line 59
    iget v0, p1, Landroidx/media3/common/r;->K:I

    iput v0, p0, Landroidx/media3/common/r$b;->J:I

    .line 60
    iget v0, p1, Landroidx/media3/common/r;->L:I

    iput v0, p0, Landroidx/media3/common/r$b;->K:I

    .line 61
    iget v0, p1, Landroidx/media3/common/r;->M:I

    iput v0, p0, Landroidx/media3/common/r$b;->L:I

    .line 62
    iget p1, p1, Landroidx/media3/common/r;->N:I

    iput p1, p0, Landroidx/media3/common/r$b;->M:I

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/common/r;Landroidx/media3/common/r$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/common/r$b;-><init>(Landroidx/media3/common/r;)V

    return-void
.end method

.method static synthetic A(Landroidx/media3/common/r$b;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/common/r$b;->G:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic B(Landroidx/media3/common/r$b;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/common/r$b;->H:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic C(Landroidx/media3/common/r$b;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/common/r$b;->I:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic D(Landroidx/media3/common/r$b;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/common/r$b;->J:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic E(Landroidx/media3/common/r$b;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/common/r$b;->K:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic F(Landroidx/media3/common/r$b;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/common/r$b;->L:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic G(Landroidx/media3/common/r$b;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/common/r$b;->M:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic H(Landroidx/media3/common/r$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/common/r$b;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic I(Landroidx/media3/common/r$b;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/common/r$b;->e:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic J(Landroidx/media3/common/r$b;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/common/r$b;->g:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic K(Landroidx/media3/common/r$b;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/common/r$b;->f:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic L(Landroidx/media3/common/r$b;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/common/r$b;->h:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic M(Landroidx/media3/common/r$b;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/common/r$b;->i:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic a(Landroidx/media3/common/r$b;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/common/r$b;->c:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Landroidx/media3/common/r$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/common/r$b;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Landroidx/media3/common/r$b;)Landroidx/media3/common/x;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/common/r$b;->k:Landroidx/media3/common/x;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Landroidx/media3/common/r$b;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/common/r$b;->l:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Landroidx/media3/common/r$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/common/r$b;->m:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Landroidx/media3/common/r$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/common/r$b;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g(Landroidx/media3/common/r$b;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/common/r$b;->o:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic h(Landroidx/media3/common/r$b;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/common/r$b;->p:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic i(Landroidx/media3/common/r$b;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/common/r$b;->q:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic j(Landroidx/media3/common/r$b;)Landroidx/media3/common/DrmInitData;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/common/r$b;->r:Landroidx/media3/common/DrmInitData;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic k(Landroidx/media3/common/r$b;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/media3/common/r$b;->s:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic l(Landroidx/media3/common/r$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/common/r$b;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic m(Landroidx/media3/common/r$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/media3/common/r$b;->t:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic n(Landroidx/media3/common/r$b;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/common/r$b;->u:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic o(Landroidx/media3/common/r$b;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/common/r$b;->v:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic p(Landroidx/media3/common/r$b;)F
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/common/r$b;->w:F

    .line 2
    .line 3
    return p0
.end method

.method static synthetic q(Landroidx/media3/common/r$b;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/common/r$b;->x:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic r(Landroidx/media3/common/r$b;)F
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/common/r$b;->y:F

    .line 2
    .line 3
    return p0
.end method

.method static synthetic s(Landroidx/media3/common/r$b;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/common/r$b;->z:[B

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic t(Landroidx/media3/common/r$b;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/common/r$b;->A:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic u(Landroidx/media3/common/r$b;)Landroidx/media3/common/i;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/common/r$b;->B:Landroidx/media3/common/i;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic v(Landroidx/media3/common/r$b;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/common/r$b;->C:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic w(Landroidx/media3/common/r$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/common/r$b;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic x(Landroidx/media3/common/r$b;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/common/r$b;->D:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic y(Landroidx/media3/common/r$b;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/common/r$b;->E:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic z(Landroidx/media3/common/r$b;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/common/r$b;->F:I

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public A0(I)Landroidx/media3/common/r$b;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/r$b;->L:I

    .line 2
    .line 3
    return-object p0
.end method

.method public B0(I)Landroidx/media3/common/r$b;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/r$b;->u:I

    .line 2
    .line 3
    return-object p0
.end method

.method public N()Landroidx/media3/common/r;
    .locals 2

    .line 1
    new-instance v0, Landroidx/media3/common/r;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Landroidx/media3/common/r;-><init>(Landroidx/media3/common/r$b;Landroidx/media3/common/r$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public O(I)Landroidx/media3/common/r$b;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/r$b;->I:I

    .line 2
    .line 3
    return-object p0
.end method

.method public P(I)Landroidx/media3/common/r$b;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/r$b;->g:I

    .line 2
    .line 3
    return-object p0
.end method

.method public Q(I)Landroidx/media3/common/r$b;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/r$b;->h:I

    .line 2
    .line 3
    return-object p0
.end method

.method public R(I)Landroidx/media3/common/r$b;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/r$b;->D:I

    .line 2
    .line 3
    return-object p0
.end method

.method public S(Ljava/lang/String;)Landroidx/media3/common/r$b;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/common/r$b;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public T(Landroidx/media3/common/i;)Landroidx/media3/common/r$b;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/common/r$b;->B:Landroidx/media3/common/i;

    .line 2
    .line 3
    return-object p0
.end method

.method public U(Ljava/lang/String;)Landroidx/media3/common/r$b;
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/media3/common/y;->u(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Landroidx/media3/common/r$b;->m:Ljava/lang/String;

    .line 6
    .line 7
    return-object p0
.end method

.method public V(I)Landroidx/media3/common/r$b;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/r$b;->M:I

    .line 2
    .line 3
    return-object p0
.end method

.method public W(I)Landroidx/media3/common/r$b;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/r$b;->J:I

    .line 2
    .line 3
    return-object p0
.end method

.method public X(Ljava/lang/Object;)Landroidx/media3/common/r$b;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/common/r$b;->l:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public Y(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/r$b;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/common/r$b;->r:Landroidx/media3/common/DrmInitData;

    .line 2
    .line 3
    return-object p0
.end method

.method public Z(I)Landroidx/media3/common/r$b;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/r$b;->G:I

    .line 2
    .line 3
    return-object p0
.end method

.method public a0(I)Landroidx/media3/common/r$b;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/r$b;->H:I

    .line 2
    .line 3
    return-object p0
.end method

.method public b0(F)Landroidx/media3/common/r$b;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/r$b;->w:F

    .line 2
    .line 3
    return-object p0
.end method

.method public c0(Z)Landroidx/media3/common/r$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/media3/common/r$b;->t:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public d0(I)Landroidx/media3/common/r$b;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/r$b;->v:I

    .line 2
    .line 3
    return-object p0
.end method

.method public e0(I)Landroidx/media3/common/r$b;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Landroidx/media3/common/r$b;->a:Ljava/lang/String;

    .line 6
    .line 7
    return-object p0
.end method

.method public f0(Ljava/lang/String;)Landroidx/media3/common/r$b;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/common/r$b;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public g0(Ljava/util/List;)Landroidx/media3/common/r$b;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/common/r$b;->q:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public h0(Ljava/lang/String;)Landroidx/media3/common/r$b;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/common/r$b;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public i0(Ljava/util/List;)Landroidx/media3/common/r$b;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Landroidx/media3/common/r$b;->c:Ljava/util/List;

    .line 6
    .line 7
    return-object p0
.end method

.method public j0(Ljava/lang/String;)Landroidx/media3/common/r$b;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/common/r$b;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public k0(I)Landroidx/media3/common/r$b;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/r$b;->o:I

    .line 2
    .line 3
    return-object p0
.end method

.method public l0(I)Landroidx/media3/common/r$b;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/r$b;->p:I

    .line 2
    .line 3
    return-object p0
.end method

.method public m0(I)Landroidx/media3/common/r$b;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/r$b;->C:I

    .line 2
    .line 3
    return-object p0
.end method

.method public n0(Landroidx/media3/common/x;)Landroidx/media3/common/r$b;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/common/r$b;->k:Landroidx/media3/common/x;

    .line 2
    .line 3
    return-object p0
.end method

.method public o0(I)Landroidx/media3/common/r$b;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/r$b;->F:I

    .line 2
    .line 3
    return-object p0
.end method

.method public p0(I)Landroidx/media3/common/r$b;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/r$b;->i:I

    .line 2
    .line 3
    return-object p0
.end method

.method public q0(F)Landroidx/media3/common/r$b;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/r$b;->y:F

    .line 2
    .line 3
    return-object p0
.end method

.method public r0([B)Landroidx/media3/common/r$b;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/common/r$b;->z:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public s0(I)Landroidx/media3/common/r$b;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/r$b;->f:I

    .line 2
    .line 3
    return-object p0
.end method

.method public t0(I)Landroidx/media3/common/r$b;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/r$b;->x:I

    .line 2
    .line 3
    return-object p0
.end method

.method public u0(Ljava/lang/String;)Landroidx/media3/common/r$b;
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/media3/common/y;->u(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Landroidx/media3/common/r$b;->n:Ljava/lang/String;

    .line 6
    .line 7
    return-object p0
.end method

.method public v0(I)Landroidx/media3/common/r$b;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/r$b;->E:I

    .line 2
    .line 3
    return-object p0
.end method

.method public w0(I)Landroidx/media3/common/r$b;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/r$b;->e:I

    .line 2
    .line 3
    return-object p0
.end method

.method public x0(I)Landroidx/media3/common/r$b;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/r$b;->A:I

    .line 2
    .line 3
    return-object p0
.end method

.method public y0(J)Landroidx/media3/common/r$b;
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/media3/common/r$b;->s:J

    .line 2
    .line 3
    return-object p0
.end method

.method public z0(I)Landroidx/media3/common/r$b;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/r$b;->K:I

    .line 2
    .line 3
    return-object p0
.end method
