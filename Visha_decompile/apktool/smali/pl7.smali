.class public Lpl7;
.super Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;
.source "SourceFile"


# instance fields
.field public b:Lvk7;

.field public c:Lhq7;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Lml7;

.field public i:Lcom/transsion/xuanniao/account/model/data/CountryData;

.field public j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;-><init>()V

    new-instance v0, Lvk7;

    invoke-direct {v0}, Lvk7;-><init>()V

    iput-object v0, p0, Lpl7;->b:Lvk7;

    new-instance v0, Lhq7;

    const-string v1, "BIND"

    invoke-direct {v0, v1}, Lhq7;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lpl7;->c:Lhq7;

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

    iget-object v0, p0, Lpl7;->h:Lml7;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lml7;->a()V

    :cond_0
    new-instance v0, Lml7;

    new-instance v1, Lpl7$c;

    invoke-direct {v1, p0}, Lpl7$c;-><init>(Lpl7;)V

    invoke-direct {v0, v1}, Lml7;-><init>(Lml7$b;)V

    iput-object v0, p0, Lpl7;->h:Lml7;

    iput-wide p1, v0, Lml7;->b:J

    invoke-virtual {v0}, Lml7;->c()V

    :cond_1
    return-void
.end method

.method public c()V
    .locals 5

    iget-object v0, p0, Lpl7;->c:Lhq7;

    invoke-virtual {p0}, Lpl7;->e()Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;

    move-result-object v1

    new-instance v2, Lpl7$b;

    invoke-virtual {p0}, Lpl7;->e()Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;

    move-result-object v3

    const-class v4, Lcom/transsion/xuanniao/account/model/data/CaptchaRes;

    invoke-direct {v2, p0, v3, v4}, Lpl7$b;-><init>(Lpl7;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Lhq7;->a(Landroid/content/Context;LOppOOp0/OppO0O0;)V

    return-void
.end method

.method public d()V
    .locals 6

    invoke-virtual {p0}, Lpl7;->e()Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;

    move-result-object v0

    invoke-virtual {p0}, Lpl7;->e()Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;

    move-result-object v1

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_loading:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->u0(Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/xuanniao/account/model/data/AcquireCodeReq;

    invoke-direct {v0}, Lcom/transsion/xuanniao/account/model/data/AcquireCodeReq;-><init>()V

    iget-object v1, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast v1, Lgn7;

    invoke-interface {v1}, Lgn7;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/model/data/AcquireCodeReq;->setCaptchaCode(Ljava/lang/String;)V

    iget-object v1, p0, Lpl7;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/model/data/AcquireCodeReq;->setCaptchaTicket(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast v1, Lgn7;

    invoke-interface {v1}, Lgn7;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/model/data/AcquireCodeReq;->setPhone(Ljava/lang/String;)V

    iget-object v1, p0, Lpl7;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lrk7;

    invoke-virtual {p0}, Lpl7;->e()Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;

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

    iput-object v1, p0, Lpl7;->j:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lpl7;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/model/data/AcquireCodeReq;->setGoogleHashCode(Ljava/lang/String;)V

    iget-object v1, p0, Lpl7;->c:Lhq7;

    invoke-virtual {p0}, Lpl7;->e()Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;

    move-result-object v2

    new-instance v3, Lpl7$d;

    invoke-virtual {p0}, Lpl7;->e()Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;

    move-result-object v4

    const-class v5, Lcom/transsion/xuanniao/account/model/data/AcquireCodeRes;

    invoke-direct {v3, p0, v4, v5}, Lpl7$d;-><init>(Lpl7;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2, v0, v3}, Lhq7;->b(Landroid/content/Context;Lcom/transsion/xuanniao/account/model/data/AcquireCodeReq;LOppOOp0/OppO0O0;)V

    return-void
.end method

.method public final e()Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p0, Lgn7;

    invoke-interface {p0}, Ljk7;->J()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;

    return-object p0
.end method

.method public f()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lpl7;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lpl7;->i:Lcom/transsion/xuanniao/account/model/data/CountryData;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/transsion/xuanniao/account/model/data/CountryData;->countries:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast v0, Lgn7;

    invoke-interface {v0}, Ljk7;->J()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lpl7;->i:Lcom/transsion/xuanniao/account/model/data/CountryData;

    iget-object v1, v1, Lcom/transsion/xuanniao/account/model/data/CountryData;->countries:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/transsion/xuanniao/account/model/data/CountryData;->getCountryCode(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpl7;->d:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0

    :cond_2
    :goto_1
    iget-object p0, p0, Lpl7;->d:Ljava/lang/String;

    return-object p0
.end method

.method public g()V
    .locals 6

    invoke-virtual {p0}, Lpl7;->e()Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;

    move-result-object v0

    invoke-virtual {p0}, Lpl7;->e()Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;

    move-result-object v1

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_loading:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->u0(Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/xuanniao/account/model/data/BindReq;

    invoke-direct {v0}, Lcom/transsion/xuanniao/account/model/data/BindReq;-><init>()V

    iget-object v1, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast v1, Lgn7;

    invoke-interface {v1}, Lgn7;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/model/data/BindReq;->setPhone(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast v1, Lgn7;

    invoke-interface {v1}, Lgn7;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/model/data/BindReq;->setVerificationCode(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lpl7;->b:Lvk7;

    invoke-virtual {p0}, Lpl7;->e()Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;

    move-result-object v2

    new-instance v3, Lpl7$a;

    invoke-virtual {p0}, Lpl7;->e()Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;

    move-result-object v4

    const-class v5, Lcom/transsion/xuanniao/account/model/data/EncryptRes;

    invoke-direct {v3, p0, v4, v5}, Lpl7$a;-><init>(Lpl7;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2, v0, v3}, Lvk7;->b(Landroid/content/Context;Lcom/transsion/xuanniao/account/model/data/BindReq;LOppOOp0/OppO0O0;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p0}, Lpl7;->e()Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    invoke-virtual {p0}, Lpl7;->e()Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;

    move-result-object v0

    invoke-virtual {p0}, Lpl7;->e()Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;

    move-result-object p0

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_net_unavailable:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->y0(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lpl7;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, "+"

    invoke-static {v0}, Lxo7;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lpl7;->f()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
