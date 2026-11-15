.class public Lup7;
.super Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;
.source "SourceFile"


# instance fields
.field public b:Lhq7;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Lml7;

.field public h:Lcom/transsion/xuanniao/account/model/data/CountryData;

.field public i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;-><init>()V

    new-instance v0, Lhq7;

    const-string v1, "RESET_PASSWORD"

    invoke-direct {v0, v1}, Lhq7;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lup7;->b:Lhq7;

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

    iget-object v0, p0, Lup7;->g:Lml7;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lml7;->a()V

    :cond_0
    new-instance v0, Lml7;

    new-instance v1, Lup7$b;

    invoke-direct {v1, p0}, Lup7$b;-><init>(Lup7;)V

    invoke-direct {v0, v1}, Lml7;-><init>(Lml7$b;)V

    iput-object v0, p0, Lup7;->g:Lml7;

    iput-wide p1, v0, Lml7;->b:J

    invoke-virtual {v0}, Lml7;->c()V

    :cond_1
    return-void
.end method

.method public c()V
    .locals 5

    iget-object v0, p0, Lup7;->b:Lhq7;

    invoke-virtual {p0}, Lup7;->e()Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;

    move-result-object v1

    new-instance v2, Lup7$a;

    invoke-virtual {p0}, Lup7;->e()Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;

    move-result-object v3

    const-class v4, Lcom/transsion/xuanniao/account/model/data/CaptchaRes;

    invoke-direct {v2, p0, v3, v4}, Lup7$a;-><init>(Lup7;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Lhq7;->a(Landroid/content/Context;LOppOOp0/OppO0O0;)V

    return-void
.end method

.method public d()V
    .locals 6

    invoke-virtual {p0}, Lup7;->e()Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;

    move-result-object v0

    invoke-virtual {p0}, Lup7;->e()Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;

    move-result-object v1

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_loading:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->u0(Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/xuanniao/account/model/data/AcquireCodeReq;

    invoke-direct {v0}, Lcom/transsion/xuanniao/account/model/data/AcquireCodeReq;-><init>()V

    iget-object v1, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast v1, Lwm7;

    invoke-interface {v1}, Lwm7;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/model/data/AcquireCodeReq;->setCaptchaCode(Ljava/lang/String;)V

    iget-object v1, p0, Lup7;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/model/data/AcquireCodeReq;->setCaptchaTicket(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lup7;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast v2, Lwm7;

    invoke-interface {v2}, Lwm7;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/model/data/AcquireCodeReq;->setPhone(Ljava/lang/String;)V

    iget-object v1, p0, Lup7;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lrk7;

    invoke-virtual {p0}, Lup7;->e()Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lrk7;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lrk7;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lup7;->i:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lup7;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/model/data/AcquireCodeReq;->setGoogleHashCode(Ljava/lang/String;)V

    iget-object v1, p0, Lup7;->b:Lhq7;

    invoke-virtual {p0}, Lup7;->e()Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;

    move-result-object v2

    new-instance v3, Lup7$c;

    invoke-virtual {p0}, Lup7;->e()Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;

    move-result-object v4

    const-class v5, Lcom/transsion/xuanniao/account/model/data/AcquireCodeRes;

    invoke-direct {v3, p0, v4, v5}, Lup7$c;-><init>(Lup7;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2, v0, v3}, Lhq7;->b(Landroid/content/Context;Lcom/transsion/xuanniao/account/model/data/AcquireCodeReq;LOppOOp0/OppO0O0;)V

    return-void
.end method

.method public final e()Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p0, Lwm7;

    invoke-interface {p0}, Ljk7;->J()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;

    return-object p0
.end method

.method public f()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lup7;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast v0, Lwm7;

    invoke-interface {v0}, Ljk7;->J()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lup7;->h:Lcom/transsion/xuanniao/account/model/data/CountryData;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/transsion/xuanniao/account/model/data/CountryData;->countries:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/transsion/xuanniao/account/model/data/CountryData;->getCountryCode(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lup7;->e:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lup7;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lup7;->e:Ljava/lang/String;

    return-object p0

    :cond_2
    const-string v0, "+"

    invoke-static {v0}, Lxo7;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lup7;->e:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lup7;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast v0, Lwm7;

    invoke-interface {v0}, Ljk7;->J()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lup7;->h:Lcom/transsion/xuanniao/account/model/data/CountryData;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/transsion/xuanniao/account/model/data/CountryData;->countries:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/transsion/xuanniao/account/model/data/CountryData;->getCountryCode(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lup7;->e:Ljava/lang/String;

    :cond_1
    iget-object p0, p0, Lup7;->e:Ljava/lang/String;

    return-object p0
.end method

.method public h()V
    .locals 6

    iget-object v0, p0, Lup7;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lup7;->e()Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;

    move-result-object v0

    invoke-static {v0}, Ltl7;->c(Landroid/content/Context;)Ltl7;

    move-result-object v0

    iget-object v0, v0, Lkk7;->a:Landroid/content/SharedPreferences;

    const-string v1, "sms_ticket"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lup7;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast v0, Lwm7;

    invoke-interface {v0}, Lwm7;->d()V

    :cond_0
    invoke-virtual {p0}, Lup7;->e()Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;

    move-result-object v0

    invoke-virtual {p0}, Lup7;->e()Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;

    move-result-object v1

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_loading_verify_account:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->u0(Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/xuanniao/account/model/data/VerifyCodeReq;

    invoke-direct {v0}, Lcom/transsion/xuanniao/account/model/data/VerifyCodeReq;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lup7;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast v2, Lwm7;

    invoke-interface {v2}, Lwm7;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/model/data/VerifyCodeReq;->setPhone(Ljava/lang/String;)V

    iget-object v1, p0, Lup7;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/model/data/VerifyCodeReq;->setTicket(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast v1, Lwm7;

    invoke-interface {v1}, Lwm7;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/model/data/VerifyCodeReq;->setVerificationCode(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lup7;->b:Lhq7;

    invoke-virtual {p0}, Lup7;->e()Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;

    move-result-object v2

    new-instance v3, Lup7$d;

    invoke-virtual {p0}, Lup7;->e()Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;

    move-result-object v4

    const-class v5, Lcom/transsion/xuanniao/account/model/data/VerifyCodeRes;

    invoke-direct {v3, p0, v4, v5}, Lup7$d;-><init>(Lup7;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2, v0, v3}, Lhq7;->c(Landroid/content/Context;Lcom/transsion/xuanniao/account/model/data/VerifyCodeReq;LOppOOp0/OppO0O0;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p0}, Lup7;->e()Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    invoke-virtual {p0}, Lup7;->e()Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;

    move-result-object v0

    invoke-virtual {p0}, Lup7;->e()Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;

    move-result-object p0

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_net_unavailable:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->y0(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
