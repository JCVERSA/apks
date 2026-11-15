.class public Ldq7;
.super LOppOOp0/OppO0O0;
.source "SourceFile"


# instance fields
.field public final synthetic k:Lcom/transsion/palmsdk/PalmAuthParam;

.field public final synthetic l:Ljava/lang/String;

.field public final synthetic m:Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;Landroid/content/Context;Ljava/lang/Class;Lcom/transsion/palmsdk/PalmAuthParam;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ldq7;->m:Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;

    iput-object p4, p0, Ldq7;->k:Lcom/transsion/palmsdk/PalmAuthParam;

    iput-object p5, p0, Ldq7;->l:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, LOppOOp0/OppO0O0;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public b(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 11

    const-string p1, "sdk_auth_result"

    const-string p3, "ti_s_result"

    const-string v0, "2.0.1.03"

    const-string v1, "version"

    const-string v2, "appid"

    check-cast p2, Lcom/transsion/xuanniao/account/auth/data/AuthTokenRes;

    const/16 v3, 0x1e1e

    const/4 v4, 0x0

    :try_start_0
    sget-object v5, Lao7$a;->a:Lao7;

    iget-object v6, p0, Ldq7;->m:Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;

    invoke-virtual {v5, v6}, Lao7;->j(Landroid/content/Context;)Lcom/transsion/xuanniao/account/model/data/AccountRes;

    move-result-object v5

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v5, :cond_0

    :try_start_1
    const-string v7, "user_info"

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    const-string v9, "nickName"

    iget-object v10, v5, Lcom/transsion/xuanniao/account/model/data/AccountRes;->nickname:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "userName"

    iget-object v10, v5, Lcom/transsion/xuanniao/account/model/data/AccountRes;->username:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "avatarUrl"

    iget-object v10, v5, Lcom/transsion/xuanniao/account/model/data/AccountRes;->avatarUrl:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "linked_id"

    iget-object v5, v5, Lcom/transsion/xuanniao/account/model/data/AccountRes;->xuanniaoId:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "linked_pkg"

    iget-object v7, p0, Ldq7;->m:Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "linked_bd"

    invoke-static {}, Ljr7;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_0
    :goto_0
    const-string v5, "token_info"

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "access_token"

    iget-object v9, p2, Lcom/transsion/xuanniao/account/auth/data/AuthTokenRes;->accessToken:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "refresh_token"

    iget-object v9, p2, Lcom/transsion/xuanniao/account/auth/data/AuthTokenRes;->refreshToken:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "expires_in"

    iget v9, p2, Lcom/transsion/xuanniao/account/auth/data/AuthTokenRes;->expiresIn:I

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "open_id"

    iget-object p2, p2, Lcom/transsion/xuanniao/account/auth/data/AuthTokenRes;->openId:Ljava/lang/String;

    invoke-virtual {v7, v8, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, v5, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    :try_start_2
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    const-string v5, "com.palm.id.log"

    invoke-static {v5, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iget-object v5, p0, Ldq7;->k:Lcom/transsion/palmsdk/PalmAuthParam;

    invoke-virtual {v5}, Lcom/transsion/palmsdk/PalmAuthParam;->getAppid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v2, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "success"

    invoke-virtual {p2, p3, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lwj;

    invoke-direct {v5, p1, v3}, Lwj;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v5, p2, v4}, Lwj;->c(Landroid/os/Bundle;Landroid/os/Bundle;)Lwj;

    move-result-object p2

    invoke-virtual {p2}, Lwj;->b()V

    iget-object p2, p0, Ldq7;->m:Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;

    iget-object p2, p2, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;->f:Lcom/transsion/palmsdk/data/PalmAuthRequest;

    if-eqz p2, :cond_1

    invoke-virtual {p2, v6}, Lcom/transsion/palmsdk/data/PalmAuthRequest;->setResult(Landroid/os/Bundle;)V

    iget-object p2, p0, Ldq7;->m:Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;

    iput-object v4, p2, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;->f:Lcom/transsion/palmsdk/data/PalmAuthRequest;

    goto :goto_3

    :catch_1
    move-exception p2

    goto :goto_4

    :cond_1
    :goto_3
    iget-object p2, p0, Ldq7;->m:Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->finish()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :goto_4
    iget-object v5, p0, Ldq7;->m:Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const v6, 0x9ca8

    invoke-virtual {v5, v6, p2}, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;->c0(ILjava/lang/String;)V

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iget-object p0, p0, Ldq7;->k:Lcom/transsion/palmsdk/PalmAuthParam;

    invoke-virtual {p0}, Lcom/transsion/palmsdk/PalmAuthParam;->getAppid()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v2, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "failure"

    invoke-virtual {p2, p3, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "errcode"

    invoke-virtual {p2, p0, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-static {p1, v3, p2, v4}, Lxm7;->a(Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/Bundle;)V

    :goto_5
    return-void
.end method

.method public d(Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;Ljava/lang/String;)V
    .locals 2

    iget-object p2, p0, Ldq7;->m:Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;

    iget v0, p1, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;->code:I

    iget-object v1, p1, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;->message:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;->c0(ILjava/lang/String;)V

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iget-object p0, p0, Ldq7;->k:Lcom/transsion/palmsdk/PalmAuthParam;

    invoke-virtual {p0}, Lcom/transsion/palmsdk/PalmAuthParam;->getAppid()Ljava/lang/String;

    move-result-object p0

    const-string v0, "appid"

    invoke-virtual {p2, v0, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "version"

    const-string v0, "2.0.1.03"

    invoke-virtual {p2, p0, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "ti_s_result"

    const-string v0, "failure"

    invoke-virtual {p2, p0, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget p0, p1, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;->code:I

    const-string p1, "errcode"

    invoke-virtual {p2, p1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance p0, Lwj;

    const-string p1, "sdk_auth_result"

    const/16 v0, 0x1e1e

    invoke-direct {p0, p1, v0}, Lwj;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lwj;->c(Landroid/os/Bundle;Landroid/os/Bundle;)Lwj;

    move-result-object p0

    invoke-virtual {p0}, Lwj;->b()V

    return-void
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Ldq7;->m:Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;

    iget-object v1, p0, Ldq7;->l:Ljava/lang/String;

    iget-object p0, p0, Ldq7;->k:Lcom/transsion/palmsdk/PalmAuthParam;

    invoke-static {v0, v1, p0}, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;->B0(Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;Ljava/lang/String;Lcom/transsion/palmsdk/PalmAuthParam;)V

    return-void
.end method
