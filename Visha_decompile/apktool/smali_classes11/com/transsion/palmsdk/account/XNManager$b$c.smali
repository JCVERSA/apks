.class public Lcom/transsion/palmsdk/account/XNManager$b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrj7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/palmsdk/account/XNManager$b;->f(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/palmsdk/data/PalmAuthRequest;

.field public final synthetic b:Lcom/transsion/palmsdk/PalmAuthParam;

.field public final synthetic c:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/transsion/palmsdk/account/XNManager$b;Lcom/transsion/palmsdk/data/PalmAuthRequest;Lcom/transsion/palmsdk/PalmAuthParam;Ljava/util/Map;)V
    .locals 0

    iput-object p2, p0, Lcom/transsion/palmsdk/account/XNManager$b$c;->a:Lcom/transsion/palmsdk/data/PalmAuthRequest;

    iput-object p3, p0, Lcom/transsion/palmsdk/account/XNManager$b$c;->b:Lcom/transsion/palmsdk/PalmAuthParam;

    iput-object p4, p0, Lcom/transsion/palmsdk/account/XNManager$b$c;->c:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 3

    sget-object v0, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAuthCode errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", errorMessage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/palmsdk/account/XNManager$b$c;->a:Lcom/transsion/palmsdk/data/PalmAuthRequest;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/palmsdk/data/PalmAuthRequest;->setException(ILjava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 7

    const-string v0, "open_id"

    const-string v1, "code"

    check-cast p1, Ljava/lang/String;

    sget-object v2, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAuthCode response = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    const v2, 0x9ca8

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object p1, p0, Lcom/transsion/palmsdk/account/XNManager$b$c;->a:Lcom/transsion/palmsdk/data/PalmAuthRequest;

    const-string v0, "authCode data error"

    invoke-virtual {p1, v2, v0}, Lcom/transsion/palmsdk/data/PalmAuthRequest;->setException(ILjava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/transsion/palmsdk/account/XNManager$b$c;->b:Lcom/transsion/palmsdk/PalmAuthParam;

    invoke-virtual {v4}, Lcom/transsion/palmsdk/PalmAuthParam;->isReqToken()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v0, p0, Lcom/transsion/palmsdk/account/XNManager$b$c;->c:Ljava/util/Map;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/transsion/palmsdk/account/XNManager$b$c;->c:Ljava/util/Map;

    const-string v0, "grant_type"

    const-string v1, "authorization_code"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, LOooO0Oo/OooO0o;->e()LOooO0Oo/OooO0o;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/palmsdk/account/XNManager$b$c;->c:Ljava/util/Map;

    new-instance v1, Lcom/transsion/palmsdk/account/a;

    invoke-direct {v1, p0}, Lcom/transsion/palmsdk/account/a;-><init>(Lcom/transsion/palmsdk/account/XNManager$b$c;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lxj7;->a()Lxj7;

    move-result-object v3

    new-instance v4, LOooO0Oo/OooOO0;

    invoke-direct {v4, p1, v0, v1}, LOooO0Oo/OooOO0;-><init>(LOooO0Oo/OooO0o;Ljava/util/Map;Lrj7;)V

    invoke-virtual {v3, v4}, Lxj7;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v4, "token_info"

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "auth_code"

    invoke-virtual {v5, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v4, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/palmsdk/account/XNManager$b$c;->a:Lcom/transsion/palmsdk/data/PalmAuthRequest;

    invoke-virtual {p1, v1}, Lcom/transsion/palmsdk/data/PalmAuthRequest;->setResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object v0, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/palmsdk/account/XNManager$b$c;->a:Lcom/transsion/palmsdk/data/PalmAuthRequest;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/transsion/palmsdk/data/PalmAuthRequest;->setException(ILjava/lang/String;)V

    :goto_1
    return-void
.end method
