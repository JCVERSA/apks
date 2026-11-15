.class public Lcom/transsion/playercommon/gallery/ImageFragment;
.super Lcom/transsion/playercommon/fragments/BaseFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public l:J

.field public m:I

.field public n:I

.field public o:Lcom/transsion/playercommon/gallery/ImageViewModel;

.field public p:Ljava/util/List;

.field public q:Landroidx/recyclerview/widget/RecyclerView;

.field public r:Lcom/transsion/playercommon/gallery/ImageAdapter;

.field public s:Landroid/widget/LinearLayout;

.field public t:Landroid/widget/ImageView;

.field public u:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/transsion/playercommon/gallery/ImageFragment;->l:J

    const/16 v0, 0x28

    iput v0, p0, Lcom/transsion/playercommon/gallery/ImageFragment;->m:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/transsion/playercommon/gallery/ImageFragment;->n:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/gallery/ImageFragment;->p:Ljava/util/List;

    return-void
.end method

.method public static bridge synthetic P(Lcom/transsion/playercommon/gallery/ImageFragment;)I
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/gallery/ImageFragment;->n:I

    return p0
.end method

.method public static bridge synthetic Q(Lcom/transsion/playercommon/gallery/ImageFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/gallery/ImageFragment;->p:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic R(Lcom/transsion/playercommon/gallery/ImageFragment;)Lcom/transsion/playercommon/gallery/ImageAdapter;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/gallery/ImageFragment;->r:Lcom/transsion/playercommon/gallery/ImageAdapter;

    return-object p0
.end method

.method public static synthetic S(Lcom/transsion/playercommon/gallery/ImageFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private T()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/playercommon/gallery/ImageFragment;->q:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Lcom/transsion/playercommon/gallery/ImageAdapter;

    invoke-direct {v0}, Lcom/transsion/playercommon/gallery/ImageAdapter;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/gallery/ImageFragment;->r:Lcom/transsion/playercommon/gallery/ImageAdapter;

    iget-object v1, p0, Lcom/transsion/playercommon/gallery/ImageFragment;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/transsion/playercommon/gallery/ImageFragment;->r:Lcom/transsion/playercommon/gallery/ImageAdapter;

    new-instance v1, Lcom/transsion/playercommon/gallery/ImageFragment$b;

    invoke-direct {v1, p0}, Lcom/transsion/playercommon/gallery/ImageFragment$b;-><init>(Lcom/transsion/playercommon/gallery/ImageFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    new-instance v0, Lcom/transsion/playercommon/gallery/ImageAdapter$GridSpaceItemDecoration;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {v0, v3, v1}, Lcom/transsion/playercommon/gallery/ImageAdapter$GridSpaceItemDecoration;-><init>(II)V

    iget-object p0, p0, Lcom/transsion/playercommon/gallery/ImageFragment;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method public static U(IJI)Lcom/transsion/playercommon/gallery/ImageFragment;
    .locals 3

    new-instance v0, Lcom/transsion/playercommon/gallery/ImageFragment;

    invoke-direct {v0}, Lcom/transsion/playercommon/gallery/ImageFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "list_flag"

    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "bucket_id"

    invoke-virtual {v1, p0, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string p0, "crop_type"

    invoke-virtual {v1, p0, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private initTitle()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/gallery/ImageFragment;->s:Landroid/widget/LinearLayout;

    iget p0, p0, Lcom/transsion/playercommon/gallery/ImageFragment;->m:I

    const/16 v1, 0x27

    if-ne p0, v1, :cond_0

    const/16 p0, 0x8

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1

    sget v0, Lcom/transsion/playercommon/R$id;->rv_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/playercommon/gallery/ImageFragment;->q:Landroidx/recyclerview/widget/RecyclerView;

    sget v0, Lcom/transsion/playercommon/R$id;->ll_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/playercommon/gallery/ImageFragment;->s:Landroid/widget/LinearLayout;

    sget v0, Lcom/transsion/playercommon/R$id;->iv_close:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/playercommon/gallery/ImageFragment;->t:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initViewModel()V
    .locals 4

    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;->getInstance(Landroid/app/Application;)Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v1, Lcom/transsion/playercommon/gallery/ImageViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/gallery/ImageViewModel;

    iput-object v0, p0, Lcom/transsion/playercommon/gallery/ImageFragment;->o:Lcom/transsion/playercommon/gallery/ImageViewModel;

    invoke-virtual {v0}, Lcom/transsion/playercommon/gallery/ImageViewModel;->e()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    new-instance v2, Lcom/transsion/playercommon/gallery/ImageFragment$a;

    invoke-direct {v2, p0}, Lcom/transsion/playercommon/gallery/ImageFragment$a;-><init>(Lcom/transsion/playercommon/gallery/ImageFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/transsion/playercommon/gallery/ImageFragment;->o:Lcom/transsion/playercommon/gallery/ImageViewModel;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/transsion/playercommon/gallery/ImageFragment;->l:J

    const/4 p0, 0x1

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/transsion/playercommon/gallery/ImageViewModel;->k(Landroid/content/Context;JZ)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/playercommon/R$id;->iv_close:I

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    if-eqz p3, :cond_0

    const-string v0, "bucket_id"

    const-wide/16 v1, -0x1

    invoke-virtual {p3, v0, v1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/playercommon/gallery/ImageFragment;->l:J

    const-string v0, "list_flag"

    const/16 v1, 0x28

    invoke-virtual {p3, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/gallery/ImageFragment;->m:I

    const-string v0, "crop_type"

    const/4 v1, 0x1

    invoke-virtual {p3, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p3

    iput p3, p0, Lcom/transsion/playercommon/gallery/ImageFragment;->n:I

    :cond_0
    sget p3, Lcom/transsion/playercommon/R$layout;->fragment_image:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/playercommon/gallery/ImageFragment;->u:Landroid/view/View;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/transsion/playercommon/gallery/ImageFragment;->o:Lcom/transsion/playercommon/gallery/ImageViewModel;

    invoke-virtual {v0}, Lcom/transsion/playercommon/gallery/ImageViewModel;->e()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onResume()V

    iget-object v0, p0, Lcom/transsion/playercommon/gallery/ImageFragment;->o:Lcom/transsion/playercommon/gallery/ImageViewModel;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/transsion/playercommon/gallery/ImageFragment;->l:J

    const/4 p0, 0x0

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/transsion/playercommon/gallery/ImageViewModel;->k(Landroid/content/Context;JZ)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcom/transsion/playercommon/gallery/ImageFragment;->initView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/transsion/playercommon/gallery/ImageFragment;->initViewModel()V

    invoke-direct {p0}, Lcom/transsion/playercommon/gallery/ImageFragment;->T()V

    invoke-direct {p0}, Lcom/transsion/playercommon/gallery/ImageFragment;->initTitle()V

    return-void
.end method
