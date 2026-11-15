.class public Lhq7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhq7;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;LOppOOp0/OppO0O0;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object p0, p0, Lhq7;->a:Ljava/lang/String;

    const-string v1, "sceneCode"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lgo7$a;->a:Lgo7;

    iget-object p0, p0, Lgo7;->a:Ljava/lang/String;

    const-string v1, "clientId"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcr7$b;->a:Lcr7;

    invoke-virtual {p0, p1}, Lcr7;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p0, Lzn7;

    invoke-direct {p0}, Lzn7;-><init>()V

    const-string v1, "/sdk/verification/acquire-captcha"

    invoke-static {v1}, Ldp7;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v0, p2}, Lzn7;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Lokhttp3/Callback;)V

    goto :goto_0

    :cond_0
    instance-of p2, p1, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    if-eqz p2, :cond_1

    move-object p2, p1

    check-cast p2, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    invoke-virtual {p2}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    :cond_1
    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Lcr7;->b(Landroid/content/Context;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public b(Landroid/content/Context;Lcom/transsion/xuanniao/account/model/data/AcquireCodeReq;LOppOOp0/OppO0O0;)V
    .locals 1

    iget-object p0, p0, Lhq7;->a:Ljava/lang/String;

    invoke-virtual {p2, p0}, Lcom/transsion/xuanniao/account/model/data/AcquireCodeReq;->setSceneCode(Ljava/lang/String;)V

    sget-object p0, Lgo7$a;->a:Lgo7;

    iget-object p0, p0, Lgo7;->a:Ljava/lang/String;

    invoke-virtual {p2, p0}, Lcom/transsion/xuanniao/account/model/data/AcquireCodeReq;->setClientId(Ljava/lang/String;)V

    sget-object p0, Lcr7$b;->a:Lcr7;

    invoke-virtual {p0, p1}, Lcr7;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lzn7;

    invoke-direct {p0}, Lzn7;-><init>()V

    const-string v0, "/sdk/verification/acquire-code"

    invoke-static {v0}, Ldp7;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lzn7;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Lokhttp3/Callback;)V

    goto :goto_0

    :cond_0
    instance-of p2, p1, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    if-eqz p2, :cond_1

    move-object p2, p1

    check-cast p2, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    invoke-virtual {p2}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    :cond_1
    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Lcr7;->b(Landroid/content/Context;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public c(Landroid/content/Context;Lcom/transsion/xuanniao/account/model/data/VerifyCodeReq;LOppOOp0/OppO0O0;)V
    .locals 2

    iget-object p0, p0, Lhq7;->a:Ljava/lang/String;

    invoke-virtual {p2, p0}, Lcom/transsion/xuanniao/account/model/data/VerifyCodeReq;->setSceneCode(Ljava/lang/String;)V

    sget-object p0, Lgo7$a;->a:Lgo7;

    iget-object p0, p0, Lgo7;->a:Ljava/lang/String;

    invoke-virtual {p2, p0}, Lcom/transsion/xuanniao/account/model/data/VerifyCodeReq;->setClientId(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/transsion/xuanniao/account/model/data/VerifyCodeReq;->setVerifyId(Ljava/lang/String;)V

    sget-object p0, Lao7$a;->a:Lao7;

    invoke-virtual {p0}, Lao7;->a()Lmk7;

    move-result-object p0

    invoke-virtual {p2}, Lcom/transsion/xuanniao/account/model/data/VerifyCodeReq;->getVerifyId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmk7;->a:Ljava/lang/String;

    iput-object p0, p3, LOppOOp0/OppO0O0;->f:Lmk7;

    invoke-static {p1, p0, p2}, Lcom/transsion/xuanniao/account/model/data/CommReq;->generateReq(Landroid/content/Context;Lmk7;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object p2, Lcr7$b;->a:Lcr7;

    invoke-virtual {p2, p1}, Lcr7;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p2, Lzn7;

    invoke-direct {p2}, Lzn7;-><init>()V

    const-string v0, "/sdk/verification/verify-code-crypt"

    invoke-static {v0}, Ldp7;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0, p0, p3}, Lzn7;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Lokhttp3/Callback;)V

    goto :goto_0

    :cond_0
    instance-of p0, p1, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    if-eqz p0, :cond_1

    move-object p0, p1

    check-cast p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    :cond_1
    instance-of p0, p1, Landroid/app/Activity;

    if-eqz p0, :cond_2

    invoke-virtual {p2, p1}, Lcr7;->b(Landroid/content/Context;)V

    :cond_2
    :goto_0
    return-void
.end method
