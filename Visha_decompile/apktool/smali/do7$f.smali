.class public Ldo7$f;
.super LOppOOp0/OppO0O0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldo7;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic k:Ldo7;


# direct methods
.method public constructor <init>(Ldo7;Landroid/content/Context;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Ldo7$f;->k:Ldo7;

    invoke-direct {p0, p2, p3}, LOppOOp0/OppO0O0;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public b(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 3

    check-cast p2, Lcom/transsion/xuanniao/account/model/data/AcquireCodeRes;

    iget-object p1, p0, Ldo7$f;->k:Ldo7;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    iget-object p1, p0, Ldo7$f;->k:Ldo7;

    invoke-virtual {p1}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->A0()V

    iget-object p1, p0, Ldo7$f;->k:Ldo7;

    const/4 p2, 0x0

    iput-object p2, p1, Ldo7;->g:Ljava/lang/String;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p1, Lkn7;

    invoke-interface {p1}, Lkn7;->t()I

    move-result p1

    const/4 p2, 0x3

    const/4 p3, 0x1

    if-ne p1, p2, :cond_1

    move p1, p3

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Ldo7$f;->k:Ldo7;

    invoke-virtual {p2}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object p2

    invoke-static {p2}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p2

    const-string v0, "Mail"

    const-string v1, "Phone"

    if-eqz p1, :cond_2

    move-object v2, v1

    goto :goto_1

    :cond_2
    move-object v2, v0

    :goto_1
    invoke-virtual {p2, v2}, Lxj;->E1(Ljava/lang/String;)V

    iget-object p2, p0, Ldo7$f;->k:Ldo7;

    invoke-virtual {p2}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object p2

    invoke-static {p2}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p2

    if-eqz p1, :cond_3

    move-object v0, v1

    :cond_3
    iget-object p1, p0, Ldo7$f;->k:Ldo7;

    iget p1, p1, Ldo7;->o:I

    const-string v1, ""

    invoke-virtual {p2, p3, v1, v0, p1}, Lxj;->X(ILjava/lang/String;Ljava/lang/String;I)V

    iget-object p0, p0, Ldo7$f;->k:Ldo7;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p0, Lkn7;

    invoke-interface {p0}, Lkn7;->a()V

    :goto_2
    return-void
.end method

.method public d(Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Ldo7$f;->k:Ldo7;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ldo7$f;->k:Ldo7;

    iget-object v0, v0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast v0, Lkn7;

    invoke-interface {v0}, Lkn7;->t()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget-object v1, p0, Ldo7$f;->k:Ldo7;

    invoke-virtual {v1}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object v1

    invoke-static {v1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object v1

    iget v3, p1, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;->code:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Mail"

    const-string v5, "Phone"

    if-eqz v0, :cond_2

    move-object v6, v5

    goto :goto_1

    :cond_2
    move-object v6, v4

    :goto_1
    iget-object v7, p0, Ldo7$f;->k:Ldo7;

    iget v7, v7, Ldo7;->o:I

    invoke-virtual {v1, v2, v3, v6, v7}, Lxj;->X(ILjava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Ldo7$f;->k:Ldo7;

    invoke-virtual {v1}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->A0()V

    iget-object v1, p0, Ldo7$f;->k:Ldo7;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ldo7;->g(Ljava/lang/String;)V

    iget v1, p1, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;->code:I

    const v2, 0x61c18

    if-ne v1, v2, :cond_4

    iget-object p1, p0, Ldo7$f;->k:Ldo7;

    invoke-virtual {p1}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object p1

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    if-eqz v0, :cond_3

    move-object v4, v5

    :cond_3
    invoke-virtual {p1, v4}, Lxj;->C1(Ljava/lang/String;)V

    iget-object p0, p0, Ldo7$f;->k:Ldo7;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p0, Lkn7;

    invoke-interface {p0}, Lkn7;->e()V

    goto :goto_2

    :cond_4
    const v2, 0x61c19

    if-ne v1, v2, :cond_6

    iget-object p1, p0, Ldo7$f;->k:Ldo7;

    invoke-virtual {p1}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object p1

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    if-eqz v0, :cond_5

    move-object v4, v5

    :cond_5
    invoke-virtual {p1, v4}, Lxj;->C1(Ljava/lang/String;)V

    iget-object p0, p0, Ldo7$f;->k:Ldo7;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p0, Lkn7;

    invoke-interface {p0}, Lkn7;->b()V

    goto :goto_2

    :cond_6
    const v0, 0x61ae4

    if-ne v1, v0, :cond_7

    iget-object p1, p0, Ldo7$f;->k:Ldo7;

    invoke-virtual {p1}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object p1

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    invoke-virtual {p1}, Lxj;->g1()V

    iget-object p0, p0, Ldo7$f;->k:Ldo7;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p0, Lkn7;

    invoke-interface {p0}, Lkn7;->L()V

    goto :goto_2

    :cond_7
    invoke-super {p0, p1, p2}, LOppOOp0/OppO0O0;->d(Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Ldo7$f;->k:Ldo7;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Ldo7$f;->k:Ldo7;

    invoke-virtual {p0}, Ldo7;->h()V

    return-void
.end method
