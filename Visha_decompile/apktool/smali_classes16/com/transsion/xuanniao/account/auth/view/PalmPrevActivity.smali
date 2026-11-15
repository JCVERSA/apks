.class public Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;
.super Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lfm7;


# static fields
.field public static final synthetic h:I


# instance fields
.field public e:Ldk7;

.field public f:Lcom/transsion/palmsdk/data/PalmAuthRequest;

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;->g:Z

    return-void
.end method

.method public static B0(Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;Ljava/lang/String;Lcom/transsion/palmsdk/PalmAuthParam;)V
    .locals 9

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
    invoke-virtual {p2}, Lcom/transsion/palmsdk/PalmAuthParam;->toMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "code"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "grant_type"

    const-string v2, "authorization_code"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_1
    iget-object v1, p0, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;->e:Ldk7;

    new-instance v8, Ldq7;

    const-class v5, Lcom/transsion/xuanniao/account/auth/data/AuthTokenRes;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p0

    move-object v6, p2

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Ldq7;-><init>(Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;Landroid/content/Context;Ljava/lang/Class;Lcom/transsion/palmsdk/PalmAuthParam;Ljava/lang/String;)V

    invoke-virtual {v1, p0, v0, v8}, Ldk7;->c(Landroid/content/Context;Ljava/util/Map;LOppOOp0/OppO0O0;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const v0, 0x9ca8

    invoke-virtual {p0, v0, p1}, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;->c0(ILjava/lang/String;)V

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2}, Lcom/transsion/palmsdk/PalmAuthParam;->getAppid()Ljava/lang/String;

    move-result-object p1

    const-string p2, "appid"

    invoke-virtual {p0, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "version"

    const-string p2, "2.0.1.03"

    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ti_s_result"

    const-string p2, "failure"

    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "errcode"

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/16 p1, 0x1e1e

    const/4 p2, 0x0

    const-string v0, "sdk_auth_result"

    invoke-static {v0, p1, p0, p2}, Lxm7;->a(Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/Bundle;)V

    goto :goto_3

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    const p1, 0x9ca7

    const-string p2, "network unavailable"

    invoke-virtual {p0, p1, p2}, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;->c0(ILjava/lang/String;)V

    :goto_3
    return-void
.end method

.method public static synthetic C0(Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;->g:Z

    return p1
.end method


# virtual methods
.method public final D0(Lcom/transsion/xuanniao/account/model/data/AccountRes;)V
    .locals 4

    sget v0, Lcom/transsion/xuanniao/account/R$id;->nickName:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p1, Lcom/transsion/xuanniao/account/model/data/AccountRes;->nickname:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/transsion/xuanniao/account/model/data/AccountRes;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/transsion/xuanniao/account/model/data/AccountRes;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    sget v0, Lcom/transsion/xuanniao/account/R$id;->portrait:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/xuanniao/account/comm/widget/RoundImageView;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-object v1, Lhk7$a;->a:Lhk7;

    iget-object v2, p1, Lcom/transsion/xuanniao/account/model/data/AccountRes;->avatarUrl:Ljava/lang/String;

    invoke-virtual {v1, p0, v2}, Lhk7;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p1, Lcom/transsion/xuanniao/account/model/data/AccountRes;->avatarUrl:Ljava/lang/String;

    new-instance v3, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity$a;

    invoke-direct {v3, p0, p1, v0}, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity$a;-><init>(Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;Lcom/transsion/xuanniao/account/model/data/AccountRes;Lcom/transsion/xuanniao/account/comm/widget/RoundImageView;)V

    invoke-virtual {v1, p0, v2, v3}, Lhk7;->d(Landroid/content/Context;Ljava/lang/String;LOppOp00/a$a;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    iget-object p1, p1, Lcom/transsion/xuanniao/account/model/data/AccountRes;->avatarUrl:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;->F0()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :goto_1
    return-void
.end method

.method public final E0(Z)V
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
    iget-object v0, p0, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;->f:Lcom/transsion/palmsdk/data/PalmAuthRequest;

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
    iget-object p1, p0, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;->e:Ldk7;

    new-instance v3, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity$b;

    invoke-direct {v3, p0, v0}, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity$b;-><init>(Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;Lcom/transsion/palmsdk/PalmAuthParam;)V

    invoke-virtual {p1, v1, v2, v3}, Ldk7;->d(Ljava/util/Map;Ljava/util/Map;Lokhttp3/Callback;)V

    return-void

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_3
    const p1, 0x9ca7

    const-string v0, "network unavailable"

    invoke-virtual {p0, p1, v0}, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;->c0(ILjava/lang/String;)V

    return-void
.end method

.method public final F0()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1

    new-instance p0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget v0, Lcom/transsion/xuanniao/account/R$drawable;->xn_palm_portrait_default:I

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->fallback(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/request/RequestOptions;

    return-object p0
.end method

.method public I()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;->E0(Z)V

    return-void
.end method

.method public J()Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method public P()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;->f:Lcom/transsion/palmsdk/data/PalmAuthRequest;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "isFinish"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;->f:Lcom/transsion/palmsdk/data/PalmAuthRequest;

    invoke-virtual {v1}, Lcom/transsion/palmsdk/data/PalmAuthRequest;->getAuthParam()Lcom/transsion/palmsdk/PalmAuthParam;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/palmsdk/PalmAuthParam;->getPkgName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "source"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;->f:Lcom/transsion/palmsdk/data/PalmAuthRequest;

    invoke-virtual {v1}, Lcom/transsion/palmsdk/data/PalmAuthRequest;->getAuthRequestId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "auth_request"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;->f:Lcom/transsion/palmsdk/data/PalmAuthRequest;

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public c0(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;->f:Lcom/transsion/palmsdk/data/PalmAuthRequest;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/transsion/palmsdk/data/PalmAuthRequest;->setException(ILjava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;->f:Lcom/transsion/palmsdk/data/PalmAuthRequest;

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    const-string v0, "sign"

    invoke-super {p0, p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "auth_request"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1, v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-static {p0}, Law7;->c(Landroid/content/Context;)Law7;

    move-result-object p1

    invoke-virtual {p1, v1}, Law7;->b(Ljava/lang/String;)Lcom/transsion/palmsdk/data/PalmAuthRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;->f:Lcom/transsion/palmsdk/data/PalmAuthRequest;

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    new-instance p1, Ldk7;

    invoke-direct {p1}, Ldk7;-><init>()V

    iput-object p1, p0, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;->e:Ldk7;

    iput-object p0, p1, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "AccountPrefs"

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v1, "is_logged_in"

    invoke-interface {p1, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "isFinish"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;->f:Lcom/transsion/palmsdk/data/PalmAuthRequest;

    invoke-virtual {v0}, Lcom/transsion/palmsdk/data/PalmAuthRequest;->getAuthParam()Lcom/transsion/palmsdk/PalmAuthParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/palmsdk/PalmAuthParam;->getPkgName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "source"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;->f:Lcom/transsion/palmsdk/data/PalmAuthRequest;

    invoke-virtual {v0}, Lcom/transsion/palmsdk/data/PalmAuthRequest;->getAuthRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iput-object v3, p0, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;->f:Lcom/transsion/palmsdk/data/PalmAuthRequest;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_2

    :cond_2
    sget p1, Lcom/transsion/xuanniao/account/R$layout;->xn_activity_palm_prev:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    sget-object p1, Lao7$a;->a:Lao7;

    invoke-virtual {p1, p0}, Lao7;->j(Landroid/content/Context;)Lcom/transsion/xuanniao/account/model/data/AccountRes;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v1}, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;->D0(Lcom/transsion/xuanniao/account/model/data/AccountRes;)V

    :try_start_0
    new-instance v1, Ltp7;

    const-class v8, Lcom/transsion/xuanniao/account/model/data/AccountRes;

    const/4 v7, 0x0

    move-object v4, v1

    move-object v5, p0

    move-object v6, p0

    move-object v9, p0

    invoke-direct/range {v4 .. v9}, Ltp7;-><init>(Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Landroid/content/Context;)V

    invoke-virtual {p1}, Lao7;->a()Lmk7;

    move-result-object p1

    iput-object p1, v1, LOppOOp0/OppO0O0;->f:Lmk7;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2, v0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "enableBase64Img"

    const-string v3, "1"

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, p1, v2}, Lcom/transsion/xuanniao/account/model/data/CommReq;->generateReq(Landroid/content/Context;Lmk7;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "/sdk/account/get-profile-crypt"

    sget-object v2, Lcr7$b;->a:Lcr7;

    invoke-virtual {v2, p0}, Lcr7;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v2, Lzn7;

    invoke-direct {v2}, Lzn7;-><init>()V

    invoke-static {v0}, Ldp7;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p0, v0, p1, v1}, Lzn7;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Lokhttp3/Callback;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    invoke-virtual {v2, p0}, Lcr7;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    const-string v0, "getAccountFromNet e = "

    invoke-static {v0}, Lxo7;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.palm.id.log"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;->f:Lcom/transsion/palmsdk/data/PalmAuthRequest;

    if-eqz p1, :cond_5

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;->f:Lcom/transsion/palmsdk/data/PalmAuthRequest;

    invoke-virtual {v0}, Lcom/transsion/palmsdk/data/PalmAuthRequest;->getAuthRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iput-object v3, p0, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;->f:Lcom/transsion/palmsdk/data/PalmAuthRequest;

    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_1
    sget p1, Lcom/transsion/xuanniao/account/R$id;->tvTitle:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_app_name:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljr7;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget p1, Lcom/transsion/xuanniao/account/R$id;->btnLoginNow:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Ltn7;

    invoke-direct {v0, p0}, Ltn7;-><init>(Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/transsion/xuanniao/account/R$id;->tvSwitchAcc:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lpo7;

    invoke-direct {v0, p0}, Lpo7;-><init>(Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/transsion/xuanniao/account/R$id;->btnClose:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lap7;

    invoke-direct {v0, p0}, Lap7;-><init>(Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->onDestroy()V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;->e:Ldk7;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;->f:Lcom/transsion/palmsdk/data/PalmAuthRequest;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/palmsdk/data/PalmAuthRequest;->getAuthRequestId()Ljava/lang/String;

    move-result-object p0

    const-string v0, "auth_request"

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;->f:Lcom/transsion/palmsdk/data/PalmAuthRequest;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/palmsdk/data/PalmAuthRequest;->onCancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;->f:Lcom/transsion/palmsdk/data/PalmAuthRequest;

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

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
