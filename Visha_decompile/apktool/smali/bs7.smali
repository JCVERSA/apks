.class public Lbs7;
.super LOppOOp0/OppO0O0;
.source "SourceFile"


# instance fields
.field public final synthetic k:LOppOOO0/OppOp0;


# direct methods
.method public constructor <init>(LOppOOO0/OppOp0;Landroid/content/Context;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lbs7;->k:LOppOOO0/OppOp0;

    invoke-direct {p0, p2, p3}, LOppOOp0/OppO0O0;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public b(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 2

    check-cast p2, Lcom/transsion/xuanniao/account/model/data/CloudConfigRes;

    iget-object p1, p0, Lbs7;->k:LOppOOO0/OppOp0;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    iget-object p1, p2, Lcom/transsion/xuanniao/account/model/data/CloudConfigRes;->cloudClientConfigs:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/transsion/xuanniao/account/model/data/CloudConfigRes;->timeStamp:J

    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iget-object p3, p0, Lbs7;->k:LOppOOO0/OppOp0;

    invoke-virtual {p3}, LOppOOO0/OppOp0;->e()Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;

    move-result-object p3

    invoke-static {p3}, Ltl7;->c(Landroid/content/Context;)Ltl7;

    move-result-object p3

    invoke-virtual {p1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lkk7;->a()V

    iget-object p2, p3, Lkk7;->b:Landroid/content/SharedPreferences$Editor;

    const-string v0, "key_cloud_config"

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p3}, Lkk7;->b()V

    iget-object p1, p0, Lbs7;->k:LOppOOO0/OppOp0;

    invoke-virtual {p1}, LOppOOO0/OppOp0;->e()Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/xuanniao/account/model/data/CloudConfigRes;->privacyNeedAgree(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lbs7;->k:LOppOOO0/OppOp0;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p1, Lqq7;

    invoke-interface {p1}, Lqq7;->e0()V

    :cond_1
    iget-object p0, p0, Lbs7;->k:LOppOOO0/OppOp0;

    invoke-virtual {p0}, LOppOOO0/OppOp0;->e()Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;

    move-result-object p0

    invoke-static {p0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p0

    invoke-virtual {p3}, Ltl7;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lxj;->l1(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method
