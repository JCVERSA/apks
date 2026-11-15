.class public Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2;->C0(Ljava/util/Map;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/palmsdk/PalmAuthParam;

.field public final synthetic c:Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2;Lcom/transsion/palmsdk/PalmAuthParam;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2$a;->c:Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2;

    iput-object p2, p0, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2$a;->b:Lcom/transsion/palmsdk/PalmAuthParam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.palm.id.log"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2$a;->c:Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const v0, 0x9ca8

    invoke-virtual {p1, v0, p2}, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2;->c0(ILjava/lang/String;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2$a;->c:Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2;->f:Lcom/transsion/palmsdk/data/PalmAuthRequest;

    const-string p2, "version"

    const-string v0, "2.0.1.03"

    const-string v1, "appid"

    invoke-static {p0, p1, v1, p2, v0}, Lok7;->a(Lcom/transsion/palmsdk/data/PalmAuthRequest;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "ti_s_result"

    const-string p2, "failure"

    invoke-virtual {p1, p0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lwj;

    const-string p2, "sdk_auth_result"

    const/16 v0, 0x1e1e

    invoke-direct {p0, p2, v0}, Lwj;-><init>(Ljava/lang/String;I)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lwj;->c(Landroid/os/Bundle;Landroid/os/Bundle;)Lwj;

    move-result-object p0

    invoke-virtual {p0}, Lwj;->b()V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 16

    move-object/from16 v1, p0

    const-string v0, "open_id"

    const-string v2, "com.palm.id.log"

    const v3, 0x9ca8

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->code()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onResponse code = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, 0xc8

    if-eq v4, v6, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onResponse body = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_6

    :cond_0
    :goto_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "errorCode"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "sdk_auth_result"

    const-string v9, "ti_s_result"

    const-string v10, "2.0.1.03"

    const-string v11, "version"

    const-string v12, "appid"

    const-string v13, "code"

    if-gtz v5, :cond_5

    :try_start_1
    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    if-lez v14, :cond_1

    goto/16 :goto_4

    :cond_1
    const-string v5, "state"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v14, v1, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2$a;->b:Lcom/transsion/palmsdk/PalmAuthParam;

    invoke-virtual {v14}, Lcom/transsion/palmsdk/PalmAuthParam;->getState()Ljava/lang/String;

    move-result-object v14

    invoke-static {v5, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v0, v1, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2$a;->c:Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2;

    const-string v4, "state data error"

    invoke-virtual {v0, v3, v4}, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2;->c0(ILjava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, v1, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2$a;->b:Lcom/transsion/palmsdk/PalmAuthParam;

    invoke-virtual {v5}, Lcom/transsion/palmsdk/PalmAuthParam;->isReqToken()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v0, v1, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2$a;->c:Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2;

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2;->B0(Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2;Ljava/lang/String;)V

    return-void

    :cond_3
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    sget-object v14, Lao7$a;->a:Lao7;

    iget-object v15, v1, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2$a;->c:Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2;

    invoke-virtual {v14, v15}, Lao7;->j(Landroid/content/Context;)Lcom/transsion/xuanniao/account/model/data/AccountRes;

    move-result-object v14

    if-eqz v14, :cond_4

    const-string v15, "user_info"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "nickName"

    iget-object v7, v14, Lcom/transsion/xuanniao/account/model/data/AccountRes;->nickname:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v6, "userName"

    iget-object v7, v14, Lcom/transsion/xuanniao/account/model/data/AccountRes;->username:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v6, "avatarUrl"

    iget-object v7, v14, Lcom/transsion/xuanniao/account/model/data/AccountRes;->avatarUrl:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v15, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "linked_id"

    iget-object v6, v14, Lcom/transsion/xuanniao/account/model/data/AccountRes;->xuanniaoId:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "linked_pkg"

    iget-object v6, v1, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2$a;->c:Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "linked_bd"

    invoke-static {}, Ljr7;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_4
    :goto_1
    const-string v3, "token_info"

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "auth_code"

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v7, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :goto_2
    :try_start_3
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v3, v1, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2$a;->c:Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2;

    iget-object v3, v3, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2;->f:Lcom/transsion/palmsdk/data/PalmAuthRequest;

    invoke-virtual {v3}, Lcom/transsion/palmsdk/data/PalmAuthRequest;->getAuthParam()Lcom/transsion/palmsdk/PalmAuthParam;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/palmsdk/PalmAuthParam;->getAppid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v12, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v11, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "success"

    invoke-virtual {v0, v9, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lwj;

    const/16 v4, 0x1e1e

    invoke-direct {v3, v8, v4}, Lwj;-><init>(Ljava/lang/String;I)V

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lwj;->c(Landroid/os/Bundle;Landroid/os/Bundle;)Lwj;

    move-result-object v0

    invoke-virtual {v0}, Lwj;->b()V

    iget-object v0, v1, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2$a;->c:Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2;

    iget-object v0, v0, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2;->f:Lcom/transsion/palmsdk/data/PalmAuthRequest;

    invoke-virtual {v0, v5}, Lcom/transsion/palmsdk/data/PalmAuthRequest;->setResult(Landroid/os/Bundle;)V

    iget-object v0, v1, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2$a;->c:Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_7

    :cond_5
    :goto_4
    if-lez v5, :cond_6

    iget-object v0, v1, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2$a;->c:Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2;

    const-string v3, "error_description"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2;->c0(ILjava/lang/String;)V

    goto :goto_5

    :cond_6
    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const-string v0, "message"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v3, 0x9c77

    if-ne v5, v3, :cond_7

    iget-object v3, v1, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2$a;->c:Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2;

    iget-boolean v4, v3, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2;->h:Z

    if-nez v4, :cond_7

    const/4 v0, 0x1

    invoke-static {v3, v0}, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2;->D0(Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2;Z)Z

    iget-object v0, v1, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2$a;->c:Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2;

    iget-object v3, v0, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2;->e:Ldk7;

    invoke-virtual {v3, v0}, Ldk7;->b(Landroid/content/Context;)V

    goto :goto_5

    :cond_7
    iget-object v3, v1, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2$a;->c:Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2;

    invoke-virtual {v3, v5, v0}, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2;->c0(ILjava/lang/String;)V

    :goto_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v3, v1, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2$a;->c:Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2;

    iget-object v3, v3, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2;->f:Lcom/transsion/palmsdk/data/PalmAuthRequest;

    invoke-virtual {v3}, Lcom/transsion/palmsdk/data/PalmAuthRequest;->getAuthParam()Lcom/transsion/palmsdk/PalmAuthParam;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/palmsdk/PalmAuthParam;->getAppid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v12, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v11, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "failure"

    invoke-virtual {v0, v9, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "errcode"

    invoke-virtual {v0, v3, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance v3, Lwj;

    const/16 v4, 0x1e1e

    invoke-direct {v3, v8, v4}, Lwj;-><init>(Ljava/lang/String;I)V

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lwj;->c(Landroid/os/Bundle;Landroid/os/Bundle;)Lwj;

    move-result-object v0

    invoke-virtual {v0}, Lwj;->b()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    :goto_6
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v1, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2$a;->c:Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const v2, 0x9ca8

    invoke-virtual {v1, v2, v0}, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2;->c0(ILjava/lang/String;)V

    :cond_8
    :goto_7
    return-void
.end method
