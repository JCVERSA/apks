.class public Lied$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lied;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field public c:I

.field public d:Z

.field public e:I

.field public f:Z

.field public g:I

.field public h:Ld29;

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:D

.field public n:Z

.field public o:I

.field public p:Ljava/lang/String;

.field public q:I

.field public r:Ljava/lang/String;

.field public s:Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;

.field public t:Z

.field public u:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, ""

    invoke-direct {p0, v0}, Lied$b;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lied$b;->e:I

    .line 4
    iput-boolean v0, p0, Lied$b;->i:Z

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lied$b;->j:Z

    .line 6
    iput-boolean v1, p0, Lied$b;->k:Z

    .line 7
    iput-boolean v1, p0, Lied$b;->l:Z

    .line 8
    iput-boolean v1, p0, Lied$b;->n:Z

    .line 9
    iput-boolean v1, p0, Lied$b;->t:Z

    .line 10
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->p()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lied$b;->p:Ljava/lang/String;

    const v1, 0xafc8

    .line 11
    iput v1, p0, Lied$b;->q:I

    .line 12
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 13
    iput-object p1, p0, Lied$b;->r:Ljava/lang/String;

    goto :goto_0

    .line 14
    :cond_0
    invoke-static {}, Luva;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lied$b;->r:Ljava/lang/String;

    .line 15
    :goto_0
    iput v0, p0, Lied$b;->o:I

    .line 16
    new-instance p1, Ld29;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, v0}, Ld29;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iput-object p1, p0, Lied$b;->h:Ld29;

    return-void
.end method

.method public static synthetic A(Lied$b;)Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;
    .locals 0

    iget-object p0, p0, Lied$b;->s:Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;

    return-object p0
.end method

.method public static synthetic B(Lied$b;)Z
    .locals 0

    iget-boolean p0, p0, Lied$b;->t:Z

    return p0
.end method

.method public static synthetic C(Lied$b;)I
    .locals 0

    iget p0, p0, Lied$b;->c:I

    return p0
.end method

.method public static synthetic D(Lied$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lied$b;->u:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic E(Lied$b;)Z
    .locals 0

    iget-boolean p0, p0, Lied$b;->d:Z

    return p0
.end method

.method public static synthetic F(Lied$b;)I
    .locals 0

    iget p0, p0, Lied$b;->e:I

    return p0
.end method

.method public static synthetic G(Lied$b;)Z
    .locals 0

    iget-boolean p0, p0, Lied$b;->f:Z

    return p0
.end method

.method public static synthetic H(Lied$b;)I
    .locals 0

    iget p0, p0, Lied$b;->g:I

    return p0
.end method

.method public static synthetic I(Lied$b;)Ld29;
    .locals 0

    iget-object p0, p0, Lied$b;->h:Ld29;

    return-object p0
.end method

.method public static synthetic J(Lied$b;)Z
    .locals 0

    iget-boolean p0, p0, Lied$b;->i:Z

    return p0
.end method

.method public static synthetic K(Lied$b;)Z
    .locals 0

    iget-boolean p0, p0, Lied$b;->j:Z

    return p0
.end method

.method public static synthetic h(Lied$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lied$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic l(Lied$b;)Z
    .locals 0

    iget-boolean p0, p0, Lied$b;->b:Z

    return p0
.end method

.method public static synthetic o(Lied$b;)Z
    .locals 0

    iget-boolean p0, p0, Lied$b;->k:Z

    return p0
.end method

.method public static synthetic q(Lied$b;)Z
    .locals 0

    iget-boolean p0, p0, Lied$b;->l:Z

    return p0
.end method

.method public static synthetic r(Lied$b;)D
    .locals 2

    iget-wide v0, p0, Lied$b;->m:D

    return-wide v0
.end method

.method public static synthetic u(Lied$b;)Z
    .locals 0

    iget-boolean p0, p0, Lied$b;->n:Z

    return p0
.end method

.method public static synthetic v(Lied$b;)I
    .locals 0

    iget p0, p0, Lied$b;->o:I

    return p0
.end method

.method public static synthetic x(Lied$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lied$b;->p:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic y(Lied$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lied$b;->r:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic z(Lied$b;)I
    .locals 0

    iget p0, p0, Lied$b;->q:I

    return p0
.end method


# virtual methods
.method public a(I)Lied$b;
    .locals 1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    iput p1, p0, Lied$b;->e:I

    return-object p0
.end method

.method public b(Lw6;)Lied$b;
    .locals 4

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    iget-boolean v0, p0, Lied$b;->t:Z

    const-string v1, ""

    const-string v2, "hisa-"

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lw6;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lied$b;->p:Ljava/lang/String;

    :cond_1
    invoke-virtual {p1}, Lw6;->e()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1}, Lw6;->e()I

    move-result v0

    iput v0, p0, Lied$b;->q:I

    :cond_2
    invoke-virtual {p1}, Lw6;->d()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    invoke-virtual {p1}, Lw6;->d()I

    move-result v0

    iput v0, p0, Lied$b;->o:I

    :cond_3
    invoke-virtual {p1}, Lw6;->g()Z

    move-result v0

    iput-boolean v0, p0, Lied$b;->n:Z

    invoke-virtual {p1}, Lw6;->f()Ljava/lang/String;

    move-result-object v0

    iget-boolean v3, p0, Lied$b;->t:Z

    if-nez v3, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lied$b;->r:Ljava/lang/String;

    :cond_4
    invoke-virtual {p1}, Lw6;->b()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_5

    invoke-virtual {p1}, Lw6;->b()D

    move-result-wide v0

    iput-wide v0, p0, Lied$b;->m:D

    :cond_5
    return-object p0
.end method

.method public c(Ld29;)Lied$b;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lied$b;->h:Ld29;

    :cond_0
    return-object p0
.end method

.method public d(Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;)Lied$b;
    .locals 0

    iput-object p1, p0, Lied$b;->s:Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lied$b;
    .locals 0

    iput-object p1, p0, Lied$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method public f(Z)Lied$b;
    .locals 0

    iput-boolean p1, p0, Lied$b;->t:Z

    return-object p0
.end method

.method public g()Lied;
    .locals 2

    new-instance v0, Lied;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lied;-><init>(Lied$b;Lied$a;)V

    return-object v0
.end method

.method public i(I)Lied$b;
    .locals 0

    iput p1, p0, Lied$b;->g:I

    return-object p0
.end method

.method public j(Ljava/lang/String;)Lied$b;
    .locals 0

    iput-object p1, p0, Lied$b;->u:Ljava/lang/String;

    return-object p0
.end method

.method public k(Z)Lied$b;
    .locals 0

    iput-boolean p1, p0, Lied$b;->d:Z

    return-object p0
.end method

.method public m(I)Lied$b;
    .locals 0

    iput p1, p0, Lied$b;->c:I

    return-object p0
.end method

.method public n(Z)Lied$b;
    .locals 0

    iput-boolean p1, p0, Lied$b;->l:Z

    return-object p0
.end method

.method public p(Z)Lied$b;
    .locals 0

    iput-boolean p1, p0, Lied$b;->f:Z

    return-object p0
.end method

.method public s(Z)Lied$b;
    .locals 0

    iput-boolean p1, p0, Lied$b;->b:Z

    return-object p0
.end method

.method public t(Z)Lied$b;
    .locals 0

    iput-boolean p1, p0, Lied$b;->k:Z

    return-object p0
.end method

.method public w(Z)Lied$b;
    .locals 0

    iput-boolean p1, p0, Lied$b;->j:Z

    return-object p0
.end method
