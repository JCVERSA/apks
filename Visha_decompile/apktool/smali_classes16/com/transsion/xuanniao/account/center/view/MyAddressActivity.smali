.class public Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;
.super Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lvp7;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/xuanniao/account/center/view/MyAddressActivity$c;
    }
.end annotation


# static fields
.field public static final synthetic k:I


# instance fields
.field public e:I

.field public f:Lqr7;

.field public g:Landroidx/recyclerview/widget/RecyclerView;

.field public h:Lcom/transsion/xuanniao/account/center/view/OppOOO0;

.field public i:Lcom/transsion/xuanniao/account/comm/widget/NoWifiPage;

.field public j:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;-><init>()V

    const/16 v0, 0x3e9

    iput v0, p0, Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;->e:I

    return-void
.end method


# virtual methods
.method public final B0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;->f:Lqr7;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lqr7;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;->j:Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public final C0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;->f:Lqr7;

    iget-object v0, v0, Lqr7;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;->i:Lcom/transsion/xuanniao/account/comm/widget/NoWifiPage;

    if-nez v0, :cond_2

    new-instance v0, Lcom/transsion/xuanniao/account/comm/widget/NoWifiPage;

    invoke-direct {v0, p0}, Lcom/transsion/xuanniao/account/comm/widget/NoWifiPage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;->i:Lcom/transsion/xuanniao/account/comm/widget/NoWifiPage;

    new-instance v1, Lcom/transsion/xuanniao/account/center/view/MyAddressActivity$a;

    invoke-direct {v1, p0}, Lcom/transsion/xuanniao/account/center/view/MyAddressActivity$a;-><init>(Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;)V

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/comm/widget/NoWifiPage;->setReload(Lcom/transsion/xuanniao/account/comm/widget/NoWifiPage$b;)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;->i:Lcom/transsion/xuanniao/account/comm/widget/NoWifiPage;

    invoke-virtual {v0, p0}, Lcom/transsion/xuanniao/account/comm/widget/NoWifiPage;->OppO0O0(Landroid/app/Activity;)V

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;->i:Lcom/transsion/xuanniao/account/comm/widget/NoWifiPage;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p0}, Lcom/transsion/xuanniao/account/comm/widget/NoWifiPage;->OppO00p(Landroid/app/Activity;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public J()Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    iget p3, p0, Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;->e:I

    if-ne p1, p3, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    sget p1, Lcom/transsion/xuanniao/account/R$string;->xn_save_success:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->y0(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;->h:Lcom/transsion/xuanniao/account/center/view/OppOOO0;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/center/view/OppOOO0;->getItemCount()I

    move-result p1

    const/4 p3, 0x4

    if-ne p1, p3, :cond_0

    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;->j:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;->f:Lqr7;

    invoke-virtual {p0, p2}, Lqr7;->c(Z)V

    :cond_1
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;->f:Lqr7;

    iget-object v1, v1, Lqr7;->c:Ljava/util/ArrayList;

    const-string v2, "addresses"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/transsion/xuanniao/account/R$layout;->xn_activity_my_address:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    new-instance p1, Lqr7;

    invoke-direct {p1}, Lqr7;-><init>()V

    iput-object p1, p0, Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;->f:Lqr7;

    iput-object p0, p1, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "addresses"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p1, Lqr7;->c:Ljava/util/ArrayList;

    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;->f:Lqr7;

    iget-object p1, p1, Lqr7;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;->f:Lqr7;

    iget-object v1, v1, Lqr7;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Lxj;->l(I)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;->f:Lqr7;

    invoke-virtual {p1, v0}, Lqr7;->c(Z)V

    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_my_address:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    sget p1, Lcom/transsion/xuanniao/account/R$id;->addressListView2:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;->g:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    sget p1, Lcom/transsion/xuanniao/account/R$id;->emptyL:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    sget p1, Lcom/transsion/xuanniao/account/R$id;->addAddress:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;->j:Landroid/widget/Button;

    new-instance v1, Lcom/transsion/xuanniao/account/center/view/MyAddressActivity$c;

    invoke-direct {v1, p0}, Lcom/transsion/xuanniao/account/center/view/MyAddressActivity$c;-><init>(Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;->g:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, v0}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpOverScroll(Landroidx/recyclerview/widget/RecyclerView;I)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    sget p1, Lcom/transsion/xuanniao/account/R$id;->scrollView:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->setUpOverScroll()Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;->f:Lqr7;

    iget-object p1, p1, Lqr7;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;->y(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->onDestroy()V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;->f:Lqr7;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;->f:Lqr7;

    iget-object v1, v1, Lqr7;->c:Ljava/util/ArrayList;

    const-string v2, "addresses"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "addressData"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-class v0, Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lfp7;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;->h:Lcom/transsion/xuanniao/account/center/view/OppOOO0;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;->f:Lqr7;

    if-eqz v1, :cond_0

    iput-object p1, v1, Lqr7;->c:Ljava/util/ArrayList;

    iput-object p1, v0, Lcom/transsion/xuanniao/account/center/view/OppOOO0;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;->B0()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;->C0()V

    sget v0, Lcom/transsion/xuanniao/account/R$id;->placeholder:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->z0()I

    move-result p0

    iput p0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;->h:Lcom/transsion/xuanniao/account/center/view/OppOOO0;

    if-eqz p0, :cond_0

    const-string v0, "addressData"

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/OppOOO0;->o:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_0
    return-void
.end method

.method public y(Ljava/util/ArrayList;)V
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;->C0()V

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    sget v2, Lcom/transsion/xuanniao/account/R$id;->scrollView:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;->g:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;->h:Lcom/transsion/xuanniao/account/center/view/OppOOO0;

    if-nez v0, :cond_1

    new-instance v0, Lcom/transsion/xuanniao/account/center/view/OppOOO0;

    invoke-direct {v0, p0, p1}, Lcom/transsion/xuanniao/account/center/view/OppOOO0;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;->h:Lcom/transsion/xuanniao/account/center/view/OppOOO0;

    new-instance v2, Lcom/transsion/xuanniao/account/center/view/MyAddressActivity$b;

    invoke-direct {v2, p0}, Lcom/transsion/xuanniao/account/center/view/MyAddressActivity$b;-><init>(Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;)V

    iput-object v2, v0, Lcom/transsion/xuanniao/account/center/view/OppOOO0;->q:Lcom/transsion/xuanniao/account/center/view/OppOOO0$a;

    iget-object v2, p0, Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;->g:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    :cond_1
    iput-object p1, v0, Lcom/transsion/xuanniao/account/center/view/OppOOO0;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :goto_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fillDataToPage addresses size := "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "MyAddressActivity"

    invoke-static {v0, p1}, Lcom/transsion/core/log/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;->B0()V

    goto :goto_3

    :cond_3
    :goto_2
    sget p1, Lcom/transsion/xuanniao/account/R$id;->scrollView:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;->g:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    return-void
.end method
