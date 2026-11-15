.class public Lwca;
.super Lr17;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwca$a;
    }
.end annotation


# instance fields
.field public n:Landroid/view/View;

.field public o:Ljf7;

.field public p:Landroid/content/Context;

.field public q:Ljava/lang/String;

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Ljava/lang/Float;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Lr17;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lwca;->r:Z

    iput-boolean p2, p0, Lwca;->s:Z

    iput-boolean p2, p0, Lwca;->t:Z

    iput-object p1, p0, Lwca;->p:Landroid/content/Context;

    return-void
.end method

.method public static synthetic s(Lwca;)Ljf7;
    .locals 0

    iget-object p0, p0, Lwca;->o:Ljf7;

    return-object p0
.end method


# virtual methods
.method public b()V
    .locals 1

    invoke-super {p0}, Lr17;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lwca;->n:Landroid/view/View;

    return-void
.end method

.method public r()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public setSkipListener(Ljf7;)V
    .locals 0

    iput-object p1, p0, Lwca;->o:Ljf7;

    return-void
.end method

.method public t()V
    .locals 3

    iget-boolean v0, p0, Lwca;->r:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lwca;->p:Landroid/content/Context;

    iget-object v1, p0, Lwca;->q:Ljava/lang/String;

    iget-boolean v2, p0, Lwca;->s:Z

    invoke-static {v0, v1, v2}, Lr6;->s(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    invoke-virtual {p0}, Lr17;->a()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lied$b;

    invoke-direct {v0}, Lied$b;-><init>()V

    invoke-virtual {p0}, Lwca;->r()I

    move-result v1

    invoke-virtual {v0, v1}, Lied$b;->i(I)Lied$b;

    move-result-object v0

    iget-object v1, p0, Lr17;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lied$b;->e(Ljava/lang/String;)Lied$b;

    move-result-object v0

    iget-boolean v1, p0, Lr17;->c:Z

    invoke-virtual {v0, v1}, Lied$b;->s(Z)Lied$b;

    move-result-object v0

    iget v1, p0, Lr17;->d:I

    invoke-virtual {v0, v1}, Lied$b;->m(I)Lied$b;

    move-result-object v0

    iget-boolean v1, p0, Lr17;->e:Z

    invoke-virtual {v0, v1}, Lied$b;->k(Z)Lied$b;

    move-result-object v0

    iget-object v1, p0, Lr17;->j:Ld29;

    invoke-virtual {v0, v1}, Lied$b;->c(Ld29;)Lied$b;

    move-result-object v0

    iget-object v1, p0, Lr17;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lied$b;->j(Ljava/lang/String;)Lied$b;

    move-result-object v0

    iget-boolean v1, p0, Lr17;->g:Z

    invoke-virtual {v0, v1}, Lied$b;->p(Z)Lied$b;

    move-result-object v0

    iget-boolean v1, p0, Lr17;->h:Z

    invoke-virtual {v0, v1}, Lied$b;->w(Z)Lied$b;

    move-result-object v0

    iget-object v1, p0, Lr17;->i:Lw6;

    invoke-virtual {v0, v1}, Lied$b;->b(Lw6;)Lied$b;

    move-result-object v0

    invoke-virtual {v0}, Lied$b;->g()Lied;

    move-result-object v0

    new-instance v1, Lcom/cloud/hisavana/sdk/q1;

    invoke-direct {v1, v0}, Lcom/cloud/hisavana/sdk/q1;-><init>(Lied;)V

    new-instance v0, Lwca$a;

    invoke-direct {v0, p0}, Lwca$a;-><init>(Lwca;)V

    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/G;->g(Lcom/cloud/hisavana/sdk/api/listener/AdCallback;)V

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/G;->E()V

    return-void
.end method

.method public u(Ljava/lang/String;Z)Lwca;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lwca;->r:Z

    iput-object p1, p0, Lwca;->q:Ljava/lang/String;

    iput-boolean p2, p0, Lwca;->s:Z

    return-object p0
.end method

.method public v(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lwca;->n:Landroid/view/View;

    return-void
.end method

.method public w(Ljava/lang/Float;)V
    .locals 0

    iput-object p1, p0, Lwca;->u:Ljava/lang/Float;

    return-void
.end method

.method public x()V
    .locals 4

    iget-object v0, p0, Lr17;->a:Lcom/cloud/hisavana/sdk/G;

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/cloud/hisavana/sdk/q1;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/G;->p()Lied;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lied;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lr17;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lied;->f(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lr17;->a:Lcom/cloud/hisavana/sdk/G;

    check-cast v0, Lcom/cloud/hisavana/sdk/q1;

    iget-boolean v1, p0, Lwca;->t:Z

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/q1;->s0(Z)V

    iget-object v0, p0, Lr17;->a:Lcom/cloud/hisavana/sdk/G;

    check-cast v0, Lcom/cloud/hisavana/sdk/q1;

    iget-object v1, p0, Lwca;->u:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/q1;->j0(Ljava/lang/Float;)V

    iget-object v0, p0, Lr17;->a:Lcom/cloud/hisavana/sdk/G;

    check-cast v0, Lcom/cloud/hisavana/sdk/q1;

    iget-object v1, p0, Lwca;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/q1;->q0(Landroid/view/View;)V

    iget-object v0, p0, Lr17;->l:Landroidx/collection/ArraySet;

    iget-object v1, p0, Lr17;->a:Lcom/cloud/hisavana/sdk/G;

    invoke-virtual {v0, v1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Likd;->b()Likd;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TSplash show error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "ssp"

    invoke-virtual {v1, v2, v0}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lr17;->a:Lcom/cloud/hisavana/sdk/G;

    check-cast v0, Lcom/cloud/hisavana/sdk/q1;

    iget-object p0, p0, Lwca;->p:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/cloud/hisavana/sdk/q1;->p0(Landroid/content/Context;)V

    :cond_1
    return-void
.end method
