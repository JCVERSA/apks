.class public Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity;
.super Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lqm7;


# instance fields
.field public e:Lcom/transsion/xuanniao/account/login/view/OppO0OO;

.field public f:Lll7;

.field public g:Lcom/transsion/widgetslib/widget/SearchBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;-><init>()V

    return-void
.end method

.method public static synthetic B0(Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity;->D0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic C0(Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity;->H0()V

    return-void
.end method

.method private synthetic D0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static synthetic G0()V
    .locals 1

    invoke-static {}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->getInstance()Lcom/transsion/widgetslib/util/search/SearchAnimManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->b()Landroid/animation/AnimatorSet;

    return-void
.end method

.method private synthetic H0()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity;->g:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->startSearch()V

    return-void
.end method


# virtual methods
.method public final E0(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity;->f:Lll7;

    invoke-virtual {v0}, Lll7;->c()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity;->f:Lll7;

    invoke-virtual {p0}, Lll7;->c()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity;->f:Lll7;

    invoke-virtual {p0}, Lll7;->c()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;

    iget-object v2, v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;->displayName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;->country:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v1, Lcom/transsion/xuanniao/account/model/data/CountryData$Country;->code:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public final F0()V
    .locals 3

    sget v0, Lcom/transsion/xuanniao/account/R$id;->contentView:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/xuanniao/account/R$id;->search_bar:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/widget/SearchBar;

    iput-object v1, p0, Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity;->g:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-static {}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->getInstance()Lcom/transsion/widgetslib/util/search/SearchAnimManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->getActionPolicy()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->getInstance()Lcom/transsion/widgetslib/util/search/SearchAnimManager;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity;->g:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {v1, v2, v0}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->B(Lcom/transsion/widgetslib/widget/SearchBar;Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity;->g:Lcom/transsion/widgetslib/widget/SearchBar;

    new-instance v1, Lrk1;

    invoke-direct {v1}, Lrk1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity;->g:Lcom/transsion/widgetslib/widget/SearchBar;

    new-instance v1, Lsk1;

    invoke-direct {v1, p0}, Lsk1;-><init>(Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_0
    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity;->g:Lcom/transsion/widgetslib/widget/SearchBar;

    new-instance v1, Ltk1;

    invoke-direct {v1, p0}, Ltk1;-><init>(Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity;)V

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/SearchBar;->setBackClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "notShowCode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity;->g:Lcom/transsion/widgetslib/widget/SearchBar;

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_country_region_hint:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/SearchBar;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity;->g:Lcom/transsion/widgetslib/widget/SearchBar;

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_country_hint:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/SearchBar;->setHint(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity;->g:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/View;->setTextDirection(I)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity;->g:Lcom/transsion/widgetslib/widget/SearchBar;

    new-instance v1, Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity$a;

    invoke-direct {v1, p0}, Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity$a;-><init>(Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity;)V

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/SearchBar;->addTextWatcher(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public J()Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    invoke-super {p0, p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/transsion/xuanniao/account/R$layout;->xn_activity_country_select:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    new-instance p1, Lll7;

    invoke-direct {p1}, Lll7;-><init>()V

    iput-object p1, p0, Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity;->f:Lll7;

    iput-object p0, p1, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    iget-object v0, p1, Lll7;->c:Luk7;

    invoke-virtual {p1}, Lll7;->b()Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity;

    move-result-object v1

    new-instance v2, Lnk7;

    invoke-virtual {p1}, Lll7;->b()Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity;

    move-result-object v3

    const-class v4, Lcom/transsion/xuanniao/account/model/data/CountryData;

    invoke-direct {v2, p1, v3, v4}, Lnk7;-><init>(Lll7;Landroid/content/Context;Ljava/lang/Class;)V

    check-cast v0, Lon7;

    invoke-virtual {v0, v1, v2}, Lon7;->a(Landroid/content/Context;LOppOOp0/OppO0O0;)V

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity;->F0()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->onDestroy()V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity;->f:Lll7;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public y(Ljava/util/ArrayList;)V
    .locals 6

    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity;->g:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity;->E0(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity;->e:Lcom/transsion/xuanniao/account/login/view/OppO0OO;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget v0, Lcom/transsion/xuanniao/account/R$id;->listView2:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/transsion/xuanniao/account/login/view/OppO0OO;

    invoke-direct {v2, p0, p1}, Lcom/transsion/xuanniao/account/login/view/OppO0OO;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v2, p0, Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity;->e:Lcom/transsion/xuanniao/account/login/view/OppO0OO;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "notShowCode"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/transsion/xuanniao/account/login/view/OppO0OO;->r:Z

    iget-object v2, p0, Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity;->e:Lcom/transsion/xuanniao/account/login/view/OppO0OO;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "countryCode"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "countryName"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/transsion/xuanniao/account/login/view/OppO0OO;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v2, p0, Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity;->e:Lcom/transsion/xuanniao/account/login/view/OppO0OO;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v2, p0, Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity;->e:Lcom/transsion/xuanniao/account/login/view/OppO0OO;

    new-instance v3, Lcom/transsion/xuanniao/account/login/view/c;

    invoke-direct {v3, p0}, Lcom/transsion/xuanniao/account/login/view/c;-><init>(Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity;)V

    iput-object v3, v2, Lcom/transsion/xuanniao/account/login/view/OppO0OO;->q:Lcom/transsion/xuanniao/account/login/view/OppO0OO$a;

    new-instance v2, LOppOpO0/OppO00p;

    invoke-direct {v2, p0, v0}, LOppOpO0/OppO00p;-><init>(Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity;Landroidx/recyclerview/widget/RecyclerView;)V

    const-wide/16 v3, 0x32

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {v0, v1}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpOverScroll(Landroidx/recyclerview/widget/RecyclerView;I)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/transsion/xuanniao/account/login/view/OppO0OO;->c(Ljava/util/ArrayList;)V

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move p1, v1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x1

    :goto_2
    sget v0, Lcom/transsion/xuanniao/account/R$id;->emptyL:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    const/16 v1, 0x8

    :goto_3
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
