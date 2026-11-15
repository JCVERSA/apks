.class public Lqr7;
.super Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;
.source "SourceFile"


# instance fields
.field public b:Lzl7;

.field public c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;-><init>()V

    new-instance v0, Lzl7;

    invoke-direct {v0}, Lzl7;-><init>()V

    iput-object v0, p0, Lqr7;->b:Lzl7;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Lqr7;->d()Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;

    move-result-object v0

    invoke-virtual {p0}, Lqr7;->d()Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;

    move-result-object v1

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_loading:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->u0(Ljava/lang/String;)V

    iget-object v0, p0, Lqr7;->b:Lzl7;

    invoke-virtual {p0}, Lqr7;->d()Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;

    move-result-object v1

    new-instance v2, Lqr7$b;

    invoke-virtual {p0}, Lqr7;->d()Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;

    move-result-object v3

    const-class v4, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;

    invoke-direct {v2, p0, v3, v4, p1}, Lqr7$b;-><init>(Lqr7;Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "id"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcr7$b;->a:Lcr7;

    invoke-virtual {p1, v1}, Lcr7;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lzn7;

    invoke-direct {p1}, Lzn7;-><init>()V

    const-string v0, "/app/address/remove"

    invoke-static {v0}, Ldp7;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0, p0, v2}, Lzn7;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Lokhttp3/Callback;)V

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p1, v1}, Lcr7;->b(Landroid/content/Context;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public c(Z)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lqr7;->d()Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;

    move-result-object p1

    invoke-virtual {p0}, Lqr7;->d()Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;

    move-result-object v0

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_loading:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->u0(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object p1, p0, Lqr7;->b:Lzl7;

    invoke-virtual {p0}, Lqr7;->d()Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;

    move-result-object v0

    new-instance v1, Lqr7$a;

    invoke-virtual {p0}, Lqr7;->d()Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;

    move-result-object v2

    const-class v3, Lcom/transsion/xuanniao/account/model/data/AddressesListRes;

    invoke-direct {v1, p0, v2, v3}, Lqr7$a;-><init>(Lqr7;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0, v1}, Lzl7;->a(Landroid/content/Context;LOppOOp0/OppO0O0;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p0}, Lqr7;->d()Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    invoke-virtual {p0}, Lqr7;->d()Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;

    move-result-object p1

    invoke-virtual {p0}, Lqr7;->d()Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;

    move-result-object p0

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_net_unavailable:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->y0(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final d()Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p0, Lvp7;

    invoke-interface {p0}, Ljk7;->J()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;

    return-object p0
.end method
