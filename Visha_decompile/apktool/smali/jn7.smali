.class public Ljn7;
.super Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;
.source "SourceFile"


# instance fields
.field public b:Lzl7;

.field public c:Lcom/transsion/xuanniao/account/model/data/AddressesListRes$Address;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:I

.field public i:Ljava/lang/String;

.field public j:Lcom/transsion/xuanniao/account/model/data/CountryData;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;-><init>()V

    new-instance v0, Lzl7;

    invoke-direct {v0}, Lzl7;-><init>()V

    iput-object v0, p0, Ljn7;->b:Lzl7;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Lcom/transsion/xuanniao/account/model/data/AddAddressReq;
    .locals 1

    new-instance v0, Lcom/transsion/xuanniao/account/model/data/AddAddressReq;

    invoke-direct {v0}, Lcom/transsion/xuanniao/account/model/data/AddAddressReq;-><init>()V

    iput-object p1, v0, Lcom/transsion/xuanniao/account/model/data/AddAddressReq;->id:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p1, Llp7;

    invoke-interface {p1}, Llp7;->x()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/transsion/xuanniao/account/model/data/AddAddressReq;->userName:Ljava/lang/String;

    invoke-virtual {p0}, Ljn7;->h()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/transsion/xuanniao/account/model/data/AddAddressReq;->label:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p1, Llp7;

    invoke-interface {p1}, Llp7;->i0()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/transsion/xuanniao/account/model/data/AddAddressReq;->address:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p1, Llp7;

    invoke-interface {p1}, Llp7;->k()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/transsion/xuanniao/account/model/data/AddAddressReq;->phone:Ljava/lang/String;

    iget-object p1, p0, Ljn7;->f:Ljava/lang/String;

    iput-object p1, v0, Lcom/transsion/xuanniao/account/model/data/AddAddressReq;->country:Ljava/lang/String;

    iget-object p1, p0, Ljn7;->g:Ljava/lang/String;

    iput-object p1, v0, Lcom/transsion/xuanniao/account/model/data/AddAddressReq;->countryCode:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p1, Llp7;

    invoke-interface {p1}, Llp7;->m0()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/transsion/xuanniao/account/model/data/AddAddressReq;->province:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p1, Llp7;

    invoke-interface {p1}, Llp7;->R()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/transsion/xuanniao/account/model/data/AddAddressReq;->district:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p1, Llp7;

    invoke-interface {p1}, Llp7;->M()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/transsion/xuanniao/account/model/data/AddAddressReq;->postalCode:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p0, Llp7;

    invoke-interface {p0}, Llp7;->O()Z

    move-result p0

    iput-boolean p0, v0, Lcom/transsion/xuanniao/account/model/data/AddAddressReq;->defaultFlag:Z

    return-object v0
.end method

.method public final c()Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p0, Llp7;

    invoke-interface {p0}, Ljk7;->J()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;

    return-object p0
.end method

.method public d()V
    .locals 6

    invoke-virtual {p0}, Ljn7;->c()Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;

    move-result-object v0

    invoke-virtual {p0}, Ljn7;->c()Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;

    move-result-object v1

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_loading:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->u0(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljn7;->b(Ljava/lang/String;)Lcom/transsion/xuanniao/account/model/data/AddAddressReq;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Ljn7;->b:Lzl7;

    invoke-virtual {p0}, Ljn7;->c()Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;

    move-result-object v2

    new-instance v3, Ljn7$a;

    invoke-virtual {p0}, Ljn7;->c()Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;

    move-result-object v4

    const-class v5, Lcom/transsion/xuanniao/account/model/data/BaseEncryptRes;

    invoke-direct {v3, p0, v4, v5}, Ljn7$a;-><init>(Ljn7;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2, v0, v3}, Lzl7;->b(Landroid/content/Context;Lcom/transsion/xuanniao/account/model/data/AddAddressReq;LOppOOp0/OppO0O0;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p0}, Ljn7;->c()Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    invoke-virtual {p0}, Ljn7;->c()Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;

    move-result-object v0

    invoke-virtual {p0}, Ljn7;->c()Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;

    move-result-object p0

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_net_unavailable:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->y0(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public e()Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Ljn7;->j:Lcom/transsion/xuanniao/account/model/data/CountryData;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/model/data/CountryData;->countries:Ljava/util/ArrayList;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public f()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Ljn7;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast v0, Llp7;

    invoke-interface {v0}, Ljk7;->J()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljn7;->e()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/xuanniao/account/model/data/CountryData;->getCountryCode(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljn7;->d:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Ljn7;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Ljn7;->d:Ljava/lang/String;

    return-object p0

    :cond_1
    const-string v0, "+"

    invoke-static {v0}, Lxo7;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Ljn7;->d:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Ljn7;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast v0, Llp7;

    invoke-interface {v0}, Ljk7;->J()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljn7;->e()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/xuanniao/account/model/data/CountryData;->getCountryCode(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljn7;->d:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Ljn7;->d:Ljava/lang/String;

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljn7;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object p0, p0, Ljn7;->i:Ljava/lang/String;

    return-object p0
.end method
