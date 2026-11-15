.class public Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;->E0(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/palmsdk/PalmAuthParam;

.field public final synthetic c:Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;Lcom/transsion/palmsdk/PalmAuthParam;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity$b;->c:Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;

    iput-object p2, p0, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity$b;->b:Lcom/transsion/palmsdk/PalmAuthParam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.palm.id.log"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity$b;->c:Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const v0, 0x9ca8

    invoke-virtual {p1, v0, p2}, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;->c0(ILjava/lang/String;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity$b;->b:Lcom/transsion/palmsdk/PalmAuthParam;

    invoke-virtual {p0}, Lcom/transsion/palmsdk/PalmAuthParam;->getAppid()Ljava/lang/String;

    move-result-object p0

    const-string p2, "appid"

    invoke-virtual {p1, p2, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "version"

    const-string p2, "2.0.1.03"

    invoke-virtual {p1, p0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "ti_s_result"

    const-string p2, "failure"

    invoke-virtual {p1, p0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "errcode"

    invoke-virtual {p1, p0, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/16 p0, 0x1e1e

    const/4 p2, 0x0

    const-string v0, "sdk_auth_scope_result"

    invoke-static {v0, p0, p1, p2}, Lxm7;->a(Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 16

    move-object/from16 v1, p0

    const-string v0, "scopes"

    const-string v2, "open_id"

    const-string v3, "com.palm.id.log"

    const v4, 0x9ca8

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->code()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onResponse code = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v7, 0xc8

    if-eq v5, v7, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onResponse body = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_6

    :cond_0
    :goto_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "errorCode"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "sdk_auth_scope_result"

    const-string v9, "ti_s_result"

    const-string v10, "2.0.1.03"

    const-string v11, "version"

    const-string v12, "appid"

    const-string v14, "code"

    if-gtz v6, :cond_8

    :try_start_1
    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v15

    if-lez v15, :cond_1

    goto/16 :goto_4

    :cond_1
    const-string v6, "state"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v15, v1, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity$b;->b:Lcom/transsion/palmsdk/PalmAuthParam;

    invoke-virtual {v15}, Lcom/transsion/palmsdk/PalmAuthParam;->getState()Ljava/lang/String;

    move-result-object v15

    invoke-static {v6, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v0, v1, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity$b;->c:Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;

    const-string v2, "state data error"

    invoke-virtual {v0, v4, v2}, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;->c0(ILjava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v15, "success"

    if-eqz v6, :cond_6

    :try_start_2
    iget-object v0, v1, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity$b;->b:Lcom/transsion/palmsdk/PalmAuthParam;

    invoke-virtual {v0}, Lcom/transsion/palmsdk/PalmAuthParam;->isReqToken()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity$b;->c:Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;

    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, v1, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity$b;->b:Lcom/transsion/palmsdk/PalmAuthParam;

    invoke-static {v0, v2, v5}, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;->B0(Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;Ljava/lang/String;Lcom/transsion/palmsdk/PalmAuthParam;)V

    return-void

    :cond_3
    sget-object v0, Lao7$a;->a:Lao7;

    iget-object v6, v1, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity$b;->c:Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v6}, Lao7;->j(Landroid/content/Context;)Lcom/transsion/xuanniao/account/model/data/AccountRes;

    move-result-object v0

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v0, :cond_4

    :try_start_3
    const-string v7, "user_info"

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v13, "nickName"

    iget-object v8, v0, Lcom/transsion/xuanniao/account/model/data/AccountRes;->nickname:Ljava/lang/String;

    invoke-virtual {v4, v13, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v8, "userName"

    iget-object v13, v0, Lcom/transsion/xuanniao/account/model/data/AccountRes;->username:Ljava/lang/String;

    invoke-virtual {v4, v8, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v8, "avatarUrl"

    iget-object v13, v0, Lcom/transsion/xuanniao/account/model/data/AccountRes;->avatarUrl:Ljava/lang/String;

    invoke-virtual {v4, v8, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v7, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "linked_id"

    iget-object v0, v0, Lcom/transsion/xuanniao/account/model/data/AccountRes;->xuanniaoId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v4, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "linked_pkg"

    iget-object v4, v1, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity$b;->c:Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v0, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "linked_bd"

    invoke-static {}, Ljr7;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v0, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_4
    :goto_1
    const-string v0, "token_info"

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "auth_code"

    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :goto_2
    :try_start_4
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v2, v1, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity$b;->b:Lcom/transsion/palmsdk/PalmAuthParam;

    invoke-virtual {v2}, Lcom/transsion/palmsdk/PalmAuthParam;->getAppid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v12, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v11, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v9, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lwj;

    const-string v4, "sdk_auth_result"

    const/16 v5, 0x1e1e

    invoke-direct {v2, v4, v5}, Lwj;-><init>(Ljava/lang/String;I)V

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Lwj;->c(Landroid/os/Bundle;Landroid/os/Bundle;)Lwj;

    move-result-object v0

    invoke-virtual {v0}, Lwj;->b()V

    iget-object v0, v1, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity$b;->c:Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;

    iget-object v0, v0, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;->f:Lcom/transsion/palmsdk/data/PalmAuthRequest;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v6}, Lcom/transsion/palmsdk/data/PalmAuthRequest;->setResult(Landroid/os/Bundle;)V

    iget-object v0, v1, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity$b;->c:Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;->f:Lcom/transsion/palmsdk/data/PalmAuthRequest;

    :cond_5
    iget-object v0, v1, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity$b;->c:Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_7

    :cond_6
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v4, v1, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity$b;->b:Lcom/transsion/palmsdk/PalmAuthParam;

    invoke-virtual {v4}, Lcom/transsion/palmsdk/PalmAuthParam;->getAppid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v12, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v11, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v9, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lwj;

    const/16 v6, 0x1e1e

    invoke-direct {v4, v7, v6}, Lwj;-><init>(Ljava/lang/String;I)V

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v6}, Lwj;->c(Landroid/os/Bundle;Landroid/os/Bundle;)Lwj;

    move-result-object v2

    invoke-virtual {v2}, Lwj;->b()V

    iget-object v2, v1, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity$b;->c:Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;

    iget-object v2, v2, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;->f:Lcom/transsion/palmsdk/data/PalmAuthRequest;

    if-eqz v2, :cond_7

    new-instance v2, Landroid/content/Intent;

    iget-object v4, v1, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity$b;->c:Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;

    const-class v6, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2;

    invoke-direct {v2, v4, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "auth_request"

    iget-object v4, v1, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity$b;->c:Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;

    iget-object v4, v4, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;->f:Lcom/transsion/palmsdk/data/PalmAuthRequest;

    invoke-virtual {v4}, Lcom/transsion/palmsdk/data/PalmAuthRequest;->getAuthRequestId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity$b;->c:Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, v1, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity$b;->c:Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;->f:Lcom/transsion/palmsdk/data/PalmAuthRequest;

    :cond_7
    iget-object v0, v1, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity$b;->c:Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_7

    :cond_8
    :goto_4
    if-lez v6, :cond_9

    iget-object v0, v1, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity$b;->c:Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;

    const-string v2, "error_description"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;->c0(ILjava/lang/String;)V

    goto :goto_5

    :cond_9
    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    const v0, 0x9c77

    if-ne v6, v0, :cond_a

    iget-object v0, v1, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity$b;->c:Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;

    iget-boolean v2, v0, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;->g:Z

    if-nez v2, :cond_a

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;->C0(Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;Z)Z

    iget-object v0, v1, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity$b;->c:Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;

    iget-object v2, v0, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;->e:Ldk7;

    invoke-virtual {v2, v0}, Ldk7;->b(Landroid/content/Context;)V

    goto :goto_5

    :cond_a
    iget-object v0, v1, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity$b;->c:Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;

    const-string v2, "message"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;->c0(ILjava/lang/String;)V

    :goto_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v2, v1, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity$b;->b:Lcom/transsion/palmsdk/PalmAuthParam;

    invoke-virtual {v2}, Lcom/transsion/palmsdk/PalmAuthParam;->getAppid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v12, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v11, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "failure"

    invoke-virtual {v0, v9, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "errcode"

    invoke-virtual {v0, v2, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance v2, Lwj;

    const/16 v4, 0x1e1e

    invoke-direct {v2, v7, v4}, Lwj;-><init>(Ljava/lang/String;I)V

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Lwj;->c(Landroid/os/Bundle;Landroid/os/Bundle;)Lwj;

    move-result-object v0

    invoke-virtual {v0}, Lwj;->b()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :goto_6
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v1, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity$b;->c:Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const v2, 0x9ca8

    invoke-virtual {v1, v2, v0}, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;->c0(ILjava/lang/String;)V

    :cond_b
    :goto_7
    return-void
.end method
