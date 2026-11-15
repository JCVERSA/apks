.class public Lwp7;
.super LOppOOp0/OppO0O0;
.source "SourceFile"


# instance fields
.field public final synthetic k:Ldo7;


# direct methods
.method public constructor <init>(Ldo7;Landroid/content/Context;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lwp7;->k:Ldo7;

    invoke-direct {p0, p2, p3}, LOppOOp0/OppO0O0;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public b(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 6

    check-cast p2, Lcom/transsion/xuanniao/account/model/data/CloudConfigRes;

    iget-object p1, p0, Lwp7;->k:Ldo7;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    if-eqz p2, :cond_4

    iget-object p1, p2, Lcom/transsion/xuanniao/account/model/data/CloudConfigRes;->cloudClientConfigs:Ljava/util/ArrayList;

    if-eqz p1, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/transsion/xuanniao/account/model/data/CloudConfigRes;->timeStamp:J

    iget-wide v0, p2, Lcom/transsion/xuanniao/account/model/data/CloudConfigRes;->sysTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    iget-wide v4, p2, Lcom/transsion/xuanniao/account/model/data/CloudConfigRes;->validPeriod:J

    cmp-long p1, v2, v4

    if-gtz p1, :cond_1

    const-wide/16 v0, 0x0

    :cond_1
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lwp7;->k:Ldo7;

    invoke-virtual {p3}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object p3

    invoke-static {p3}, Ltl7;->c(Landroid/content/Context;)Ltl7;

    move-result-object p3

    iget-object p2, p2, Lcom/transsion/xuanniao/account/model/data/CloudConfigRes;->cloudClientConfigs:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/xuanniao/account/model/data/CloudConfigRes$ConfigItem;

    if-eqz v2, :cond_2

    iget v3, v2, Lcom/transsion/xuanniao/account/model/data/CloudConfigRes$ConfigItem;->type:I

    const/16 v4, 0xf

    if-ne v3, v4, :cond_2

    iget-object v3, v2, Lcom/transsion/xuanniao/account/model/data/CloudConfigRes$ConfigItem;->configMap:Ljava/util/HashMap;

    if-eqz v3, :cond_2

    const-string v4, "privacyVersion"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v2, v2, Lcom/transsion/xuanniao/account/model/data/CloudConfigRes$ConfigItem;->configMap:Ljava/util/HashMap;

    const-string v4, "userAgreementVersion"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lkk7;->a()V

    iget-object v4, p3, Lkk7;->b:Landroid/content/SharedPreferences$Editor;

    const-string v5, "privacy_version"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p3}, Lkk7;->a()V

    iget-object v3, p3, Lkk7;->b:Landroid/content/SharedPreferences$Editor;

    const-string v4, "user_agreement_version"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_3
    invoke-virtual {p3}, Lkk7;->a()V

    iget-object p2, p3, Lkk7;->b:Landroid/content/SharedPreferences$Editor;

    const-string v2, "key_cloud_config"

    invoke-interface {p2, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p3}, Lkk7;->a()V

    iget-object p2, p3, Lkk7;->b:Landroid/content/SharedPreferences$Editor;

    const-string v2, "key_time_diff"

    invoke-interface {p2, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p3}, Lkk7;->b()V

    iget-object p0, p0, Lwp7;->k:Ldo7;

    invoke-virtual {p0}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object p0

    invoke-static {p0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p0

    invoke-virtual {p0, p1}, Lxj;->l1(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method
