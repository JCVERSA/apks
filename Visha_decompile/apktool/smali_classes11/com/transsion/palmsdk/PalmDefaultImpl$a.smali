.class public Lcom/transsion/palmsdk/PalmDefaultImpl$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/palmsdk/PalmID$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/palmsdk/PalmDefaultImpl;->d(Landroid/content/Context;ZZLcom/transsion/palmsdk/PalmID$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/palmsdk/PalmID$b;

.field public final synthetic b:Lcom/transsion/palmsdk/PalmDefaultImpl;


# direct methods
.method public constructor <init>(Lcom/transsion/palmsdk/PalmDefaultImpl;Lcom/transsion/palmsdk/PalmID$b;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$a;->b:Lcom/transsion/palmsdk/PalmDefaultImpl;

    iput-object p2, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$a;->a:Lcom/transsion/palmsdk/PalmID$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 3

    sget-object v0, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFailure errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", errorMessage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$a;->a:Lcom/transsion/palmsdk/PalmID$b;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/palmsdk/PalmID$b;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/transsion/palmsdk/data/PalmAuthResult;)V
    .locals 6

    const-string v0, ""

    sget-object v1, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v2, "onSuccess "

    invoke-static {v2}, Lqj7;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/transsion/palmsdk/data/PalmAuthResult;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$a;->b:Lcom/transsion/palmsdk/PalmDefaultImpl;

    invoke-static {v1}, Lcom/transsion/palmsdk/PalmDefaultImpl;->t(Lcom/transsion/palmsdk/PalmDefaultImpl;)Lcom/transsion/palmsdk/PalmAuthParam;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/palmsdk/PalmAuthParam;->getIntentActivity()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "access_token"

    invoke-virtual {p1}, Lcom/transsion/palmsdk/data/PalmAuthResult;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "refresh_token"

    invoke-virtual {p1}, Lcom/transsion/palmsdk/data/PalmAuthResult;->getRefreshToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "open_id"

    invoke-virtual {p1}, Lcom/transsion/palmsdk/data/PalmAuthResult;->getOpenid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p1}, Lcom/transsion/palmsdk/data/PalmAuthResult;->getNickName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lcom/transsion/palmsdk/data/PalmAuthResult;->getUserName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "nickName"

    invoke-virtual {p1}, Lcom/transsion/palmsdk/data/PalmAuthResult;->getNickName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "userName"

    invoke-virtual {p1}, Lcom/transsion/palmsdk/data/PalmAuthResult;->getUserName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "avatarUrl"

    invoke-virtual {p1}, Lcom/transsion/palmsdk/data/PalmAuthResult;->getAvatarUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v2, v0

    :goto_1
    sget-object v3, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    :cond_1
    :goto_2
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "token_info"

    invoke-virtual {p1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "user_info"

    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$a;->b:Lcom/transsion/palmsdk/PalmDefaultImpl;

    invoke-static {v2}, Lcom/transsion/palmsdk/PalmDefaultImpl;->s(Lcom/transsion/palmsdk/PalmDefaultImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$a;->b:Lcom/transsion/palmsdk/PalmDefaultImpl;

    invoke-static {p0}, Lcom/transsion/palmsdk/PalmDefaultImpl;->s(Lcom/transsion/palmsdk/PalmDefaultImpl;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception p0

    sget-object p1, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$a;->a:Lcom/transsion/palmsdk/PalmID$b;

    if-eqz v0, :cond_3

    sget-object v0, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v1, "callback onSuccess"

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$a;->a:Lcom/transsion/palmsdk/PalmID$b;

    invoke-interface {p0, p1}, Lcom/transsion/palmsdk/PalmID$b;->b(Lcom/transsion/palmsdk/data/PalmAuthResult;)V

    :cond_3
    :goto_3
    return-void
.end method

.method public onCancel()V
    .locals 2

    sget-object v0, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v1, "onCancel"

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$a;->a:Lcom/transsion/palmsdk/PalmID$b;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/palmsdk/PalmID$b;->onCancel()V

    :cond_0
    return-void
.end method
