.class public Lbk7;
.super Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;
.source "SourceFile"


# instance fields
.field public b:Lvk7;

.field public c:Lhq7;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Lml7;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;-><init>()V

    new-instance v0, Lvk7;

    invoke-direct {v0}, Lvk7;-><init>()V

    iput-object v0, p0, Lbk7;->b:Lvk7;

    new-instance v0, Lhq7;

    const-string v1, "BIND"

    invoke-direct {v0, v1}, Lhq7;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lbk7;->c:Lhq7;

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

    iget-object v0, p0, Lbk7;->f:Lml7;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lml7;->a()V

    :cond_0
    new-instance v0, Lml7;

    new-instance v1, Lbk7$c;

    invoke-direct {v1, p0}, Lbk7$c;-><init>(Lbk7;)V

    invoke-direct {v0, v1}, Lml7;-><init>(Lml7$b;)V

    iput-object v0, p0, Lbk7;->f:Lml7;

    iput-wide p1, v0, Lml7;->b:J

    invoke-virtual {v0}, Lml7;->c()V

    :cond_1
    return-void
.end method

.method public c()V
    .locals 5

    iget-object v0, p0, Lbk7;->c:Lhq7;

    invoke-virtual {p0}, Lbk7;->e()Lcom/transsion/xuanniao/account/bind/email/view/BindingEmailActivity;

    move-result-object v1

    new-instance v2, Lbk7$b;

    invoke-virtual {p0}, Lbk7;->e()Lcom/transsion/xuanniao/account/bind/email/view/BindingEmailActivity;

    move-result-object v3

    const-class v4, Lcom/transsion/xuanniao/account/model/data/CaptchaRes;

    invoke-direct {v2, p0, v3, v4}, Lbk7$b;-><init>(Lbk7;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Lhq7;->a(Landroid/content/Context;LOppOOp0/OppO0O0;)V

    return-void
.end method

.method public d()V
    .locals 6

    invoke-virtual {p0}, Lbk7;->e()Lcom/transsion/xuanniao/account/bind/email/view/BindingEmailActivity;

    move-result-object v0

    invoke-virtual {p0}, Lbk7;->e()Lcom/transsion/xuanniao/account/bind/email/view/BindingEmailActivity;

    move-result-object v1

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_loading:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->u0(Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/xuanniao/account/model/data/AcquireCodeReq;

    invoke-direct {v0}, Lcom/transsion/xuanniao/account/model/data/AcquireCodeReq;-><init>()V

    iget-object v1, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast v1, Ljm7;

    invoke-interface {v1}, Ljm7;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/model/data/AcquireCodeReq;->setCaptchaCode(Ljava/lang/String;)V

    iget-object v1, p0, Lbk7;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/model/data/AcquireCodeReq;->setCaptchaTicket(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast v1, Ljm7;

    invoke-interface {v1}, Ljm7;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/model/data/AcquireCodeReq;->setEmail(Ljava/lang/String;)V

    iget-object v1, p0, Lbk7;->c:Lhq7;

    invoke-virtual {p0}, Lbk7;->e()Lcom/transsion/xuanniao/account/bind/email/view/BindingEmailActivity;

    move-result-object v2

    new-instance v3, Lbk7$d;

    invoke-virtual {p0}, Lbk7;->e()Lcom/transsion/xuanniao/account/bind/email/view/BindingEmailActivity;

    move-result-object v4

    const-class v5, Lcom/transsion/xuanniao/account/model/data/AcquireCodeRes;

    invoke-direct {v3, p0, v4, v5}, Lbk7$d;-><init>(Lbk7;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2, v0, v3}, Lhq7;->b(Landroid/content/Context;Lcom/transsion/xuanniao/account/model/data/AcquireCodeReq;LOppOOp0/OppO0O0;)V

    return-void
.end method

.method public e()Lcom/transsion/xuanniao/account/bind/email/view/BindingEmailActivity;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p0, Ljm7;

    invoke-interface {p0}, Ljk7;->J()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/transsion/xuanniao/account/bind/email/view/BindingEmailActivity;

    return-object p0
.end method

.method public f()V
    .locals 6

    invoke-virtual {p0}, Lbk7;->e()Lcom/transsion/xuanniao/account/bind/email/view/BindingEmailActivity;

    move-result-object v0

    invoke-virtual {p0}, Lbk7;->e()Lcom/transsion/xuanniao/account/bind/email/view/BindingEmailActivity;

    move-result-object v1

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_loading:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->u0(Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/xuanniao/account/model/data/BindReq;

    invoke-direct {v0}, Lcom/transsion/xuanniao/account/model/data/BindReq;-><init>()V

    iget-object v1, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast v1, Ljm7;

    invoke-interface {v1}, Ljm7;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/model/data/BindReq;->setEmail(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast v1, Ljm7;

    invoke-interface {v1}, Ljm7;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/model/data/BindReq;->setVerificationCode(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lbk7;->b:Lvk7;

    invoke-virtual {p0}, Lbk7;->e()Lcom/transsion/xuanniao/account/bind/email/view/BindingEmailActivity;

    move-result-object v2

    new-instance v3, Lbk7$a;

    invoke-virtual {p0}, Lbk7;->e()Lcom/transsion/xuanniao/account/bind/email/view/BindingEmailActivity;

    move-result-object v4

    const-class v5, Lcom/transsion/xuanniao/account/model/data/EncryptRes;

    invoke-direct {v3, p0, v4, v5}, Lbk7$a;-><init>(Lbk7;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2, v0, v3}, Lvk7;->b(Landroid/content/Context;Lcom/transsion/xuanniao/account/model/data/BindReq;LOppOOp0/OppO0O0;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p0}, Lbk7;->e()Lcom/transsion/xuanniao/account/bind/email/view/BindingEmailActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    invoke-virtual {p0}, Lbk7;->e()Lcom/transsion/xuanniao/account/bind/email/view/BindingEmailActivity;

    move-result-object v0

    invoke-virtual {p0}, Lbk7;->e()Lcom/transsion/xuanniao/account/bind/email/view/BindingEmailActivity;

    move-result-object p0

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_net_unavailable:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->y0(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
