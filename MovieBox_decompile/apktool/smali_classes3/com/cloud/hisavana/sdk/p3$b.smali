.class public Lcom/cloud/hisavana/sdk/p3$b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/p3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:I

.field private d:Z

.field private e:I

.field private f:Z

.field private g:I

.field private h:Ld7/b;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:D

.field private n:Z

.field private o:I

.field private p:Ljava/lang/String;

.field private q:I

.field private r:Ljava/lang/String;

.field private s:Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;

.field private t:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/p3$b;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/cloud/hisavana/sdk/p3$b;->e:I

    .line 4
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/p3$b;->i:Z

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/p3$b;->j:Z

    .line 6
    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/p3$b;->k:Z

    .line 7
    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/p3$b;->l:Z

    .line 8
    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/p3$b;->n:Z

    .line 9
    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/p3$b;->t:Z

    .line 10
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->o()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/p3$b;->p:Ljava/lang/String;

    const v1, 0xafc8

    .line 11
    iput v1, p0, Lcom/cloud/hisavana/sdk/p3$b;->q:I

    .line 12
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 13
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/p3$b;->r:Ljava/lang/String;

    goto :goto_0

    .line 14
    :cond_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/common/util/l0;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/p3$b;->r:Ljava/lang/String;

    .line 15
    :goto_0
    iput v0, p0, Lcom/cloud/hisavana/sdk/p3$b;->o:I

    .line 16
    new-instance p1, Ld7/b;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, v0}, Ld7/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/p3$b;->h:Ld7/b;

    return-void
.end method

.method static synthetic A(Lcom/cloud/hisavana/sdk/p3$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/p3$b;->t:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic B(Lcom/cloud/hisavana/sdk/p3$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cloud/hisavana/sdk/p3$b;->c:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic C(Lcom/cloud/hisavana/sdk/p3$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/p3$b;->d:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic D(Lcom/cloud/hisavana/sdk/p3$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cloud/hisavana/sdk/p3$b;->e:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic E(Lcom/cloud/hisavana/sdk/p3$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/p3$b;->f:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic F(Lcom/cloud/hisavana/sdk/p3$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cloud/hisavana/sdk/p3$b;->g:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic G(Lcom/cloud/hisavana/sdk/p3$b;)Ld7/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/p3$b;->h:Ld7/b;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic H(Lcom/cloud/hisavana/sdk/p3$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/p3$b;->i:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic I(Lcom/cloud/hisavana/sdk/p3$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/p3$b;->j:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic h(Lcom/cloud/hisavana/sdk/p3$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/p3$b;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic k(Lcom/cloud/hisavana/sdk/p3$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/p3$b;->b:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic n(Lcom/cloud/hisavana/sdk/p3$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/p3$b;->k:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic p(Lcom/cloud/hisavana/sdk/p3$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/p3$b;->l:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic q(Lcom/cloud/hisavana/sdk/p3$b;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/p3$b;->m:D

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic t(Lcom/cloud/hisavana/sdk/p3$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/p3$b;->n:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic u(Lcom/cloud/hisavana/sdk/p3$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cloud/hisavana/sdk/p3$b;->o:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic w(Lcom/cloud/hisavana/sdk/p3$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/p3$b;->p:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic x(Lcom/cloud/hisavana/sdk/p3$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/p3$b;->r:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic y(Lcom/cloud/hisavana/sdk/p3$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cloud/hisavana/sdk/p3$b;->q:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic z(Lcom/cloud/hisavana/sdk/p3$b;)Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/p3$b;->s:Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public a(I)Lcom/cloud/hisavana/sdk/p3$b;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ge p1, v0, :cond_0

    .line 3
    .line 4
    move p1, v0

    .line 5
    :cond_0
    iput p1, p0, Lcom/cloud/hisavana/sdk/p3$b;->e:I

    .line 6
    .line 7
    return-object p0
.end method

.method public b(Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;)Lcom/cloud/hisavana/sdk/p3$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/p3$b;->s:Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public c(Ld7/a;)Lcom/cloud/hisavana/sdk/p3$b;
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-object p0

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/p3$b;->t:Z

    .line 5
    .line 6
    const-string v1, ""

    .line 7
    .line 8
    const-string v2, "hisa-"

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1}, Ld7/a;->c()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-nez v3, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/p3$b;->p:Ljava/lang/String;

    .line 27
    .line 28
    :cond_1
    invoke-virtual {p1}, Ld7/a;->e()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-lez v0, :cond_2

    .line 33
    .line 34
    invoke-virtual {p1}, Ld7/a;->e()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iput v0, p0, Lcom/cloud/hisavana/sdk/p3$b;->q:I

    .line 39
    .line 40
    :cond_2
    invoke-virtual {p1}, Ld7/a;->d()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    const/4 v3, -0x1

    .line 45
    if-eq v0, v3, :cond_3

    .line 46
    .line 47
    invoke-virtual {p1}, Ld7/a;->d()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    iput v0, p0, Lcom/cloud/hisavana/sdk/p3$b;->o:I

    .line 52
    .line 53
    :cond_3
    invoke-virtual {p1}, Ld7/a;->g()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/p3$b;->n:Z

    .line 58
    .line 59
    invoke-virtual {p1}, Ld7/a;->f()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iget-boolean v3, p0, Lcom/cloud/hisavana/sdk/p3$b;->t:Z

    .line 64
    .line 65
    if-nez v3, :cond_4

    .line 66
    .line 67
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-nez v3, :cond_4

    .line 72
    .line 73
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/p3$b;->r:Ljava/lang/String;

    .line 78
    .line 79
    :cond_4
    invoke-virtual {p1}, Ld7/a;->b()D

    .line 80
    .line 81
    .line 82
    move-result-wide v0

    .line 83
    const-wide/16 v2, 0x0

    .line 84
    .line 85
    cmpl-double v0, v0, v2

    .line 86
    .line 87
    if-lez v0, :cond_5

    .line 88
    .line 89
    invoke-virtual {p1}, Ld7/a;->b()D

    .line 90
    .line 91
    .line 92
    move-result-wide v0

    .line 93
    iput-wide v0, p0, Lcom/cloud/hisavana/sdk/p3$b;->m:D

    .line 94
    .line 95
    :cond_5
    return-object p0
.end method

.method public d(Ld7/b;)Lcom/cloud/hisavana/sdk/p3$b;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/p3$b;->h:Ld7/b;

    .line 4
    .line 5
    :cond_0
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/p3$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/p3$b;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public f(Z)Lcom/cloud/hisavana/sdk/p3$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/p3$b;->t:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public g()Lcom/cloud/hisavana/sdk/p3;
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/p3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/cloud/hisavana/sdk/p3;-><init>(Lcom/cloud/hisavana/sdk/p3$b;Lcom/cloud/hisavana/sdk/p3$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public i(I)Lcom/cloud/hisavana/sdk/p3$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/p3$b;->g:I

    .line 2
    .line 3
    return-object p0
.end method

.method public j(Z)Lcom/cloud/hisavana/sdk/p3$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/p3$b;->d:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public l(I)Lcom/cloud/hisavana/sdk/p3$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/p3$b;->c:I

    .line 2
    .line 3
    return-object p0
.end method

.method public m(Z)Lcom/cloud/hisavana/sdk/p3$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/p3$b;->l:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public o(Z)Lcom/cloud/hisavana/sdk/p3$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/p3$b;->f:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public r(Z)Lcom/cloud/hisavana/sdk/p3$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/p3$b;->b:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public s(Z)Lcom/cloud/hisavana/sdk/p3$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/p3$b;->k:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public v(Z)Lcom/cloud/hisavana/sdk/p3$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/p3$b;->j:Z

    .line 2
    .line 3
    return-object p0
.end method
