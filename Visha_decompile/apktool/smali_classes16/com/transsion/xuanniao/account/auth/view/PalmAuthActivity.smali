.class public Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity;
.super Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lfm7;


# instance fields
.field public e:Ldk7;

.field public f:Lcom/transsion/palmsdk/data/PalmAuthRequest;

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity;->g:Z

    return-void
.end method

.method public static B0(Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity;->f:Lcom/transsion/palmsdk/data/PalmAuthRequest;

    invoke-virtual {v0}, Lcom/transsion/palmsdk/data/PalmAuthRequest;->getAuthParam()Lcom/transsion/palmsdk/PalmAuthParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/palmsdk/PalmAuthParam;->toMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "code"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "grant_type"

    const-string v2, "authorization_code"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_1
    iget-object v1, p0, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity;->e:Ldk7;

    new-instance v2, Lcl7;

    const-class v3, Lcom/transsion/xuanniao/account/auth/data/AuthTokenRes;

    invoke-direct {v2, p0, p0, v3, p1}, Lcl7;-><init>(Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity;Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v1, p0, v0, v2}, Ldk7;->c(Landroid/content/Context;Ljava/util/Map;LOppOOp0/OppO0O0;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const v0, 0x9ca8

    invoke-virtual {p0, v0, p1}, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity;->c0(ILjava/lang/String;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity;->f:Lcom/transsion/palmsdk/data/PalmAuthRequest;

    const-string v1, "version"

    const-string v2, "2.0.1.03"

    const-string v3, "appid"

    invoke-static {p0, p1, v3, v1, v2}, Lok7;->a(Lcom/transsion/palmsdk/data/PalmAuthRequest;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "ti_s_result"

    const-string v1, "failure"

    invoke-virtual {p1, p0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "errcode"

    invoke-virtual {p1, p0, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/16 p0, 0x1e1e

    const/4 v0, 0x0

    const-string v1, "sdk_auth_result"

    invoke-static {v1, p0, p1, v0}, Lxm7;->a(Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/Bundle;)V

    goto :goto_3

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    const p1, 0x9ca7

    const-string v0, "network unavailable"

    invoke-virtual {p0, p1, v0}, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity;->c0(ILjava/lang/String;)V

    :goto_3
    return-void
.end method

.method public static synthetic C0(Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity;->g:Z

    return p1
.end method


# virtual methods
.method public final D0(Z)V
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_5

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity;->f:Lcom/transsion/palmsdk/data/PalmAuthRequest;

    invoke-virtual {v0}, Lcom/transsion/palmsdk/data/PalmAuthRequest;->getAuthParam()Lcom/transsion/palmsdk/PalmAuthParam;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "Bearer "

    invoke-static {v2}, Lxo7;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lao7$a;->a:Lao7;

    invoke-virtual {v3, p0}, Lao7;->n(Landroid/content/Context;)V

    invoke-virtual {v3}, Lao7;->f()Lcom/transsion/xuanniao/account/model/data/Config;

    move-result-object v3

    const-string v4, ""

    if-eqz v3, :cond_2

    iget-object v3, v3, Lcom/transsion/xuanniao/account/model/data/Config;->token:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v3, v4

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Authorization"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v2, :cond_3

    sget v3, Lcom/transsion/xuanniao/account/R$string;->xn_language:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_3
    const-string v2, "Language"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/transsion/palmsdk/PalmAuthParam;->getAppid()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Client-ID"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/transsion/palmsdk/PalmAuthParam;->getAppSign()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AppSign"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/transsion/palmsdk/PalmAuthParam;->getPkgName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AppPackage"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/transsion/palmsdk/PalmAuthParam;->toMap()Ljava/util/Map;

    move-result-object v2

    const-string v3, "grant_type"

    const-string v4, "authorization_code"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "response_type"

    const-string v4, "code"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_4

    sget p1, Lcom/transsion/xuanniao/account/R$string;->xn_loading_login:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->u0(Ljava/lang/String;)V

    :cond_4
    iget-object p1, p0, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity;->e:Ldk7;

    new-instance v3, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity$a;

    invoke-direct {v3, p0, v0}, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity$a;-><init>(Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity;Lcom/transsion/palmsdk/PalmAuthParam;)V

    invoke-virtual {p1, v1, v2, v3}, Ldk7;->d(Ljava/util/Map;Ljava/util/Map;Lokhttp3/Callback;)V

    return-void

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_3
    const p1, 0x9ca7

    const-string v0, "network unavailable"

    invoke-virtual {p0, p1, v0}, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity;->c0(ILjava/lang/String;)V

    return-void
.end method

.method public I()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity;->D0(Z)V

    return-void
.end method

.method public J()Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method public P()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "isFinish"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity;->f:Lcom/transsion/palmsdk/data/PalmAuthRequest;

    invoke-virtual {v1}, Lcom/transsion/palmsdk/data/PalmAuthRequest;->getAuthParam()Lcom/transsion/palmsdk/PalmAuthParam;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/palmsdk/PalmAuthParam;->getPkgName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "source"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity;->f:Lcom/transsion/palmsdk/data/PalmAuthRequest;

    invoke-virtual {v1}, Lcom/transsion/palmsdk/data/PalmAuthRequest;->getAuthRequestId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "auth_request"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public c0(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity;->f:Lcom/transsion/palmsdk/data/PalmAuthRequest;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/transsion/palmsdk/data/PalmAuthRequest;->setException(ILjava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity;->f:Lcom/transsion/palmsdk/data/PalmAuthRequest;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/palmsdk/data/PalmAuthRequest;->onCancel()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "auth_request"

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-static {p0}, Law7;->c(Landroid/content/Context;)Law7;

    move-result-object v1

    invoke-virtual {v1, p1}, Law7;->b(Ljava/lang/String;)Lcom/transsion/palmsdk/data/PalmAuthRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity;->f:Lcom/transsion/palmsdk/data/PalmAuthRequest;

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_2
    new-instance p1, Ldk7;

    invoke-direct {p1}, Ldk7;-><init>()V

    iput-object p1, p0, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity;->e:Ldk7;

    iput-object p0, p1, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "AccountPrefs"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v1, "is_logged_in"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_3

    new-instance p1, Landroid/content/Intent;

    const-class v2, Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    invoke-direct {p1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "isFinish"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity;->f:Lcom/transsion/palmsdk/data/PalmAuthRequest;

    invoke-virtual {v1}, Lcom/transsion/palmsdk/data/PalmAuthRequest;->getAuthParam()Lcom/transsion/palmsdk/PalmAuthParam;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/palmsdk/PalmAuthParam;->getPkgName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "source"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity;->f:Lcom/transsion/palmsdk/data/PalmAuthRequest;

    invoke-virtual {v1}, Lcom/transsion/palmsdk/data/PalmAuthRequest;->getAuthRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_3
    sget p1, Lcom/transsion/xuanniao/account/R$layout;->xn_activity_palm_auth:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0, v1}, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity;->D0(Z)V

    :goto_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->onDestroy()V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity;->e:Ldk7;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity;->f:Lcom/transsion/palmsdk/data/PalmAuthRequest;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/palmsdk/data/PalmAuthRequest;->getAuthRequestId()Ljava/lang/String;

    move-result-object p0

    const-string v0, "auth_request"

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    return-void
.end method

.method public v0(Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/xuanniao/account/R$bool;->sdk_theme_is_dynamic:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lcom/transsion/xuanniao/account/R$style;->XNTranslucent:I

    sget v0, Lcom/transsion/xuanniao/account/R$style;->XNTranslucent_xos:I

    sget v1, Lcom/transsion/xuanniao/account/R$style;->XNTranslucent_itel:I

    invoke-static {p0, p1, v0, v1}, Lolb;->I0(Landroid/content/Context;III)V

    :cond_0
    return-void
.end method
