.class public final Lied;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lied$b;
    }
.end annotation


# instance fields
.field public final a:J

.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:I

.field public final e:Z

.field public final f:I

.field public final g:Z

.field public final h:I

.field public final i:Ld29;

.field public final j:Z

.field public final k:Z

.field public final l:Z

.field public final m:Z

.field public final n:D

.field public final o:Z

.field public final p:I

.field public final q:Ljava/lang/String;

.field public r:Z

.field public s:Ljava/lang/String;

.field public t:Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

.field public u:I

.field public v:I

.field public w:Ljava/lang/String;

.field public x:Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;


# direct methods
.method public constructor <init>(Lied$b;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lied;->r:Z

    .line 4
    invoke-static {p1}, Lied$b;->h(Lied$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lied;->b:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lied$b;->l(Lied$b;)Z

    move-result v0

    iput-boolean v0, p0, Lied;->c:Z

    .line 6
    invoke-static {p1}, Lied$b;->C(Lied$b;)I

    move-result v0

    iput v0, p0, Lied;->d:I

    .line 7
    invoke-static {p1}, Lied$b;->E(Lied$b;)Z

    move-result v0

    iput-boolean v0, p0, Lied;->e:Z

    .line 8
    invoke-static {p1}, Lied$b;->F(Lied$b;)I

    move-result v0

    iput v0, p0, Lied;->f:I

    .line 9
    invoke-static {p1}, Lied$b;->G(Lied$b;)Z

    move-result v0

    iput-boolean v0, p0, Lied;->g:Z

    .line 10
    invoke-static {p1}, Lied$b;->H(Lied$b;)I

    move-result v0

    iput v0, p0, Lied;->h:I

    .line 11
    invoke-static {p1}, Lied$b;->I(Lied$b;)Ld29;

    move-result-object v0

    iput-object v0, p0, Lied;->i:Ld29;

    .line 12
    invoke-static {p1}, Lied$b;->J(Lied$b;)Z

    move-result v0

    iput-boolean v0, p0, Lied;->j:Z

    .line 13
    invoke-static {p1}, Lied$b;->K(Lied$b;)Z

    move-result v0

    iput-boolean v0, p0, Lied;->k:Z

    .line 14
    invoke-static {p1}, Lied$b;->o(Lied$b;)Z

    move-result v0

    iput-boolean v0, p0, Lied;->l:Z

    .line 15
    invoke-static {p1}, Lied$b;->q(Lied$b;)Z

    move-result v0

    iput-boolean v0, p0, Lied;->m:Z

    .line 16
    invoke-static {p1}, Lied$b;->r(Lied$b;)D

    move-result-wide v0

    iput-wide v0, p0, Lied;->n:D

    .line 17
    invoke-static {p1}, Lied$b;->u(Lied$b;)Z

    move-result v0

    iput-boolean v0, p0, Lied;->o:Z

    .line 18
    invoke-static {p1}, Lied$b;->v(Lied$b;)I

    move-result v0

    iput v0, p0, Lied;->p:I

    .line 19
    invoke-static {p1}, Lied$b;->x(Lied$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lied;->w:Ljava/lang/String;

    .line 20
    invoke-static {p1}, Lied$b;->y(Lied$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lied;->q:Ljava/lang/String;

    .line 21
    invoke-static {p1}, Lied$b;->z(Lied$b;)I

    move-result v0

    iput v0, p0, Lied;->v:I

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lied;->a:J

    .line 23
    invoke-static {p1}, Lied$b;->A(Lied$b;)Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;

    move-result-object v0

    iput-object v0, p0, Lied;->x:Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;

    .line 24
    invoke-static {p1}, Lied$b;->B(Lied$b;)Z

    move-result v0

    iput-boolean v0, p0, Lied;->r:Z

    .line 25
    invoke-static {p1}, Lied$b;->D(Lied$b;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lied;->s:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lied$b;Lied$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lied;-><init>(Lied$b;)V

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 0

    iget-boolean p0, p0, Lied;->o:Z

    return p0
.end method

.method public a()I
    .locals 0

    iget p0, p0, Lied;->f:I

    return p0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lied;->u:I

    return-void
.end method

.method public c(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)V
    .locals 0

    iput-object p1, p0, Lied;->t:Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lied;->w:Ljava/lang/String;

    return-void
.end method

.method public e()I
    .locals 0

    iget p0, p0, Lied;->h:I

    return p0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lied;->s:Ljava/lang/String;

    return-void
.end method

.method public g()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;
    .locals 0

    iget-object p0, p0, Lied;->t:Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    if-nez p0, :cond_0

    new-instance p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;-><init>()V

    :cond_0
    return-object p0
.end method

.method public h()J
    .locals 2

    iget-wide v0, p0, Lied;->a:J

    return-wide v0
.end method

.method public i()I
    .locals 0

    iget p0, p0, Lied;->d:I

    return p0
.end method

.method public j()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lied;->b:Ljava/lang/String;

    return-object p0
.end method

.method public k()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lied;->w:Ljava/lang/String;

    return-object p0
.end method

.method public l()I
    .locals 0

    iget p0, p0, Lied;->p:I

    return p0
.end method

.method public m()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lied;->s:Ljava/lang/String;

    return-object p0
.end method

.method public n()Ld29;
    .locals 0

    iget-object p0, p0, Lied;->i:Ld29;

    return-object p0
.end method

.method public o()I
    .locals 0

    iget p0, p0, Lied;->v:I

    return p0
.end method

.method public p()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lied;->q:Ljava/lang/String;

    return-object p0
.end method

.method public q()I
    .locals 0

    iget p0, p0, Lied;->u:I

    return p0
.end method

.method public r()Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;
    .locals 0

    iget-object p0, p0, Lied;->x:Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;

    return-object p0
.end method

.method public s()Z
    .locals 0

    iget-boolean p0, p0, Lied;->j:Z

    return p0
.end method

.method public t()Z
    .locals 0

    iget-boolean p0, p0, Lied;->r:Z

    return p0
.end method

.method public u()Z
    .locals 0

    iget-boolean p0, p0, Lied;->e:Z

    return p0
.end method

.method public v()Z
    .locals 0

    iget-boolean p0, p0, Lied;->m:Z

    return p0
.end method

.method public w()Z
    .locals 0

    iget-boolean p0, p0, Lied;->g:Z

    return p0
.end method

.method public x()Z
    .locals 0

    iget-boolean p0, p0, Lied;->c:Z

    return p0
.end method

.method public y()Z
    .locals 0

    iget-boolean p0, p0, Lied;->l:Z

    return p0
.end method

.method public z()Z
    .locals 0

    iget-boolean p0, p0, Lied;->k:Z

    return p0
.end method
