.class public Lvn7;
.super Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;
.source "SourceFile"


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lmo7;

.field public e:Lcom/transsion/xuanniao/account/model/data/EmergencyListRes$Emergency;

.field public f:Lcom/transsion/xuanniao/account/model/data/CountryData;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;-><init>()V

    new-instance v0, Lmo7;

    invoke-direct {v0}, Lmo7;-><init>()V

    iput-object v0, p0, Lvn7;->d:Lmo7;

    return-void
.end method


# virtual methods
.method public final b()Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p0, Lqo7;

    invoke-interface {p0}, Ljk7;->J()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;

    return-object p0
.end method

.method public c()V
    .locals 6

    invoke-virtual {p0}, Lvn7;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-class v1, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lvn7;->b()Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;

    move-result-object v0

    invoke-virtual {p0}, Lvn7;->b()Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;

    move-result-object v2

    sget v3, Lcom/transsion/xuanniao/account/R$string;->xn_loading:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->u0(Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/xuanniao/account/model/data/AddContactReq;

    invoke-direct {v0}, Lcom/transsion/xuanniao/account/model/data/AddContactReq;-><init>()V

    iget-object v2, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast v2, Lqo7;

    invoke-interface {v2}, Lqo7;->x()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/transsion/xuanniao/account/model/data/AddContactReq;->userName:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast v2, Lqo7;

    invoke-interface {v2}, Lqo7;->m()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/transsion/xuanniao/account/model/data/AddContactReq;->email:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast v2, Lqo7;

    invoke-interface {v2}, Lqo7;->q0()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast v2, Lqo7;

    invoke-interface {v2}, Lqo7;->k()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/transsion/xuanniao/account/model/data/AddContactReq;->phone:Ljava/lang/String;

    :cond_0
    iget-object v2, p0, Lvn7;->d:Lmo7;

    invoke-virtual {p0}, Lvn7;->b()Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;

    move-result-object v3

    new-instance v4, Lim7;

    invoke-virtual {p0}, Lvn7;->b()Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;

    move-result-object v5

    invoke-direct {v4, p0, v5, v1}, Lim7;-><init>(Lvn7;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcr7$b;->a:Lcr7;

    invoke-virtual {p0, v3}, Lcr7;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p0, Lzn7;

    invoke-direct {p0}, Lzn7;-><init>()V

    const-string v1, "/app/contact/new"

    invoke-static {v1}, Ldp7;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v1, v0, v4}, Lzn7;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Lokhttp3/Callback;)V

    goto/16 :goto_0

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    :cond_2
    if-eqz v3, :cond_7

    invoke-virtual {p0, v3}, Lcr7;->b(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Lvn7;->b()Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;

    move-result-object v0

    invoke-virtual {p0}, Lvn7;->b()Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;

    move-result-object v2

    sget v3, Lcom/transsion/xuanniao/account/R$string;->xn_loading:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->u0(Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/xuanniao/account/model/data/UpdateContactReq;

    invoke-direct {v0}, Lcom/transsion/xuanniao/account/model/data/UpdateContactReq;-><init>()V

    iget-object v2, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast v2, Lqo7;

    invoke-interface {v2}, Lqo7;->x()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/transsion/xuanniao/account/model/data/UpdateContactReq;->userName:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast v2, Lqo7;

    invoke-interface {v2}, Lqo7;->m()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/transsion/xuanniao/account/model/data/UpdateContactReq;->email:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast v2, Lqo7;

    invoke-interface {v2}, Lqo7;->q0()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast v2, Lqo7;

    invoke-interface {v2}, Lqo7;->k()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/transsion/xuanniao/account/model/data/UpdateContactReq;->phone:Ljava/lang/String;

    :cond_4
    invoke-virtual {p0}, Lvn7;->e()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/transsion/xuanniao/account/model/data/UpdateContactReq;->id:Ljava/lang/String;

    iget-object v2, p0, Lvn7;->d:Lmo7;

    invoke-virtual {p0}, Lvn7;->b()Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;

    move-result-object v3

    new-instance v4, Lbn7;

    invoke-virtual {p0}, Lvn7;->b()Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;

    move-result-object v5

    invoke-direct {v4, p0, v5, v1}, Lbn7;-><init>(Lvn7;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcr7$b;->a:Lcr7;

    invoke-virtual {p0, v3}, Lcr7;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance p0, Lzn7;

    invoke-direct {p0}, Lzn7;-><init>()V

    const-string v1, "/app/contact/update"

    invoke-static {v1}, Ldp7;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v1, v0, v4}, Lzn7;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Lokhttp3/Callback;)V

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    :cond_6
    if-eqz v3, :cond_7

    invoke-virtual {p0, v3}, Lcr7;->b(Landroid/content/Context;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lvn7;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lvn7;->f:Lcom/transsion/xuanniao/account/model/data/CountryData;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/transsion/xuanniao/account/model/data/CountryData;->countries:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast v0, Lqo7;

    invoke-interface {v0}, Ljk7;->J()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lvn7;->f:Lcom/transsion/xuanniao/account/model/data/CountryData;

    iget-object v1, v1, Lcom/transsion/xuanniao/account/model/data/CountryData;->countries:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/transsion/xuanniao/account/model/data/CountryData;->getCountryCode(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvn7;->b:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0

    :cond_2
    :goto_1
    iget-object p0, p0, Lvn7;->b:Ljava/lang/String;

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lvn7;->e:Lcom/transsion/xuanniao/account/model/data/EmergencyListRes$Emergency;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/model/data/EmergencyListRes$Emergency;->id:Ljava/lang/String;

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lvn7;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, "+"

    invoke-static {v0}, Lxo7;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lvn7;->d()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
