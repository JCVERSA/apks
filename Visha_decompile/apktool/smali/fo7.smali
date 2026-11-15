.class public Lfo7;
.super Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;
.source "SourceFile"


# instance fields
.field public b:Lhq7;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Lml7;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;-><init>()V

    new-instance v0, Lhq7;

    const-string v1, "RESET_PASSWORD"

    invoke-direct {v0, v1}, Lhq7;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lfo7;->b:Lhq7;

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

    iget-object v0, p0, Lfo7;->e:Lml7;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lml7;->a()V

    :cond_0
    new-instance v0, Lml7;

    new-instance v1, Lfo7$b;

    invoke-direct {v1, p0}, Lfo7$b;-><init>(Lfo7;)V

    invoke-direct {v0, v1}, Lml7;-><init>(Lml7$b;)V

    iput-object v0, p0, Lfo7;->e:Lml7;

    iput-wide p1, v0, Lml7;->b:J

    invoke-virtual {v0}, Lml7;->c()V

    :cond_1
    return-void
.end method

.method public c()V
    .locals 5

    iget-object v0, p0, Lfo7;->b:Lhq7;

    invoke-virtual {p0}, Lfo7;->e()Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity;

    move-result-object v1

    new-instance v2, Lfo7$a;

    invoke-virtual {p0}, Lfo7;->e()Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity;

    move-result-object v3

    const-class v4, Lcom/transsion/xuanniao/account/model/data/CaptchaRes;

    invoke-direct {v2, p0, v3, v4}, Lfo7$a;-><init>(Lfo7;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Lhq7;->a(Landroid/content/Context;LOppOOp0/OppO0O0;)V

    return-void
.end method

.method public d()V
    .locals 6

    invoke-virtual {p0}, Lfo7;->e()Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity;

    move-result-object v0

    invoke-virtual {p0}, Lfo7;->e()Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity;

    move-result-object v1

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_loading:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->u0(Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/xuanniao/account/model/data/AcquireCodeReq;

    invoke-direct {v0}, Lcom/transsion/xuanniao/account/model/data/AcquireCodeReq;-><init>()V

    iget-object v1, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast v1, Ldm7;

    invoke-interface {v1}, Ldm7;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/model/data/AcquireCodeReq;->setCaptchaCode(Ljava/lang/String;)V

    iget-object v1, p0, Lfo7;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/model/data/AcquireCodeReq;->setCaptchaTicket(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast v1, Ldm7;

    invoke-interface {v1}, Ldm7;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/model/data/AcquireCodeReq;->setEmail(Ljava/lang/String;)V

    iget-object v1, p0, Lfo7;->b:Lhq7;

    invoke-virtual {p0}, Lfo7;->e()Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity;

    move-result-object v2

    new-instance v3, Lfo7$c;

    invoke-virtual {p0}, Lfo7;->e()Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity;

    move-result-object v4

    const-class v5, Lcom/transsion/xuanniao/account/model/data/AcquireCodeRes;

    invoke-direct {v3, p0, v4, v5}, Lfo7$c;-><init>(Lfo7;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2, v0, v3}, Lhq7;->b(Landroid/content/Context;Lcom/transsion/xuanniao/account/model/data/AcquireCodeReq;LOppOOp0/OppO0O0;)V

    return-void
.end method

.method public final e()Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p0, Ldm7;

    invoke-interface {p0}, Ljk7;->J()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity;

    return-object p0
.end method

.method public f()V
    .locals 6

    iget-object v0, p0, Lfo7;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lfo7;->e()Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity;

    move-result-object v0

    invoke-static {v0}, Ltl7;->c(Landroid/content/Context;)Ltl7;

    move-result-object v0

    iget-object v0, v0, Lkk7;->a:Landroid/content/SharedPreferences;

    const-string v1, "ems_ticket"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfo7;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast v0, Ldm7;

    invoke-interface {v0}, Ldm7;->d()V

    :cond_0
    invoke-virtual {p0}, Lfo7;->e()Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity;

    move-result-object v0

    invoke-virtual {p0}, Lfo7;->e()Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity;

    move-result-object v1

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_loading_verify_account:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->u0(Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/xuanniao/account/model/data/VerifyCodeReq;

    invoke-direct {v0}, Lcom/transsion/xuanniao/account/model/data/VerifyCodeReq;-><init>()V

    iget-object v1, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast v1, Ldm7;

    invoke-interface {v1}, Ldm7;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/model/data/VerifyCodeReq;->setEmail(Ljava/lang/String;)V

    iget-object v1, p0, Lfo7;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/model/data/VerifyCodeReq;->setTicket(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast v1, Ldm7;

    invoke-interface {v1}, Ldm7;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/model/data/VerifyCodeReq;->setVerificationCode(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lfo7;->b:Lhq7;

    invoke-virtual {p0}, Lfo7;->e()Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity;

    move-result-object v2

    new-instance v3, Lfo7$d;

    invoke-virtual {p0}, Lfo7;->e()Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity;

    move-result-object v4

    const-class v5, Lcom/transsion/xuanniao/account/model/data/VerifyCodeRes;

    invoke-direct {v3, p0, v4, v5}, Lfo7$d;-><init>(Lfo7;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2, v0, v3}, Lhq7;->c(Landroid/content/Context;Lcom/transsion/xuanniao/account/model/data/VerifyCodeReq;LOppOOp0/OppO0O0;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p0}, Lfo7;->e()Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    invoke-virtual {p0}, Lfo7;->e()Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity;

    move-result-object v0

    invoke-virtual {p0}, Lfo7;->e()Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity;

    move-result-object p0

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_net_unavailable:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->y0(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
