.class public LOppOOO0/OppOp0;
.super Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOppOOO0/OppOp0$OppO0Op;
    }
.end annotation


# instance fields
.field public b:Lyo7;

.field public c:Lvk7;

.field public d:Lxl7;

.field public e:Lcom/transsion/xuanniao/account/model/data/AccountRes;

.field public f:Ljava/lang/String;

.field public g:Lum7;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LOppOOO0/OppOp0;->f:Ljava/lang/String;

    new-instance v0, Lyo7;

    invoke-direct {v0}, Lyo7;-><init>()V

    iput-object v0, p0, LOppOOO0/OppOp0;->b:Lyo7;

    new-instance v0, Lvk7;

    invoke-direct {v0}, Lvk7;-><init>()V

    iput-object v0, p0, LOppOOO0/OppOp0;->c:Lvk7;

    new-instance v0, Lsp7;

    invoke-direct {v0}, Lsp7;-><init>()V

    iput-object v0, p0, LOppOOO0/OppOp0;->d:Lxl7;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)V
    .locals 9

    invoke-virtual {p0}, LOppOOO0/OppOp0;->e()Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

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
    invoke-virtual {p0}, LOppOOO0/OppOp0;->e()Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;

    move-result-object v0

    invoke-virtual {p0}, LOppOOO0/OppOp0;->e()Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;

    move-result-object v1

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_loading:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->u0(Ljava/lang/String;)V

    :try_start_1
    iget-object v0, p0, LOppOOO0/OppOp0;->c:Lvk7;

    invoke-virtual {p0}, LOppOOO0/OppOp0;->e()Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;

    move-result-object v1

    new-instance v8, LOppOOO0/OppOp0$a;

    invoke-virtual {p0}, LOppOOO0/OppOp0;->e()Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;

    move-result-object v4

    const-class v6, Lcom/transsion/xuanniao/account/model/data/AccountRes;

    move-object v2, v8

    move-object v3, p0

    move-object v5, p1

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, LOppOOO0/OppOp0$a;-><init>(LOppOOO0/OppOp0;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v8}, Lvk7;->a(Landroid/content/Context;LOppOOp0/OppO0O0;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p0}, LOppOOO0/OppOp0;->e()Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    invoke-virtual {p0}, LOppOOO0/OppOp0;->e()Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;

    move-result-object p1

    invoke-virtual {p0}, LOppOOO0/OppOp0;->e()Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;

    move-result-object p0

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_net_unavailable:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->y0(Ljava/lang/String;)V

    :goto_1
    return-void

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_3
    return-void
.end method

.method public c(Ljava/util/HashMap;Ljava/lang/String;Z)V
    .locals 11

    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p0}, LOppOOO0/OppOp0;->e()Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;

    move-result-object v0

    invoke-virtual {p0}, LOppOOO0/OppOp0;->e()Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;

    move-result-object v1

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_loading:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->u0(Ljava/lang/String;)V

    :cond_1
    :try_start_0
    iget-object v0, p0, LOppOOO0/OppOp0;->c:Lvk7;

    invoke-virtual {p0}, LOppOOO0/OppOp0;->e()Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;

    move-result-object v1

    new-instance v10, LOppOOO0/OppOp0$c;

    invoke-virtual {p0}, LOppOOO0/OppOp0;->e()Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;

    move-result-object v4

    const-class v6, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;

    move-object v2, v10

    move-object v3, p0

    move-object v5, p2

    move-object v7, p1

    move-object v8, p2

    move v9, p3

    invoke-direct/range {v2 .. v9}, LOppOOO0/OppOp0$c;-><init>(LOppOOO0/OppOp0;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Ljava/util/HashMap;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1, p1, v10}, Lvk7;->c(Landroid/content/Context;Ljava/lang/Object;LOppOOp0/OppO0O0;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p0}, LOppOOO0/OppOp0;->e()Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    invoke-virtual {p0}, LOppOOO0/OppOp0;->e()Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;

    move-result-object p1

    invoke-virtual {p0}, LOppOOO0/OppOp0;->e()Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;

    move-result-object p0

    sget p2, Lcom/transsion/xuanniao/account/R$string;->xn_net_unavailable:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->y0(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public d(Z)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p0, Lqq7;

    invoke-interface {p0}, Lqq7;->B()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LOppOOO0/OppOp0;->e()Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;

    move-result-object p1

    invoke-virtual {p0}, LOppOOO0/OppOp0;->e()Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;

    move-result-object v0

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_logout_now:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->u0(Ljava/lang/String;)V

    iget-object p1, p0, LOppOOO0/OppOp0;->b:Lyo7;

    invoke-virtual {p0}, LOppOOO0/OppOp0;->e()Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;

    move-result-object v0

    new-instance v1, LOppOOO0/OppOp0$b;

    invoke-virtual {p0}, LOppOOO0/OppOp0;->e()Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;

    move-result-object v2

    const-class v3, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;

    invoke-direct {v1, p0, v2, v3}, LOppOOO0/OppOp0$b;-><init>(LOppOOO0/OppOp0;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0, v1}, Lyo7;->a(Landroid/content/Context;LOppOOp0/OppO0O0;)V

    :goto_0
    return-void
.end method

.method public final e()Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p0, Lqq7;

    invoke-interface {p0}, Ljk7;->J()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;

    return-object p0
.end method

.method public f()Ljava/util/List;
    .locals 3

    iget-object v0, p0, LOppOOO0/OppOp0;->d:Lxl7;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LOppOOO0/OppOp0;->e()Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lsp7;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/transsion/xuanniao/account/model/data/OptionItem;

    invoke-direct {v1}, Lcom/transsion/xuanniao/account/model/data/OptionItem;-><init>()V

    const/4 v2, 0x1

    iput v2, v1, Lcom/transsion/xuanniao/account/model/data/OptionItem;->optionType:I

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_logout:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/transsion/xuanniao/account/model/data/OptionItem;->optionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
