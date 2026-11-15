.class public Lum7;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;LOppOOp0/OppO0O0;)V
    .locals 2

    invoke-static {p1}, Lcom/transsion/xuanniao/account/model/data/ConfigReq;->generateReq(Landroid/content/Context;)Lcom/transsion/xuanniao/account/model/data/ConfigReq;

    move-result-object p0

    sget-object v0, Lcr7$b;->a:Lcr7;

    invoke-virtual {v0, p1}, Lcr7;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lzn7;

    invoke-direct {v0}, Lzn7;-><init>()V

    const-string v1, "/app/cloud/config"

    invoke-static {v1}, Ldp7;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p0, p2}, Lzn7;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Lokhttp3/Callback;)V

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

    invoke-virtual {v0, p1}, Lcr7;->b(Landroid/content/Context;)V

    :cond_2
    :goto_0
    return-void
.end method
