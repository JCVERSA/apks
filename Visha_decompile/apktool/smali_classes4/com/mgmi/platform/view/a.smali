.class public Lcom/mgmi/platform/view/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:Ljava/lang/String;

.field public B:I

.field public C:I

.field public D:Z

.field private E:Ljava/lang/String;

.field private F:I

.field private G:Lcom/mgmi/ads/api/a/i;

.field private H:Ljava/lang/String;

.field public a:I

.field public b:F

.field public c:F

.field public d:J

.field public e:Z

.field public f:I

.field public g:J

.field public h:Z

.field public i:Z

.field public j:I

.field public k:Lcom/mgmi/model/VASTFloatAd;

.field public l:I

.field public m:Z

.field public n:Z

.field public o:I

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:J

.field public t:I

.field public u:Ljava/lang/String;

.field public v:J

.field public w:I

.field public x:I

.field public y:I

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/mgmi/platform/view/a;->e:Z

    .line 22
    iput v0, p0, Lcom/mgmi/platform/view/a;->j:I

    const-wide/16 v0, 0x0

    .line 23
    iput-wide v0, p0, Lcom/mgmi/platform/view/a;->s:J

    .line 24
    iput p1, p0, Lcom/mgmi/platform/view/a;->a:I

    return-void
.end method

.method public constructor <init>(IFII)V
    .locals 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/mgmi/platform/view/a;->e:Z

    .line 5
    iput v0, p0, Lcom/mgmi/platform/view/a;->j:I

    const-wide/16 v1, 0x0

    .line 6
    iput-wide v1, p0, Lcom/mgmi/platform/view/a;->s:J

    .line 7
    iput p1, p0, Lcom/mgmi/platform/view/a;->a:I

    .line 8
    iput p2, p0, Lcom/mgmi/platform/view/a;->b:F

    .line 9
    iput p3, p0, Lcom/mgmi/platform/view/a;->f:I

    .line 10
    iput p4, p0, Lcom/mgmi/platform/view/a;->t:I

    .line 11
    iput-boolean v0, p0, Lcom/mgmi/platform/view/a;->h:Z

    .line 12
    iput-boolean v0, p0, Lcom/mgmi/platform/view/a;->q:Z

    .line 13
    iput v0, p0, Lcom/mgmi/platform/view/a;->o:I

    .line 14
    iput-boolean v0, p0, Lcom/mgmi/platform/view/a;->r:Z

    .line 15
    iput v0, p0, Lcom/mgmi/platform/view/a;->l:I

    .line 16
    iput-boolean v0, p0, Lcom/mgmi/platform/view/a;->m:Z

    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lcom/mgmi/platform/view/a;->n:Z

    .line 18
    iput-boolean v0, p0, Lcom/mgmi/platform/view/a;->p:Z

    .line 19
    iput p2, p0, Lcom/mgmi/platform/view/a;->c:F

    return-void
.end method

.method public constructor <init>(IJII)V
    .locals 1

    long-to-float v0, p2

    .line 1
    invoke-direct {p0, p1, v0, p4, p5}, Lcom/mgmi/platform/view/a;-><init>(IFII)V

    const/16 p4, 0x9

    if-ne p4, p1, :cond_0

    .line 2
    iput-wide p2, p0, Lcom/mgmi/platform/view/a;->d:J

    :cond_0
    return-void
.end method


# virtual methods
.method public A()Lcom/mgmi/ads/api/a/i;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/platform/view/a;->G:Lcom/mgmi/ads/api/a/i;

    return-object p0
.end method

.method public B()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mgmi/platform/view/a;->s:J

    return-void
.end method

.method public C()J
    .locals 2

    iget-wide v0, p0, Lcom/mgmi/platform/view/a;->g:J

    return-wide v0
.end method

.method public D()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/platform/view/a;->E:Ljava/lang/String;

    return-object p0
.end method

.method public E()I
    .locals 0

    iget p0, p0, Lcom/mgmi/platform/view/a;->F:I

    return p0
.end method

.method public a(I)Lcom/mgmi/platform/view/a;
    .locals 0

    .line 3
    iput p1, p0, Lcom/mgmi/platform/view/a;->j:I

    return-object p0
.end method

.method public a(J)V
    .locals 0

    .line 5
    iput-wide p1, p0, Lcom/mgmi/platform/view/a;->v:J

    return-void
.end method

.method public a(Lcom/mgmi/ads/api/a/i;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/mgmi/platform/view/a;->G:Lcom/mgmi/ads/api/a/i;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mgmi/platform/view/a;->H:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/mgmi/platform/view/a;->p:Z

    return-void
.end method

.method public a()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mgmi/platform/view/a;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/mgmi/platform/view/a;->q:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public b()Lcom/mgmi/model/VASTFloatAd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgmi/platform/view/a;->k:Lcom/mgmi/model/VASTFloatAd;

    return-object p0
.end method

.method public b(I)Lcom/mgmi/platform/view/a;
    .locals 0

    .line 2
    iput p1, p0, Lcom/mgmi/platform/view/a;->o:I

    return-object p0
.end method

.method public b(J)V
    .locals 0

    .line 4
    iput-wide p1, p0, Lcom/mgmi/platform/view/a;->g:J

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/mgmi/platform/view/a;->E:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/mgmi/platform/view/a;->n:Z

    return-void
.end method

.method public c(I)Lcom/mgmi/platform/view/a;
    .locals 0

    .line 3
    iput p1, p0, Lcom/mgmi/platform/view/a;->l:I

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgmi/platform/view/a;->H:Ljava/lang/String;

    return-object p0
.end method

.method public c(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/mgmi/platform/view/a;->i:Z

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/mgmi/platform/view/a;->q:Z

    .line 2
    iput-boolean v0, p0, Lcom/mgmi/platform/view/a;->h:Z

    .line 3
    iput-boolean v0, p0, Lcom/mgmi/platform/view/a;->p:Z

    .line 4
    iput-boolean v0, p0, Lcom/mgmi/platform/view/a;->r:Z

    .line 5
    iput-boolean v0, p0, Lcom/mgmi/platform/view/a;->i:Z

    return-void
.end method

.method public d(I)V
    .locals 0

    .line 6
    iput p1, p0, Lcom/mgmi/platform/view/a;->w:I

    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 7
    iput-boolean p1, p0, Lcom/mgmi/platform/view/a;->e:Z

    return-void
.end method

.method public e(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/mgmi/platform/view/a;->y:I

    return-void
.end method

.method public e()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/mgmi/platform/view/a;->D:Z

    return p0
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/mgmi/platform/view/a;->h:Z

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mgmi/platform/view/a;->r:Z

    return-void
.end method

.method public f(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/mgmi/platform/view/a;->B:I

    return-void
.end method

.method public g(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/mgmi/platform/view/a;->C:I

    return-void
.end method

.method public g()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/mgmi/platform/view/a;->j:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/mgmi/platform/view/a;->r:Z

    return p0
.end method

.method public h(I)Z
    .locals 4

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    iget-wide v2, p0, Lcom/mgmi/platform/view/a;->s:J

    sub-long/2addr v0, v2

    int-to-long p0, p1

    cmp-long p0, v0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/mgmi/platform/view/a;->r:Z

    return-void
.end method

.method public i(I)Z
    .locals 4

    .line 2
    iget-wide v0, p0, Lcom/mgmi/platform/view/a;->s:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mgmi/platform/view/a;->h(I)Z

    move-result p0

    return p0
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/mgmi/platform/view/a;->q:Z

    return-void
.end method

.method public j(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/mgmi/platform/view/a;->F:I

    return-void
.end method

.method public k()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgmi/platform/view/a;->p:Z

    return p0
.end method

.method public l()Z
    .locals 1

    iget p0, p0, Lcom/mgmi/platform/view/a;->f:I

    const v0, 0x8954b2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public m()J
    .locals 2

    iget-wide v0, p0, Lcom/mgmi/platform/view/a;->v:J

    return-wide v0
.end method

.method public n()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgmi/platform/view/a;->m:Z

    return p0
.end method

.method public o()Z
    .locals 1

    iget p0, p0, Lcom/mgmi/platform/view/a;->t:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public p()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgmi/platform/view/a;->n:Z

    return p0
.end method

.method public q()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgmi/platform/view/a;->h:Z

    return p0
.end method

.method public r()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgmi/platform/view/a;->i:Z

    return p0
.end method

.method public s()I
    .locals 0

    iget p0, p0, Lcom/mgmi/platform/view/a;->a:I

    return p0
.end method

.method public t()F
    .locals 0

    iget p0, p0, Lcom/mgmi/platform/view/a;->b:F

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdTimeEntry{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mgmi/platform/view/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mgmi/platform/view/a;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", rollNextTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mgmi/platform/view/a;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", longLiveTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/mgmi/platform/view/a;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", isMqtt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mgmi/platform/view/a;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", adid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mgmi/platform/view/a;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", catterTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/mgmi/platform/view/a;->g:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", used="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mgmi/platform/view/a;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isTickMills="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mgmi/platform/view/a;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", localEntry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mgmi/platform/view/a;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", localVastData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgmi/platform/view/a;->k:Lcom/mgmi/model/VASTFloatAd;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fixed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mgmi/platform/view/a;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mClosed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mgmi/platform/view/a;->m:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasRender="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mgmi/platform/view/a;->n:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mcls_req="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mgmi/platform/view/a;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hasCountdown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mgmi/platform/view/a;->p:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", startPlay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mgmi/platform/view/a;->q:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", getData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mgmi/platform/view/a;->r:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mTickBuild="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/mgmi/platform/view/a;->s:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mReq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mgmi/platform/view/a;->t:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPlainId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgmi/platform/view/a;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", trigger_nt="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/mgmi/platform/view/a;->v:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", prePlayTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mgmi/platform/view/a;->w:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", reqType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mgmi/platform/view/a;->x:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", showType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mgmi/platform/view/a;->y:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", extraType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgmi/platform/view/a;->z:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", extra=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgmi/platform/view/a;->A:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", daoTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mgmi/platform/view/a;->B:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", imp_tp="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mgmi/platform/view/a;->C:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", hasReqData="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mgmi/platform/view/a;->D:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", gid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgmi/platform/view/a;->E:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", cnt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mgmi/platform/view/a;->F:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mBaseAdsLoader="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/mgmi/platform/view/a;->G:Lcom/mgmi/ads/api/a/i;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public u()J
    .locals 4

    iget-wide v0, p0, Lcom/mgmi/platform/view/a;->d:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget p0, p0, Lcom/mgmi/platform/view/a;->b:F

    float-to-long v0, p0

    :cond_0
    return-wide v0
.end method

.method public v()I
    .locals 0

    iget p0, p0, Lcom/mgmi/platform/view/a;->f:I

    return p0
.end method

.method public w()Z
    .locals 1

    iget p0, p0, Lcom/mgmi/platform/view/a;->l:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public x()I
    .locals 0

    iget p0, p0, Lcom/mgmi/platform/view/a;->w:I

    return p0
.end method

.method public y()I
    .locals 0

    iget p0, p0, Lcom/mgmi/platform/view/a;->y:I

    return p0
.end method

.method public z()I
    .locals 0

    iget p0, p0, Lcom/mgmi/platform/view/a;->C:I

    return p0
.end method
