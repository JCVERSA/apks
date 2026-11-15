.class public Lcom/transsion/tools/activities/SkinsActivity;
.super Lcom/transsion/playercommon/activities/BaseActivity;
.source "SourceFile"


# instance fields
.field public N:Landroidx/recyclerview/widget/RecyclerView;

.field public O:Landroidx/recyclerview/widget/RecyclerView;

.field public final P:Ljava/util/List;

.field public final Q:Ljava/util/List;

.field public final R:Ljava/util/List;

.field public S:I

.field public T:Lcom/transsion/tools/adapter/SkinsMenuAdapter;

.field public U:Lcom/transsion/tools/adapter/DefaultSkinsAdapter;

.field public V:Lxn9;

.field public W:Z

.field public X:Z

.field public Y:I

.field public Z:Lcom/transsion/playercommon/utils/decoration/GridSpaceItemDecoration;

.field public a0:Lcom/transsion/tools/model/SkinsViewModel;

.field public b0:Z

.field public final c0:Los0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/BaseActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/tools/activities/SkinsActivity;->P:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/tools/activities/SkinsActivity;->Q:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/tools/activities/SkinsActivity;->R:Ljava/util/List;

    const/4 v0, 0x1

    iput v0, p0, Lcom/transsion/tools/activities/SkinsActivity;->S:I

    iput-boolean v0, p0, Lcom/transsion/tools/activities/SkinsActivity;->X:Z

    new-instance v0, Lcom/transsion/tools/activities/SkinsActivity$e;

    invoke-direct {v0, p0}, Lcom/transsion/tools/activities/SkinsActivity$e;-><init>(Lcom/transsion/tools/activities/SkinsActivity;)V

    iput-object v0, p0, Lcom/transsion/tools/activities/SkinsActivity;->c0:Los0;

    return-void
.end method

.method public static bridge synthetic A0(Lcom/transsion/tools/activities/SkinsActivity;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/tools/activities/SkinsActivity;->S:I

    return-void
.end method

.method public static bridge synthetic B0(Lcom/transsion/tools/activities/SkinsActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/tools/activities/SkinsActivity;->C0()V

    return-void
.end method

.method public static F0()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private G0()V
    .locals 3

    invoke-static {p0}, Lb39;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    invoke-virtual {p0, v0}, Lcom/transsion/tools/activities/SkinsActivity;->M0(I)V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsActivity;->N:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpOverScroll(Landroidx/recyclerview/widget/RecyclerView;I)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    new-instance v0, Lcom/transsion/tools/adapter/SkinsMenuAdapter;

    invoke-direct {v0, p0}, Lcom/transsion/tools/adapter/SkinsMenuAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/tools/activities/SkinsActivity;->T:Lcom/transsion/tools/adapter/SkinsMenuAdapter;

    new-instance v0, Lcom/transsion/tools/adapter/DefaultSkinsAdapter;

    invoke-direct {v0}, Lcom/transsion/tools/adapter/DefaultSkinsAdapter;-><init>()V

    iput-object v0, p0, Lcom/transsion/tools/activities/SkinsActivity;->U:Lcom/transsion/tools/adapter/DefaultSkinsAdapter;

    new-instance v2, Lyn9;

    invoke-direct {v2, p0}, Lyn9;-><init>(Lcom/transsion/tools/activities/SkinsActivity;)V

    invoke-virtual {v0, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsActivity;->T:Lcom/transsion/tools/adapter/SkinsMenuAdapter;

    new-instance v2, Lzn9;

    invoke-direct {v2, p0}, Lzn9;-><init>(Lcom/transsion/tools/activities/SkinsActivity;)V

    invoke-virtual {v0, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsActivity;->N:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/transsion/tools/activities/SkinsActivity;->T:Lcom/transsion/tools/adapter/SkinsMenuAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsActivity;->O:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/transsion/tools/activities/SkinsActivity;->U:Lcom/transsion/tools/adapter/DefaultSkinsAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-static {}, Lydc;->g()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsActivity;->N:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/transsion/tools/activities/SkinsActivity$4;

    invoke-direct {v2, p0}, Lcom/transsion/tools/activities/SkinsActivity$4;-><init>(Lcom/transsion/tools/activities/SkinsActivity;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsActivity;->T:Lcom/transsion/tools/adapter/SkinsMenuAdapter;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setPreLoadNumber(I)V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsActivity;->T:Lcom/transsion/tools/adapter/SkinsMenuAdapter;

    iget-object v2, p0, Lcom/transsion/tools/activities/SkinsActivity;->N:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->disableLoadMoreIfNotFullPage(Landroidx/recyclerview/widget/RecyclerView;)V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsActivity;->T:Lcom/transsion/tools/adapter/SkinsMenuAdapter;

    new-instance v2, Lmo1;

    invoke-direct {v2, p0}, Lmo1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setLoadMoreView(Lcom/chad/library/adapter/base/loadmore/LoadMoreView;)V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsActivity;->T:Lcom/transsion/tools/adapter/SkinsMenuAdapter;

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->enableLoadMoreEndClick(Z)V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsActivity;->T:Lcom/transsion/tools/adapter/SkinsMenuAdapter;

    new-instance v1, Lcom/transsion/tools/activities/SkinsActivity$d;

    invoke-direct {v1, p0}, Lcom/transsion/tools/activities/SkinsActivity$d;-><init>(Lcom/transsion/tools/activities/SkinsActivity;)V

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsActivity;->N:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnLoadMoreListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$RequestLoadMoreListener;Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_1
    return-void
.end method

.method private H0()V
    .locals 3

    sget v0, Lcom/transsion/tools/R$id;->title_bar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/tools/R$id;->title_bar_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lcom/transsion/tools/R$id;->title_bar_back:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lao9;

    invoke-direct {v2, p0}, Lao9;-><init>(Lcom/transsion/tools/activities/SkinsActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/tools/R$string;->themes:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private I0()V
    .locals 3

    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    new-instance v1, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;-><init>(Landroid/app/Application;)V

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v1, Lcom/transsion/tools/model/SkinsViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/transsion/tools/model/SkinsViewModel;

    iput-object v0, p0, Lcom/transsion/tools/activities/SkinsActivity;->a0:Lcom/transsion/tools/model/SkinsViewModel;

    invoke-virtual {v0}, Lcom/transsion/tools/model/SkinsViewModel;->getDefaultSkins()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/transsion/tools/activities/SkinsActivity$a;

    invoke-direct {v1, p0}, Lcom/transsion/tools/activities/SkinsActivity$a;-><init>(Lcom/transsion/tools/activities/SkinsActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsActivity;->a0:Lcom/transsion/tools/model/SkinsViewModel;

    invoke-virtual {v0}, Lcom/transsion/tools/model/SkinsViewModel;->getOnlineSkins()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/transsion/tools/activities/SkinsActivity$b;

    invoke-direct {v1, p0}, Lcom/transsion/tools/activities/SkinsActivity$b;-><init>(Lcom/transsion/tools/activities/SkinsActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsActivity;->a0:Lcom/transsion/tools/model/SkinsViewModel;

    invoke-virtual {v0}, Lcom/transsion/tools/model/SkinsViewModel;->getLoadStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/transsion/tools/activities/SkinsActivity$c;

    invoke-direct {v1, p0}, Lcom/transsion/tools/activities/SkinsActivity$c;-><init>(Lcom/transsion/tools/activities/SkinsActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsActivity;->a0:Lcom/transsion/tools/model/SkinsViewModel;

    invoke-virtual {v0, p0}, Lcom/transsion/tools/model/SkinsViewModel;->createLocalSkins(Landroid/content/Context;)V

    invoke-static {}, Lydc;->g()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/transsion/utils/a;->A()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsActivity;->a0:Lcom/transsion/tools/model/SkinsViewModel;

    iget v1, p0, Lcom/transsion/tools/activities/SkinsActivity;->S:I

    const/4 v2, 0x6

    invoke-virtual {v0, p0, v1, v2}, Lcom/transsion/tools/model/SkinsViewModel;->getCacheData(Landroid/content/Context;II)V

    :cond_0
    return-void
.end method

.method private synthetic L0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/tools/activities/SkinsActivity;->onBackPressed()V

    return-void
.end method

.method public static synthetic p0(Lcom/transsion/tools/activities/SkinsActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/tools/activities/SkinsActivity;->K0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic q0(Lcom/transsion/tools/activities/SkinsActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/tools/activities/SkinsActivity;->L0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r0(Lcom/transsion/tools/activities/SkinsActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/tools/activities/SkinsActivity;->J0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static bridge synthetic s0(Lcom/transsion/tools/activities/SkinsActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/tools/activities/SkinsActivity;->W:Z

    return p0
.end method

.method public static bridge synthetic t0(Lcom/transsion/tools/activities/SkinsActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsActivity;->Q:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic u0(Lcom/transsion/tools/activities/SkinsActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsActivity;->R:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic v0(Lcom/transsion/tools/activities/SkinsActivity;)I
    .locals 0

    iget p0, p0, Lcom/transsion/tools/activities/SkinsActivity;->S:I

    return p0
.end method

.method public static bridge synthetic w0(Lcom/transsion/tools/activities/SkinsActivity;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsActivity;->N:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static bridge synthetic x0(Lcom/transsion/tools/activities/SkinsActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/tools/activities/SkinsActivity;->X:Z

    return p0
.end method

.method public static bridge synthetic y0(Lcom/transsion/tools/activities/SkinsActivity;)Lcom/transsion/tools/adapter/SkinsMenuAdapter;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsActivity;->T:Lcom/transsion/tools/adapter/SkinsMenuAdapter;

    return-object p0
.end method

.method public static bridge synthetic z0(Lcom/transsion/tools/activities/SkinsActivity;)Lcom/transsion/tools/model/SkinsViewModel;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsActivity;->a0:Lcom/transsion/tools/model/SkinsViewModel;

    return-object p0
.end method


# virtual methods
.method public final C0()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsActivity;->P:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsActivity;->P:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/tools/activities/SkinsActivity;->Q:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsActivity;->P:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/tools/activities/SkinsActivity;->R:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsActivity;->T:Lcom/transsion/tools/adapter/SkinsMenuAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0, v2, v1}, Lcom/transsion/tools/activities/SkinsActivity;->D0(IZ)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsActivity;->U:Lcom/transsion/tools/adapter/DefaultSkinsAdapter;

    const/4 v1, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/transsion/tools/activities/SkinsActivity;->D0(IZ)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    iget-boolean v0, p0, Lcom/transsion/tools/activities/SkinsActivity;->b0:Z

    if-nez v0, :cond_0

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsActivity;->P:Ljava/util/List;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/16 v1, 0x3e6

    invoke-virtual {v0, v1, p0}, Lh27;->e(I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public D0(IZ)Ljava/util/List;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsActivity;->P:Ljava/util/List;

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    invoke-interface {p0, p2, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    invoke-interface {p0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    :goto_0
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final E0(Landroid/content/Intent;I)Landroid/content/Intent;
    .locals 3

    if-nez p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/transsion/tools/activities/SkinsPreviewActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Lcom/transsion/tools/activities/SkinsActivity;->F0()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/transsion/tools/activities/SkinsActivity;->D0(IZ)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/io/Serializable;

    const-string v1, "skin_list"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p0, "skin_index"

    invoke-virtual {v0, p0, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-object p1
.end method

.method public final synthetic J0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string p1, "theme_preview_key"

    invoke-static {p0, p1}, Lw6c;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/ThemeData;

    const/4 p2, 0x1

    if-nez p3, :cond_1

    new-instance p3, Landroid/content/Intent;

    const-class v0, Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-direct {p3, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Ld16;->h(Z)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    sub-int/2addr p3, p2

    invoke-virtual {p0, p1, p3}, Lcom/transsion/tools/activities/SkinsActivity;->E0(Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object p3

    :goto_1
    const/16 p1, 0x7e5

    invoke-static {p3, p1, p0}, Lf5;->b(Landroid/content/Intent;ILandroid/app/Activity;)V

    return-void
.end method

.method public final synthetic K0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onItemClick "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SkinsActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/SkinsMenu;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "skin_theme"

    invoke-static {p2, v0}, Lw6c;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/dbdata/beans/ThemeData;

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsActivity;->V:Lxn9;

    invoke-virtual {v0, p2}, Lxn9;->h(Lcom/transsion/dbdata/beans/ThemeData;)V

    invoke-static {}, Lcom/transsion/tools/activities/SkinsActivity;->F0()I

    move-result p2

    add-int/2addr p3, p2

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p3}, Lcom/transsion/tools/activities/SkinsActivity;->E0(Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object p2

    iget-object p3, p0, Lcom/transsion/tools/activities/SkinsActivity;->T:Lcom/transsion/tools/adapter/SkinsMenuAdapter;

    invoke-virtual {p3}, Lcom/transsion/tools/adapter/SkinsMenuAdapter;->g()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    iget-object p3, p1, Lcom/transsion/dbdata/beans/SkinsMenu;->name:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/tools/R$string;->local_skin_model:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/transsion/tools/activities/SkinsActivity;->T:Lcom/transsion/tools/adapter/SkinsMenuAdapter;

    invoke-virtual {p3, v0}, Lcom/transsion/tools/adapter/SkinsMenuAdapter;->i(Z)V

    const-string p3, "show_model_theme_tip"

    invoke-static {p0, p3, v0}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    iget-object p3, p1, Lcom/transsion/dbdata/beans/SkinsMenu;->name:Ljava/lang/String;

    invoke-static {p3}, Lvha;->r(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p1, Lcom/transsion/dbdata/beans/SkinsMenu;->name:Ljava/lang/String;

    invoke-static {p3}, Lvha;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3, v0}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    const/16 p3, 0x7e5

    invoke-static {p2, p3, p0}, Lf5;->b(Landroid/content/Intent;ILandroid/app/Activity;)V

    iget-object p0, p1, Lcom/transsion/dbdata/beans/SkinsMenu;->name:Ljava/lang/String;

    const-string p1, "skin_cover_cl"

    const-wide p2, 0xd91af2737cL

    invoke-static {p0, p1, p2, p3}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public final M0(I)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsActivity;->N:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/transsion/tools/activities/SkinsActivity$f;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/transsion/tools/activities/SkinsActivity$f;-><init>(Lcom/transsion/tools/activities/SkinsActivity;Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsActivity;->O:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/transsion/tools/activities/SkinsActivity$g;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v1, p0, v2, v3}, Lcom/transsion/tools/activities/SkinsActivity$g;-><init>(Lcom/transsion/tools/activities/SkinsActivity;Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsActivity;->Z:Lcom/transsion/playercommon/utils/decoration/GridSpaceItemDecoration;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/tools/activities/SkinsActivity;->N:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsActivity;->O:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/tools/activities/SkinsActivity;->Z:Lcom/transsion/playercommon/utils/decoration/GridSpaceItemDecoration;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_0
    new-instance v0, Lcom/transsion/playercommon/utils/decoration/GridSpaceItemDecoration;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {p0, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {v0, p1, v1, v3}, Lcom/transsion/playercommon/utils/decoration/GridSpaceItemDecoration;-><init>(III)V

    iput-object v0, p0, Lcom/transsion/tools/activities/SkinsActivity;->Z:Lcom/transsion/playercommon/utils/decoration/GridSpaceItemDecoration;

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsActivity;->N:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object p1, p0, Lcom/transsion/tools/activities/SkinsActivity;->O:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsActivity;->Z:Lcom/transsion/playercommon/utils/decoration/GridSpaceItemDecoration;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_1
    return-void
.end method

.method public final N0()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsActivity;->N:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsActivity;->O:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsActivity;->a0:Lcom/transsion/tools/model/SkinsViewModel;

    invoke-virtual {v0, p0}, Lcom/transsion/tools/model/SkinsViewModel;->createLocalSkins(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/transsion/tools/activities/SkinsActivity;->G0()V

    :cond_0
    return-void
.end method

.method public finish()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public loadSkin(Z)I
    .locals 0

    const/4 p1, 0x0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->loadSkin(Z)I

    move-result p0

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/transsion/playercommon/activities/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x7e5

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/tools/activities/SkinsActivity;->X:Z

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsActivity;->a0:Lcom/transsion/tools/model/SkinsViewModel;

    invoke-virtual {p0}, Lcom/transsion/tools/model/SkinsViewModel;->updateCustomTheme()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsActivity;->V:Lxn9;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lxn9;->g(Z)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/tools/activities/SkinsActivity;->Y:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SkinsActivity"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/transsion/utils/a;->a(Landroid/app/Activity;I)V

    sget v0, Lcom/transsion/tools/R$layout;->skin_fragment:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    sget v0, Lcom/transsion/tools/R$id;->rv_skins_list:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/tools/activities/SkinsActivity;->N:Landroidx/recyclerview/widget/RecyclerView;

    sget v0, Lcom/transsion/tools/R$id;->rv_static_skins_list:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/tools/activities/SkinsActivity;->O:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Lcom/transsion/tools/activities/SkinsActivity;->H0()V

    invoke-direct {p0}, Lcom/transsion/tools/activities/SkinsActivity;->I0()V

    invoke-direct {p0}, Lcom/transsion/tools/activities/SkinsActivity;->G0()V

    invoke-static {}, Lxn9;->c()Lxn9;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/tools/activities/SkinsActivity;->V:Lxn9;

    iget-object v1, p0, Lcom/transsion/tools/activities/SkinsActivity;->c0:Los0;

    invoke-virtual {v0, v1}, Lxn9;->f(Los0;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lcom/transsion/tools/activities/SkinsActivity;->b0:Z

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput p1, p0, Lcom/transsion/tools/activities/SkinsActivity;->Y:I

    const-string p1, "need_personal_theme_guide"

    invoke-static {p0, p1, v0}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->adaptSystemUiBarColor()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    sget p1, Lcom/transsion/playercommon/R$drawable;->os_window_background:I

    invoke-virtual {p0, p1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsActivity;->V:Lxn9;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/tools/activities/SkinsActivity;->c0:Los0;

    invoke-virtual {v0, v1}, Lxn9;->e(Los0;)V

    :cond_0
    invoke-virtual {p0, p0}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->removeScreenTypeListener(Ljava/lang/Object;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->onResume()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from"

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    const-string v0, "skin_all_list_page_show"

    invoke-static {v0, v1, p0}, Lhb0;->markTrackSingle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->onScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V

    invoke-virtual {p0}, Lcom/transsion/tools/activities/SkinsActivity;->N0()V

    const-string p0, "skin_all_list_page_show"

    invoke-static {p1, p0}, Lr06;->c(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;Ljava/lang/String;)V

    return-void
.end method
