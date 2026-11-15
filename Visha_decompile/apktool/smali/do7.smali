.class public Ldo7;
.super Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;
.source "SourceFile"


# instance fields
.field public b:Z

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Lhq7;

.field public f:Lyo7;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Z

.field public j:I

.field public k:Lml7;

.field public l:Lml7;

.field public m:Lum7;

.field public n:Z

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:J

.field public t:Lcom/transsion/xuanniao/account/model/data/CountryData;

.field public u:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldo7;->b:Z

    const-string v0, ""

    iput-object v0, p0, Ldo7;->h:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Ldo7;->j:I

    iput v0, p0, Ldo7;->o:I

    iput v0, p0, Ldo7;->p:I

    iput v0, p0, Ldo7;->q:I

    iput v0, p0, Ldo7;->r:I

    new-instance v0, Lhq7;

    const-string v1, "LOGIN"

    invoke-direct {v0, v1}, Lhq7;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ldo7;->e:Lhq7;

    new-instance v0, Lyo7;

    invoke-direct {v0}, Lyo7;-><init>()V

    iput-object v0, p0, Ldo7;->f:Lyo7;

    return-void
.end method

.method public static f(Ldo7;Lcom/transsion/xuanniao/account/model/data/LoginRes;ILjava/lang/String;I)V
    .locals 3

    sget-object v0, Lao7$a;->a:Lao7;

    invoke-virtual {p0}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object v1

    iget-object p1, p1, Lcom/transsion/xuanniao/account/model/data/LoginRes;->token:Lcom/transsion/xuanniao/account/model/data/LoginRes$SdkToken;

    iget-object v2, p1, Lcom/transsion/xuanniao/account/model/data/LoginRes$SdkToken;->accessToken:Ljava/lang/String;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/model/data/LoginRes$SdkToken;->refreshToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lao7;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object p1

    invoke-static {p1}, Ltl7;->c(Landroid/content/Context;)Ltl7;

    move-result-object p1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "lt"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "ac"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p3

    const-string v0, "ct"

    invoke-virtual {p3, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p3, ""

    :goto_0
    invoke-virtual {p1}, Lkk7;->a()V

    iget-object p4, p1, Lkk7;->b:Landroid/content/SharedPreferences$Editor;

    const-string v0, "last_login_req"

    invoke-interface {p4, v0, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Ltl7;->e(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Ltl7;->d(J)V

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p2, Lkn7;

    invoke-interface {p2}, Lkn7;->t()I

    move-result p2

    const/4 p3, 0x3

    if-ne p2, p3, :cond_0

    invoke-virtual {p0}, Ldo7;->o()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lkk7;->a()V

    iget-object p3, p1, Lkk7;->b:Landroid/content/SharedPreferences$Editor;

    const-string p4, "country_code"

    invoke-interface {p3, p4, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object p0, p0, Ldo7;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lkk7;->a()V

    iget-object p2, p1, Lkk7;->b:Landroid/content/SharedPreferences$Editor;

    const-string p3, "country_name"

    invoke-interface {p2, p3, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_0
    invoke-virtual {p1}, Lkk7;->b()V

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 0

    iget-object p0, p0, Ldo7;->h:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public c(I)V
    .locals 10

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object v0

    invoke-virtual {p0}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object v1

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_loading_verify_account:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->u0(Ljava/lang/String;)V

    new-instance v7, Lcom/transsion/xuanniao/account/model/data/ApplyTokenReq;

    invoke-direct {v7}, Lcom/transsion/xuanniao/account/model/data/ApplyTokenReq;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/transsion/xuanniao/account/model/data/ApplyTokenReq;->setPkgName(Ljava/lang/String;)V

    invoke-static {v0}, Lvl7;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/transsion/xuanniao/account/model/data/ApplyTokenReq;->setSign(Ljava/lang/String;)V

    invoke-static {v0}, Lmp7;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/transsion/xuanniao/account/model/data/ApplyTokenReq;->setDeviceId(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v7, v1, v2}, Lcom/transsion/xuanniao/account/model/data/ApplyTokenReq;->setApplyTime(J)V

    :try_start_0
    iget-object v8, p0, Ldo7;->f:Lyo7;

    new-instance v9, Ldo7$b;

    const-class v4, Lcom/transsion/xuanniao/account/model/data/ApplyTokenRes;

    move-object v1, v9

    move-object v2, p0

    move-object v3, v0

    move v5, p1

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Ldo7$b;-><init>(Ldo7;Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Context;)V

    invoke-virtual {v8, v0, v7, v9}, Lyo7;->b(Landroid/content/Context;Lcom/transsion/xuanniao/account/model/data/ApplyTokenReq;LOppOOp0/OppO0O0;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.palm.id.log"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->A0()V

    invoke-virtual {p0}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object p1

    invoke-virtual {p0}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object p0

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_net_unavailable:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->y0(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public d(ILjava/lang/String;)V
    .locals 12

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object v0

    invoke-virtual {p0}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object v1

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_loading_verify_account:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->u0(Ljava/lang/String;)V

    new-instance v9, Lcom/transsion/xuanniao/account/model/data/ThirdLoginReq;

    invoke-direct {v9}, Lcom/transsion/xuanniao/account/model/data/ThirdLoginReq;-><init>()V

    invoke-virtual {v9, p2}, Lcom/transsion/xuanniao/account/model/data/ThirdLoginReq;->setToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-ne v1, p1, :cond_1

    const-string v1, "FB"

    :goto_0
    move-object v5, v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x7

    if-ne v1, p1, :cond_2

    const-string v1, "LN"

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    if-ne v1, p1, :cond_3

    const-string v1, "VK"

    goto :goto_0

    :cond_3
    const-string v1, "Google"

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object v1

    invoke-static {v1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object v1

    iget v2, p0, Ldo7;->p:I

    iget v3, p0, Ldo7;->o:I

    iget v4, p0, Ldo7;->q:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v5, v2, v3, v4}, Lxj;->m0(Ljava/lang/String;III)V

    :try_start_0
    iget-object v10, p0, Ldo7;->f:Lyo7;

    new-instance v11, Ldo7$c;

    const-class v4, Lcom/transsion/xuanniao/account/model/data/LoginRes;

    move-object v1, v11

    move-object v2, p0

    move-object v3, v0

    move v6, p1

    move-object v7, v0

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Ldo7$c;-><init>(Ldo7;Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "/app/third-accessor/login"

    sget-object p2, Lcr7$b;->a:Lcr7;

    invoke-virtual {p2, v0}, Lcr7;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance p2, Lzn7;

    invoke-direct {p2}, Lzn7;-><init>()V

    invoke-static {p1}, Ldp7;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1, v9, v11}, Lzn7;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Lokhttp3/Callback;)V

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    invoke-virtual {p2, v0}, Lcr7;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.palm.id.log"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result p1

    if-nez p1, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->A0()V

    invoke-virtual {p0}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object p1

    invoke-virtual {p0}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object p0

    sget p2, Lcom/transsion/xuanniao/account/R$string;->xn_net_unavailable:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->y0(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public e(J)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ldo7;->m()V

    new-instance v0, Lml7;

    new-instance v1, Ldo7$h;

    invoke-direct {v1, p0}, Ldo7$h;-><init>(Ldo7;)V

    invoke-direct {v0, v1}, Lml7;-><init>(Lml7$b;)V

    iput-object v0, p0, Ldo7;->l:Lml7;

    iput-wide p1, v0, Lml7;->b:J

    invoke-virtual {v0}, Lml7;->c()V

    :cond_0
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 9

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Ldo7;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldo7;->p:I

    iget-object v0, p0, Ldo7;->e:Lhq7;

    invoke-virtual {p0}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object v1

    new-instance v8, Ldo7$e;

    invoke-virtual {p0}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object v4

    const-class v6, Lcom/transsion/xuanniao/account/model/data/CaptchaRes;

    move-object v2, v8

    move-object v3, p0

    move-object v5, p1

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Ldo7$e;-><init>(Ldo7;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v8}, Lhq7;->a(Landroid/content/Context;LOppOOp0/OppO0O0;)V

    return-void
.end method

.method public h()V
    .locals 7

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast v0, Lkn7;

    invoke-interface {v0}, Lkn7;->t()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget v4, p0, Ldo7;->o:I

    add-int/2addr v4, v3

    iput v4, p0, Ldo7;->o:I

    invoke-virtual {p0}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object v4

    invoke-static {v4}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object v4

    if-eqz v0, :cond_2

    const-string v5, "Phone"

    goto :goto_1

    :cond_2
    const-string v5, "Mail"

    :goto_1
    iget v6, p0, Ldo7;->o:I

    invoke-virtual {v4, v5, v6}, Lxj;->W(Ljava/lang/String;I)V

    sget-object v4, Lcr7$b;->a:Lcr7;

    invoke-virtual {p0}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcr7;->a(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p0}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object p0

    invoke-virtual {v4, p0}, Lcr7;->b(Landroid/content/Context;)V

    return-void

    :cond_3
    invoke-virtual {p0}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object v4

    invoke-virtual {p0}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object v5

    sget v6, Lcom/transsion/xuanniao/account/R$string;->xn_loading:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->u0(Ljava/lang/String;)V

    iget-object v4, p0, Ldo7;->g:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget v0, p0, Ldo7;->j:I

    if-gt v0, v2, :cond_4

    add-int/2addr v0, v3

    iput v0, p0, Ldo7;->j:I

    const-string v0, "getCode"

    invoke-virtual {p0, v0}, Ldo7;->g(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->A0()V

    :goto_2
    return-void

    :cond_5
    new-instance v2, Lcom/transsion/xuanniao/account/model/data/AcquireCodeReq;

    invoke-direct {v2}, Lcom/transsion/xuanniao/account/model/data/AcquireCodeReq;-><init>()V

    iget-object v4, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast v4, Lkn7;

    invoke-interface {v4}, Lkn7;->h0()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast v4, Lkn7;

    invoke-interface {v4}, Lkn7;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/transsion/xuanniao/account/model/data/AcquireCodeReq;->setCaptchaCode(Ljava/lang/String;)V

    const-string v4, "1"

    invoke-virtual {v2, v4}, Lcom/transsion/xuanniao/account/model/data/AcquireCodeReq;->setCaptchaV2(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    iget-object v4, p0, Ldo7;->h:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/transsion/xuanniao/account/model/data/AcquireCodeReq;->setCaptchaCode(Ljava/lang/String;)V

    :goto_3
    iget-object v4, p0, Ldo7;->g:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/transsion/xuanniao/account/model/data/AcquireCodeReq;->setCaptchaTicket(Ljava/lang/String;)V

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ldo7;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast v3, Lkn7;

    invoke-interface {v3}, Lkn7;->w()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/transsion/xuanniao/account/model/data/AcquireCodeReq;->setPhone(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast v0, Lkn7;

    invoke-interface {v0}, Lkn7;->w()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/transsion/xuanniao/account/model/data/AcquireCodeReq;->setEmail(Ljava/lang/String;)V

    iget v0, p0, Ldo7;->q:I

    add-int/2addr v0, v3

    iput v0, p0, Ldo7;->q:I

    :goto_4
    iget-object v0, p0, Ldo7;->u:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lrk7;

    invoke-virtual {p0}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Lrk7;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lrk7;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ldo7;->u:Ljava/lang/String;

    :cond_8
    iget-object v0, p0, Ldo7;->u:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/transsion/xuanniao/account/model/data/AcquireCodeReq;->setGoogleHashCode(Ljava/lang/String;)V

    iget-object v0, p0, Ldo7;->e:Lhq7;

    invoke-virtual {p0}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object v1

    new-instance v3, Ldo7$f;

    invoke-virtual {p0}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object v4

    const-class v5, Lcom/transsion/xuanniao/account/model/data/AcquireCodeRes;

    invoke-direct {v3, p0, v4, v5}, Ldo7$f;-><init>(Ldo7;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2, v3}, Lhq7;->b(Landroid/content/Context;Lcom/transsion/xuanniao/account/model/data/AcquireCodeReq;LOppOOp0/OppO0O0;)V

    return-void
.end method

.method public i(J)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ldo7;->m()V

    new-instance v0, Lml7;

    new-instance v1, Ldo7$g;

    invoke-direct {v1, p0}, Ldo7$g;-><init>(Ldo7;)V

    invoke-direct {v0, v1}, Lml7;-><init>(Lml7$b;)V

    iput-object v0, p0, Ldo7;->k:Lml7;

    iput-wide p1, v0, Lml7;->b:J

    invoke-virtual {v0}, Lml7;->c()V

    :cond_0
    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/transsion/xuanniao/account/model/data/ApplyKeyReq;

    invoke-direct {v0}, Lcom/transsion/xuanniao/account/model/data/ApplyKeyReq;-><init>()V

    sget-object v1, Lao7$a;->a:Lao7;

    invoke-virtual {p0}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lao7;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/transsion/xuanniao/account/model/data/ApplyKeyReq;->publicKey1061:Ljava/lang/String;

    invoke-virtual {p0}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lao7;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/xuanniao/account/model/data/ApplyKeyReq;->keyId:Ljava/lang/String;

    invoke-virtual {p0}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object v1

    new-instance v2, Ldo7$d;

    invoke-virtual {p0}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object v3

    const-class v4, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;

    invoke-direct {v2, p0, v3, p1, v4}, Ldo7$d;-><init>(Ldo7;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V

    invoke-static {v1}, Lmp7;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/transsion/xuanniao/account/model/data/ApplyKeyReq;->deviceId:Ljava/lang/String;

    sget-object p0, Lcr7$b;->a:Lcr7;

    invoke-virtual {p0, v1}, Lcr7;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p0, Lzn7;

    invoke-direct {p0}, Lzn7;-><init>()V

    const-string p1, "/sdk/config/apply-key"

    invoke-static {p1}, Ldp7;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1, v0, v2}, Lzn7;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Lokhttp3/Callback;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->A0()V

    invoke-virtual {p0, v1}, Lcr7;->b(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public final k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p0, Lkn7;

    invoke-interface {p0}, Ljk7;->J()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    return-object p0
.end method

.method public l(Ljava/lang/String;)V
    .locals 10

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object v0

    invoke-virtual {p0}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object v1

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_loading:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->u0(Ljava/lang/String;)V

    invoke-virtual {p0}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object v0

    invoke-virtual {p0}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object v1

    invoke-static {v1}, Lsq7;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "tech.palm.id"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "palmId"

    goto :goto_0

    :cond_1
    const-string v2, "sdk"

    :goto_0
    new-instance v9, Ldo7$j;

    invoke-virtual {p0}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object v5

    const-class v7, Lcom/transsion/xuanniao/account/model/data/PolicyRes;

    move-object v3, v9

    move-object v4, p0

    move-object v6, p1

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Ldo7$j;-><init>(Ldo7;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string p1, "type"

    invoke-virtual {p0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "\\+"

    const-string v2, "-"

    invoke-virtual {v1, p1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "language"

    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljr7;->h()Ljava/lang/String;

    move-result-object p1

    const-string v1, "brand"

    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcr7$b;->a:Lcr7;

    invoke-virtual {p1, v0}, Lcr7;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance p1, Lzn7;

    invoke-direct {p1}, Lzn7;-><init>()V

    const-string v1, "/app/policy/get"

    invoke-static {v1}, Ldp7;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, p0, v9}, Lzn7;->d(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Lokhttp3/Callback;)V

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p1, v0}, Lcr7;->b(Landroid/content/Context;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public m()V
    .locals 1

    iget-object v0, p0, Ldo7;->k:Lml7;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lml7;->a()V

    :cond_0
    iget-object p0, p0, Ldo7;->l:Lml7;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lml7;->a()V

    :cond_1
    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Ldo7;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldo7;->t:Lcom/transsion/xuanniao/account/model/data/CountryData;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/transsion/xuanniao/account/model/data/CountryData;->countries:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast v0, Lkn7;

    invoke-interface {v0}, Ljk7;->J()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ldo7;->t:Lcom/transsion/xuanniao/account/model/data/CountryData;

    iget-object v1, v1, Lcom/transsion/xuanniao/account/model/data/CountryData;->countries:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/transsion/xuanniao/account/model/data/CountryData;->getCountryCode(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldo7;->c:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Ldo7;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Ldo7;->c:Ljava/lang/String;

    return-object p0

    :cond_1
    const-string v0, "+"

    invoke-static {v0}, Lxo7;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Ldo7;->c:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public o()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Ldo7;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldo7;->t:Lcom/transsion/xuanniao/account/model/data/CountryData;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/transsion/xuanniao/account/model/data/CountryData;->countries:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast v0, Lkn7;

    invoke-interface {v0}, Ljk7;->J()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ldo7;->t:Lcom/transsion/xuanniao/account/model/data/CountryData;

    iget-object v1, v1, Lcom/transsion/xuanniao/account/model/data/CountryData;->countries:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/transsion/xuanniao/account/model/data/CountryData;->getCountryCode(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldo7;->c:Ljava/lang/String;

    invoke-virtual {p0}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object v0

    invoke-static {v0}, Ltl7;->c(Landroid/content/Context;)Ltl7;

    move-result-object v0

    iget-object v0, v0, Lkk7;->a:Landroid/content/SharedPreferences;

    const-string v1, "country_name"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldo7;->d:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Ldo7;->c:Ljava/lang/String;

    return-object p0
.end method

.method public p()Z
    .locals 0

    sget-object p0, Lgo7$a;->a:Lgo7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return p0
.end method

.method public q()Z
    .locals 0

    iget-object p0, p0, Ldo7;->h:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public r()Z
    .locals 0

    iget-object p0, p0, Ldo7;->l:Lml7;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lml7;->c:Z

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public s()Z
    .locals 0

    iget-object p0, p0, Ldo7;->k:Lml7;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lml7;->c:Z

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public t()V
    .locals 5

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Ldo7;->r:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ldo7;->r:I

    sget-object v0, Lao7$a;->a:Lao7;

    invoke-virtual {p0}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lao7;->l(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_3

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    :goto_0
    const-string v0, "TAG_LOGIN"

    invoke-virtual {p0, v0}, Ldo7;->j(Ljava/lang/String;)V

    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_2
    iget-boolean v0, p0, Ldo7;->b:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Ldo7;->u()V

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    sget-object v0, Lcr7$b;->a:Lcr7;

    invoke-virtual {p0}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcr7;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcr7;->b(Landroid/content/Context;)V

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object v0

    invoke-static {v0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object v0

    invoke-virtual {p0}, Ldo7;->v()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Ldo7;->p:I

    iget v3, p0, Ldo7;->o:I

    iget v4, p0, Ldo7;->q:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lxj;->m0(Ljava/lang/String;III)V

    invoke-virtual {p0}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object v0

    invoke-virtual {p0}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object v1

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_loading_verify_account:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->u0(Ljava/lang/String;)V

    invoke-virtual {p0}, Ldo7;->w()V

    :goto_3
    return-void
.end method

.method public final u()V
    .locals 8

    const-string v0, "com.palm.id.log"

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcr7$b;->a:Lcr7;

    invoke-virtual {p0}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcr7;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcr7;->b(Landroid/content/Context;)V

    invoke-virtual {p0}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object p0

    invoke-static {p0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p0

    invoke-virtual {p0}, Lxj;->T0()V

    return-void

    :cond_1
    invoke-virtual {p0}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object v1

    invoke-static {v1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object v1

    invoke-virtual {p0}, Ldo7;->v()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Ldo7;->p:I

    iget v4, p0, Ldo7;->o:I

    iget v5, p0, Ldo7;->q:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lxj;->m0(Ljava/lang/String;III)V

    invoke-virtual {p0}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object v1

    invoke-virtual {p0}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object v2

    sget v3, Lcom/transsion/xuanniao/account/R$string;->xn_loading_verify_account:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->u0(Ljava/lang/String;)V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/LoginByCodeReq;

    invoke-direct {v1}, Lcom/transsion/xuanniao/account/model/data/LoginByCodeReq;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/transsion/xuanniao/account/model/data/LoginByCodeReq;->setExtraInfo(I)V

    iget-object v2, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast v2, Lkn7;

    invoke-interface {v2}, Lkn7;->t()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ldo7;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast v3, Lkn7;

    invoke-interface {v3}, Lkn7;->w()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/xuanniao/account/model/data/LoginByCodeReq;->setPhone(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast v2, Lkn7;

    invoke-interface {v2}, Lkn7;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/xuanniao/account/model/data/LoginByCodeReq;->setEmail(Ljava/lang/String;)V

    :goto_0
    iget-object v3, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast v3, Lkn7;

    invoke-interface {v3}, Lkn7;->N()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/transsion/xuanniao/account/model/data/LoginByCodeReq;->setVerificationCode(Ljava/lang/String;)V

    :try_start_0
    const-string v3, "loginByVerificationCode"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Ldo7;->f:Lyo7;

    invoke-virtual {p0}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object v4

    new-instance v5, Ldo7$i;

    invoke-virtual {p0}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object v6

    const-class v7, Lcom/transsion/xuanniao/account/model/data/LoginRes;

    invoke-direct {v5, p0, v6, v7, v2}, Ldo7$i;-><init>(Ldo7;Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v1, v5}, Lyo7;->c(Landroid/content/Context;Lcom/transsion/xuanniao/account/model/data/LoginByCodeReq;LOppOOp0/OppO0O0;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->A0()V

    :goto_1
    return-void
.end method

.method public final v()Ljava/lang/String;
    .locals 5

    iget-boolean v0, p0, Ldo7;->b:Z

    iget-object v1, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast v1, Lkn7;

    invoke-interface {v1}, Lkn7;->t()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p0, Lkn7;

    invoke-interface {p0}, Lkn7;->t()I

    move-result p0

    const/4 v2, 0x2

    if-ne p0, v2, :cond_1

    move v3, v4

    :cond_1
    if-eqz v0, :cond_3

    if-eqz v1, :cond_2

    const-string p0, "PV"

    goto :goto_1

    :cond_2
    const-string p0, "EV"

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    const-string p0, "PP"

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_5

    const-string p0, "EP"

    goto :goto_1

    :cond_5
    const-string p0, "IP"

    :goto_1
    return-object p0
.end method

.method public final w()V
    .locals 8

    const-string v0, "com.palm.id.log"

    :try_start_0
    new-instance v1, Lcom/transsion/xuanniao/account/model/data/LoginCaptchaReq;

    invoke-direct {v1}, Lcom/transsion/xuanniao/account/model/data/LoginCaptchaReq;-><init>()V

    iget-object v2, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast v2, Lkn7;

    invoke-interface {v2}, Lkn7;->h0()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast v2, Lkn7;

    invoke-interface {v2}, Lkn7;->f()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/transsion/xuanniao/account/model/data/LoginCaptchaReq;->captchaCode:Ljava/lang/String;

    const-string v2, "1"

    iput-object v2, v1, Lcom/transsion/xuanniao/account/model/data/LoginCaptchaReq;->captchaV2:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v1

    goto/16 :goto_2

    :cond_0
    iget-object v2, p0, Ldo7;->h:Ljava/lang/String;

    iput-object v2, v1, Lcom/transsion/xuanniao/account/model/data/LoginCaptchaReq;->captchaCode:Ljava/lang/String;

    :goto_0
    iget-object v2, p0, Ldo7;->g:Ljava/lang/String;

    iput-object v2, v1, Lcom/transsion/xuanniao/account/model/data/LoginCaptchaReq;->captchaTicket:Ljava/lang/String;

    const/4 v2, 0x1

    iput v2, v1, Lcom/transsion/xuanniao/account/model/data/LoginCaptchaReq;->extraInfo:I

    iget-object v2, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast v2, Lkn7;

    invoke-interface {v2}, Lkn7;->t()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ldo7;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast v3, Lkn7;

    invoke-interface {v3}, Lkn7;->w()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/transsion/xuanniao/account/model/data/LoginCaptchaReq;->phone:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast v2, Lkn7;

    invoke-interface {v2}, Lkn7;->t()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast v2, Lkn7;

    invoke-interface {v2}, Lkn7;->w()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/transsion/xuanniao/account/model/data/LoginCaptchaReq;->email:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast v2, Lkn7;

    invoke-interface {v2}, Lkn7;->w()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/transsion/xuanniao/account/model/data/LoginCaptchaReq;->username:Ljava/lang/String;

    :goto_1
    iget-object v3, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast v3, Lkn7;

    invoke-interface {v3}, Lkn7;->A()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC591VlH9xM+TZYuWM4WZnxKYryc6xrGWco+jDFRfMNyLmET3bcEPnaCkZNcuVxjFvofiXfN4yNXFFY7iSysLzZ5GdnvAwYne8ONRxJuX2ixvMYduBhaPj2AAfEHZ6H3yo2kV6q8CX3CGzmLkz8pDPia9wmafjXSxObaPFgOEF0GwIDAQAB"

    invoke-static {v3, v4}, Lnr7;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/transsion/xuanniao/account/model/data/LoginCaptchaReq;->password:Ljava/lang/String;

    const-string v3, "loginByPwdWithCaptcha"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Ldo7;->f:Lyo7;

    invoke-virtual {p0}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object v4

    new-instance v5, Ldo7$a;

    invoke-virtual {p0}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object v6

    const-class v7, Lcom/transsion/xuanniao/account/model/data/LoginRes;

    invoke-direct {v5, p0, v6, v7, v2}, Ldo7$a;-><init>(Ldo7;Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v1, v5}, Lyo7;->d(Landroid/content/Context;Lcom/transsion/xuanniao/account/model/data/LoginCaptchaReq;LOppOOp0/OppO0O0;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->A0()V

    invoke-virtual {p0}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object v0

    invoke-virtual {p0}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object p0

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_net_unavailable:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->y0(Ljava/lang/String;)V

    :goto_3
    return-void
.end method
