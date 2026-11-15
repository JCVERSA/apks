.class public Lnm7;
.super Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;
.source "SourceFile"


# instance fields
.field public b:Lbq7;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:I

.field public h:Lml7;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;-><init>()V

    new-instance v0, Lbq7;

    invoke-direct {v0}, Lbq7;-><init>()V

    iput-object v0, p0, Lnm7;->b:Lbq7;

    return-void
.end method


# virtual methods
.method public b(J)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lnm7;->h:Lml7;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lml7;->a()V

    :cond_0
    new-instance v0, Lml7;

    new-instance v1, Lnm7$b;

    invoke-direct {v1, p0}, Lnm7$b;-><init>(Lnm7;)V

    invoke-direct {v0, v1}, Lml7;-><init>(Lml7$b;)V

    iput-object v0, p0, Lnm7;->h:Lml7;

    iput-wide p1, v0, Lml7;->b:J

    invoke-virtual {v0}, Lml7;->c()V

    :cond_1
    return-void
.end method

.method public final c()Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p0, Lxk7;

    invoke-interface {p0}, Ljk7;->J()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;

    return-object p0
.end method

.method public d()V
    .locals 6

    iget v0, p0, Lnm7;->g:I

    const/4 v1, 0x1

    const-class v2, Lcom/transsion/xuanniao/account/model/data/BaseEncryptRes;

    const-string v3, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC591VlH9xM+TZYuWM4WZnxKYryc6xrGWco+jDFRfMNyLmET3bcEPnaCkZNcuVxjFvofiXfN4yNXFFY7iSysLzZ5GdnvAwYne8ONRxJuX2ixvMYduBhaPj2AAfEHZ6H3yo2kV6q8CX3CGzmLkz8pDPia9wmafjXSxObaPFgOEF0GwIDAQAB"

    if-ne v0, v1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Lnm7;->c()Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;

    move-result-object v0

    invoke-virtual {p0}, Lnm7;->c()Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;

    move-result-object v1

    sget v4, Lcom/transsion/xuanniao/account/R$string;->xn_loading:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->u0(Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/xuanniao/account/model/data/ResetPwdReq;

    invoke-direct {v0}, Lcom/transsion/xuanniao/account/model/data/ResetPwdReq;-><init>()V

    iget-object v1, p0, Lnm7;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/xuanniao/account/model/data/ResetPwdReq;->email:Ljava/lang/String;

    iget-object v1, p0, Lnm7;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/xuanniao/account/model/data/ResetPwdReq;->phone:Ljava/lang/String;

    iget-object v1, p0, Lnm7;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/xuanniao/account/model/data/ResetPwdReq;->ticket:Ljava/lang/String;

    iget-object v1, p0, Lnm7;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/xuanniao/account/model/data/ResetPwdReq;->verificationCode:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast v1, Lxk7;

    invoke-interface {v1}, Lxk7;->A()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lnr7;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/xuanniao/account/model/data/ResetPwdReq;->password:Ljava/lang/String;

    iget-object v1, p0, Lnm7;->b:Lbq7;

    invoke-virtual {p0}, Lnm7;->c()Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;

    move-result-object v3

    new-instance v4, Lno7;

    invoke-virtual {p0}, Lnm7;->c()Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;

    move-result-object v5

    invoke-direct {v4, p0, v5, v2}, Lno7;-><init>(Lnm7;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v3, v0, v4}, Lbq7;->a(Landroid/content/Context;Lcom/transsion/xuanniao/account/model/data/ResetPwdReq;LOppOOp0/OppO0O0;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p0}, Lnm7;->c()Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    invoke-virtual {p0}, Lnm7;->c()Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;

    move-result-object v0

    invoke-virtual {p0}, Lnm7;->c()Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;

    move-result-object p0

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_net_unavailable:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->y0(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast v0, Lxk7;

    invoke-interface {v0}, Lxk7;->A()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lnr7;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnm7;->b:Lbq7;

    invoke-virtual {p0}, Lnm7;->c()Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;

    move-result-object v3

    new-instance v4, Lpn7;

    invoke-virtual {p0}, Lnm7;->c()Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;

    move-result-object v5

    invoke-direct {v4, p0, v5, v2}, Lpn7;-><init>(Lnm7;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v3, v0, v4}, Lbq7;->c(Landroid/content/Context;Ljava/lang/String;LOppOOp0/OppO0O0;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p0}, Lnm7;->c()Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    invoke-virtual {p0}, Lnm7;->c()Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;

    move-result-object v0

    invoke-virtual {p0}, Lnm7;->c()Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;

    move-result-object p0

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_net_unavailable:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->y0(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public e()V
    .locals 6

    :try_start_0
    invoke-virtual {p0}, Lnm7;->c()Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;

    move-result-object v0

    invoke-virtual {p0}, Lnm7;->c()Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;

    move-result-object v1

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_loading:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->u0(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast v0, Lxk7;

    invoke-interface {v0}, Lxk7;->j0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC591VlH9xM+TZYuWM4WZnxKYryc6xrGWco+jDFRfMNyLmET3bcEPnaCkZNcuVxjFvofiXfN4yNXFFY7iSysLzZ5GdnvAwYne8ONRxJuX2ixvMYduBhaPj2AAfEHZ6H3yo2kV6q8CX3CGzmLkz8pDPia9wmafjXSxObaPFgOEF0GwIDAQAB"

    invoke-static {v0, v1}, Lnr7;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnm7;->b:Lbq7;

    invoke-virtual {p0}, Lnm7;->c()Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;

    move-result-object v2

    new-instance v3, Lnm7$a;

    invoke-virtual {p0}, Lnm7;->c()Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;

    move-result-object v4

    const-class v5, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;

    invoke-direct {v3, p0, v4, v5}, Lnm7$a;-><init>(Lnm7;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2, v0, v3}, Lbq7;->b(Landroid/content/Context;Ljava/lang/String;LOppOOp0/OppO0O0;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p0}, Lnm7;->c()Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    invoke-virtual {p0}, Lnm7;->c()Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;

    move-result-object v0

    invoke-virtual {p0}, Lnm7;->c()Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;

    move-result-object p0

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_net_unavailable:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->y0(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
