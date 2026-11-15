.class public Lno7;
.super LOppOOp0/OppO0O0;
.source "SourceFile"


# instance fields
.field public final synthetic k:Lnm7;


# direct methods
.method public constructor <init>(Lnm7;Landroid/content/Context;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lno7;->k:Lnm7;

    invoke-direct {p0, p2, p3}, LOppOOp0/OppO0O0;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public b(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 0

    check-cast p2, Lcom/transsion/xuanniao/account/model/data/BaseEncryptRes;

    iget-object p1, p0, Lno7;->k:Lnm7;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lno7;->k:Lnm7;

    invoke-virtual {p1}, Lnm7;->c()Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    iget-object p1, p0, Lno7;->k:Lnm7;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p1, Lxk7;

    invoke-interface {p1}, Lxk7;->Y()V

    iget-object p0, p0, Lno7;->k:Lnm7;

    invoke-virtual {p0}, Lnm7;->c()Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;

    move-result-object p0

    invoke-static {p0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p0

    const/4 p1, 0x1

    const-string p2, ""

    invoke-virtual {p0, p1, p2}, Lxj;->v1(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public d(Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lno7;->k:Lnm7;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lno7;->k:Lnm7;

    invoke-virtual {v0}, Lnm7;->c()Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;

    move-result-object v0

    invoke-static {v0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object v0

    iget v1, p1, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;->code:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lxj;->v1(ILjava/lang/String;)V

    iget v0, p1, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;->code:I

    const v1, 0x61a89

    if-ne v0, v1, :cond_1

    iget-object p1, p0, Lno7;->k:Lnm7;

    invoke-virtual {p1}, Lnm7;->c()Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    iget-object p0, p0, Lno7;->k:Lnm7;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p0, Lxk7;

    invoke-interface {p0}, Lxk7;->g0()V

    goto :goto_0

    :cond_1
    const v1, 0x61c20

    if-ne v0, v1, :cond_2

    iget-object p1, p0, Lno7;->k:Lnm7;

    invoke-virtual {p1}, Lnm7;->c()Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    iget-object p1, p0, Lno7;->k:Lnm7;

    invoke-virtual {p1}, Lnm7;->c()Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;

    move-result-object p1

    iget-object p0, p0, Lno7;->k:Lnm7;

    invoke-virtual {p0}, Lnm7;->c()Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;

    move-result-object p0

    sget p2, Lcom/transsion/xuanniao/account/R$string;->xn_pwd_too_weak:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->y0(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const v1, 0x61aec

    if-ne v0, v1, :cond_3

    iget-object p1, p0, Lno7;->k:Lnm7;

    invoke-virtual {p1}, Lnm7;->c()Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    iget-object p1, p0, Lno7;->k:Lnm7;

    invoke-virtual {p1}, Lnm7;->c()Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;

    move-result-object p1

    iget-object p0, p0, Lno7;->k:Lnm7;

    invoke-virtual {p0}, Lnm7;->c()Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;

    move-result-object p0

    sget p2, Lcom/transsion/xuanniao/account/R$string;->xn_frequent_operation_pwd:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->y0(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-super {p0, p1, p2}, LOppOOp0/OppO0O0;->d(Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lno7;->k:Lnm7;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lno7;->k:Lnm7;

    invoke-virtual {p0}, Lnm7;->d()V

    return-void
.end method
