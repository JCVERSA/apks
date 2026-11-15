.class public LOppOOO0/OppOOp0;
.super Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOppOOO0/OppOOp0$OppOO0;
    }
.end annotation


# instance fields
.field public b:Lzl7;

.field public c:Lcom/transsion/xuanniao/account/model/data/AccountRes;

.field public d:Lvk7;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/util/ArrayList;

.field public k:Lcom/transsion/xuanniao/account/model/data/CountryData;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LOppOOO0/OppOOp0;->e:Ljava/lang/String;

    new-instance v0, Lvk7;

    invoke-direct {v0}, Lvk7;-><init>()V

    iput-object v0, p0, LOppOOO0/OppOOp0;->d:Lvk7;

    new-instance v0, Lzl7;

    invoke-direct {v0}, Lzl7;-><init>()V

    iput-object v0, p0, LOppOOO0/OppOOp0;->b:Lzl7;

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 5

    invoke-virtual {p0}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object v0

    invoke-virtual {p0}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object v1

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_loading:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->u0(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "gender"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-virtual {p0}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object v1

    new-instance v2, LOppOOO0/OppOOp0$h;

    invoke-virtual {p0}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object v3

    const-class v4, Lcom/transsion/xuanniao/account/model/data/EncryptRes;

    invoke-direct {v2, p0, v3, v4, p1}, LOppOOO0/OppOOp0$h;-><init>(LOppOOO0/OppOOp0;Landroid/content/Context;Ljava/lang/Class;I)V

    sget-object p1, Lao7$a;->a:Lao7;

    invoke-virtual {p1}, Lao7;->a()Lmk7;

    move-result-object p1

    iput-object p1, v2, LOppOOp0/OppO0O0;->f:Lmk7;

    invoke-static {v1, p1, v0}, Lcom/transsion/xuanniao/account/model/data/CommReq;->generateReq(Landroid/content/Context;Lmk7;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "/sdk/account/update-profile-crypt"

    sget-object v3, Lcr7$b;->a:Lcr7;

    invoke-virtual {v3, v1}, Lcr7;->a(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v3, Lzn7;

    invoke-direct {v3}, Lzn7;-><init>()V

    invoke-static {v0}, Ldp7;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0, p1, v2}, Lzn7;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Lokhttp3/Callback;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    :cond_1
    if-eqz v1, :cond_3

    invoke-virtual {v3, v1}, Lcr7;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    invoke-virtual {p0}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object p1

    invoke-virtual {p0}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object p0

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_net_unavailable:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->y0(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 9

    iget-object v0, p0, LOppOOO0/OppOOp0;->c:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    if-nez v0, :cond_0

    invoke-virtual {p0}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object v0

    invoke-virtual {p0}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object v1

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_loading:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->u0(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    goto :goto_3

    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_3

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_0
    :try_start_1
    iget-object v0, p0, LOppOOO0/OppOOp0;->d:Lvk7;

    invoke-virtual {p0}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object v1

    new-instance v8, LOppOOO0/OppOOp0$b;

    invoke-virtual {p0}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object v4

    const-class v6, Lcom/transsion/xuanniao/account/model/data/AccountRes;

    move-object v2, v8

    move-object v3, p0

    move-object v5, p1

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, LOppOOO0/OppOOp0$b;-><init>(LOppOOO0/OppOOp0;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v8}, Lvk7;->a(Landroid/content/Context;LOppOOp0/OppO0O0;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p0}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    invoke-virtual {p0}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object p1

    invoke-virtual {p0}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object p0

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_net_unavailable:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->y0(Ljava/lang/String;)V

    :goto_1
    return-void

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_3
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 9

    invoke-virtual {p0}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object v0

    invoke-virtual {p0}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object v1

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_loading:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->u0(Ljava/lang/String;)V

    iget-object v0, p0, LOppOOO0/OppOOp0;->d:Lvk7;

    invoke-virtual {p0}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object v1

    new-instance v8, LOppOOO0/OppOOp0$i;

    invoke-virtual {p0}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object v4

    const-class v5, Lcom/transsion/xuanniao/account/model/data/AvatarRes;

    move-object v2, v8

    move-object v3, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, LOppOOO0/OppOOp0$i;-><init>(LOppOOO0/OppOOp0;Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v0, v1, p1, p2, v8}, Lvk7;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;LOppOOp0/OppO0O0;)V

    return-void
.end method

.method public e(Ljava/util/HashMap;Ljava/lang/String;Z)V
    .locals 11

    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p0}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object v0

    invoke-virtual {p0}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object v1

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_loading:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->u0(Ljava/lang/String;)V

    :cond_1
    :try_start_0
    iget-object v0, p0, LOppOOO0/OppOOp0;->d:Lvk7;

    invoke-virtual {p0}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object v1

    new-instance v10, LOppOOO0/OppOOp0$a;

    invoke-virtual {p0}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object v4

    const-class v6, Lcom/transsion/xuanniao/account/model/data/EncryptRes;

    move-object v2, v10

    move-object v3, p0

    move-object v5, p2

    move-object v7, p1

    move-object v8, p2

    move v9, p3

    invoke-direct/range {v2 .. v9}, LOppOOO0/OppOOp0$a;-><init>(LOppOOO0/OppOOp0;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Ljava/util/HashMap;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1, p1, v10}, Lvk7;->c(Landroid/content/Context;Ljava/lang/Object;LOppOOp0/OppO0O0;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p0}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    invoke-virtual {p0}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object p1

    invoke-virtual {p0}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object p0

    sget p2, Lcom/transsion/xuanniao/account/R$string;->xn_net_unavailable:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->y0(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p0, Ljq7;

    invoke-interface {p0}, Ljk7;->J()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    return-object p0
.end method

.method public g(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object v0

    invoke-virtual {p0}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object v1

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_loading:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->u0(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "birthday"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-virtual {p0}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object v1

    new-instance v2, LOppOOO0/OppOOp0$d;

    invoke-virtual {p0}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object v3

    const-class v4, Lcom/transsion/xuanniao/account/model/data/EncryptRes;

    invoke-direct {v2, p0, v3, v4, p1}, LOppOOO0/OppOOp0$d;-><init>(LOppOOO0/OppOOp0;Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    sget-object p1, Lao7$a;->a:Lao7;

    invoke-virtual {p1}, Lao7;->a()Lmk7;

    move-result-object p1

    iput-object p1, v2, LOppOOp0/OppO0O0;->f:Lmk7;

    invoke-static {v1, p1, v0}, Lcom/transsion/xuanniao/account/model/data/CommReq;->generateReq(Landroid/content/Context;Lmk7;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "/sdk/account/update-profile-crypt"

    sget-object v3, Lcr7$b;->a:Lcr7;

    invoke-virtual {v3, v1}, Lcr7;->a(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v3, Lzn7;

    invoke-direct {v3}, Lzn7;-><init>()V

    invoke-static {v0}, Ldp7;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0, p1, v2}, Lzn7;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Lokhttp3/Callback;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    :cond_1
    if-eqz v1, :cond_3

    invoke-virtual {v3, v1}, Lcr7;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    invoke-virtual {p0}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object p1

    invoke-virtual {p0}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object p0

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_net_unavailable:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->y0(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public h()I
    .locals 0

    iget-object p0, p0, LOppOOO0/OppOOp0;->c:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/model/data/AccountRes;->getGender()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public i(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object v0

    invoke-virtual {p0}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object v1

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_loading:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->u0(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "fullName"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-virtual {p0}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object v1

    new-instance v2, LOppOOO0/OppOOp0$f;

    invoke-virtual {p0}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object v3

    const-class v4, Lcom/transsion/xuanniao/account/model/data/EncryptRes;

    invoke-direct {v2, p0, v3, v4, p1}, LOppOOO0/OppOOp0$f;-><init>(LOppOOO0/OppOOp0;Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    sget-object p1, Lao7$a;->a:Lao7;

    invoke-virtual {p1}, Lao7;->a()Lmk7;

    move-result-object p1

    iput-object p1, v2, LOppOOp0/OppO0O0;->f:Lmk7;

    invoke-static {v1, p1, v0}, Lcom/transsion/xuanniao/account/model/data/CommReq;->generateReq(Landroid/content/Context;Lmk7;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "/sdk/account/update-profile-crypt"

    sget-object v3, Lcr7$b;->a:Lcr7;

    invoke-virtual {v3, v1}, Lcr7;->a(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v3, Lzn7;

    invoke-direct {v3}, Lzn7;-><init>()V

    invoke-static {v0}, Ldp7;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0, p1, v2}, Lzn7;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Lokhttp3/Callback;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    :cond_1
    if-eqz v1, :cond_3

    invoke-virtual {v3, v1}, Lcr7;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    invoke-virtual {p0}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object p1

    invoke-virtual {p0}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object p0

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_net_unavailable:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->y0(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public j()V
    .locals 6

    invoke-virtual {p0}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object v0

    invoke-virtual {p0}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object v1

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_loading:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->u0(Ljava/lang/String;)V

    iget-object v0, p0, LOppOOO0/OppOOp0;->d:Lvk7;

    invoke-virtual {p0}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object v1

    iget-object v2, p0, LOppOOO0/OppOOp0;->f:Ljava/lang/String;

    new-instance v3, LOppOOO0/OppOOp0$g;

    invoke-virtual {p0}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object v4

    const-class v5, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;

    invoke-direct {v3, p0, v4, v5}, LOppOOO0/OppOOp0$g;-><init>(LOppOOO0/OppOOp0;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "username"

    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcr7$b;->a:Lcr7;

    invoke-virtual {v0, v1}, Lcr7;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Lzn7;

    invoke-direct {v0}, Lzn7;-><init>()V

    const-string v2, "/sdk/account/username-change"

    invoke-static {v2}, Ldp7;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0, v3}, Lzn7;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Lokhttp3/Callback;)V

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Lcr7;->b(Landroid/content/Context;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object v0

    invoke-virtual {p0}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object v1

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_loading:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->u0(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "signature"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-virtual {p0}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object v1

    new-instance v2, LOppOOO0/OppOOp0$e;

    invoke-virtual {p0}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object v3

    const-class v4, Lcom/transsion/xuanniao/account/model/data/EncryptRes;

    invoke-direct {v2, p0, v3, v4, p1}, LOppOOO0/OppOOp0$e;-><init>(LOppOOO0/OppOOp0;Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    sget-object p1, Lao7$a;->a:Lao7;

    invoke-virtual {p1}, Lao7;->a()Lmk7;

    move-result-object p1

    iput-object p1, v2, LOppOOp0/OppO0O0;->f:Lmk7;

    invoke-static {v1, p1, v0}, Lcom/transsion/xuanniao/account/model/data/CommReq;->generateReq(Landroid/content/Context;Lmk7;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "/sdk/account/update-profile-crypt"

    sget-object v3, Lcr7$b;->a:Lcr7;

    invoke-virtual {v3, v1}, Lcr7;->a(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v3, Lzn7;

    invoke-direct {v3}, Lzn7;-><init>()V

    invoke-static {v0}, Ldp7;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0, p1, v2}, Lzn7;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Lokhttp3/Callback;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    :cond_1
    if-eqz v1, :cond_3

    invoke-virtual {v3, v1}, Lcr7;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    invoke-virtual {p0}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object p1

    invoke-virtual {p0}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object p0

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_net_unavailable:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->y0(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public l()V
    .locals 5

    invoke-virtual {p0}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    goto :goto_3

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
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    :try_start_1
    iget-object v0, p0, LOppOOO0/OppOOp0;->b:Lzl7;

    invoke-virtual {p0}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object v1

    new-instance v2, LOppOOO0/OppOOp0$c;

    invoke-virtual {p0}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object v3

    const-class v4, Lcom/transsion/xuanniao/account/model/data/AddressesListRes;

    invoke-direct {v2, p0, v3, v4}, LOppOOO0/OppOOp0$c;-><init>(LOppOOO0/OppOOp0;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Lzl7;->a(Landroid/content/Context;LOppOOp0/OppO0O0;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p0}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    invoke-virtual {p0}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object v0

    invoke-virtual {p0}, LOppOOO0/OppOOp0;->f()Lcom/transsion/xuanniao/account/center/view/PersonInfoActivity;

    move-result-object p0

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_net_unavailable:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->y0(Ljava/lang/String;)V

    :goto_1
    return-void

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_3
    return-void
.end method
