.class public Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/palmsdk/PalmID$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/os/Bundle;

.field public final synthetic b:Lcom/transsion/palmsdk/data/PalmAuthRequest;

.field public final synthetic c:Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0;


# direct methods
.method public constructor <init>(Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0;Landroid/os/Bundle;Lcom/transsion/palmsdk/data/PalmAuthRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0$a;->c:Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0;

    iput-object p2, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0$a;->a:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0$a;->b:Lcom/transsion/palmsdk/data/PalmAuthRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1

    const v0, 0xc34f

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0$a;->c:Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0;

    iget-object p1, p1, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0;->OooO0o0:Lcom/transsion/palmsdk/PalmDefaultImpl;

    invoke-static {p1}, Lcom/transsion/palmsdk/PalmDefaultImpl;->u(Lcom/transsion/palmsdk/PalmDefaultImpl;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0$a;->c:Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0;

    iget-object p1, p1, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0;->OooO0o0:Lcom/transsion/palmsdk/PalmDefaultImpl;

    invoke-static {p1}, Lcom/transsion/palmsdk/PalmDefaultImpl;->v(Lcom/transsion/palmsdk/PalmDefaultImpl;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0$a;->c:Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0;

    iget-object p1, p1, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0;->OooO0o0:Lcom/transsion/palmsdk/PalmDefaultImpl;

    invoke-static {p1}, Lcom/transsion/palmsdk/PalmDefaultImpl;->s(Lcom/transsion/palmsdk/PalmDefaultImpl;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Law7;->c(Landroid/content/Context;)Law7;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0$a;->b:Lcom/transsion/palmsdk/data/PalmAuthRequest;

    invoke-virtual {p1, p0}, Law7;->d(Lcom/transsion/palmsdk/data/PalmAuthRequest;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0$a;->c:Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0;

    iget-object p1, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0;->OooO0o0:Lcom/transsion/palmsdk/PalmDefaultImpl;

    iget-object p0, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0;->OooO00o:Lcom/transsion/palmsdk/PalmID$b;

    invoke-static {p1, p0}, Lcom/transsion/palmsdk/PalmDefaultImpl;->w(Lcom/transsion/palmsdk/PalmDefaultImpl;Lcom/transsion/palmsdk/PalmID$b;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0$a;->c:Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0;

    iget-object p0, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0;->OooO00o:Lcom/transsion/palmsdk/PalmID$b;

    invoke-interface {p0, p1, p2}, Lcom/transsion/palmsdk/PalmID$b;->a(ILjava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public b(Lcom/transsion/palmsdk/data/PalmAuthResult;)V
    .locals 5

    sget-object v0, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v1, "sdkAuthListener onSuccess"

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/transsion/palmsdk/data/PalmAuthResult;->getNickName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/transsion/palmsdk/data/PalmAuthResult;->getUserName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "nickName"

    invoke-virtual {p1}, Lcom/transsion/palmsdk/data/PalmAuthResult;->getNickName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "userName"

    invoke-virtual {p1}, Lcom/transsion/palmsdk/data/PalmAuthResult;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "avatarUrl"

    invoke-virtual {p1}, Lcom/transsion/palmsdk/data/PalmAuthResult;->getAvatarUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "openId"

    invoke-virtual {p1}, Lcom/transsion/palmsdk/data/PalmAuthResult;->getOpenid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "unique_id"

    invoke-virtual {p1}, Lcom/transsion/palmsdk/data/PalmAuthResult;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0$a;->a:Landroid/os/Bundle;

    const-string v2, "user_info"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0$a;->c:Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0;

    iget-object v0, v0, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0;->OooO0o0:Lcom/transsion/palmsdk/PalmDefaultImpl;

    invoke-static {v0}, Lcom/transsion/palmsdk/PalmDefaultImpl;->v(Lcom/transsion/palmsdk/PalmDefaultImpl;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/transsion/palmsdk/account/XNManager;->g()Lcom/transsion/palmsdk/account/XNManager;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0$a;->c:Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0;

    iget-object v2, v2, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0;->OooO0o0:Lcom/transsion/palmsdk/PalmDefaultImpl;

    invoke-static {v2}, Lcom/transsion/palmsdk/PalmDefaultImpl;->s(Lcom/transsion/palmsdk/PalmDefaultImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/transsion/palmsdk/account/XNManager;->l(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/transsion/palmsdk/account/XNManager;->g()Lcom/transsion/palmsdk/account/XNManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0$a;->c:Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0;

    iget-object v1, v1, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0;->OooO0o0:Lcom/transsion/palmsdk/PalmDefaultImpl;

    invoke-static {v1}, Lcom/transsion/palmsdk/PalmDefaultImpl;->s(Lcom/transsion/palmsdk/PalmDefaultImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/palmsdk/data/PalmAuthResult;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/transsion/palmsdk/data/PalmAuthResult;->getRefreshToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/palmsdk/account/XNManager;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    if-eqz v1, :cond_4

    const-string v2, "account"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_4
    :goto_1
    const-string v1, "aToken"

    invoke-virtual {p1}, Lcom/transsion/palmsdk/data/PalmAuthResult;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "rToken"

    invoke-virtual {p1}, Lcom/transsion/palmsdk/data/PalmAuthResult;->getRefreshToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0$a;->c:Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0;

    iget-object v1, v1, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0;->OooO0o0:Lcom/transsion/palmsdk/PalmDefaultImpl;

    invoke-static {v1}, Lcom/transsion/palmsdk/PalmDefaultImpl;->s(Lcom/transsion/palmsdk/PalmDefaultImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0$a;->c:Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0;

    iget-object v3, v3, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0;->OooO0o0:Lcom/transsion/palmsdk/PalmDefaultImpl;

    invoke-static {v3}, Lcom/transsion/palmsdk/PalmDefaultImpl;->s(Lcom/transsion/palmsdk/PalmDefaultImpl;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/transsion/palmsdk/account/PalmAccProvider;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".PalmAccProvider"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/token"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :goto_2
    sget-object v1, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    :goto_3
    iget-object v0, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0$a;->c:Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0;

    iget-object v0, v0, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0;->OooO00o:Lcom/transsion/palmsdk/PalmID$b;

    invoke-interface {v0, p1}, Lcom/transsion/palmsdk/PalmID$b;->b(Lcom/transsion/palmsdk/data/PalmAuthResult;)V

    iget-object p0, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0$a;->c:Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0;

    iget-object p0, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0;->OooO0o0:Lcom/transsion/palmsdk/PalmDefaultImpl;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/palmsdk/PalmDefaultImpl;->y(Z)V

    return-void
.end method

.method public onCancel()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0$a;->c:Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0;

    iget-object p0, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0;->OooO00o:Lcom/transsion/palmsdk/PalmID$b;

    invoke-interface {p0}, Lcom/transsion/palmsdk/PalmID$b;->onCancel()V

    return-void
.end method
