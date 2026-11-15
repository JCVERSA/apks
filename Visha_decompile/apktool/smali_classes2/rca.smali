.class public final Lrca;
.super Lr17;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lr17;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public r()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public s()V
    .locals 2

    invoke-virtual {p0}, Lr17;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lied$b;

    invoke-direct {v0}, Lied$b;-><init>()V

    invoke-virtual {p0}, Lrca;->r()I

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

    new-instance v1, Lvnd;

    invoke-direct {v1, v0}, Lvnd;-><init>(Lied;)V

    new-instance v0, Lr17$a;

    invoke-direct {v0, p0}, Lr17$a;-><init>(Lr17;)V

    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/G;->g(Lcom/cloud/hisavana/sdk/api/listener/AdCallback;)V

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/G;->E()V

    return-void
.end method

.method public t()V
    .locals 2

    iget-object v0, p0, Lr17;->a:Lcom/cloud/hisavana/sdk/G;

    instance-of v1, v0, Lvnd;

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
    iget-object v0, p0, Lr17;->l:Landroidx/collection/ArraySet;

    iget-object v1, p0, Lr17;->a:Lcom/cloud/hisavana/sdk/G;

    invoke-virtual {v0, v1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    iget-object p0, p0, Lr17;->a:Lcom/cloud/hisavana/sdk/G;

    check-cast p0, Lvnd;

    invoke-virtual {p0}, Lvnd;->M()V

    :cond_1
    return-void
.end method
